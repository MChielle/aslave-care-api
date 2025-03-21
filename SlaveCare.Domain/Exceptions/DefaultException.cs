using System;

namespace SlaveCare.Domain.Exceptions
{
    public class DefaultException : Exception
    {
        public DefaultException(string message, Exception exception = null)
            : base(message, exception) { }

        public string RequestId { get; set; }
    }
}