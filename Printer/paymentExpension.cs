using System;
using System.Runtime.Serialization;

namespace Printer
{
    [Serializable]
    internal class paymentExpension : Exception
    {
        public paymentExpension()
        {
        }

        public paymentExpension(string message) : base(message)
        {
        }

        public paymentExpension(string message, Exception innerException) : base(message, innerException)
        {
        }

        protected paymentExpension(SerializationInfo info, StreamingContext context) : base(info, context)
        {
        }

        public string Response { get; internal set; }
    }
}