using AslaveCare.Api.Controllers.Base;
using AslaveCare.Domain.Helpers;
using AslaveCare.Domain.Interfaces.Services.v1.Authentication;
using AslaveCare.Domain.Responses;
using Microsoft.AspNetCore.Mvc;
using Microsoft.AspNetCore.Mvc.Authorization;
using Microsoft.AspNetCore.Mvc.Filters;
using Microsoft.Extensions.DependencyInjection;
using Microsoft.Extensions.Logging;
using System;
using System.Linq;

namespace AslaveCare.Api.Filters
{
    public class ActionFilter : IActionFilter, IAuthorizationFilter
    {
        public void OnAuthorization(AuthorizationFilterContext context)
        {
            var _jwtService = context.HttpContext.RequestServices.GetService<IJwtService>();

            // Refresh_token
            if (context.HttpContext.Request.Headers.Any(x => x.Value.Equals("refresh_token")) && context.HttpContext.Request.Path.Value.Contains("refresh-token"))
                return;

            // Rotas que tenham o annotation AllowAnonymous
            if (context.Filters.Any(item => item is IAllowAnonymousFilter))
                return;

            var token = context.HttpContext.Request.Headers["Authorization"].ToString();

            if (string.IsNullOrEmpty(token))
            {
                context.Result = new UnauthorizedResult();
                return;
            }

            var key = JWTHelper.GetUniqueKeyFromToken(token);

            if (!_jwtService.ValidateAccessToken(token.Replace("Bearer ", string.Empty), new Guid(key)))
            {
                context.Result = new UnauthorizedResult();
            }
        }

        public void OnActionExecuting(ActionExecutingContext context)
        {
            if (context != null && !context.ModelState.IsValid)
            {
                var erros = context.ModelState.Values.Select(x => String.Join(", ", x.Errors.Select(x => x.ErrorMessage).ToList())).ToList();
                context.Result = new UnprocessableEntityObjectResult(new UnprocessableResponse(String.Join(" - ", erros), context.ModelState, context.HttpContext.TraceIdentifier));
            }
        }

        public void OnActionExecuted(ActionExecutedContext context)
        {
            if (context.Exception != null)
            {
                //Generate log to OpenTelemetry with exception Details
                BuildExceptionLog(context);

                //Generate response with friendly exception message
                context.Result = new ObjectResult(context.Exception?.Message) { StatusCode = 500 };

                context.ExceptionHandled = true;
            }
            else if (context.Result is ObjectResult result)
            {
                //Process the result and convert it to IActionResult
                context.Result = HttpActionResult(result, context.HttpContext.TraceIdentifier);
            }
        }

        private static void BuildExceptionLog(ActionExecutedContext context)
        {
            var logger = context.HttpContext.RequestServices.GetService(typeof(ILogger<ApplicationControllerBase>)) as ILogger;
            logger.LogError(context.Exception, context.Exception.ToString());
        }

        private IActionResult HttpActionResult(ObjectResult result, string requestId)
        {
            switch (result.Value.GetType())
            {
                //201: Created indicates that the request resulted in a new resource created before the response was sent.
                case var t when t.Equals(typeof(CreatedResponse)):
                    var create = (CreatedResponse)result.Value;
                    create.Data = null;
                    create.RequestId = requestId;
                    return new CreatedResult("", create);

                //202: Accepted indicates that the request has been accepted for further processing.
                case var t when t.Equals(typeof(AcceptedResponse)):
                    var accepted = (AcceptedResponse)result.Value;
                    accepted.Data = null;
                    accepted.RequestId = requestId;
                    return new AcceptedResult("", accepted);

                //204: NoContent indicates that the request has been successfully processed and that the response is intentionally blank.
                case var t when t.Equals(typeof(NoContentResponse)):
                    return new NoContentResult();

                //400: BadRequest indicates that the request could not be understood by the server. BadRequest is sent when no other error is applicable, or if the exact error is unknown or does not have its own error code.
                case var t when t.Equals(typeof(BadRequestResponse)):
                    var bad = (BadRequestResponse)result.Value;
                    bad.RequestId = requestId;
                    return new BadRequestObjectResult(bad);

                //401: Unauthorized indicates that the requested resource requires authentication. The WWW-Authenticate header contains the details of how to perform the authentication.
                case var t when t.Equals(typeof(UnauthorizedResponse)):
                    return new UnauthorizedResult();

                //403 Forbidden indicates that the server refuses to fulfill the request.
                case var t when t.Equals(typeof(ForbiddenResponse)):
                    return new ForbidResult();

                //404 NotFound indicates that the requested resource does not exist on the server.
                case var t when t.Equals(typeof(NotFoundResponse)):
                    var notfound = (NotFoundResponse)result.Value;
                    notfound.RequestId = requestId;
                    return new NotFoundObjectResult(notfound);

                //409 Conflict indicates that the request could not be carried out because of a conflict on the server.
                case var t when t.Equals(typeof(ConflictResponse)):
                    var conflict = (ConflictResponse)result.Value;
                    conflict.RequestId = requestId;
                    return new ConflictObjectResult(conflict);

                //422 UnprocessableEntity indicates that the request was well-formed but was unable to be followed due to semantic errors.
                case var t when t.Equals(typeof(UnprocessableResponse)):
                    var unprocessable = (UnprocessableResponse)result.Value;
                    unprocessable.RequestId = requestId;
                    return new UnprocessableEntityObjectResult(unprocessable);

                //TODO: Converter para o ResponseBase quando todas as rotas estiverem convertidas

                //TODO ver uma forma de comparar um o tipo de uma classe com propriedade genérica
                //200: OK indicates that the request succeeded and that the requested information is in the response. This is the most common status code to receive.
                //case var t when t.Equals(typeof(OkResponse<object>)):
                //    var ok = (OkResponse<object>)result.Value;
                //    ok.RequestId = requestId;
                //    return new OkObjectResult(ok);

                //200: OK indicates that the request succeeded and that the requested information is in the response. This is the most common status code to receive.
                default:
                    if (result is OkObjectResult)
                        return result;
                    else
                        return new OkObjectResult(result.Value);
            }
        }
    }
}