package androidx.recyclerview.widget;

import android.view.View;
import android.view.ViewGroup;
import androidx.recyclerview.widget.RecyclerView;
import java.util.ArrayList;
import java.util.List;

/* compiled from: ChildHelper.java */
/* loaded from: classes.dex */
public class f {

    /* renamed from: a, reason: collision with root package name */
    public final b f2911a;

    /* renamed from: b, reason: collision with root package name */
    public final a f2912b = new a();

    /* renamed from: c, reason: collision with root package name */
    public final List<View> f2913c = new ArrayList();

    /* compiled from: ChildHelper.java */
    /* loaded from: classes.dex */
    public static class a {

        /* renamed from: a, reason: collision with root package name */
        public long f2914a = 0;

        /* renamed from: b, reason: collision with root package name */
        public a f2915b;

        public void a(int i10) {
            if (i10 >= 64) {
                a aVar = this.f2915b;
                if (aVar != null) {
                    aVar.a(i10 - 64);
                    return;
                }
                return;
            }
            this.f2914a &= (1 << i10) ^ (-1);
        }

        public int b(int i10) {
            a aVar = this.f2915b;
            if (aVar == null) {
                if (i10 >= 64) {
                    return Long.bitCount(this.f2914a);
                }
                return Long.bitCount(this.f2914a & ((1 << i10) - 1));
            }
            if (i10 < 64) {
                return Long.bitCount(this.f2914a & ((1 << i10) - 1));
            }
            return aVar.b(i10 - 64) + Long.bitCount(this.f2914a);
        }

        public final void c() {
            if (this.f2915b == null) {
                this.f2915b = new a();
            }
        }

        public boolean d(int i10) {
            if (i10 < 64) {
                return (this.f2914a & (1 << i10)) != 0;
            }
            c();
            return this.f2915b.d(i10 - 64);
        }

        public void e(int i10, boolean z10) {
            if (i10 >= 64) {
                c();
                this.f2915b.e(i10 - 64, z10);
                return;
            }
            long j10 = this.f2914a;
            boolean z11 = (Long.MIN_VALUE & j10) != 0;
            long j11 = (1 << i10) - 1;
            this.f2914a = ((j10 & (j11 ^ (-1))) << 1) | (j10 & j11);
            if (z10) {
                h(i10);
            } else {
                a(i10);
            }
            if (z11 || this.f2915b != null) {
                c();
                this.f2915b.e(0, z11);
            }
        }

        public boolean f(int i10) {
            if (i10 >= 64) {
                c();
                return this.f2915b.f(i10 - 64);
            }
            long j10 = 1 << i10;
            long j11 = this.f2914a;
            boolean z10 = (j11 & j10) != 0;
            long j12 = j11 & (j10 ^ (-1));
            this.f2914a = j12;
            long j13 = j10 - 1;
            this.f2914a = (j12 & j13) | Long.rotateRight((j13 ^ (-1)) & j12, 1);
            a aVar = this.f2915b;
            if (aVar != null) {
                if (aVar.d(0)) {
                    h(63);
                }
                this.f2915b.f(0);
            }
            return z10;
        }

        public void g() {
            this.f2914a = 0L;
            a aVar = this.f2915b;
            if (aVar != null) {
                aVar.g();
            }
        }

        public void h(int i10) {
            if (i10 >= 64) {
                c();
                this.f2915b.h(i10 - 64);
            } else {
                this.f2914a |= 1 << i10;
            }
        }

        public String toString() {
            if (this.f2915b == null) {
                return Long.toBinaryString(this.f2914a);
            }
            return this.f2915b.toString() + "xx" + Long.toBinaryString(this.f2914a);
        }
    }

    /* compiled from: ChildHelper.java */
    /* loaded from: classes.dex */
    public interface b {
        View a(int i10);

        void b(View view);

        RecyclerView.e0 c(View view);

        void d(int i10);

        void e(View view);

        void f(View view, int i10);

        int g();

        void h(int i10);

        void i();

        void j(View view, int i10, ViewGroup.LayoutParams layoutParams);

        int k(View view);
    }

    public f(b bVar) {
        this.f2911a = bVar;
    }

