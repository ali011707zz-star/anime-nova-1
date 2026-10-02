package wc;

import rc.a3;

/* compiled from: ThreadContext.kt */
/* loaded from: classes2.dex */
public final class h0 {

    /* renamed from: a, reason: collision with root package name */
    public final ac.g f15495a;

    /* renamed from: b, reason: collision with root package name */
    public final Object[] f15496b;

    /* renamed from: c, reason: collision with root package name */
    public final a3<Object>[] f15497c;

    /* renamed from: d, reason: collision with root package name */
    public int f15498d;

    public h0(ac.g gVar, int i10) {
        this.f15495a = gVar;
        this.f15496b = new Object[i10];
        this.f15497c = new a3[i10];
    }

    public final void a(a3<?> a3Var, Object obj) {
        Object[] objArr = this.f15496b;
        int i10 = this.f15498d;
        objArr[i10] = obj;
        a3<Object>[] a3VarArr = this.f15497c;
        this.f15498d = i10 + 1;
        a3VarArr[i10] = a3Var;
    }

    public final void b(ac.g gVar) {
        int length = this.f15497c.length - 1;
        if (length < 0) {
            return;
        }
        while (true) {
            int i10 = length - 1;
            a3<Object> a3Var = this.f15497c[length];
            jc.l.c(a3Var);
            a3Var.x(gVar, this.f15496b[length]);
            if (i10 < 0) {
                return;
            } else {
                length = i10;
            }
        }
    }
}
