package wc;

import kotlin.KotlinNothingValueException;
import rc.a1;
import rc.i1;
import rc.n2;

/* compiled from: MainDispatchers.kt */
/* loaded from: classes2.dex */
public final class u extends n2 implements a1 {

    /* renamed from: g, reason: collision with root package name */
    public final Throwable f15538g;

    /* renamed from: h, reason: collision with root package name */
    public final String f15539h;

    public u(Throwable th, String str) {
        this.f15538g = th;
        this.f15539h = str;
    }

    @Override // rc.l0
    public boolean J0(ac.g gVar) {
        N0();
        throw new KotlinNothingValueException();
    }

    @Override // rc.n2
    public n2 K0() {
        return this;
    }

    @Override // rc.l0
    /* renamed from: M0, reason: merged with bridge method [inline-methods] */
    public Void H0(ac.g gVar, Runnable runnable) {
        N0();
        throw new KotlinNothingValueException();
    }

    public final Void N0() {
        String m10;
        if (this.f15538g != null) {
            String str = this.f15539h;
            String str2 = "";
            if (str != null && (m10 = jc.l.m(". ", str)) != null) {
                str2 = m10;
            }
            throw new IllegalStateException(jc.l.m("Module with the Main dispatcher had failed to initialize", str2), this.f15538g);
        }
        t.c();
        throw new KotlinNothingValueException();
    }

    @Override // rc.a1
    /* renamed from: O0, reason: merged with bridge method [inline-methods] */
    public Void L(long j10, rc.o<? super vb.p> oVar) {
        N0();
        throw new KotlinNothingValueException();
    }

    @Override // rc.n2, rc.l0
    public String toString() {
        StringBuilder sb2 = new StringBuilder();
        sb2.append("Dispatchers.Main[missing");
        Throwable th = this.f15538g;
        sb2.append(th != null ? jc.l.m(", cause=", th) : "");
        sb2.append(']');
        return sb2.toString();
    }

    @Override // rc.a1
    public i1 w0(long j10, Runnable runnable, ac.g gVar) {
        N0();
        throw new KotlinNothingValueException();
    }
}
