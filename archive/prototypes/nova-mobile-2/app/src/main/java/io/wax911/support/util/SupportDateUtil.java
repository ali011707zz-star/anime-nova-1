package io.wax911.support.util;

import io.wax911.support.base.attribute.SeasonType;
import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.Date;
import java.util.List;
import java.util.Locale;
import java.util.concurrent.TimeUnit;
import jc.l;
import s3.b;
import s3.d;
import vb.e;
import vb.f;

/* compiled from: SupportDateUtil.kt */
/* loaded from: classes.dex */
public final class SupportDateUtil {
    public static final SupportDateUtil INSTANCE = new SupportDateUtil();
    private static final String[] seasons = {SeasonType.WINTER, SeasonType.WINTER, SeasonType.SPRING, SeasonType.SPRING, SeasonType.SPRING, SeasonType.SUMMER, SeasonType.SUMMER, SeasonType.SUMMER, SeasonType.FALL, SeasonType.FALL, SeasonType.FALL, SeasonType.WINTER};
    private static final e currentSeason$delegate = f.a(SupportDateUtil$currentSeason$2.INSTANCE);
    private static final e currentSeasonIndex$delegate = f.a(SupportDateUtil$currentSeasonIndex$2.INSTANCE);
    private static final e calendar$delegate = f.a(SupportDateUtil$calendar$2.INSTANCE);

    private SupportDateUtil() {
    }

    public static /* synthetic */ void getCurrentSeason$annotations() {
    }

    public final String convertDate(long j10) {
        if (j10 != 0) {
            return new SimpleDateFormat("dd MMM yyyy", Locale.getDefault()).format(new Date(j10 * 1000));
        }
        return null;
    }

    public final Calendar getCalendar() {
        Object value = calendar$delegate.getValue();
        l.e(value, "<get-calendar>(...)");
        return (Calendar) value;
    }

    public final String getCurrentSeason() {
        return (String) currentSeason$delegate.getValue();
    }

    public final int getCurrentSeasonIndex() {
        return ((Number) currentSeasonIndex$delegate.getValue()).intValue();
    }

    public final int getCurrentYear(int i10) {
        if (getCalendar().get(2) >= 11 && l.a(getCurrentSeason(), SeasonType.WINTER)) {
            return getCalendar().get(1) + i10;
        }
        return getCalendar().get(1);
    }

    public final List<Integer> getYearRanges(int i10, int i11) {
        Object b10 = d.k(i10, getCurrentYear(i11)).b().b(b.b());
        l.e(b10, "range(start, getCurrentY…Collectors.toList<Int>())");
        return (List) b10;
    }

    public final boolean timeDifferenceSatisfied(int i10, long j10, int i11) {
        long currentTimeMillis = System.currentTimeMillis();
        TimeUnit timeUnit = TimeUnit.MILLISECONDS;
        return i10 != 0 ? i10 != 1 ? i10 != 2 ? i10 == 3 && timeUnit.toSeconds(currentTimeMillis - j10) >= ((long) i11) : timeUnit.toMinutes(currentTimeMillis - j10) >= ((long) i11) : timeUnit.toHours(currentTimeMillis - j10) >= ((long) i11) : timeUnit.toDays(currentTimeMillis - j10) >= ((long) i11);
    }
}
