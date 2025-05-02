using Microsoft.AspNetCore.Mvc.ApplicationModels;
using System.Linq;

namespace AslaveCare.Api.Configurations
{
    public class ApiVersionConvention : IControllerModelConvention
    {
        public void Apply(ControllerModel controller)
        {
            var controllerNamespace = controller.ControllerType.Namespace;
            var nameSpaceArray = controllerNamespace?.Split('.');

            if (nameSpaceArray.Last().ToLower().Contains("base"))
                controller.ApiExplorer.GroupName = nameSpaceArray[nameSpaceArray.Length - 2].Replace("_", ".");
            else
                controller.ApiExplorer.GroupName = nameSpaceArray.Last().Replace("_", ".");
        }
    }
}
