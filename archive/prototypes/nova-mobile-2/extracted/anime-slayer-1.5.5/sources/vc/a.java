package vc;

import java.util.Arrays;
import uc.c0;
import vb.j;
import vc.c;

/* compiled from: AbstractSharedFlow.kt */
/* loaded from: classes2.dex */
public abstract class a<S extends c<?>> {

    /* renamed from: f, reason: collision with root package name */
    public S[] f15034f;

    /* renamed from: g, reason: collision with root package name */
    public int f15035g;

    /* renamed from: h, reason: collision with root package name */
    public int f15036h;

    /* renamed from: i, reason: collision with root package name */
    public uc.u<Integer> f15037i;

    public final S h() {
        S s10;
        uc.u<Integer> uVar;
        synchronized (this) {
            S[] m10 = m();
            if (m10 == null) {
                m10 = j(2);
                this.f15034f = m10;
            } else if (l() >= m10.length) {
                Object[] copyOf = Arrays.copyOf(m10, m10.length * 2);
                jc.l.e(copyOf, "java.util.Arrays.copyOf(this, newSize)");
                this.f15034f = (S[]) ((c[]) copyOf);
                m10 = (S[]) ((c[]) copyOf);
            }
            int i10 = this.f15036h;
            do {
                s10 = m10[i10];
                if (s10 == null) {
                    s10 = i();
                    m10[i10] = s10;
                }
                i10++;
                if (i10 >= m10.length) {
                    i10 = 0;
                }
            } while (!s10.a(this));
            this.f15036h = i10;
            this.f15035g = l() + 1;
            uVar = this.f15037i;
        }
        if (uVar != null) {
            c0.e(uVar, 1);
        }
        return s10;
    }

    public abstract S i();

    public abstract S[] j(int i10);

    public final void k(S s10) {
        uc.u<Integer> uVar;
        int i10;
        ac.d<vb.p>[] b10;
        synchronized (this) {
            this.f15035g = l() - 1;
            uVar = this.f15037i;
            i10 = 0;
            if (l() == 0) {
                this.f15036h = 0;
            }
            b10 = s10.b(this);
        }
        int length = b10.length;
        while (i10 < length) {
            ac.d<vb.p> dVar = b10[i10];
            i10++;
            if (dVar != null) {
                vb.p pVar = vb.p.f15031a;
                j.a aVar = vb.j.f15020f;
                dVar.resumeWith(vb.j.a(pVar));
            }
        }
        if (uVar == null) {
            return;
        }
        c0.e(uVar, -1);
    }

    public final int l() {
        return this.f15035g;
    }

    public final S[] m() {
        return this.f15034f;
    }
}
