using System.Reflection;
using System.Threading.Tasks;

namespace AslaveCare.Api.UnitTests.Helpers
{
    public static class PrivateAccessorHelper
    {
        public static object GetPrivatePropertyValue(string propertyName, object obj)
        {
            var property = obj.GetType().GetProperty(propertyName, BindingFlags.NonPublic | BindingFlags.Instance);
            return property?.GetValue(obj) ?? null;
        }

        public static object GetPrivateFieldValue(string fieldName, object obj)
        {
            var field = GetPrivateField(fieldName, obj.GetType());
            return field.GetValue(obj);
        }

        public static object GetPrivateStaticFieldValue(string fieldName, object obj)
        {
            var field = GetPrivateStaticField(fieldName, obj.GetType());
            return field.GetValue(obj);
        }

        public static object InvokePrivateMethod(string methodName, object obj, object firstParameter, object secondParameter)
        {
            return InvokePrivateMethod(methodName, obj, new object[]
            {
                firstParameter,
                secondParameter
            });
        }

        public static object InvokePrivateMethod(string methodName, object obj)
        {
            return InvokePrivateMethod(methodName, obj, null);
        }

        public static object InvokePrivateMethod<T>(string methodName, object obj)
        {
            return InvokePrivateMethodInternal<T>(methodName, obj, null);
        }

        public static object InvokePrivateMethod<T>(string methodName, object obj, object firstParameter)
        {
            return InvokePrivateMethodInternal<T>(methodName, obj, new object[]
            {
                firstParameter
            });
        }

        public static object InvokePrivateMethod<T>(string methodName, object obj, object firstParameter, object secondParameter)
        {
            return InvokePrivateMethodInternal<T>(methodName, obj, new object[]
            {
                firstParameter,
                secondParameter
            });
        }

        private static object InvokePrivateMethodInternal<T>(string methodName, object obj, object[] parameters)
        {
            var method = GetPrivateMethod(methodName, typeof(T));
            return method.Invoke(obj, parameters);
        }

        public static object InvokePrivateMethod(string methodName, object obj, object firstParameter)
        {
            return InvokePrivateMethod(methodName, obj, new object[]
            {
                firstParameter
            });
        }

        public static object InvokePrivateMethod(string methodName, object obj, object[] parameters)
        {
            try
            {
                var method = GetPrivateMethod(methodName, obj.GetType());
                return method.Invoke(obj, parameters);
            }
            catch (System.Exception ex)
            {
                throw ex.InnerException;
            }
        }

        private static MethodInfo GetPrivateMethod(string methodName, IReflect type)
        {
            return type.GetMethod(methodName, BindingFlags.NonPublic | BindingFlags.Instance);
        }

        private static FieldInfo GetPrivateField(string fieldName, IReflect type)
        {
            return type.GetField(fieldName, BindingFlags.NonPublic | BindingFlags.Instance);
        }

        private static FieldInfo GetPrivateStaticField(string fieldName, IReflect type)
        {
            return type.GetField(fieldName, BindingFlags.Static | BindingFlags.NonPublic);
        }

        public static async Task<object> InvokeAsync(string methodName, object obj, params object[] parameters)
        {
            var info = obj.GetType().GetMethod(methodName, BindingFlags.NonPublic | BindingFlags.Instance);
            dynamic awaitable = info.Invoke(obj, parameters);
            await awaitable;
            return awaitable.GetAwaiter().GetResult();
        }
    }
}