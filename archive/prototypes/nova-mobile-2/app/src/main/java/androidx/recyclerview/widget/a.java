package androidx.recyclerview.widget;

import androidx.recyclerview.widget.RecyclerView;
import androidx.recyclerview.widget.r;
import java.util.ArrayList;
import java.util.List;

/* compiled from: AdapterHelper.java */
/* loaded from: classes.dex */
public final class a implements r.a {

    /* renamed from: a, reason: collision with root package name */
    public p0.f<b> f2853a;

    /* renamed from: b, reason: collision with root package name */
    public final ArrayList<b> f2854b;

    /* renamed from: c, reason: collision with root package name */
    public final ArrayList<b> f2855c;

    /* renamed from: d, reason: collision with root package name */
    public final InterfaceC0045a f2856d;

    /* renamed from: e, reason: collision with root package name */
    public Runnable f2857e;

    /* renamed from: f, reason: collision with root package name */
    public final boolean f2858f;

    /* renamed from: g, reason: collision with root package name */
    public final r f2859g;

    /* renamed from: h, reason: collision with root package name */
    public int f2860h;

    /* compiled from: AdapterHelper.java */
    /* renamed from: androidx.recyclerview.widget.a$a, reason: collision with other inner class name */
    /* loaded from: classes.dex */
    public interface InterfaceC0045a {
        void a(int i10, int i11);

        void b(b bVar);

        RecyclerView.e0 c(int i10);

        void d(int i10, int i11);

        void e(int i10, int i11);

        void f(int i10, int i11);

        void g(b bVar);

        void h(int i10, int i11, Object obj);
    }

    /* compiled from: AdapterHelper.java */
    /* loaded from: classes.dex */
    public static final class b {

        /* renamed from: a, reason: collision with root package name */
        public int f2861a;

        /* renamed from: b, reason: collision with root package name */
        public int f2862b;

        /* renamed from: c, reason: collision with root package name */
        public Object f2863c;

        /* renamed from: d, reason: collision with root package name */
        public int f2864d;

        public b(int i10, int i11, int i12, Object obj) {
            this.f2861a = i10;
            this.f2862b = i11;
            this.f2864d = i12;
            this.f2863c = obj;
        }

