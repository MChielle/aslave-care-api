using System;
using System.Runtime.InteropServices;

namespace SlaveCare.Domain.Helpers
{
    public static class TimeZoneHelper
    {
        public static DateTime NowCustom()
        {
            TimeZoneInfo timeZone;
            var isWindows = RuntimeInformation.IsOSPlatform(OSPlatform.Windows);
            if (isWindows)
                timeZone = TimeZoneInfo.FindSystemTimeZoneById("E. South America Standard Time");
            else
                timeZone = TimeZoneInfo.FindSystemTimeZoneById("UTC");

            return TimeZoneInfo.ConvertTime(DateTime.UtcNow, timeZone);
        }

        public static DateTime ConvertFromTimeUnixToDateTime(double unixTimeStamp)
        {
            System.DateTime dtDateTime = new DateTime(1970, 1, 1, 0, 0, 0, 0, System.DateTimeKind.Utc);
            dtDateTime = dtDateTime.AddSeconds(unixTimeStamp).ToLocalTime();
            return dtDateTime;
        }
    }
}