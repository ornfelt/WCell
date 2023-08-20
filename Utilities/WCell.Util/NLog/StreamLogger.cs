using System;
using System.IO;
using Microsoft.AspNetCore.Components;
using NLog;
using NLog.Config;
using NLog.Layouts;
using NLog.Targets;
using NLog.Common;

using Microsoft.Extensions.Logging;
using Microsoft.Extensions.Logging.Abstractions;
using Microsoft.Extensions.Options;

namespace WCell.Util.NLog
{
    [Target("Stream")]
    public class StreamTarget : TargetWithLayout
    {
        private TextWriter? _stream;
        private Layout _streamNameLayout = string.Empty;

        public StreamTarget()
        {
            _streamNameLayout = new SimpleLayout(string.Empty);
            Console.WriteLine("Created StreamTarget");
        }

        [RequiredParameter]
        public TextWriter? Stream
        {
            get { return _stream; }
            set { _stream = value; }
        }

        [RequiredParameter]
        public string StreamName
        {
            get { return _streamNameLayout.Render(LogEventInfo.CreateNullEvent()); }
            set
            {
                _streamNameLayout = new SimpleLayout(value);
                Name = StreamName;
            }
        }

        protected override void FlushAsync(AsyncContinuation asyncContinuation)
        {
            lock (this)
            {
                if (_stream != null)
                {
                    _stream.Flush();
                }
            }
            //asyncContinuation(null);
            asyncContinuation?.Invoke(null); // Call the continuation once the flush is completed
        }

        protected override void CloseTarget()
        {
            base.CloseTarget();
            _stream?.Close();
        }

        protected override void Write(AsyncLogEventInfo logEvent)
        {
            var logMessage = _streamNameLayout.Render(logEvent.LogEvent);
            _stream?.WriteLine(logMessage);
        }
    }
}
