package bb;

import android.content.SharedPreferences;
import jc.l;
import rc.g1;

/* compiled from: FlowSharedPreferences.kt */
/* loaded from: classes.dex */
public final class c {

    /* renamed from: a, reason: collision with root package name */
    public final uc.f<String> f3570a;

    /* renamed from: b, reason: collision with root package name */
    public final SharedPreferences f3571b;

    /* renamed from: c, reason: collision with root package name */
    public final ac.g f3572c;

    public c(SharedPreferences sharedPreferences, ac.g gVar) {
        l.f(sharedPreferences, "sharedPreferences");
        l.f(gVar, "coroutineContext");
        this.f3571b = sharedPreferences;
        this.f3572c = gVar;
        this.f3570a = h.b(sharedPreferences);
    }

    public final f<Boolean> a(String str, boolean z10) {
        l.f(str, "key");
        return new b(str, z10, this.f3570a, this.f3571b, this.f3572c);
    }

    public final f<Long> b(String str, long j10) {
        l.f(str, "key");
        return new d(str, j10, this.f3570a, this.f3571b, this.f3572c);
    }

    public final <T> f<T> c(String str, g<T> gVar, T t10) {
        l.f(str, "key");
        l.f(gVar, "serializer");
        l.f(t10, "defaultValue");
        return new e(str, gVar, t10, this.f3570a, this.f3571b, this.f3572c);
    }

    public final f<String> d(String str, String str2) {
        l.f(str, "key");
        l.f(str2, "defaultValue");
        return new i(str, str2, this.f3570a, this.f3571b, this.f3572c);
    }

    public /* synthetic */ c(SharedPreferences sharedPreferences, ac.g gVar, int i10, jc.g gVar2) {
        this(sharedPreferences, (i10 & 2) != 0 ? g1.b() : gVar);
    }
}
