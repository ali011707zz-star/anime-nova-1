package j;

import android.view.View;
import android.view.animation.Interpolator;
import java.util.ArrayList;
import java.util.Iterator;
import q0.g0;
import q0.h0;
import q0.i0;

/* compiled from: ViewPropertyAnimatorCompatSet.java */
/* loaded from: classes.dex */
public class h {

    /* renamed from: c, reason: collision with root package name */
    public Interpolator f8044c;

    /* renamed from: d, reason: collision with root package name */
    public h0 f8045d;

    /* renamed from: e, reason: collision with root package name */
    public boolean f8046e;

    /* renamed from: b, reason: collision with root package name */
    public long f8043b = -1;

    /* renamed from: f, reason: collision with root package name */
    public final i0 f8047f = new a();

    /* renamed from: a, reason: collision with root package name */
    public final ArrayList<g0> f8042a = new ArrayList<>();

    /* compiled from: ViewPropertyAnimatorCompatSet.java */
    /* loaded from: classes.dex */
    public class a extends i0 {

        /* renamed from: a, reason: collision with root package name */
        public boolean f8048a = false;

        /* renamed from: b, reason: collision with root package name */
        public int f8049b = 0;

        public a() {
        }

        @Override // q0.h0
        public void b(View view) {
            int i10 = this.f8049b + 1;
            this.f8049b = i10;
            if (i10 == h.this.f8042a.size()) {
                h0 h0Var = h.this.f8045d;
                if (h0Var != null) {
                    h0Var.b(null);
                }
                d();
            }
        }

        @Override // q0.i0, q0.h0
        public void c(View view) {
            if (this.f8048a) {
                return;
            }
            this.f8048a = true;
            h0 h0Var = h.this.f8045d;
            if (h0Var != null) {
                h0Var.c(null);
            }
        }

        public void d() {
            this.f8049b = 0;
            this.f8048a = false;
            h.this.b();
        }
    }

    public void a() {
        if (this.f8046e) {
            Iterator<g0> it2 = this.f8042a.iterator();
            while (it2.hasNext()) {
                it2.next().b();
            }
            this.f8046e = false;
        }
    }

    public void b() {
        this.f8046e = false;
    }

    public h c(g0 g0Var) {
        if (!this.f8046e) {
            this.f8042a.add(g0Var);
        }
        return this;
    }

    public h d(g0 g0Var, g0 g0Var2) {
        this.f8042a.add(g0Var);
        g0Var2.h(g0Var.c());
        this.f8042a.add(g0Var2);
        return this;
    }

    public h e(long j10) {
        if (!this.f8046e) {
            this.f8043b = j10;
        }
        return this;
    }

    public h f(Interpolator interpolator) {
        if (!this.f8046e) {
            this.f8044c = interpolator;
        }
        return this;
    }

    public h g(h0 h0Var) {
        if (!this.f8046e) {
            this.f8045d = h0Var;
        }
        return this;
    }

    public void h() {
        if (this.f8046e) {
            return;
        }
        Iterator<g0> it2 = this.f8042a.iterator();
        while (it2.hasNext()) {
            g0 next = it2.next();
            long j10 = this.f8043b;
            if (j10 >= 0) {
                next.d(j10);
            }
            Interpolator interpolator = this.f8044c;
            if (interpolator != null) {
                next.e(interpolator);
            }
            if (this.f8045d != null) {
                next.f(this.f8047f);
            }
            next.j();
        }
        this.f8046e = true;
    }
}