        public String a() {
            int i10 = this.f2861a;
            return i10 != 1 ? i10 != 2 ? i10 != 4 ? i10 != 8 ? "??" : "mv" : "up" : "rm" : "add";
        }

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof b)) {
                return false;
            }
            b bVar = (b) obj;
            int i10 = this.f2861a;
            if (i10 != bVar.f2861a) {
                return false;
            }
            if (i10 == 8 && Math.abs(this.f2864d - this.f2862b) == 1 && this.f2864d == bVar.f2862b && this.f2862b == bVar.f2864d) {
                return true;
            }
            if (this.f2864d != bVar.f2864d || this.f2862b != bVar.f2862b) {
                return false;
            }
            Object obj2 = this.f2863c;
            if (obj2 != null) {
                if (!obj2.equals(bVar.f2863c)) {
                    return false;
                }
            } else if (bVar.f2863c != null) {
                return false;
            }
            return true;
        }

        public int hashCode() {
            return (((this.f2861a * 31) + this.f2862b) * 31) + this.f2864d;
        }

        public String toString() {
            return Integer.toHexString(System.identityHashCode(this)) + "[" + a() + ",s:" + this.f2862b + "c:" + this.f2864d + ",p:" + this.f2863c + "]";
        }
    }

    public a(InterfaceC0045a interfaceC0045a) {
        this(interfaceC0045a, false);
    }

    @Override // androidx.recyclerview.widget.r.a
    public void a(b bVar) {
        if (this.f2858f) {
            return;
        }
        bVar.f2863c = null;
        this.f2853a.a(bVar);
    }

    @Override // androidx.recyclerview.widget.r.a
    public b b(int i10, int i11, int i12, Object obj) {
        b b10 = this.f2853a.b();
        if (b10 == null) {
            return new b(i10, i11, i12, obj);
        }
        b10.f2861a = i10;
        b10.f2862b = i11;
        b10.f2864d = i12;
        b10.f2863c = obj;
        return b10;
    }

    public final void c(b bVar) {
        v(bVar);
    }

    public final void d(b bVar) {
        v(bVar);
    }

    public int e(int i10) {
        int size = this.f2854b.size();
        for (int i11 = 0; i11 < size; i11++) {
            b bVar = this.f2854b.get(i11);
            int i12 = bVar.f2861a;
            if (i12 != 1) {
                if (i12 == 2) {
                    int i13 = bVar.f2862b;
                    if (i13 <= i10) {
                        int i14 = bVar.f2864d;
                        if (i13 + i14 > i10) {
                            return -1;
                        }
                        i10 -= i14;
                    } else {
                        continue;
                    }
                } else if (i12 == 8) {
                    int i15 = bVar.f2862b;
                    if (i15 == i10) {
                        i10 = bVar.f2864d;
                    } else {
                        if (i15 < i10) {
                            i10--;
                        }
                        if (bVar.f2864d <= i10) {
                            i10++;
                        }
                    }
                }
            } else if (bVar.f2862b <= i10) {
                i10 += bVar.f2864d;
            }
        }
        return i10;
    }

    public final void f(b bVar) {
        boolean z10;
        char c10;
        int i10 = bVar.f2862b;
        int i11 = bVar.f2864d + i10;
        char c11 = 65535;
        int i12 = i10;
        int i13 = 0;
        while (i12 < i11) {
            if (this.f2856d.c(i12) != null || h(i12)) {
                if (c11 == 0) {
                    k(b(2, i10, i13, null));
                    z10 = true;
                } else {
                    z10 = false;
                }
                c10 = 1;
            } else {
                if (c11 == 1) {
                    v(b(2, i10, i13, null));
                    z10 = true;
                } else {
                    z10 = false;
                }
                c10 = 0;
            }
            if (z10) {
                i12 -= i13;
                i11 -= i13;
                i13 = 1;
            } else {
                i13++;
            }
            i12++;
            c11 = c10;
        }
        if (i13 != bVar.f2864d) {
            a(bVar);
            bVar = b(2, i10, i13, null);
        }
        if (c11 == 0) {
            k(bVar);
        } else {
            v(bVar);
        }
    }

    public final void g(b bVar) {
        int i10 = bVar.f2862b;
        int i11 = bVar.f2864d + i10;
        int i12 = i10;
        char c10 = 65535;
        int i13 = 0;
        while (i10 < i11) {
            if (this.f2856d.c(i10) != null || h(i10)) {
                if (c10 == 0) {
                    k(b(4, i12, i13, bVar.f2863c));
                    i12 = i10;
                    i13 = 0;
                }
                c10 = 1;
            } else {
                if (c10 == 1) {
                    v(b(4, i12, i13, bVar.f2863c));
                    i12 = i10;
                    i13 = 0;
                }
                c10 = 0;
            }
            i13++;
            i10++;
        }
        if (i13 != bVar.f2864d) {
            Object obj = bVar.f2863c;
            a(bVar);
            bVar = b(4, i12, i13, obj);
        }
        if (c10 == 0) {
            k(bVar);
        } else {
            v(bVar);
        }
    }

    public final boolean h(int i10) {
        int size = this.f2855c.size();
        for (int i11 = 0; i11 < size; i11++) {
            b bVar = this.f2855c.get(i11);
            int i12 = bVar.f2861a;
            if (i12 == 8) {
                if (n(bVar.f2864d, i11 + 1) == i10) {
                    return true;
                }
            } else if (i12 == 1) {
                int i13 = bVar.f2862b;
                int i14 = bVar.f2864d + i13;
                while (i13 < i14) {
                    if (n(i13, i11 + 1) == i10) {
                        return true;
                    }
                    i13++;
                }
            } else {
                continue;
            }
        }
        return false;
    }

    public void i() {
        int size = this.f2855c.size();
        for (int i10 = 0; i10 < size; i10++) {
            this.f2856d.b(this.f2855c.get(i10));
        }
        x(this.f2855c);
        this.f2860h = 0;
    }

    public void j() {
        i();
        int size = this.f2854b.size();
        for (int i10 = 0; i10 < size; i10++) {
            b bVar = this.f2854b.get(i10);
            int i11 = bVar.f2861a;
            if (i11 == 1) {
                this.f2856d.b(bVar);
                this.f2856d.e(bVar.f2862b, bVar.f2864d);
            } else if (i11 == 2) {
                this.f2856d.b(bVar);
                this.f2856d.f(bVar.f2862b, bVar.f2864d);
            } else if (i11 == 4) {
                this.f2856d.b(bVar);
                this.f2856d.h(bVar.f2862b, bVar.f2864d, bVar.f2863c);
            } else if (i11 == 8) {
                this.f2856d.b(bVar);
                this.f2856d.a(bVar.f2862b, bVar.f2864d);
            }
            Runnable runnable = this.f2857e;
            if (runnable != null) {
                runnable.run();
            }
        }
        x(this.f2854b);
        this.f2860h = 0;
    }

    public final void k(b bVar) {
        int i10;
        int i11 = bVar.f2861a;
        if (i11 != 1 && i11 != 8) {
            int z10 = z(bVar.f2862b, i11);
            int i12 = bVar.f2862b;
            int i13 = bVar.f2861a;
            if (i13 == 2) {
                i10 = 0;
            } else {
                if (i13 != 4) {
                    throw new IllegalArgumentException("op should be remove or update." + bVar);
                }
                i10 = 1;
            }
            int i14 = 1;
            for (int i15 = 1; i15 < bVar.f2864d; i15++) {
                int z11 = z(bVar.f2862b + (i10 * i15), bVar.f2861a);
                int i16 = bVar.f2861a;
                if (i16 == 2 ? z11 == z10 : i16 == 4 && z11 == z10 + 1) {
                    i14++;
                } else {
                    b b10 = b(i16, z10, i14, bVar.f2863c);
                    l(b10, i12);
                    a(b10);
                    if (bVar.f2861a == 4) {
                        i12 += i14;
                    }
                    z10 = z11;
                    i14 = 1;
                }
            }
            Object obj = bVar.f2863c;
            a(bVar);
            if (i14 > 0) {
                b b11 = b(bVar.f2861a, z10, i14, obj);
                l(b11, i12);
                a(b11);
                return;
            }
            return;
        }
        throw new IllegalArgumentException("should not dispatch add or move for pre layout");
    }

    public void l(b bVar, int i10) {
        this.f2856d.g(bVar);
        int i11 = bVar.f2861a;
        if (i11 == 2) {
            this.f2856d.f(i10, bVar.f2864d);
        } else {
            if (i11 == 4) {
                this.f2856d.h(i10, bVar.f2864d, bVar.f2863c);
                return;
            }
            throw new IllegalArgumentException("only remove and update ops can be dispatched in first pass");
        }
    }

    public int m(int i10) {
        return n(i10, 0);
    }

    public int n(int i10, int i11) {
        int size = this.f2855c.size();
        while (i11 < size) {
            b bVar = this.f2855c.get(i11);
            int i12 = bVar.f2861a;
            if (i12 == 8) {
                int i13 = bVar.f2862b;
                if (i13 == i10) {
                    i10 = bVar.f2864d;
                } else {
                    if (i13 < i10) {
                        i10--;
                    }
                    if (bVar.f2864d <= i10) {
                        i10++;
                    }
                }
            } else {
                int i14 = bVar.f2862b;
                if (i14 > i10) {
                    continue;
                } else if (i12 == 2) {
                    int i15 = bVar.f2864d;
                    if (i10 < i14 + i15) {
                        return -1;
                    }
                    i10 -= i15;
                } else if (i12 == 1) {
                    i10 += bVar.f2864d;
                }
            }
            i11++;
        }
        return i10;
    }

    public boolean o(int i10) {
        return (i10 & this.f2860h) != 0;
    }

    public boolean p() {
        return this.f2854b.size() > 0;
    }

    public boolean q() {
        return (this.f2855c.isEmpty() || this.f2854b.isEmpty()) ? false : true;
    }

    public boolean r(int i10, int i11, Object obj) {
        if (i11 < 1) {
            return false;
        }
        this.f2854b.add(b(4, i10, i11, obj));
        this.f2860h |= 4;
        return this.f2854b.size() == 1;
    }

    public boolean s(int i10, int i11) {
        if (i11 < 1) {
            return false;
        }
        this.f2854b.add(b(1, i10, i11, null));
        this.f2860h |= 1;
        return this.f2854b.size() == 1;
    }

    public boolean t(int i10, int i11, int i12) {
        if (i10 == i11) {
            return false;
        }
        if (i12 == 1) {
            this.f2854b.add(b(8, i10, i11, null));
            this.f2860h |= 8;
            return this.f2854b.size() == 1;
        }
        throw new IllegalArgumentException("Moving more than 1 item is not supported yet");
    }

    public boolean u(int i10, int i11) {
        if (i11 < 1) {
            return false;
        }
        this.f2854b.add(b(2, i10, i11, null));
        this.f2860h |= 2;
        return this.f2854b.size() == 1;
    }

    public final void v(b bVar) {
        this.f2855c.add(bVar);
        int i10 = bVar.f2861a;
        if (i10 == 1) {
            this.f2856d.e(bVar.f2862b, bVar.f2864d);
            return;
        }
        if (i10 == 2) {
            this.f2856d.d(bVar.f2862b, bVar.f2864d);
            return;
        }
        if (i10 == 4) {
            this.f2856d.h(bVar.f2862b, bVar.f2864d, bVar.f2863c);
        } else {
            if (i10 == 8) {
                this.f2856d.a(bVar.f2862b, bVar.f2864d);
                return;
            }
            throw new IllegalArgumentException("Unknown update op type for " + bVar);
        }
    }

    public void w() {
        this.f2859g.b(this.f2854b);
        int size = this.f2854b.size();
        for (int i10 = 0; i10 < size; i10++) {
            b bVar = this.f2854b.get(i10);
            int i11 = bVar.f2861a;
            if (i11 == 1) {
                c(bVar);
            } else if (i11 == 2) {
                f(bVar);
            } else if (i11 == 4) {
                g(bVar);
            } else if (i11 == 8) {
                d(bVar);
            }
            Runnable runnable = this.f2857e;
            if (runnable != null) {
                runnable.run();
            }
        }
        this.f2854b.clear();
    }

    public void x(List<b> list) {
        int size = list.size();
        for (int i10 = 0; i10 < size; i10++) {
            a(list.get(i10));
        }
        list.clear();
    }

    public void y() {
        x(this.f2854b);
        x(this.f2855c);
        this.f2860h = 0;
    }

    public final int z(int i10, int i11) {
        int i12;
        int i13;
        for (int size = this.f2855c.size() - 1; size >= 0; size--) {
            b bVar = this.f2855c.get(size);
            int i14 = bVar.f2861a;
            if (i14 == 8) {
                int i15 = bVar.f2862b;
                int i16 = bVar.f2864d;
                if (i15 < i16) {
                    i13 = i15;
                    i12 = i16;
                } else {
                    i12 = i15;
                    i13 = i16;
                }
                if (i10 < i13 || i10 > i12) {
                    if (i10 < i15) {
                        if (i11 == 1) {
                            bVar.f2862b = i15 + 1;
                            bVar.f2864d = i16 + 1;
                        } else if (i11 == 2) {
                            bVar.f2862b = i15 - 1;
                            bVar.f2864d = i16 - 1;
                        }
                    }
                } else if (i13 == i15) {
                    if (i11 == 1) {
                        bVar.f2864d = i16 + 1;
                    } else if (i11 == 2) {
                        bVar.f2864d = i16 - 1;
                    }
                    i10++;
                } else {
                    if (i11 == 1) {
                        bVar.f2862b = i15 + 1;
                    } else if (i11 == 2) {
                        bVar.f2862b = i15 - 1;
                    }
                    i10--;
                }
            } else {
                int i17 = bVar.f2862b;
                if (i17 <= i10) {
                    if (i14 == 1) {
                        i10 -= bVar.f2864d;
                    } else if (i14 == 2) {
                        i10 += bVar.f2864d;
                    }
                } else if (i11 == 1) {
                    bVar.f2862b = i17 + 1;
                } else if (i11 == 2) {
                    bVar.f2862b = i17 - 1;
                }
            }
        }
        for (int size2 = this.f2855c.size() - 1; size2 >= 0; size2--) {
            b bVar2 = this.f2855c.get(size2);
            if (bVar2.f2861a == 8) {
                int i18 = bVar2.f2864d;
                if (i18 == bVar2.f2862b || i18 < 0) {
                    this.f2855c.remove(size2);
                    a(bVar2);
                }
            } else if (bVar2.f2864d <= 0) {
                this.f2855c.remove(size2);
                a(bVar2);
            }
        }
        return i10;
    }

    public a(InterfaceC0045a interfaceC0045a, boolean z10) {
        this.f2853a = new p0.g(30);
        this.f2854b = new ArrayList<>();
        this.f2855c = new ArrayList<>();
        this.f2860h = 0;
        this.f2856d = interfaceC0045a;
        this.f2858f = z10;
        this.f2859g = new r(this);
    }
}
