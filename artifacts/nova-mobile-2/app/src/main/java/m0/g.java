package m0;

import android.os.Build;
import android.os.LocaleList;
import com.twitter.sdk.android.core.internal.scribe.EventsFilesManager;
import java.util.Locale;

/* compiled from: LocaleListCompat.java */
/* loaded from: classes.dex */
public final class g {

    /* renamed from: b, reason: collision with root package name */
    public static final g f10650b = a(new Locale[0]);

    /* renamed from: a, reason: collision with root package name */
    public i f10651a;

    public g(i iVar) {
        this.f10651a = iVar;
    }

    public static g a(Locale... localeArr) {
        if (Build.VERSION.SDK_INT >= 24) {
            return d(new LocaleList(localeArr));
        }
        return new g(new h(localeArr));
    }

    public static Locale b(String str) {
        if (str.contains("-")) {
            String[] split = str.split("-", -1);
            if (split.length > 2) {
                return new Locale(split[0], split[1], split[2]);
            }
            if (split.length > 1) {
                return new Locale(split[0], split[1]);
            }
            if (split.length == 1) {
                return new Locale(split[0]);
            }
        } else if (str.contains(EventsFilesManager.ROLL_OVER_FILE_NAME_SEPARATOR)) {
            String[] split2 = str.split(EventsFilesManager.ROLL_OVER_FILE_NAME_SEPARATOR, -1);
            if (split2.length > 2) {
                return new Locale(split2[0], split2[1], split2[2]);
            }
            if (split2.length > 1) {
                return new Locale(split2[0], split2[1]);
            }
            if (split2.length == 1) {
                return new Locale(split2[0]);
            }
        } else {
            return new Locale(str);
        }
        throw new IllegalArgumentException("Can not parse language tag: [" + str + "]");
    }

    public static g d(LocaleList localeList) {
        return new g(new j(localeList));
    }

    public Locale c(int i10) {
        return this.f10651a.get(i10);
    }

    public boolean equals(Object obj) {
        return (obj instanceof g) && this.f10651a.equals(((g) obj).f10651a);
    }

    public int hashCode() {
        return this.f10651a.hashCode();
    }

    public String toString() {
        return this.f10651a.toString();
    }
}
