package m0;

import android.os.LocaleList;
import java.util.Locale;

/* compiled from: LocaleListPlatformWrapper.java */
/* loaded from: classes.dex */
public final class j implements i {

    /* renamed from: a, reason: collision with root package name */
    public final LocaleList f10658a;

    public j(LocaleList localeList) {
        this.f10658a = localeList;
    }

    @Override // m0.i
    public Object a() {
        return this.f10658a;
    }

    public boolean equals(Object obj) {
        return this.f10658a.equals(((i) obj).a());
    }

    @Override // m0.i
    public Locale get(int i10) {
        return this.f10658a.get(i10);
    }

    public int hashCode() {
        return this.f10658a.hashCode();
    }

    public String toString() {
        return this.f10658a.toString();
    }
}