    public void a(View view, int i10, boolean z10) {
        int h10;
        if (i10 < 0) {
            h10 = this.f2911a.g();
        } else {
            h10 = h(i10);
        }
        this.f2912b.e(h10, z10);
        if (z10) {
            l(view);
        }
        this.f2911a.f(view, h10);
    }

    public void b(View view, boolean z10) {
        a(view, -1, z10);
    }

    public void c(View view, int i10, ViewGroup.LayoutParams layoutParams, boolean z10) {
        int h10;
        if (i10 < 0) {
            h10 = this.f2911a.g();
        } else {
            h10 = h(i10);
        }
        this.f2912b.e(h10, z10);
        if (z10) {
            l(view);
        }
        this.f2911a.j(view, h10, layoutParams);
    }

    public void d(int i10) {
        int h10 = h(i10);
        this.f2912b.f(h10);
        this.f2911a.d(h10);
    }

    public View e(int i10) {
        int size = this.f2913c.size();
        for (int i11 = 0; i11 < size; i11++) {
            View view = this.f2913c.get(i11);
            RecyclerView.e0 c10 = this.f2911a.c(view);
            if (c10.getLayoutPosition() == i10 && !c10.isInvalid() && !c10.isRemoved()) {
                return view;
            }
        }
        return null;
    }

    public View f(int i10) {
        return this.f2911a.a(h(i10));
    }

    public int g() {
        return this.f2911a.g() - this.f2913c.size();
    }

    public final int h(int i10) {
        if (i10 < 0) {
            return -1;
        }
        int g10 = this.f2911a.g();
        int i11 = i10;
        while (i11 < g10) {
            int b10 = i10 - (i11 - this.f2912b.b(i11));
            if (b10 == 0) {
                while (this.f2912b.d(i11)) {
                    i11++;
                }
                return i11;
            }
            i11 += b10;
        }
        return -1;
    }

    public View i(int i10) {
        return this.f2911a.a(i10);
    }

    public int j() {
        return this.f2911a.g();
    }

    public void k(View view) {
        int k10 = this.f2911a.k(view);
        if (k10 >= 0) {
            this.f2912b.h(k10);
            l(view);
        } else {
            throw new IllegalArgumentException("view is not a child, cannot hide " + view);
        }
    }

    public final void l(View view) {
        this.f2913c.add(view);
        this.f2911a.b(view);
    }

    public int m(View view) {
        int k10 = this.f2911a.k(view);
        if (k10 == -1 || this.f2912b.d(k10)) {
            return -1;
        }
        return k10 - this.f2912b.b(k10);
    }

    public boolean n(View view) {
        return this.f2913c.contains(view);
    }

    public void o() {
        this.f2912b.g();
        for (int size = this.f2913c.size() - 1; size >= 0; size--) {
            this.f2911a.e(this.f2913c.get(size));
            this.f2913c.remove(size);
        }
        this.f2911a.i();
    }

    public void p(View view) {
        int k10 = this.f2911a.k(view);
        if (k10 < 0) {
            return;
        }
        if (this.f2912b.f(k10)) {
            t(view);
        }
        this.f2911a.h(k10);
    }

    public void q(int i10) {
        int h10 = h(i10);
        View a10 = this.f2911a.a(h10);
        if (a10 == null) {
            return;
        }
        if (this.f2912b.f(h10)) {
            t(a10);
        }
        this.f2911a.h(h10);
    }

    public boolean r(View view) {
        int k10 = this.f2911a.k(view);
        if (k10 == -1) {
            t(view);
            return true;
        }
        if (!this.f2912b.d(k10)) {
            return false;
        }
        this.f2912b.f(k10);
        t(view);
        this.f2911a.h(k10);
        return true;
    }

    public void s(View view) {
        int k10 = this.f2911a.k(view);
        if (k10 >= 0) {
            if (this.f2912b.d(k10)) {
                this.f2912b.a(k10);
                t(view);
                return;
            } else {
                throw new RuntimeException("trying to unhide a view that was not hidden" + view);
            }
        }
        throw new IllegalArgumentException("view is not a child, cannot hide " + view);
    }

    public final boolean t(View view) {
        if (!this.f2913c.remove(view)) {
            return false;
        }
        this.f2911a.e(view);
        return true;
    }

    public String toString() {
        return this.f2912b.toString() + ", hidden list:" + this.f2913c.size();
    }
}
