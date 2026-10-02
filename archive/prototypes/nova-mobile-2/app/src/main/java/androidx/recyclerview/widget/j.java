package androidx.recyclerview.widget;

import androidx.recyclerview.widget.RecyclerView;
import java.util.ArrayDeque;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collection;
import java.util.Collections;
import java.util.Comparator;
import java.util.Iterator;
import java.util.List;

/* compiled from: DiffUtil.java */
/* loaded from: classes.dex */
public class j {

    /* renamed from: a, reason: collision with root package name */
    public static final Comparator<d> f2988a = new a();

    /* compiled from: DiffUtil.java */
    /* loaded from: classes.dex */
    public class a implements Comparator<d> {
        @Override // java.util.Comparator
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public int compare(d dVar, d dVar2) {
            return dVar.f2991a - dVar2.f2991a;
        }
    }

    /* compiled from: DiffUtil.java */
    /* loaded from: classes.dex */
    public static abstract class b {
        public abstract boolean a(int i10, int i11);

        public abstract boolean b(int i10, int i11);

        public abstract Object c(int i10, int i11);

        public abstract int d();

        public abstract int e();
    }

    /* compiled from: DiffUtil.java */
    /* loaded from: classes.dex */
    public static class c {

        /* renamed from: a, reason: collision with root package name */
        public final int[] f2989a;

        /* renamed from: b, reason: collision with root package name */
        public final int f2990b;

        public c(int i10) {
            int[] iArr = new int[i10];
            this.f2989a = iArr;
            this.f2990b = iArr.length / 2;
        }

        public int[] a() {
            return this.f2989a;
        }

        public int b(int i10) {
            return this.f2989a[i10 + this.f2990b];
        }

        public void c(int i10, int i11) {
            this.f2989a[i10 + this.f2990b] = i11;
        }
    }

    /* compiled from: DiffUtil.java */
    /* loaded from: classes.dex */
    public static class d {

        /* renamed from: a, reason: collision with root package name */
        public final int f2991a;

        /* renamed from: b, reason: collision with root package name */
        public final int f2992b;

        /* renamed from: c, reason: collision with root package name */
        public final int f2993c;

        public d(int i10, int i11, int i12) {
            this.f2991a = i10;
            this.f2992b = i11;
            this.f2993c = i12;
        }

        public int a() {
            return this.f2991a + this.f2993c;
        }

        public int b() {
            return this.f2992b + this.f2993c;
        }
    }

    /* compiled from: DiffUtil.java */
    /* loaded from: classes.dex */
    public static class e {

        /* renamed from: a, reason: collision with root package name */
        public final List<d> f2994a;

        /* renamed from: b, reason: collision with root package name */
        public final int[] f2995b;

        /* renamed from: c, reason: collision with root package name */
        public final int[] f2996c;

        /* renamed from: d, reason: collision with root package name */
        public final b f2997d;

        /* renamed from: e, reason: collision with root package name */
        public final int f2998e;

        /* renamed from: f, reason: collision with root package name */
        public final int f2999f;

        /* renamed from: g, reason: collision with root package name */
        public final boolean f3000g;

        public e(b bVar, List<d> list, int[] iArr, int[] iArr2, boolean z10) {
            this.f2994a = list;
            this.f2995b = iArr;
            this.f2996c = iArr2;
            Arrays.fill(iArr, 0);
            Arrays.fill(iArr2, 0);
            this.f2997d = bVar;
            this.f2998e = bVar.e();
            this.f2999f = bVar.d();
            this.f3000g = z10;
            a();
            f();
        }

        public static g h(Collection<g> collection, int i10, boolean z10) {
            g gVar;
            Iterator<g> it2 = collection.iterator();
            while (true) {
                if (!it2.hasNext()) {
                    gVar = null;
                    break;
                }
                gVar = it2.next();
                if (gVar.f3001a == i10 && gVar.f3003c == z10) {
                    it2.remove();
                    break;
                }
            }
            while (it2.hasNext()) {
                g next = it2.next();
                if (z10) {
                    next.f3002b--;
                } else {
                    next.f3002b++;
                }
            }
            return gVar;
        }

