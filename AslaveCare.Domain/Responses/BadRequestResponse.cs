﻿using AslaveCare.Domain.Responses.Base;

namespace AslaveCare.Domain.Responses
{
    public class BadRequestResponse : ResponseBase
    {
        public BadRequestResponse(string message, object data, string requestId = "")
        {
            Message = message;
            Data = data;
            RequestId = requestId;
        }

        public string RequestId { get; set; }
        public string Message { get; set; }
        public object Data { get; set; }
    }
}