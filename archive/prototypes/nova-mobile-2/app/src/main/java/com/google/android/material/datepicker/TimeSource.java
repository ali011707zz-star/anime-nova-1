package com.google.android.material.datepicker;

import java.util.Calendar;
import java.util.TimeZone;

/* loaded from: classes.dex */
class TimeSource {
    private static final TimeSource SYSTEM_TIME_SOURCE = new TimeSource(null, null);
    private final Long fixedTimeMs;
    private final TimeZone fixedTimeZone;

    private TimeSource(Long l10, TimeZone timeZone) {
        this.fixedTimeMs = l10;
        this.fixedTimeZone = timeZone;
    }

    public static TimeSource fixed(long j10, TimeZone timeZone) {
        return new TimeSource(Long.valueOf(j10), timeZone);
    }

    public static TimeSource system() {
        return SYSTEM_TIME_SOURCE;
    }

    public Calendar now() {
        return now(this.fixedTimeZone);
    }

    public static TimeSource fixed(long j10) {
        return new TimeSource(Long.valueOf(j10), null);
    }

    public Calendar now(TimeZone timeZone) {
        Calendar calendar = timeZone == null ? Calendar.getInstance() : Calendar.getInstance(timeZone);
        Long l10 = this.fixedTimeMs;
        if (l10 != null) {
            calendar.setTimeInMillis(l10.longValue());
        }
        return calendar;
    }
}
