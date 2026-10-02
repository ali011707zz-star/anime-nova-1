package androidx.fragment.app;

import android.os.Bundle;

/* compiled from: Fragment.kt */
/* loaded from: classes.dex */
public final class k implements s {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ ic.p f2251a;

    public k(ic.p pVar) {
        this.f2251a = pVar;
    }

    @Override // androidx.fragment.app.s
    public final /* synthetic */ void a(String str, Bundle bundle) {
        jc.l.f(str, "p0");
        jc.l.f(bundle, "p1");
        jc.l.e(this.f2251a.invoke(str, bundle), "invoke(...)");
    }
}