        public final void a() {
            d dVar = this.f2994a.isEmpty() ? null : this.f2994a.get(0);
            if (dVar == null || dVar.f2991a != 0 || dVar.f2992b != 0) {
                this.f2994a.add(0, new d(0, 0, 0));
            }
            this.f2994a.add(new d(this.f2998e, this.f2999f, 0));
        }

        public int b(int i10) {
            if (i10 >= 0 && i10 < this.f2998e) {
                int i11 = this.f2995b[i10];
                if ((i11 & 15) == 0) {
                    return -1;
                }
                return i11 >> 4;
            }
            throw new IndexOutOfBoundsException("Index out of bounds - passed position = " + i10 + ", old list size = " + this.f2998e);
        }

        public void c(p pVar) {
            androidx.recyclerview.widget.e eVar;
            int i10;
            if (pVar instanceof androidx.recyclerview.widget.e) {
                eVar = (androidx.recyclerview.widget.e) pVar;
            } else {
                eVar = new androidx.recyclerview.widget.e(pVar);
            }
            int i11 = this.f2998e;
            ArrayDeque arrayDeque = new ArrayDeque();
            int i12 = this.f2998e;
            int i13 = this.f2999f;
            for (int size = this.f2994a.size() - 1; size >= 0; size--) {
                d dVar = this.f2994a.get(size);
                int a10 = dVar.a();
                int b10 = dVar.b();
                while (true) {
                    if (i12 <= a10) {
                        break;
                    }
                    i12--;
                    int i14 = this.f2995b[i12];
                    if ((i14 & 12) != 0) {
                        int i15 = i14 >> 4;
                        g h10 = h(arrayDeque, i15, false);
                        if (h10 != null) {
                            int i16 = (i11 - h10.f3002b) - 1;
                            eVar.c(i12, i16);
                            if ((i14 & 4) != 0) {
                                eVar.d(i16, 1, this.f2997d.c(i12, i15));
                            }
                        } else {
                            arrayDeque.add(new g(i12, (i11 - i12) - 1, true));
                        }
                    } else {
                        eVar.a(i12, 1);
                        i11--;
                    }
                }
                while (i13 > b10) {
                    i13--;
                    int i17 = this.f2996c[i13];
                    if ((i17 & 12) != 0) {
                        int i18 = i17 >> 4;
                        g h11 = h(arrayDeque, i18, true);
                        if (h11 == null) {
                            arrayDeque.add(new g(i13, i11 - i12, false));
                        } else {
                            eVar.c((i11 - h11.f3002b) - 1, i12);
                            if ((i17 & 4) != 0) {
                                eVar.d(i12, 1, this.f2997d.c(i18, i13));
                            }
                        }
                    } else {
                        eVar.b(i12, 1);
                        i11++;
                    }
                }
                int i19 = dVar.f2991a;
                int i20 = dVar.f2992b;
                for (i10 = 0; i10 < dVar.f2993c; i10++) {
                    if ((this.f2995b[i19] & 15) == 2) {
                        eVar.d(i19, 1, this.f2997d.c(i19, i20));
                    }
                    i19++;
                    i20++;
                }
                i12 = dVar.f2991a;
                i13 = dVar.f2992b;
            }
            eVar.e();
        }

        public void d(RecyclerView.h hVar) {
            c(new androidx.recyclerview.widget.b(hVar));
        }

        public final void e(int i10) {
            int size = this.f2994a.size();
            int i11 = 0;
            for (int i12 = 0; i12 < size; i12++) {
                d dVar = this.f2994a.get(i12);
                while (i11 < dVar.f2992b) {
                    if (this.f2996c[i11] == 0 && this.f2997d.b(i10, i11)) {
                        int i13 = this.f2997d.a(i10, i11) ? 8 : 4;
                        this.f2995b[i10] = (i11 << 4) | i13;
                        this.f2996c[i11] = (i10 << 4) | i13;
                        return;
                    }
                    i11++;
                }
                i11 = dVar.b();
            }
        }

        public final void f() {
            for (d dVar : this.f2994a) {
                for (int i10 = 0; i10 < dVar.f2993c; i10++) {
                    int i11 = dVar.f2991a + i10;
                    int i12 = dVar.f2992b + i10;
                    int i13 = this.f2997d.a(i11, i12) ? 1 : 2;
                    this.f2995b[i11] = (i12 << 4) | i13;
                    this.f2996c[i12] = (i11 << 4) | i13;
                }
            }
            if (this.f3000g) {
                g();
            }
        }

