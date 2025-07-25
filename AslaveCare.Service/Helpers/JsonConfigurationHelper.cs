﻿using Newtonsoft.Json;
using Newtonsoft.Json.Serialization;

namespace AslaveCare.Service.Helpers
{
    public static class JsonConfigurationHelper
    {
        public static JsonSerializerSettings GetJsonSettings()
        {
            return new JsonSerializerSettings
            {
                DateFormatString = "yyyy-MM-dd'T'HH:mm:ss'Z'",
                ContractResolver = new CamelCasePropertyNamesContractResolver(),
                ReferenceLoopHandling = ReferenceLoopHandling.Ignore,
                DateTimeZoneHandling = DateTimeZoneHandling.Utc
            };
        }
    }
}