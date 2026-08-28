package yc;

import java.util.concurrent.Executor;
import java.util.concurrent.RejectedExecutionException;
import rc.s1;
import rc.w0;

/* compiled from: Dispatcher.kt */
/* loaded from: classes2.dex */
public class c extends s1 {

    /* renamed from: h, reason: collision with root package name */
    public final int f16827h;

    /* renamed from: i, reason: collision with root package name */
    public final int f16828i;

    /* renamed from: j, reason: collision with root package name */
    public final long f16829j;

    /* renamed from: k, reason: collision with root package name */
    public final String f16830k;

    /* renamed from: l, reason: collision with root package name */
    public a f16831l;

    public c(int i10, int i11, long j10, String str) {
        this.f16827h = i10;
        this.f16828i = i11;
        this.f16829j = j10;
        this.f16830k = str;
        this.f16831l = L0();
    }

    @Override // rc.l0
    public void H0(ac.g gVar, Runnable runnable) {
        try {
            a.z(this.f16831l, runnable, null, false, 6, null);
        } catch (RejectedExecutionException unused) {
            w0.f13346l.H0(gVar, runnable);
        }
    }

    @Override // rc.l0
    public void I0(ac.g gVar, Runnable runnable) {
        try {
            a.z(this.f16831l, runnable, null, true, 2, null);
        } catch (RejectedExecutionException unused) {
            w0.f13346l.I0(gVar, runnable);
        }
    }

    @Override // rc.s1
    public Executor K0() {
        return this.f16831l;
    }

    public final a L0() {
        return new a(this.f16827h, this.f16828i, this.f16829j, this.f16830k);
    }

    public final void M0(Runnable runnable, j jVar, boolean z10) {
        try {
            this.f16831l.x(runnable, jVar, z10);
        } catch (RejectedExecutionException unused) {
            w0.f13346l.c1(this.f16831l.h(runnable, jVar));
        }
    }

    public /* synthetic */ c(int i10, int i11, String str, int i12, jc.g gVar) {
        this((i12 & 1) != 0 ? l.f16846c : i10, (i12 & 2) != 0 ? l.f16847d : i11, (i12 & 4) != 0 ? "DefaultDispatcher" : str);
    }

    public c(int i10, int i11, String str) {
        this(i10, i11, l.f16848e, str);
    }
}