        public final void g() {
            int i10 = 0;
            for (d dVar : this.f2994a) {
                while (i10 < dVar.f2991a) {
                    if (this.f2995b[i10] == 0) {
                        e(i10);
                    }
                    i10++;
                }
                i10 = dVar.a();
            }
        }
    }

    /* compiled from: DiffUtil.java */
    /* loaded from: classes.dex */
    public static abstract class f<T> {
        public abstract boolean a(T t10, T t11);

        public abstract boolean b(T t10, T t11);

        public Object c(T t10, T t11) {
            return null;
        }
    }

    /* compiled from: DiffUtil.java */
    /* loaded from: classes.dex */
    public static class g {

        /* renamed from: a, reason: collision with root package name */
        public int f3001a;

        /* renamed from: b, reason: collision with root package name */
        public int f3002b;

        /* renamed from: c, reason: collision with root package name */
        public boolean f3003c;

        public g(int i10, int i11, boolean z10) {
            this.f3001a = i10;
            this.f3002b = i11;
            this.f3003c = z10;
        }
    }

    /* compiled from: DiffUtil.java */
    /* loaded from: classes.dex */
    public static class h {

        /* renamed from: a, reason: collision with root package name */
        public int f3004a;

        /* renamed from: b, reason: collision with root package name */
        public int f3005b;

        /* renamed from: c, reason: collision with root package name */
        public int f3006c;

        /* renamed from: d, reason: collision with root package name */
        public int f3007d;

        public h() {
        }

        public int a() {
            return this.f3007d - this.f3006c;
        }

        public int b() {
            return this.f3005b - this.f3004a;
        }

        public h(int i10, int i11, int i12, int i13) {
            this.f3004a = i10;
            this.f3005b = i11;
            this.f3006c = i12;
            this.f3007d = i13;
        }
    }

    /* compiled from: DiffUtil.java */
    /* loaded from: classes.dex */
    public static class i {

        /* renamed from: a, reason: collision with root package name */
        public int f3008a;

        /* renamed from: b, reason: collision with root package name */
        public int f3009b;

        /* renamed from: c, reason: collision with root package name */
        public int f3010c;

        /* renamed from: d, reason: collision with root package name */
        public int f3011d;

        /* renamed from: e, reason: collision with root package name */
        public boolean f3012e;

        public int a() {
            return Math.min(this.f3010c - this.f3008a, this.f3011d - this.f3009b);
        }

        public boolean b() {
            return this.f3011d - this.f3009b != this.f3010c - this.f3008a;
        }

        public boolean c() {
            return this.f3011d - this.f3009b > this.f3010c - this.f3008a;
        }

        public d d() {
            if (b()) {
                if (this.f3012e) {
                    return new d(this.f3008a, this.f3009b, a());
                }
                if (c()) {
                    return new d(this.f3008a, this.f3009b + 1, a());
                }
                return new d(this.f3008a + 1, this.f3009b, a());
            }
            int i10 = this.f3008a;
            return new d(i10, this.f3009b, this.f3010c - i10);
        }
    }

    public static i a(h hVar, b bVar, c cVar, c cVar2, int i10) {
        int b10;
        int i11;
        int i12;
        boolean z10 = (hVar.b() - hVar.a()) % 2 == 0;
        int b11 = hVar.b() - hVar.a();
        int i13 = -i10;
        for (int i14 = i13; i14 <= i10; i14 += 2) {
            if (i14 != i13 && (i14 == i10 || cVar2.b(i14 + 1) >= cVar2.b(i14 - 1))) {
                b10 = cVar2.b(i14 - 1);
                i11 = b10 - 1;
            } else {
                b10 = cVar2.b(i14 + 1);
                i11 = b10;
            }
            int i15 = hVar.f3007d - ((hVar.f3005b - i11) - i14);
            int i16 = (i10 == 0 || i11 != b10) ? i15 : i15 + 1;
            while (i11 > hVar.f3004a && i15 > hVar.f3006c && bVar.b(i11 - 1, i15 - 1)) {
                i11--;
                i15--;
            }
            cVar2.c(i14, i11);
            if (z10 && (i12 = b11 - i14) >= i13 && i12 <= i10 && cVar.b(i12) >= i11) {
                i iVar = new i();
                iVar.f3008a = i11;
                iVar.f3009b = i15;
                iVar.f3010c = b10;
                iVar.f3011d = i16;
                iVar.f3012e = true;
                return iVar;
            }
        }
        return null;
    }

    public static e b(b bVar) {
        return c(bVar, true);
    }

    public static e c(b bVar, boolean z10) {
        int e10 = bVar.e();
        int d10 = bVar.d();
        ArrayList arrayList = new ArrayList();
        ArrayList arrayList2 = new ArrayList();
        arrayList2.add(new h(0, e10, 0, d10));
        int i10 = ((((e10 + d10) + 1) / 2) * 2) + 1;
        c cVar = new c(i10);
        c cVar2 = new c(i10);
        ArrayList arrayList3 = new ArrayList();
        while (!arrayList2.isEmpty()) {
            h hVar = (h) arrayList2.remove(arrayList2.size() - 1);
            i e11 = e(hVar, bVar, cVar, cVar2);
            if (e11 != null) {
                if (e11.a() > 0) {
                    arrayList.add(e11.d());
                }
                h hVar2 = arrayList3.isEmpty() ? new h() : (h) arrayList3.remove(arrayList3.size() - 1);
                hVar2.f3004a = hVar.f3004a;
                hVar2.f3006c = hVar.f3006c;
                hVar2.f3005b = e11.f3008a;
                hVar2.f3007d = e11.f3009b;
                arrayList2.add(hVar2);
                hVar.f3005b = hVar.f3005b;
                hVar.f3007d = hVar.f3007d;
                hVar.f3004a = e11.f3010c;
                hVar.f3006c = e11.f3011d;
                arrayList2.add(hVar);
            } else {
                arrayList3.add(hVar);
            }
        }
        Collections.sort(arrayList, f2988a);
        return new e(bVar, arrayList, cVar.a(), cVar2.a(), z10);
    }

    public static i d(h hVar, b bVar, c cVar, c cVar2, int i10) {
        int b10;
        int i11;
        int i12;
        boolean z10 = Math.abs(hVar.b() - hVar.a()) % 2 == 1;
        int b11 = hVar.b() - hVar.a();
        int i13 = -i10;
        for (int i14 = i13; i14 <= i10; i14 += 2) {
            if (i14 != i13 && (i14 == i10 || cVar.b(i14 + 1) <= cVar.b(i14 - 1))) {
                b10 = cVar.b(i14 - 1);
                i11 = b10 + 1;
            } else {
                b10 = cVar.b(i14 + 1);
                i11 = b10;
            }
            int i15 = (hVar.f3006c + (i11 - hVar.f3004a)) - i14;
            int i16 = (i10 == 0 || i11 != b10) ? i15 : i15 - 1;
            while (i11 < hVar.f3005b && i15 < hVar.f3007d && bVar.b(i11, i15)) {
                i11++;
                i15++;
            }
            cVar.c(i14, i11);
            if (z10 && (i12 = b11 - i14) >= i13 + 1 && i12 <= i10 - 1 && cVar2.b(i12) <= i11) {
                i iVar = new i();
                iVar.f3008a = b10;
                iVar.f3009b = i16;
                iVar.f3010c = i11;
                iVar.f3011d = i15;
                iVar.f3012e = false;
                return iVar;
            }
        }
        return null;
    }

    public static i e(h hVar, b bVar, c cVar, c cVar2) {
        if (hVar.b() >= 1 && hVar.a() >= 1) {
            int b10 = ((hVar.b() + hVar.a()) + 1) / 2;
            cVar.c(1, hVar.f3004a);
            cVar2.c(1, hVar.f3005b);
            for (int i10 = 0; i10 < b10; i10++) {
                i d10 = d(hVar, bVar, cVar, cVar2, i10);
                if (d10 != null) {
                    return d10;
                }
                i a10 = a(hVar, bVar, cVar, cVar2, i10);
                if (a10 != null) {
                    return a10;
                }
            }
        }
        return null;
    }
}
