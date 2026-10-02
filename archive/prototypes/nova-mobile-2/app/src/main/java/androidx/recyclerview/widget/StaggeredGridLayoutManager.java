package androidx.recyclerview.widget;

import android.annotation.SuppressLint;
import android.content.Context;
import android.graphics.PointF;
import android.graphics.Rect;
import android.os.Parcel;
import android.os.Parcelable;
import android.util.AttributeSet;
import android.view.View;
import android.view.ViewGroup;
import android.view.accessibility.AccessibilityEvent;
import androidx.recyclerview.widget.RecyclerView;
import com.google.android.gms.common.api.Api;
import com.google.android.material.internal.StaticLayoutBuilderCompat;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.BitSet;
import java.util.List;

/* loaded from: classes.dex */
public class StaggeredGridLayoutManager extends RecyclerView.p implements RecyclerView.a0.b {

    /* renamed from: b, reason: collision with root package name */
    public f[] f2798b;

    /* renamed from: c, reason: collision with root package name */
    public s f2799c;

    /* renamed from: d, reason: collision with root package name */
    public s f2800d;

    /* renamed from: e, reason: collision with root package name */
    public int f2801e;

    /* renamed from: f, reason: collision with root package name */
    public int f2802f;

    /* renamed from: g, reason: collision with root package name */
    public final m f2803g;

    /* renamed from: j, reason: collision with root package name */
    public BitSet f2806j;

    /* renamed from: o, reason: collision with root package name */
    public boolean f2811o;

    /* renamed from: p, reason: collision with root package name */
    public boolean f2812p;

    /* renamed from: q, reason: collision with root package name */
    public e f2813q;

    /* renamed from: r, reason: collision with root package name */
    public int f2814r;

    /* renamed from: w, reason: collision with root package name */
    public int[] f2819w;

    /* renamed from: a, reason: collision with root package name */
    public int f2797a = -1;

    /* renamed from: h, reason: collision with root package name */
    public boolean f2804h = false;

    /* renamed from: i, reason: collision with root package name */
    public boolean f2805i = false;

    /* renamed from: k, reason: collision with root package name */
    public int f2807k = -1;

    /* renamed from: l, reason: collision with root package name */
    public int f2808l = Integer.MIN_VALUE;

    /* renamed from: m, reason: collision with root package name */
    public d f2809m = new d();

    /* renamed from: n, reason: collision with root package name */
    public int f2810n = 2;

    /* renamed from: s, reason: collision with root package name */
    public final Rect f2815s = new Rect();

    /* renamed from: t, reason: collision with root package name */
    public final b f2816t = new b();

    /* renamed from: u, reason: collision with root package name */
    public boolean f2817u = false;

    /* renamed from: v, reason: collision with root package name */
    public boolean f2818v = true;

    /* renamed from: x, reason: collision with root package name */
    public final Runnable f2820x = new a();

    /* loaded from: classes.dex */
    public class a implements Runnable {
        public a() {
        }

        @Override // java.lang.Runnable
        public void run() {
            StaggeredGridLayoutManager.this.w();
        }
    }

    /* loaded from: classes.dex */
    public class b {

        /* renamed from: a, reason: collision with root package name */
        public int f2822a;

        /* renamed from: b, reason: collision with root package name */
        public int f2823b;

        /* renamed from: c, reason: collision with root package name */
        public boolean f2824c;

        /* renamed from: d, reason: collision with root package name */
        public boolean f2825d;

        /* renamed from: e, reason: collision with root package name */
        public boolean f2826e;

        /* renamed from: f, reason: collision with root package name */
        public int[] f2827f;

        public b() {
            c();
        }

        public void a() {
            this.f2823b = this.f2824c ? StaggeredGridLayoutManager.this.f2799c.i() : StaggeredGridLayoutManager.this.f2799c.m();
        }

        public void b(int i10) {
            if (this.f2824c) {
                this.f2823b = StaggeredGridLayoutManager.this.f2799c.i() - i10;
            } else {
                this.f2823b = StaggeredGridLayoutManager.this.f2799c.m() + i10;
            }
        }

        public void c() {
            this.f2822a = -1;
            this.f2823b = Integer.MIN_VALUE;
            this.f2824c = false;
            this.f2825d = false;
            this.f2826e = false;
            int[] iArr = this.f2827f;
            if (iArr != null) {
                Arrays.fill(iArr, -1);
            }
        }

        public void d(f[] fVarArr) {
            int length = fVarArr.length;
            int[] iArr = this.f2827f;
            if (iArr == null || iArr.length < length) {
                this.f2827f = new int[StaggeredGridLayoutManager.this.f2798b.length];
            }
            for (int i10 = 0; i10 < length; i10++) {
                this.f2827f[i10] = fVarArr[i10].r(Integer.MIN_VALUE);
            }
        }
    }

    /* loaded from: classes.dex */
    public static class c extends RecyclerView.q {

        /* renamed from: j, reason: collision with root package name */
        public f f2829j;

        /* renamed from: k, reason: collision with root package name */
        public boolean f2830k;

        public c(Context context, AttributeSet attributeSet) {
            super(context, attributeSet);
        }

        public boolean g() {
            return this.f2830k;
        }

        public void i(boolean z10) {
            this.f2830k = z10;
        }

        public c(int i10, int i11) {
            super(i10, i11);
        }

        public c(ViewGroup.MarginLayoutParams marginLayoutParams) {
            super(marginLayoutParams);
        }

        public c(ViewGroup.LayoutParams layoutParams) {
            super(layoutParams);
        }
    }

    @SuppressLint({"BanParcelableUsage"})
    /* loaded from: classes.dex */
    public static class e implements Parcelable {
        public static final Parcelable.Creator<e> CREATOR = new a();

        /* renamed from: f, reason: collision with root package name */
        public int f2837f;

        /* renamed from: g, reason: collision with root package name */
        public int f2838g;

        /* renamed from: h, reason: collision with root package name */
        public int f2839h;

        /* renamed from: i, reason: collision with root package name */
        public int[] f2840i;

        /* renamed from: j, reason: collision with root package name */
        public int f2841j;

        /* renamed from: k, reason: collision with root package name */
        public int[] f2842k;

        /* renamed from: l, reason: collision with root package name */
        public List<d.a> f2843l;

        /* renamed from: m, reason: collision with root package name */
        public boolean f2844m;

        /* renamed from: n, reason: collision with root package name */
        public boolean f2845n;

        /* renamed from: o, reason: collision with root package name */
        public boolean f2846o;

        /* loaded from: classes.dex */
        public class a implements Parcelable.Creator<e> {
            @Override // android.os.Parcelable.Creator
            /* renamed from: a, reason: merged with bridge method [inline-methods] */
            public e createFromParcel(Parcel parcel) {
                return new e(parcel);
            }

            @Override // android.os.Parcelable.Creator
            /* renamed from: b, reason: merged with bridge method [inline-methods] */
            public e[] newArray(int i10) {
                return new e[i10];
            }
        }

        public e() {
        }

        public void a() {
            this.f2840i = null;
            this.f2839h = 0;
            this.f2837f = -1;
            this.f2838g = -1;
        }

        public void c() {
            this.f2840i = null;
            this.f2839h = 0;
            this.f2841j = 0;
            this.f2842k = null;
            this.f2843l = null;
        }

        @Override // android.os.Parcelable
        public int describeContents() {
            return 0;
        }

        @Override // android.os.Parcelable
        public void writeToParcel(Parcel parcel, int i10) {
            parcel.writeInt(this.f2837f);
            parcel.writeInt(this.f2838g);
            parcel.writeInt(this.f2839h);
            if (this.f2839h > 0) {
                parcel.writeIntArray(this.f2840i);
            }
            parcel.writeInt(this.f2841j);
            if (this.f2841j > 0) {
                parcel.writeIntArray(this.f2842k);
            }
            parcel.writeInt(this.f2844m ? 1 : 0);
            parcel.writeInt(this.f2845n ? 1 : 0);
            parcel.writeInt(this.f2846o ? 1 : 0);
            parcel.writeList(this.f2843l);
        }

        public e(Parcel parcel) {
            this.f2837f = parcel.readInt();
            this.f2838g = parcel.readInt();
            int readInt = parcel.readInt();
            this.f2839h = readInt;
            if (readInt > 0) {
                int[] iArr = new int[readInt];
                this.f2840i = iArr;
                parcel.readIntArray(iArr);
            }
            int readInt2 = parcel.readInt();
            this.f2841j = readInt2;
            if (readInt2 > 0) {
                int[] iArr2 = new int[readInt2];
                this.f2842k = iArr2;
                parcel.readIntArray(iArr2);
            }
            this.f2844m = parcel.readInt() == 1;
            this.f2845n = parcel.readInt() == 1;
            this.f2846o = parcel.readInt() == 1;
            this.f2843l = parcel.readArrayList(d.a.class.getClassLoader());
        }

        public e(e eVar) {
            this.f2839h = eVar.f2839h;
            this.f2837f = eVar.f2837f;
            this.f2838g = eVar.f2838g;
            this.f2840i = eVar.f2840i;
            this.f2841j = eVar.f2841j;
            this.f2842k = eVar.f2842k;
            this.f2844m = eVar.f2844m;
            this.f2845n = eVar.f2845n;
            this.f2846o = eVar.f2846o;
            this.f2843l = eVar.f2843l;
        }
    }

    /* loaded from: classes.dex */
    public class f {

        /* renamed from: a, reason: collision with root package name */
        public ArrayList<View> f2847a = new ArrayList<>();

        /* renamed from: b, reason: collision with root package name */
        public int f2848b = Integer.MIN_VALUE;

        /* renamed from: c, reason: collision with root package name */
        public int f2849c = Integer.MIN_VALUE;

        /* renamed from: d, reason: collision with root package name */
        public int f2850d = 0;

        /* renamed from: e, reason: collision with root package name */
        public final int f2851e;

        public f(int i10) {
            this.f2851e = i10;
        }

        public void a(View view) {
            c p10 = p(view);
            p10.f2829j = this;
            this.f2847a.add(view);
            this.f2849c = Integer.MIN_VALUE;
            if (this.f2847a.size() == 1) {
                this.f2848b = Integer.MIN_VALUE;
            }
            if (p10.e() || p10.c()) {
                this.f2850d += StaggeredGridLayoutManager.this.f2799c.e(view);
            }
        }

        public void b(boolean z10, int i10) {
            int r10;
            if (z10) {
                r10 = n(Integer.MIN_VALUE);
            } else {
                r10 = r(Integer.MIN_VALUE);
            }
            e();
            if (r10 == Integer.MIN_VALUE) {
                return;
            }
            if (!z10 || r10 >= StaggeredGridLayoutManager.this.f2799c.i()) {
                if (z10 || r10 <= StaggeredGridLayoutManager.this.f2799c.m()) {
                    if (i10 != Integer.MIN_VALUE) {
                        r10 += i10;
                    }
                    this.f2849c = r10;
                    this.f2848b = r10;
                }
            }
        }

        public void c() {
            d.a f10;
            ArrayList<View> arrayList = this.f2847a;
            View view = arrayList.get(arrayList.size() - 1);
            c p10 = p(view);
            this.f2849c = StaggeredGridLayoutManager.this.f2799c.d(view);
            if (p10.f2830k && (f10 = StaggeredGridLayoutManager.this.f2809m.f(p10.a())) != null && f10.f2834g == 1) {
                this.f2849c += f10.a(this.f2851e);
            }
        }

        public void d() {
            d.a f10;
            View view = this.f2847a.get(0);
            c p10 = p(view);
            this.f2848b = StaggeredGridLayoutManager.this.f2799c.g(view);
            if (p10.f2830k && (f10 = StaggeredGridLayoutManager.this.f2809m.f(p10.a())) != null && f10.f2834g == -1) {
                this.f2848b -= f10.a(this.f2851e);
            }
        }

        public void e() {
            this.f2847a.clear();
            s();
            this.f2850d = 0;
        }

        public int f() {
            if (StaggeredGridLayoutManager.this.f2804h) {
                return j(this.f2847a.size() - 1, -1, true);
            }
            return j(0, this.f2847a.size(), true);
        }

        public int g() {
            if (StaggeredGridLayoutManager.this.f2804h) {
                return k(this.f2847a.size() - 1, -1, false);
            }
            return k(0, this.f2847a.size(), false);
        }

        public int h() {
            if (StaggeredGridLayoutManager.this.f2804h) {
                return j(0, this.f2847a.size(), true);
            }
            return j(this.f2847a.size() - 1, -1, true);
        }

        public int i(int i10, int i11, boolean z10, boolean z11, boolean z12) {
            int m10 = StaggeredGridLayoutManager.this.f2799c.m();
            int i12 = StaggeredGridLayoutManager.this.f2799c.i();
            int i13 = i11 > i10 ? 1 : -1;
            while (i10 != i11) {
                View view = this.f2847a.get(i10);
                int g10 = StaggeredGridLayoutManager.this.f2799c.g(view);
                int d10 = StaggeredGridLayoutManager.this.f2799c.d(view);
                boolean z13 = false;
                boolean z14 = !z12 ? g10 >= i12 : g10 > i12;
                if (!z12 ? d10 > m10 : d10 >= m10) {
                    z13 = true;
                }
                if (z14 && z13) {
                    if (z10 && z11) {
                        if (g10 >= m10 && d10 <= i12) {
                            return StaggeredGridLayoutManager.this.getPosition(view);
                        }
                    } else {
                        if (z11) {
                            return StaggeredGridLayoutManager.this.getPosition(view);
                        }
                        if (g10 < m10 || d10 > i12) {
                            return StaggeredGridLayoutManager.this.getPosition(view);
                        }
                    }
                }
                i10 += i13;
            }
            return -1;
        }

        public int j(int i10, int i11, boolean z10) {
            return i(i10, i11, false, false, z10);
        }

        public int k(int i10, int i11, boolean z10) {
            return i(i10, i11, z10, true, false);
        }

        public int l() {
            return this.f2850d;
        }

        public int m() {
            int i10 = this.f2849c;
            if (i10 != Integer.MIN_VALUE) {
                return i10;
            }
            c();
            return this.f2849c;
        }

        public int n(int i10) {
            int i11 = this.f2849c;
            if (i11 != Integer.MIN_VALUE) {
                return i11;
            }
            if (this.f2847a.size() == 0) {
                return i10;
            }
            c();
            return this.f2849c;
        }

        public View o(int i10, int i11) {
            View view = null;
            if (i11 == -1) {
                int size = this.f2847a.size();
                int i12 = 0;
                while (i12 < size) {
                    View view2 = this.f2847a.get(i12);
                    StaggeredGridLayoutManager staggeredGridLayoutManager = StaggeredGridLayoutManager.this;
                    if (staggeredGridLayoutManager.f2804h && staggeredGridLayoutManager.getPosition(view2) <= i10) {
                        break;
                    }
                    StaggeredGridLayoutManager staggeredGridLayoutManager2 = StaggeredGridLayoutManager.this;
                    if ((!staggeredGridLayoutManager2.f2804h && staggeredGridLayoutManager2.getPosition(view2) >= i10) || !view2.hasFocusable()) {
                        break;
                    }
                    i12++;
                    view = view2;
                }
            } else {
                int size2 = this.f2847a.size() - 1;
                while (size2 >= 0) {
                    View view3 = this.f2847a.get(size2);
                    StaggeredGridLayoutManager staggeredGridLayoutManager3 = StaggeredGridLayoutManager.this;
                    if (staggeredGridLayoutManager3.f2804h && staggeredGridLayoutManager3.getPosition(view3) >= i10) {
                        break;
                    }
                    StaggeredGridLayoutManager staggeredGridLayoutManager4 = StaggeredGridLayoutManager.this;
                    if ((!staggeredGridLayoutManager4.f2804h && staggeredGridLayoutManager4.getPosition(view3) <= i10) || !view3.hasFocusable()) {
                        break;
                    }
                    size2--;
                    view = view3;
                }
            }
            return view;
        }

        public c p(View view) {
            return (c) view.getLayoutParams();
        }

        public int q() {
            int i10 = this.f2848b;
            if (i10 != Integer.MIN_VALUE) {
                return i10;
            }
            d();
            return this.f2848b;
        }

        public int r(int i10) {
            int i11 = this.f2848b;
            if (i11 != Integer.MIN_VALUE) {
                return i11;
            }
            if (this.f2847a.size() == 0) {
                return i10;
            }
            d();
            return this.f2848b;
        }

        public void s() {
            this.f2848b = Integer.MIN_VALUE;
            this.f2849c = Integer.MIN_VALUE;
        }

        public void t(int i10) {
            int i11 = this.f2848b;
            if (i11 != Integer.MIN_VALUE) {
                this.f2848b = i11 + i10;
            }
            int i12 = this.f2849c;
            if (i12 != Integer.MIN_VALUE) {
                this.f2849c = i12 + i10;
            }
        }

        public void u() {
            int size = this.f2847a.size();
            View remove = this.f2847a.remove(size - 1);
            c p10 = p(remove);
            p10.f2829j = null;
            if (p10.e() || p10.c()) {
                this.f2850d -= StaggeredGridLayoutManager.this.f2799c.e(remove);
            }
            if (size == 1) {
                this.f2848b = Integer.MIN_VALUE;
            }
            this.f2849c = Integer.MIN_VALUE;
        }

        public void v() {
            View remove = this.f2847a.remove(0);
            c p10 = p(remove);
            p10.f2829j = null;
            if (this.f2847a.size() == 0) {
                this.f2849c = Integer.MIN_VALUE;
            }
            if (p10.e() || p10.c()) {
                this.f2850d -= StaggeredGridLayoutManager.this.f2799c.e(remove);
            }
            this.f2848b = Integer.MIN_VALUE;
        }

        public void w(View view) {
            c p10 = p(view);
            p10.f2829j = this;
            this.f2847a.add(0, view);
            this.f2848b = Integer.MIN_VALUE;
            if (this.f2847a.size() == 1) {
                this.f2849c = Integer.MIN_VALUE;
            }
            if (p10.e() || p10.c()) {
                this.f2850d += StaggeredGridLayoutManager.this.f2799c.e(view);
            }
        }

        public void x(int i10) {
            this.f2848b = i10;
            this.f2849c = i10;
        }
    }

    public StaggeredGridLayoutManager(Context context, AttributeSet attributeSet, int i10, int i11) {
        RecyclerView.p.d properties = RecyclerView.p.getProperties(context, attributeSet, i10, i11);
        setOrientation(properties.f2773a);
        f0(properties.f2774b);
        setReverseLayout(properties.f2775c);
        this.f2803g = new m();
        A();
    }

    public final void A() {
        this.f2799c = s.b(this, this.f2801e);
        this.f2800d = s.b(this, 1 - this.f2801e);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r9v0 */
    /* JADX WARN: Type inference failed for: r9v1, types: [boolean, int] */
    /* JADX WARN: Type inference failed for: r9v7 */
    public final int B(RecyclerView.w wVar, m mVar, RecyclerView.b0 b0Var) {
        int i10;
        int i11;
        int m10;
        int M;
        f fVar;
        int e10;
        int i12;
        int i13;
        int e11;
        boolean t10;
        int r92 = 0;
        this.f2806j.set(0, this.f2797a, true);
        if (this.f2803g.f3067i) {
            i11 = mVar.f3063e == 1 ? Api.BaseClientBuilder.API_PRIORITY_OTHER : Integer.MIN_VALUE;
        } else {
            if (mVar.f3063e == 1) {
                i10 = mVar.f3065g + mVar.f3060b;
            } else {
                i10 = mVar.f3064f - mVar.f3060b;
            }
            i11 = i10;
        }
        g0(mVar.f3063e, i11);
        if (this.f2805i) {
            m10 = this.f2799c.i();
        } else {
            m10 = this.f2799c.m();
        }
        int i14 = m10;
        boolean z10 = false;
        while (mVar.a(b0Var) && (this.f2803g.f3067i || !this.f2806j.isEmpty())) {
            View b10 = mVar.b(wVar);
            c cVar = (c) b10.getLayoutParams();
            int a10 = cVar.a();
            int g10 = this.f2809m.g(a10);
            boolean z11 = g10 == -1;
            if (z11) {
                fVar = cVar.f2830k ? this.f2798b[r92] : Q(mVar);
                this.f2809m.n(a10, fVar);
            } else {
                fVar = this.f2798b[g10];
            }
            f fVar2 = fVar;
            cVar.f2829j = fVar2;
            if (mVar.f3063e == 1) {
                addView(b10);
            } else {
                addView(b10, r92);
            }
            V(b10, cVar, r92);
            if (mVar.f3063e == 1) {
                int M2 = cVar.f2830k ? M(i14) : fVar2.n(i14);
                int e12 = this.f2799c.e(b10) + M2;
                if (z11 && cVar.f2830k) {
                    d.a y10 = y(M2);
                    y10.f2834g = -1;
                    y10.f2833f = a10;
                    this.f2809m.a(y10);
                }
                i12 = e12;
                e10 = M2;
            } else {
                int P = cVar.f2830k ? P(i14) : fVar2.r(i14);
                e10 = P - this.f2799c.e(b10);
                if (z11 && cVar.f2830k) {
                    d.a z12 = z(P);
                    z12.f2834g = 1;
                    z12.f2833f = a10;
                    this.f2809m.a(z12);
                }
                i12 = P;
            }
            if (cVar.f2830k && mVar.f3062d == -1) {
                if (z11) {
                    this.f2817u = true;
                } else {
                    if (mVar.f3063e == 1) {
                        t10 = s();
                    } else {
                        t10 = t();
                    }
                    if (!t10) {
                        d.a f10 = this.f2809m.f(a10);
                        if (f10 != null) {
                            f10.f2836i = true;
                        }
                        this.f2817u = true;
                    }
                }
            }
            u(b10, cVar, mVar);
            if (isLayoutRTL() && this.f2801e == 1) {
                int i15 = cVar.f2830k ? this.f2800d.i() : this.f2800d.i() - (((this.f2797a - 1) - fVar2.f2851e) * this.f2802f);
                e11 = i15;
                i13 = i15 - this.f2800d.e(b10);
            } else {
                int m11 = cVar.f2830k ? this.f2800d.m() : (fVar2.f2851e * this.f2802f) + this.f2800d.m();
                i13 = m11;
                e11 = this.f2800d.e(b10) + m11;
            }
            if (this.f2801e == 1) {
                layoutDecoratedWithMargins(b10, i13, e10, e11, i12);
            } else {
                layoutDecoratedWithMargins(b10, e10, i13, i12, e11);
            }
            if (cVar.f2830k) {
                g0(this.f2803g.f3063e, i11);
            } else {
                m0(fVar2, this.f2803g.f3063e, i11);
            }
            a0(wVar, this.f2803g);
            if (this.f2803g.f3066h && b10.hasFocusable()) {
                if (cVar.f2830k) {
                    this.f2806j.clear();
                } else {
                    this.f2806j.set(fVar2.f2851e, false);
                    z10 = true;
                    r92 = 0;
                }
            }
            z10 = true;
            r92 = 0;
        }
        if (!z10) {
            a0(wVar, this.f2803g);
        }
        if (this.f2803g.f3063e == -1) {
            M = this.f2799c.m() - P(this.f2799c.m());
        } else {
            M = M(this.f2799c.i()) - this.f2799c.i();
        }
        if (M > 0) {
            return Math.min(mVar.f3060b, M);
        }
        return 0;
    }

    public final int C(int i10) {
        int childCount = getChildCount();
        for (int i11 = 0; i11 < childCount; i11++) {
            int position = getPosition(getChildAt(i11));
            if (position >= 0 && position < i10) {
                return position;
            }
        }
        return 0;
    }

    public View D(boolean z10) {
        int m10 = this.f2799c.m();
        int i10 = this.f2799c.i();
        View view = null;
        for (int childCount = getChildCount() - 1; childCount >= 0; childCount--) {
            View childAt = getChildAt(childCount);
            int g10 = this.f2799c.g(childAt);
            int d10 = this.f2799c.d(childAt);
            if (d10 > m10 && g10 < i10) {
                if (d10 <= i10 || !z10) {
                    return childAt;
                }
                if (view == null) {
                    view = childAt;
                }
            }
        }
        return view;
    }

    public View E(boolean z10) {
        int m10 = this.f2799c.m();
        int i10 = this.f2799c.i();
        int childCount = getChildCount();
        View view = null;
        for (int i11 = 0; i11 < childCount; i11++) {
            View childAt = getChildAt(i11);
            int g10 = this.f2799c.g(childAt);
            if (this.f2799c.d(childAt) > m10 && g10 < i10) {
                if (g10 >= m10 || !z10) {
                    return childAt;
                }
                if (view == null) {
                    view = childAt;
                }
            }
        }
        return view;
    }

    public int F() {
        View D = this.f2805i ? D(true) : E(true);
        if (D == null) {
            return -1;
        }
        return getPosition(D);
    }

    public int[] G(int[] iArr) {
        if (iArr == null) {
            iArr = new int[this.f2797a];
        } else if (iArr.length < this.f2797a) {
            throw new IllegalArgumentException("Provided int[]'s size must be more than or equal to span count. Expected:" + this.f2797a + ", array size:" + iArr.length);
        }
        for (int i10 = 0; i10 < this.f2797a; i10++) {
            iArr[i10] = this.f2798b[i10].g();
        }
        return iArr;
    }

    public final int H(int i10) {
        for (int childCount = getChildCount() - 1; childCount >= 0; childCount--) {
            int position = getPosition(getChildAt(childCount));
            if (position >= 0 && position < i10) {
                return position;
            }
        }
        return 0;
    }

    public final void I(RecyclerView.w wVar, RecyclerView.b0 b0Var, boolean z10) {
        int i10;
        int M = M(Integer.MIN_VALUE);
        if (M != Integer.MIN_VALUE && (i10 = this.f2799c.i() - M) > 0) {
            int i11 = i10 - (-scrollBy(-i10, wVar, b0Var));
            if (!z10 || i11 <= 0) {
                return;
            }
            this.f2799c.r(i11);
        }
    }

    public final void J(RecyclerView.w wVar, RecyclerView.b0 b0Var, boolean z10) {
        int m10;
        int P = P(Api.BaseClientBuilder.API_PRIORITY_OTHER);
        if (P != Integer.MAX_VALUE && (m10 = P - this.f2799c.m()) > 0) {
            int scrollBy = m10 - scrollBy(m10, wVar, b0Var);
            if (!z10 || scrollBy <= 0) {
                return;
            }
            this.f2799c.r(-scrollBy);
        }
    }

    public int K() {
        if (getChildCount() == 0) {
            return 0;
        }
        return getPosition(getChildAt(0));
    }

    public int L() {
        int childCount = getChildCount();
        if (childCount == 0) {
            return 0;
        }
        return getPosition(getChildAt(childCount - 1));
    }

    public final int M(int i10) {
        int n10 = this.f2798b[0].n(i10);
        for (int i11 = 1; i11 < this.f2797a; i11++) {
            int n11 = this.f2798b[i11].n(i10);
            if (n11 > n10) {
                n10 = n11;
            }
        }
        return n10;
    }

    public final int N(int i10) {
        int r10 = this.f2798b[0].r(i10);
        for (int i11 = 1; i11 < this.f2797a; i11++) {
            int r11 = this.f2798b[i11].r(i10);
            if (r11 > r10) {
                r10 = r11;
            }
        }
        return r10;
    }

    public final int O(int i10) {
        int n10 = this.f2798b[0].n(i10);
        for (int i11 = 1; i11 < this.f2797a; i11++) {
            int n11 = this.f2798b[i11].n(i10);
            if (n11 < n10) {
                n10 = n11;
            }
        }
        return n10;
    }

    public final int P(int i10) {
        int r10 = this.f2798b[0].r(i10);
        for (int i11 = 1; i11 < this.f2797a; i11++) {
            int r11 = this.f2798b[i11].r(i10);
            if (r11 < r10) {
                r10 = r11;
            }
        }
        return r10;
    }

    public final f Q(m mVar) {
        int i10;
        int i11;
        int i12 = -1;
        if (X(mVar.f3063e)) {
            i10 = this.f2797a - 1;
            i11 = -1;
        } else {
            i10 = 0;
            i12 = this.f2797a;
            i11 = 1;
        }
        f fVar = null;
        if (mVar.f3063e == 1) {
            int i13 = Api.BaseClientBuilder.API_PRIORITY_OTHER;
            int m10 = this.f2799c.m();
            while (i10 != i12) {
                f fVar2 = this.f2798b[i10];
                int n10 = fVar2.n(m10);
                if (n10 < i13) {
                    fVar = fVar2;
                    i13 = n10;
                }
                i10 += i11;
            }
            return fVar;
        }
        int i14 = Integer.MIN_VALUE;
        int i15 = this.f2799c.i();
        while (i10 != i12) {
            f fVar3 = this.f2798b[i10];
            int r10 = fVar3.r(i15);
            if (r10 > i14) {
                fVar = fVar3;
                i14 = r10;
            }
            i10 += i11;
        }
        return fVar;
    }

    /* JADX WARN: Removed duplicated region for block: B:11:0x0025  */
    /* JADX WARN: Removed duplicated region for block: B:16:0x0043 A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:18:0x0044  */
    /* JADX WARN: Removed duplicated region for block: B:27:0x003c  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final void R(int i10, int i11, int i12) {
        int i13;
        int i14;
        int L = this.f2805i ? L() : K();
        if (i12 != 8) {
            i13 = i10 + i11;
        } else {
            if (i10 >= i11) {
                i13 = i10 + 1;
                i14 = i11;
                this.f2809m.h(i14);
                if (i12 != 1) {
                    this.f2809m.j(i10, i11);
                } else if (i12 == 2) {
                    this.f2809m.k(i10, i11);
                } else if (i12 == 8) {
                    this.f2809m.k(i10, 1);
                    this.f2809m.j(i11, 1);
                }
                if (i13 > L) {
                    return;
                }
                if (i14 <= (this.f2805i ? K() : L())) {
                    requestLayout();
                    return;
                }
                return;
            }
            i13 = i11 + 1;
        }
        i14 = i10;
        this.f2809m.h(i14);
        if (i12 != 1) {
        }
        if (i13 > L) {
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:29:0x0074, code lost:
    
        if (r10 == r11) goto L37;
     */
    /* JADX WARN: Code restructure failed: missing block: B:30:0x008a, code lost:
    
        r10 = false;
     */
    /* JADX WARN: Code restructure failed: missing block: B:45:0x0088, code lost:
    
        r10 = true;
     */
    /* JADX WARN: Code restructure failed: missing block: B:50:0x0086, code lost:
    
        if (r10 == r11) goto L37;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public View S() {
        int i10;
        int i11;
        boolean z10;
        int childCount = getChildCount() - 1;
        BitSet bitSet = new BitSet(this.f2797a);
        bitSet.set(0, this.f2797a, true);
        char c10 = (this.f2801e == 1 && isLayoutRTL()) ? (char) 1 : (char) 65535;
        if (this.f2805i) {
            i10 = -1;
        } else {
            i10 = childCount + 1;
            childCount = 0;
        }
        int i12 = childCount < i10 ? 1 : -1;
        while (childCount != i10) {
            View childAt = getChildAt(childCount);
            c cVar = (c) childAt.getLayoutParams();
            if (bitSet.get(cVar.f2829j.f2851e)) {
                if (x(cVar.f2829j)) {
                    return childAt;
                }
                bitSet.clear(cVar.f2829j.f2851e);
            }
            if (!cVar.f2830k && (i11 = childCount + i12) != i10) {
                View childAt2 = getChildAt(i11);
                if (this.f2805i) {
                    int d10 = this.f2799c.d(childAt);
                    int d11 = this.f2799c.d(childAt2);
                    if (d10 < d11) {
                        return childAt;
                    }
                } else {
                    int g10 = this.f2799c.g(childAt);
                    int g11 = this.f2799c.g(childAt2);
                    if (g10 > g11) {
                        return childAt;
                    }
                }
                if (z10) {
                    if ((cVar.f2829j.f2851e - ((c) childAt2.getLayoutParams()).f2829j.f2851e < 0) != (c10 < 0)) {
                        return childAt;
                    }
                } else {
                    continue;
                }
            }
            childCount += i12;
        }
        return null;
    }

    public void T() {
        this.f2809m.b();
        requestLayout();
    }

    public final void U(View view, int i10, int i11, boolean z10) {
        boolean shouldMeasureChild;
        calculateItemDecorationsForChild(view, this.f2815s);
        c cVar = (c) view.getLayoutParams();
        int i12 = ((ViewGroup.MarginLayoutParams) cVar).leftMargin;
        Rect rect = this.f2815s;
        int n02 = n0(i10, i12 + rect.left, ((ViewGroup.MarginLayoutParams) cVar).rightMargin + rect.right);
        int i13 = ((ViewGroup.MarginLayoutParams) cVar).topMargin;
        Rect rect2 = this.f2815s;
        int n03 = n0(i11, i13 + rect2.top, ((ViewGroup.MarginLayoutParams) cVar).bottomMargin + rect2.bottom);
        if (z10) {
            shouldMeasureChild = shouldReMeasureChild(view, n02, n03, cVar);
        } else {
            shouldMeasureChild = shouldMeasureChild(view, n02, n03, cVar);
        }
        if (shouldMeasureChild) {
            view.measure(n02, n03);
        }
    }

    public final void V(View view, c cVar, boolean z10) {
        if (cVar.f2830k) {
            if (this.f2801e == 1) {
                U(view, this.f2814r, RecyclerView.p.getChildMeasureSpec(getHeight(), getHeightMode(), getPaddingTop() + getPaddingBottom(), ((ViewGroup.MarginLayoutParams) cVar).height, true), z10);
                return;
            } else {
                U(view, RecyclerView.p.getChildMeasureSpec(getWidth(), getWidthMode(), getPaddingLeft() + getPaddingRight(), ((ViewGroup.MarginLayoutParams) cVar).width, true), this.f2814r, z10);
                return;
            }
        }
        if (this.f2801e == 1) {
            U(view, RecyclerView.p.getChildMeasureSpec(this.f2802f, getWidthMode(), 0, ((ViewGroup.MarginLayoutParams) cVar).width, false), RecyclerView.p.getChildMeasureSpec(getHeight(), getHeightMode(), getPaddingTop() + getPaddingBottom(), ((ViewGroup.MarginLayoutParams) cVar).height, true), z10);
        } else {
            U(view, RecyclerView.p.getChildMeasureSpec(getWidth(), getWidthMode(), getPaddingLeft() + getPaddingRight(), ((ViewGroup.MarginLayoutParams) cVar).width, true), RecyclerView.p.getChildMeasureSpec(this.f2802f, getHeightMode(), 0, ((ViewGroup.MarginLayoutParams) cVar).height, false), z10);
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:82:0x0157, code lost:
    
        if (w() != false) goto L90;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final void W(RecyclerView.w wVar, RecyclerView.b0 b0Var, boolean z10) {
        e eVar;
        b bVar = this.f2816t;
        if ((this.f2813q != null || this.f2807k != -1) && b0Var.b() == 0) {
            removeAndRecycleAllViews(wVar);
            bVar.c();
            return;
        }
        boolean z11 = true;
        boolean z12 = (bVar.f2826e && this.f2807k == -1 && this.f2813q == null) ? false : true;
        if (z12) {
            bVar.c();
            if (this.f2813q != null) {
                r(bVar);
            } else {
                resolveShouldLayoutReverse();
                bVar.f2824c = this.f2805i;
            }
            j0(b0Var, bVar);
            bVar.f2826e = true;
        }
        if (this.f2813q == null && this.f2807k == -1 && (bVar.f2824c != this.f2811o || isLayoutRTL() != this.f2812p)) {
            this.f2809m.b();
            bVar.f2825d = true;
        }
        if (getChildCount() > 0 && ((eVar = this.f2813q) == null || eVar.f2839h < 1)) {
            if (bVar.f2825d) {
                for (int i10 = 0; i10 < this.f2797a; i10++) {
                    this.f2798b[i10].e();
                    int i11 = bVar.f2823b;
                    if (i11 != Integer.MIN_VALUE) {
                        this.f2798b[i10].x(i11);
                    }
                }
            } else if (!z12 && this.f2816t.f2827f != null) {
                for (int i12 = 0; i12 < this.f2797a; i12++) {
                    f fVar = this.f2798b[i12];
                    fVar.e();
                    fVar.x(this.f2816t.f2827f[i12]);
                }
            } else {
                for (int i13 = 0; i13 < this.f2797a; i13++) {
                    this.f2798b[i13].b(this.f2805i, bVar.f2823b);
                }
                this.f2816t.d(this.f2798b);
            }
        }
        detachAndScrapAttachedViews(wVar);
        this.f2803g.f3059a = false;
        this.f2817u = false;
        l0(this.f2800d.n());
        k0(bVar.f2822a, b0Var);
        if (bVar.f2824c) {
            e0(-1);
            B(wVar, this.f2803g, b0Var);
            e0(1);
            m mVar = this.f2803g;
            mVar.f3061c = bVar.f2822a + mVar.f3062d;
            B(wVar, mVar, b0Var);
        } else {
            e0(1);
            B(wVar, this.f2803g, b0Var);
            e0(-1);
            m mVar2 = this.f2803g;
            mVar2.f3061c = bVar.f2822a + mVar2.f3062d;
            B(wVar, mVar2, b0Var);
        }
        d0();
        if (getChildCount() > 0) {
            if (this.f2805i) {
                I(wVar, b0Var, true);
                J(wVar, b0Var, false);
            } else {
                J(wVar, b0Var, true);
                I(wVar, b0Var, false);
            }
        }
        if (z10 && !b0Var.e()) {
            if (this.f2810n != 0 && getChildCount() > 0 && (this.f2817u || S() != null)) {
                removeCallbacks(this.f2820x);
            }
        }
        z11 = false;
        if (b0Var.e()) {
            this.f2816t.c();
        }
        this.f2811o = bVar.f2824c;
        this.f2812p = isLayoutRTL();
        if (z11) {
            this.f2816t.c();
            W(wVar, b0Var, false);
        }
    }

    public final boolean X(int i10) {
        if (this.f2801e == 0) {
            return (i10 == -1) != this.f2805i;
        }
        return ((i10 == -1) == this.f2805i) == isLayoutRTL();
    }

    public void Y(int i10, RecyclerView.b0 b0Var) {
        int K;
        int i11;
        if (i10 > 0) {
            K = L();
            i11 = 1;
        } else {
            K = K();
            i11 = -1;
        }
        this.f2803g.f3059a = true;
        k0(K, b0Var);
        e0(i11);
        m mVar = this.f2803g;
        mVar.f3061c = K + mVar.f3062d;
        mVar.f3060b = Math.abs(i10);
    }

    public final void Z(View view) {
        for (int i10 = this.f2797a - 1; i10 >= 0; i10--) {
            this.f2798b[i10].w(view);
        }
    }

    public final void a0(RecyclerView.w wVar, m mVar) {
        int min;
        int min2;
        if (!mVar.f3059a || mVar.f3067i) {
            return;
        }
        if (mVar.f3060b == 0) {
            if (mVar.f3063e == -1) {
                b0(wVar, mVar.f3065g);
                return;
            } else {
                c0(wVar, mVar.f3064f);
                return;
            }
        }
        if (mVar.f3063e == -1) {
            int i10 = mVar.f3064f;
            int N = i10 - N(i10);
            if (N < 0) {
                min2 = mVar.f3065g;
            } else {
                min2 = mVar.f3065g - Math.min(N, mVar.f3060b);
            }
            b0(wVar, min2);
            return;
        }
        int O = O(mVar.f3065g) - mVar.f3065g;
        if (O < 0) {
            min = mVar.f3064f;
        } else {
            min = Math.min(O, mVar.f3060b) + mVar.f3064f;
        }
        c0(wVar, min);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.p
    public void assertNotInLayoutOrScroll(String str) {
        if (this.f2813q == null) {
            super.assertNotInLayoutOrScroll(str);
        }
    }

    public final void b0(RecyclerView.w wVar, int i10) {
        for (int childCount = getChildCount() - 1; childCount >= 0; childCount--) {
            View childAt = getChildAt(childCount);
            if (this.f2799c.g(childAt) < i10 || this.f2799c.q(childAt) < i10) {
                return;
            }
            c cVar = (c) childAt.getLayoutParams();
            if (cVar.f2830k) {
                for (int i11 = 0; i11 < this.f2797a; i11++) {
                    if (this.f2798b[i11].f2847a.size() == 1) {
                        return;
                    }
                }
                for (int i12 = 0; i12 < this.f2797a; i12++) {
                    this.f2798b[i12].u();
                }
            } else if (cVar.f2829j.f2847a.size() == 1) {
                return;
            } else {
                cVar.f2829j.u();
            }
            removeAndRecycleView(childAt, wVar);
        }
    }

    public final void c0(RecyclerView.w wVar, int i10) {
        while (getChildCount() > 0) {
            View childAt = getChildAt(0);
            if (this.f2799c.d(childAt) > i10 || this.f2799c.p(childAt) > i10) {
                return;
            }
            c cVar = (c) childAt.getLayoutParams();
            if (cVar.f2830k) {
                for (int i11 = 0; i11 < this.f2797a; i11++) {
                    if (this.f2798b[i11].f2847a.size() == 1) {
                        return;
                    }
                }
                for (int i12 = 0; i12 < this.f2797a; i12++) {
                    this.f2798b[i12].v();
                }
            } else if (cVar.f2829j.f2847a.size() == 1) {
                return;
            } else {
                cVar.f2829j.v();
            }
            removeAndRecycleView(childAt, wVar);
        }
    }

    @Override // androidx.recyclerview.widget.RecyclerView.p
    public boolean canScrollHorizontally() {
        return this.f2801e == 0;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.p
    public boolean canScrollVertically() {
        return this.f2801e == 1;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.p
    public boolean checkLayoutParams(RecyclerView.q qVar) {
        return qVar instanceof c;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.p
    public void collectAdjacentPrefetchPositions(int i10, int i11, RecyclerView.b0 b0Var, RecyclerView.p.c cVar) {
        int n10;
        int i12;
        if (this.f2801e != 0) {
            i10 = i11;
        }
        if (getChildCount() == 0 || i10 == 0) {
            return;
        }
        Y(i10, b0Var);
        int[] iArr = this.f2819w;
        if (iArr == null || iArr.length < this.f2797a) {
            this.f2819w = new int[this.f2797a];
        }
        int i13 = 0;
        for (int i14 = 0; i14 < this.f2797a; i14++) {
            m mVar = this.f2803g;
            if (mVar.f3062d == -1) {
                n10 = mVar.f3064f;
                i12 = this.f2798b[i14].r(n10);
            } else {
                n10 = this.f2798b[i14].n(mVar.f3065g);
                i12 = this.f2803g.f3065g;
            }
            int i15 = n10 - i12;
            if (i15 >= 0) {
                this.f2819w[i13] = i15;
                i13++;
            }
        }
        Arrays.sort(this.f2819w, 0, i13);
        for (int i16 = 0; i16 < i13 && this.f2803g.a(b0Var); i16++) {
            cVar.a(this.f2803g.f3061c, this.f2819w[i16]);
            m mVar2 = this.f2803g;
            mVar2.f3061c += mVar2.f3062d;
        }
    }

    @Override // androidx.recyclerview.widget.RecyclerView.p
    public int computeHorizontalScrollExtent(RecyclerView.b0 b0Var) {
        return computeScrollExtent(b0Var);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.p
    public int computeHorizontalScrollOffset(RecyclerView.b0 b0Var) {
        return computeScrollOffset(b0Var);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.p
    public int computeHorizontalScrollRange(RecyclerView.b0 b0Var) {
        return computeScrollRange(b0Var);
    }

    public final int computeScrollExtent(RecyclerView.b0 b0Var) {
        if (getChildCount() == 0) {
            return 0;
        }
        return v.a(b0Var, this.f2799c, E(!this.f2818v), D(!this.f2818v), this, this.f2818v);
    }

    public final int computeScrollOffset(RecyclerView.b0 b0Var) {
        if (getChildCount() == 0) {
            return 0;
        }
        return v.b(b0Var, this.f2799c, E(!this.f2818v), D(!this.f2818v), this, this.f2818v, this.f2805i);
    }

    public final int computeScrollRange(RecyclerView.b0 b0Var) {
        if (getChildCount() == 0) {
            return 0;
        }
        return v.c(b0Var, this.f2799c, E(!this.f2818v), D(!this.f2818v), this, this.f2818v);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.a0.b
    public PointF computeScrollVectorForPosition(int i10) {
        int v10 = v(i10);
        PointF pointF = new PointF();
        if (v10 == 0) {
            return null;
        }
        if (this.f2801e == 0) {
            pointF.x = v10;
            pointF.y = StaticLayoutBuilderCompat.DEFAULT_LINE_SPACING_ADD;
        } else {
            pointF.x = StaticLayoutBuilderCompat.DEFAULT_LINE_SPACING_ADD;
            pointF.y = v10;
        }
        return pointF;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.p
    public int computeVerticalScrollExtent(RecyclerView.b0 b0Var) {
        return computeScrollExtent(b0Var);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.p
    public int computeVerticalScrollOffset(RecyclerView.b0 b0Var) {
        return computeScrollOffset(b0Var);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.p
    public int computeVerticalScrollRange(RecyclerView.b0 b0Var) {
        return computeScrollRange(b0Var);
    }

    public final int convertFocusDirectionToLayoutDirection(int i10) {
        return i10 != 1 ? i10 != 2 ? i10 != 17 ? i10 != 33 ? i10 != 66 ? (i10 == 130 && this.f2801e == 1) ? 1 : Integer.MIN_VALUE : this.f2801e == 0 ? 1 : Integer.MIN_VALUE : this.f2801e == 1 ? -1 : Integer.MIN_VALUE : this.f2801e == 0 ? -1 : Integer.MIN_VALUE : (this.f2801e != 1 && isLayoutRTL()) ? -1 : 1 : (this.f2801e != 1 && isLayoutRTL()) ? 1 : -1;
    }

    public final void d0() {
        if (this.f2800d.k() == 1073741824) {
            return;
        }
        float f10 = StaticLayoutBuilderCompat.DEFAULT_LINE_SPACING_ADD;
        int childCount = getChildCount();
        for (int i10 = 0; i10 < childCount; i10++) {
            View childAt = getChildAt(i10);
            float e10 = this.f2800d.e(childAt);
            if (e10 >= f10) {
                if (((c) childAt.getLayoutParams()).g()) {
                    e10 = (e10 * 1.0f) / this.f2797a;
                }
                f10 = Math.max(f10, e10);
            }
        }
        int i11 = this.f2802f;
        int round = Math.round(f10 * this.f2797a);
        if (this.f2800d.k() == Integer.MIN_VALUE) {
            round = Math.min(round, this.f2800d.n());
        }
        l0(round);
        if (this.f2802f == i11) {
            return;
        }
        for (int i12 = 0; i12 < childCount; i12++) {
            View childAt2 = getChildAt(i12);
            c cVar = (c) childAt2.getLayoutParams();
            if (!cVar.f2830k) {
                if (isLayoutRTL() && this.f2801e == 1) {
                    int i13 = this.f2797a;
                    int i14 = cVar.f2829j.f2851e;
                    childAt2.offsetLeftAndRight(((-((i13 - 1) - i14)) * this.f2802f) - ((-((i13 - 1) - i14)) * i11));
                } else {
                    int i15 = cVar.f2829j.f2851e;
                    int i16 = this.f2802f * i15;
                    int i17 = i15 * i11;
                    if (this.f2801e == 1) {
                        childAt2.offsetLeftAndRight(i16 - i17);
                    } else {
                        childAt2.offsetTopAndBottom(i16 - i17);
                    }
                }
            }
        }
    }

    public final void e0(int i10) {
        m mVar = this.f2803g;
        mVar.f3063e = i10;
        mVar.f3062d = this.f2805i != (i10 == -1) ? -1 : 1;
    }

    public void f0(int i10) {
        assertNotInLayoutOrScroll(null);
        if (i10 != this.f2797a) {
            T();
            this.f2797a = i10;
            this.f2806j = new BitSet(this.f2797a);
            this.f2798b = new f[this.f2797a];
            for (int i11 = 0; i11 < this.f2797a; i11++) {
                this.f2798b[i11] = new f(i11);
            }
            requestLayout();
        }
    }

    public final void g0(int i10, int i11) {
        for (int i12 = 0; i12 < this.f2797a; i12++) {
            if (!this.f2798b[i12].f2847a.isEmpty()) {
                m0(this.f2798b[i12], i10, i11);
            }
        }
    }

    @Override // androidx.recyclerview.widget.RecyclerView.p
    public RecyclerView.q generateDefaultLayoutParams() {
        if (this.f2801e == 0) {
            return new c(-2, -1);
        }
        return new c(-1, -2);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.p
    public RecyclerView.q generateLayoutParams(Context context, AttributeSet attributeSet) {
        return new c(context, attributeSet);
    }

    public final boolean h0(RecyclerView.b0 b0Var, b bVar) {
        int C;
        if (this.f2811o) {
            C = H(b0Var.b());
        } else {
            C = C(b0Var.b());
        }
        bVar.f2822a = C;
        bVar.f2823b = Integer.MIN_VALUE;
        return true;
    }

    public boolean i0(RecyclerView.b0 b0Var, b bVar) {
        int i10;
        int m10;
        if (!b0Var.e() && (i10 = this.f2807k) != -1) {
            if (i10 >= 0 && i10 < b0Var.b()) {
                e eVar = this.f2813q;
                if (eVar != null && eVar.f2837f != -1 && eVar.f2839h >= 1) {
                    bVar.f2823b = Integer.MIN_VALUE;
                    bVar.f2822a = this.f2807k;
                } else {
                    View findViewByPosition = findViewByPosition(this.f2807k);
                    if (findViewByPosition != null) {
                        bVar.f2822a = this.f2805i ? L() : K();
                        if (this.f2808l != Integer.MIN_VALUE) {
                            if (bVar.f2824c) {
                                bVar.f2823b = (this.f2799c.i() - this.f2808l) - this.f2799c.d(findViewByPosition);
                            } else {
                                bVar.f2823b = (this.f2799c.m() + this.f2808l) - this.f2799c.g(findViewByPosition);
                            }
                            return true;
                        }
                        if (this.f2799c.e(findViewByPosition) > this.f2799c.n()) {
                            if (bVar.f2824c) {
                                m10 = this.f2799c.i();
                            } else {
                                m10 = this.f2799c.m();
                            }
                            bVar.f2823b = m10;
                            return true;
                        }
                        int g10 = this.f2799c.g(findViewByPosition) - this.f2799c.m();
                        if (g10 < 0) {
                            bVar.f2823b = -g10;
                            return true;
                        }
                        int i11 = this.f2799c.i() - this.f2799c.d(findViewByPosition);
                        if (i11 < 0) {
                            bVar.f2823b = i11;
                            return true;
                        }
                        bVar.f2823b = Integer.MIN_VALUE;
                    } else {
                        int i12 = this.f2807k;
                        bVar.f2822a = i12;
                        int i13 = this.f2808l;
                        if (i13 == Integer.MIN_VALUE) {
                            bVar.f2824c = v(i12) == 1;
                            bVar.a();
                        } else {
                            bVar.b(i13);
                        }
                        bVar.f2825d = true;
                    }
                }
                return true;
            }
            this.f2807k = -1;
            this.f2808l = Integer.MIN_VALUE;
        }
        return false;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.p
    public boolean isAutoMeasureEnabled() {
        return this.f2810n != 0;
    }

    public boolean isLayoutRTL() {
        return getLayoutDirection() == 1;
    }

    public void j0(RecyclerView.b0 b0Var, b bVar) {
        if (i0(b0Var, bVar) || h0(b0Var, bVar)) {
            return;
        }
        bVar.a();
        bVar.f2822a = 0;
    }

    /* JADX WARN: Removed duplicated region for block: B:13:0x0036  */
    /* JADX WARN: Removed duplicated region for block: B:22:0x004d  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final void k0(int i10, RecyclerView.b0 b0Var) {
        int i11;
        int i12;
        int c10;
        m mVar = this.f2803g;
        boolean z10 = false;
        mVar.f3060b = 0;
        mVar.f3061c = i10;
        if (!isSmoothScrolling() || (c10 = b0Var.c()) == -1) {
            i11 = 0;
        } else {
            if (this.f2805i == (c10 < i10)) {
                i11 = this.f2799c.n();
            } else {
                i12 = this.f2799c.n();
                i11 = 0;
                if (!getClipToPadding()) {
                    this.f2803g.f3064f = this.f2799c.m() - i12;
                    this.f2803g.f3065g = this.f2799c.i() + i11;
                } else {
                    this.f2803g.f3065g = this.f2799c.h() + i11;
                    this.f2803g.f3064f = -i12;
                }
                m mVar2 = this.f2803g;
                mVar2.f3066h = false;
                mVar2.f3059a = true;
                if (this.f2799c.k() == 0 && this.f2799c.h() == 0) {
                    z10 = true;
                }
                mVar2.f3067i = z10;
            }
        }
        i12 = 0;
        if (!getClipToPadding()) {
        }
        m mVar22 = this.f2803g;
        mVar22.f3066h = false;
        mVar22.f3059a = true;
        if (this.f2799c.k() == 0) {
            z10 = true;
        }
        mVar22.f3067i = z10;
    }

    public void l0(int i10) {
        this.f2802f = i10 / this.f2797a;
        this.f2814r = View.MeasureSpec.makeMeasureSpec(i10, this.f2800d.k());
    }

    public final void m0(f fVar, int i10, int i11) {
        int l10 = fVar.l();
        if (i10 == -1) {
            if (fVar.q() + l10 <= i11) {
                this.f2806j.set(fVar.f2851e, false);
            }
        } else if (fVar.m() - l10 >= i11) {
            this.f2806j.set(fVar.f2851e, false);
        }
    }

    public final int n0(int i10, int i11, int i12) {
        if (i11 == 0 && i12 == 0) {
            return i10;
        }
        int mode = View.MeasureSpec.getMode(i10);
        return (mode == Integer.MIN_VALUE || mode == 1073741824) ? View.MeasureSpec.makeMeasureSpec(Math.max(0, (View.MeasureSpec.getSize(i10) - i11) - i12), mode) : i10;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.p
    public void offsetChildrenHorizontal(int i10) {
        super.offsetChildrenHorizontal(i10);
        for (int i11 = 0; i11 < this.f2797a; i11++) {
            this.f2798b[i11].t(i10);
        }
    }

    @Override // androidx.recyclerview.widget.RecyclerView.p
    public void offsetChildrenVertical(int i10) {
        super.offsetChildrenVertical(i10);
        for (int i11 = 0; i11 < this.f2797a; i11++) {
            this.f2798b[i11].t(i10);
        }
    }

    @Override // androidx.recyclerview.widget.RecyclerView.p
    public void onAdapterChanged(RecyclerView.h hVar, RecyclerView.h hVar2) {
        this.f2809m.b();
        for (int i10 = 0; i10 < this.f2797a; i10++) {
            this.f2798b[i10].e();
        }
    }

    @Override // androidx.recyclerview.widget.RecyclerView.p
    public void onDetachedFromWindow(RecyclerView recyclerView, RecyclerView.w wVar) {
        super.onDetachedFromWindow(recyclerView, wVar);
        removeCallbacks(this.f2820x);
        for (int i10 = 0; i10 < this.f2797a; i10++) {
            this.f2798b[i10].e();
        }
        recyclerView.requestLayout();
    }

    @Override // androidx.recyclerview.widget.RecyclerView.p
    public View onFocusSearchFailed(View view, int i10, RecyclerView.w wVar, RecyclerView.b0 b0Var) {
        View findContainingItemView;
        int K;
        int h10;
        int h11;
        int h12;
        View o10;
        if (getChildCount() == 0 || (findContainingItemView = findContainingItemView(view)) == null) {
            return null;
        }
        resolveShouldLayoutReverse();
        int convertFocusDirectionToLayoutDirection = convertFocusDirectionToLayoutDirection(i10);
        if (convertFocusDirectionToLayoutDirection == Integer.MIN_VALUE) {
            return null;
        }
        c cVar = (c) findContainingItemView.getLayoutParams();
        boolean z10 = cVar.f2830k;
        f fVar = cVar.f2829j;
        if (convertFocusDirectionToLayoutDirection == 1) {
            K = L();
        } else {
            K = K();
        }
        k0(K, b0Var);
        e0(convertFocusDirectionToLayoutDirection);
        m mVar = this.f2803g;
        mVar.f3061c = mVar.f3062d + K;
        mVar.f3060b = (int) (this.f2799c.n() * 0.33333334f);
        m mVar2 = this.f2803g;
        mVar2.f3066h = true;
        mVar2.f3059a = false;
        B(wVar, mVar2, b0Var);
        this.f2811o = this.f2805i;
        if (!z10 && (o10 = fVar.o(K, convertFocusDirectionToLayoutDirection)) != null && o10 != findContainingItemView) {
            return o10;
        }
        if (X(convertFocusDirectionToLayoutDirection)) {
            for (int i11 = this.f2797a - 1; i11 >= 0; i11--) {
                View o11 = this.f2798b[i11].o(K, convertFocusDirectionToLayoutDirection);
                if (o11 != null && o11 != findContainingItemView) {
                    return o11;
                }
            }
        } else {
            for (int i12 = 0; i12 < this.f2797a; i12++) {
                View o12 = this.f2798b[i12].o(K, convertFocusDirectionToLayoutDirection);
                if (o12 != null && o12 != findContainingItemView) {
                    return o12;
                }
            }
        }
        boolean z11 = (this.f2804h ^ true) == (convertFocusDirectionToLayoutDirection == -1);
        if (!z10) {
            if (z11) {
                h12 = fVar.f();
            } else {
                h12 = fVar.h();
            }
            View findViewByPosition = findViewByPosition(h12);
            if (findViewByPosition != null && findViewByPosition != findContainingItemView) {
                return findViewByPosition;
            }
        }
        if (X(convertFocusDirectionToLayoutDirection)) {
            for (int i13 = this.f2797a - 1; i13 >= 0; i13--) {
                if (i13 != fVar.f2851e) {
                    if (z11) {
                        h11 = this.f2798b[i13].f();
                    } else {
                        h11 = this.f2798b[i13].h();
                    }
                    View findViewByPosition2 = findViewByPosition(h11);
                    if (findViewByPosition2 != null && findViewByPosition2 != findContainingItemView) {
                        return findViewByPosition2;
                    }
                }
            }
        } else {
            for (int i14 = 0; i14 < this.f2797a; i14++) {
                if (z11) {
                    h10 = this.f2798b[i14].f();
                } else {
                    h10 = this.f2798b[i14].h();
                }
                View findViewByPosition3 = findViewByPosition(h10);
                if (findViewByPosition3 != null && findViewByPosition3 != findContainingItemView) {
                    return findViewByPosition3;
                }
            }
        }
        return null;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.p
    public void onInitializeAccessibilityEvent(AccessibilityEvent accessibilityEvent) {
        super.onInitializeAccessibilityEvent(accessibilityEvent);
        if (getChildCount() > 0) {
            View E = E(false);
            View D = D(false);
            if (E == null || D == null) {
                return;
            }
            int position = getPosition(E);
            int position2 = getPosition(D);
            if (position < position2) {
                accessibilityEvent.setFromIndex(position);
                accessibilityEvent.setToIndex(position2);
            } else {
                accessibilityEvent.setFromIndex(position2);
                accessibilityEvent.setToIndex(position);
            }
        }
    }

    @Override // androidx.recyclerview.widget.RecyclerView.p
    public void onItemsAdded(RecyclerView recyclerView, int i10, int i11) {
        R(i10, i11, 1);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.p
    public void onItemsChanged(RecyclerView recyclerView) {
        this.f2809m.b();
        requestLayout();
    }

    @Override // androidx.recyclerview.widget.RecyclerView.p
    public void onItemsMoved(RecyclerView recyclerView, int i10, int i11, int i12) {
        R(i10, i11, 8);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.p
    public void onItemsRemoved(RecyclerView recyclerView, int i10, int i11) {
        R(i10, i11, 2);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.p
    public void onItemsUpdated(RecyclerView recyclerView, int i10, int i11, Object obj) {
        R(i10, i11, 4);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.p
    public void onLayoutChildren(RecyclerView.w wVar, RecyclerView.b0 b0Var) {
        W(wVar, b0Var, true);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.p
    public void onLayoutCompleted(RecyclerView.b0 b0Var) {
        super.onLayoutCompleted(b0Var);
        this.f2807k = -1;
        this.f2808l = Integer.MIN_VALUE;
        this.f2813q = null;
        this.f2816t.c();
    }

    @Override // androidx.recyclerview.widget.RecyclerView.p
    public void onRestoreInstanceState(Parcelable parcelable) {
        if (parcelable instanceof e) {
            e eVar = (e) parcelable;
            this.f2813q = eVar;
            if (this.f2807k != -1) {
                eVar.a();
                this.f2813q.c();
            }
            requestLayout();
        }
    }

    @Override // androidx.recyclerview.widget.RecyclerView.p
    public Parcelable onSaveInstanceState() {
        int r10;
        int m10;
        int[] iArr;
        if (this.f2813q != null) {
            return new e(this.f2813q);
        }
        e eVar = new e();
        eVar.f2844m = this.f2804h;
        eVar.f2845n = this.f2811o;
        eVar.f2846o = this.f2812p;
        d dVar = this.f2809m;
        if (dVar != null && (iArr = dVar.f2831a) != null) {
            eVar.f2842k = iArr;
            eVar.f2841j = iArr.length;
            eVar.f2843l = dVar.f2832b;
        } else {
            eVar.f2841j = 0;
        }
        if (getChildCount() > 0) {
            eVar.f2837f = this.f2811o ? L() : K();
            eVar.f2838g = F();
            int i10 = this.f2797a;
            eVar.f2839h = i10;
            eVar.f2840i = new int[i10];
            for (int i11 = 0; i11 < this.f2797a; i11++) {
                if (this.f2811o) {
                    r10 = this.f2798b[i11].n(Integer.MIN_VALUE);
                    if (r10 != Integer.MIN_VALUE) {
                        m10 = this.f2799c.i();
                        r10 -= m10;
                        eVar.f2840i[i11] = r10;
                    } else {
                        eVar.f2840i[i11] = r10;
                    }
                } else {
                    r10 = this.f2798b[i11].r(Integer.MIN_VALUE);
                    if (r10 != Integer.MIN_VALUE) {
                        m10 = this.f2799c.m();
                        r10 -= m10;
                        eVar.f2840i[i11] = r10;
                    } else {
                        eVar.f2840i[i11] = r10;
                    }
                }
            }
        } else {
            eVar.f2837f = -1;
            eVar.f2838g = -1;
            eVar.f2839h = 0;
        }
        return eVar;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.p
    public void onScrollStateChanged(int i10) {
        if (i10 == 0) {
            w();
        }
    }

    public final void q(View view) {
        for (int i10 = this.f2797a - 1; i10 >= 0; i10--) {
            this.f2798b[i10].a(view);
        }
    }

    public final void r(b bVar) {
        int m10;
        e eVar = this.f2813q;
        int i10 = eVar.f2839h;
        if (i10 > 0) {
            if (i10 == this.f2797a) {
                for (int i11 = 0; i11 < this.f2797a; i11++) {
                    this.f2798b[i11].e();
                    e eVar2 = this.f2813q;
                    int i12 = eVar2.f2840i[i11];
                    if (i12 != Integer.MIN_VALUE) {
                        if (eVar2.f2845n) {
                            m10 = this.f2799c.i();
                        } else {
                            m10 = this.f2799c.m();
                        }
                        i12 += m10;
                    }
                    this.f2798b[i11].x(i12);
                }
            } else {
                eVar.c();
                e eVar3 = this.f2813q;
                eVar3.f2837f = eVar3.f2838g;
            }
        }
        e eVar4 = this.f2813q;
        this.f2812p = eVar4.f2846o;
        setReverseLayout(eVar4.f2844m);
        resolveShouldLayoutReverse();
        e eVar5 = this.f2813q;
        int i13 = eVar5.f2837f;
        if (i13 != -1) {
            this.f2807k = i13;
            bVar.f2824c = eVar5.f2845n;
        } else {
            bVar.f2824c = this.f2805i;
        }
        if (eVar5.f2841j > 1) {
            d dVar = this.f2809m;
            dVar.f2831a = eVar5.f2842k;
            dVar.f2832b = eVar5.f2843l;
        }
    }

    public final void resolveShouldLayoutReverse() {
        if (this.f2801e != 1 && isLayoutRTL()) {
            this.f2805i = !this.f2804h;
        } else {
            this.f2805i = this.f2804h;
        }
    }

    public boolean s() {
        int n10 = this.f2798b[0].n(Integer.MIN_VALUE);
        for (int i10 = 1; i10 < this.f2797a; i10++) {
            if (this.f2798b[i10].n(Integer.MIN_VALUE) != n10) {
                return false;
            }
        }
        return true;
    }

    public int scrollBy(int i10, RecyclerView.w wVar, RecyclerView.b0 b0Var) {
        if (getChildCount() == 0 || i10 == 0) {
            return 0;
        }
        Y(i10, b0Var);
        int B = B(wVar, this.f2803g, b0Var);
        if (this.f2803g.f3060b >= B) {
            i10 = i10 < 0 ? -B : B;
        }
        this.f2799c.r(-i10);
        this.f2811o = this.f2805i;
        m mVar = this.f2803g;
        mVar.f3060b = 0;
        a0(wVar, mVar);
        return i10;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.p
    public int scrollHorizontallyBy(int i10, RecyclerView.w wVar, RecyclerView.b0 b0Var) {
        return scrollBy(i10, wVar, b0Var);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.p
    public void scrollToPosition(int i10) {
        e eVar = this.f2813q;
        if (eVar != null && eVar.f2837f != i10) {
            eVar.a();
        }
        this.f2807k = i10;
        this.f2808l = Integer.MIN_VALUE;
        requestLayout();
    }

    @Override // androidx.recyclerview.widget.RecyclerView.p
    public int scrollVerticallyBy(int i10, RecyclerView.w wVar, RecyclerView.b0 b0Var) {
        return scrollBy(i10, wVar, b0Var);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.p
    public void setMeasuredDimension(Rect rect, int i10, int i11) {
        int chooseSize;
        int chooseSize2;
        int paddingLeft = getPaddingLeft() + getPaddingRight();
        int paddingTop = getPaddingTop() + getPaddingBottom();
        if (this.f2801e == 1) {
            chooseSize2 = RecyclerView.p.chooseSize(i11, rect.height() + paddingTop, getMinimumHeight());
            chooseSize = RecyclerView.p.chooseSize(i10, (this.f2802f * this.f2797a) + paddingLeft, getMinimumWidth());
        } else {
            chooseSize = RecyclerView.p.chooseSize(i10, rect.width() + paddingLeft, getMinimumWidth());
            chooseSize2 = RecyclerView.p.chooseSize(i11, (this.f2802f * this.f2797a) + paddingTop, getMinimumHeight());
        }
        setMeasuredDimension(chooseSize, chooseSize2);
    }

    public void setOrientation(int i10) {
        if (i10 != 0 && i10 != 1) {
            throw new IllegalArgumentException("invalid orientation.");
        }
        assertNotInLayoutOrScroll(null);
        if (i10 == this.f2801e) {
            return;
        }
        this.f2801e = i10;
        s sVar = this.f2799c;
        this.f2799c = this.f2800d;
        this.f2800d = sVar;
        requestLayout();
    }

    public void setReverseLayout(boolean z10) {
        assertNotInLayoutOrScroll(null);
        e eVar = this.f2813q;
        if (eVar != null && eVar.f2844m != z10) {
            eVar.f2844m = z10;
        }
        this.f2804h = z10;
        requestLayout();
    }

    @Override // androidx.recyclerview.widget.RecyclerView.p
    public void smoothScrollToPosition(RecyclerView recyclerView, RecyclerView.b0 b0Var, int i10) {
        n nVar = new n(recyclerView.getContext());
        nVar.setTargetPosition(i10);
        startSmoothScroll(nVar);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.p
    public boolean supportsPredictiveItemAnimations() {
        return this.f2813q == null;
    }

    public boolean t() {
        int r10 = this.f2798b[0].r(Integer.MIN_VALUE);
        for (int i10 = 1; i10 < this.f2797a; i10++) {
            if (this.f2798b[i10].r(Integer.MIN_VALUE) != r10) {
                return false;
            }
        }
        return true;
    }

    public final void u(View view, c cVar, m mVar) {
        if (mVar.f3063e == 1) {
            if (cVar.f2830k) {
                q(view);
                return;
            } else {
                cVar.f2829j.a(view);
                return;
            }
        }
        if (cVar.f2830k) {
            Z(view);
        } else {
            cVar.f2829j.w(view);
        }
    }

    public final int v(int i10) {
        if (getChildCount() == 0) {
            return this.f2805i ? 1 : -1;
        }
        return (i10 < K()) != this.f2805i ? -1 : 1;
    }

    public boolean w() {
        int K;
        int L;
        if (getChildCount() == 0 || this.f2810n == 0 || !isAttachedToWindow()) {
            return false;
        }
        if (this.f2805i) {
            K = L();
            L = K();
        } else {
            K = K();
            L = L();
        }
        if (K == 0 && S() != null) {
            this.f2809m.b();
            requestSimpleAnimationsInNextLayout();
            requestLayout();
            return true;
        }
        if (!this.f2817u) {
            return false;
        }
        int i10 = this.f2805i ? -1 : 1;
        int i11 = L + 1;
        d.a e10 = this.f2809m.e(K, i11, i10, true);
        if (e10 == null) {
            this.f2817u = false;
            this.f2809m.d(i11);
            return false;
        }
        d.a e11 = this.f2809m.e(K, e10.f2833f, i10 * (-1), true);
        if (e11 == null) {
            this.f2809m.d(e10.f2833f);
        } else {
            this.f2809m.d(e11.f2833f + 1);
        }
        requestSimpleAnimationsInNextLayout();
        requestLayout();
        return true;
    }

    public final boolean x(f fVar) {
        if (this.f2805i) {
            if (fVar.m() < this.f2799c.i()) {
                ArrayList<View> arrayList = fVar.f2847a;
                return !fVar.p(arrayList.get(arrayList.size() - 1)).f2830k;
            }
        } else if (fVar.q() > this.f2799c.m()) {
            return !fVar.p(fVar.f2847a.get(0)).f2830k;
        }
        return false;
    }

    public final d.a y(int i10) {
        d.a aVar = new d.a();
        aVar.f2835h = new int[this.f2797a];
        for (int i11 = 0; i11 < this.f2797a; i11++) {
            aVar.f2835h[i11] = i10 - this.f2798b[i11].n(i10);
        }
        return aVar;
    }

    public final d.a z(int i10) {
        d.a aVar = new d.a();
        aVar.f2835h = new int[this.f2797a];
        for (int i11 = 0; i11 < this.f2797a; i11++) {
            aVar.f2835h[i11] = this.f2798b[i11].r(i10) - i10;
        }
        return aVar;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.p
    public RecyclerView.q generateLayoutParams(ViewGroup.LayoutParams layoutParams) {
        if (layoutParams instanceof ViewGroup.MarginLayoutParams) {
            return new c((ViewGroup.MarginLayoutParams) layoutParams);
        }
        return new c(layoutParams);
    }

    /* loaded from: classes.dex */
    public static class d {

        /* renamed from: a, reason: collision with root package name */
        public int[] f2831a;

        /* renamed from: b, reason: collision with root package name */
        public List<a> f2832b;

        public void a(a aVar) {
            if (this.f2832b == null) {
                this.f2832b = new ArrayList();
            }
            int size = this.f2832b.size();
            for (int i10 = 0; i10 < size; i10++) {
                a aVar2 = this.f2832b.get(i10);
                if (aVar2.f2833f == aVar.f2833f) {
                    this.f2832b.remove(i10);
                }
                if (aVar2.f2833f >= aVar.f2833f) {
                    this.f2832b.add(i10, aVar);
                    return;
                }
            }
            this.f2832b.add(aVar);
        }

        public void b() {
            int[] iArr = this.f2831a;
            if (iArr != null) {
                Arrays.fill(iArr, -1);
            }
            this.f2832b = null;
        }

        public void c(int i10) {
            int[] iArr = this.f2831a;
            if (iArr == null) {
                int[] iArr2 = new int[Math.max(i10, 10) + 1];
                this.f2831a = iArr2;
                Arrays.fill(iArr2, -1);
            } else if (i10 >= iArr.length) {
                int[] iArr3 = new int[o(i10)];
                this.f2831a = iArr3;
                System.arraycopy(iArr, 0, iArr3, 0, iArr.length);
                int[] iArr4 = this.f2831a;
                Arrays.fill(iArr4, iArr.length, iArr4.length, -1);
            }
        }

        public int d(int i10) {
            List<a> list = this.f2832b;
            if (list != null) {
                for (int size = list.size() - 1; size >= 0; size--) {
                    if (this.f2832b.get(size).f2833f >= i10) {
                        this.f2832b.remove(size);
                    }
                }
            }
            return h(i10);
        }

        public a e(int i10, int i11, int i12, boolean z10) {
            List<a> list = this.f2832b;
            if (list == null) {
                return null;
            }
            int size = list.size();
            for (int i13 = 0; i13 < size; i13++) {
                a aVar = this.f2832b.get(i13);
                int i14 = aVar.f2833f;
                if (i14 >= i11) {
                    return null;
                }
                if (i14 >= i10 && (i12 == 0 || aVar.f2834g == i12 || (z10 && aVar.f2836i))) {
                    return aVar;
                }
            }
            return null;
        }

        public a f(int i10) {
            List<a> list = this.f2832b;
            if (list == null) {
                return null;
            }
            for (int size = list.size() - 1; size >= 0; size--) {
                a aVar = this.f2832b.get(size);
                if (aVar.f2833f == i10) {
                    return aVar;
                }
            }
            return null;
        }

        public int g(int i10) {
            int[] iArr = this.f2831a;
            if (iArr == null || i10 >= iArr.length) {
                return -1;
            }
            return iArr[i10];
        }

        public int h(int i10) {
            int[] iArr = this.f2831a;
            if (iArr == null || i10 >= iArr.length) {
                return -1;
            }
            int i11 = i(i10);
            if (i11 == -1) {
                int[] iArr2 = this.f2831a;
                Arrays.fill(iArr2, i10, iArr2.length, -1);
                return this.f2831a.length;
            }
            int min = Math.min(i11 + 1, this.f2831a.length);
            Arrays.fill(this.f2831a, i10, min, -1);
            return min;
        }

        public final int i(int i10) {
            if (this.f2832b == null) {
                return -1;
            }
            a f10 = f(i10);
            if (f10 != null) {
                this.f2832b.remove(f10);
            }
            int size = this.f2832b.size();
            int i11 = 0;
            while (true) {
                if (i11 >= size) {
                    i11 = -1;
                    break;
                }
                if (this.f2832b.get(i11).f2833f >= i10) {
                    break;
                }
                i11++;
            }
            if (i11 == -1) {
                return -1;
            }
            a aVar = this.f2832b.get(i11);
            this.f2832b.remove(i11);
            return aVar.f2833f;
        }

        public void j(int i10, int i11) {
            int[] iArr = this.f2831a;
            if (iArr == null || i10 >= iArr.length) {
                return;
            }
            int i12 = i10 + i11;
            c(i12);
            int[] iArr2 = this.f2831a;
            System.arraycopy(iArr2, i10, iArr2, i12, (iArr2.length - i10) - i11);
            Arrays.fill(this.f2831a, i10, i12, -1);
            l(i10, i11);
        }

        public void k(int i10, int i11) {
            int[] iArr = this.f2831a;
            if (iArr == null || i10 >= iArr.length) {
                return;
            }
            int i12 = i10 + i11;
            c(i12);
            int[] iArr2 = this.f2831a;
            System.arraycopy(iArr2, i12, iArr2, i10, (iArr2.length - i10) - i11);
            int[] iArr3 = this.f2831a;
            Arrays.fill(iArr3, iArr3.length - i11, iArr3.length, -1);
            m(i10, i11);
        }

        public final void l(int i10, int i11) {
            List<a> list = this.f2832b;
            if (list == null) {
                return;
            }
            for (int size = list.size() - 1; size >= 0; size--) {
                a aVar = this.f2832b.get(size);
                int i12 = aVar.f2833f;
                if (i12 >= i10) {
                    aVar.f2833f = i12 + i11;
                }
            }
        }

        public final void m(int i10, int i11) {
            List<a> list = this.f2832b;
            if (list == null) {
                return;
            }
            int i12 = i10 + i11;
            for (int size = list.size() - 1; size >= 0; size--) {
                a aVar = this.f2832b.get(size);
                int i13 = aVar.f2833f;
                if (i13 >= i10) {
                    if (i13 < i12) {
                        this.f2832b.remove(size);
                    } else {
                        aVar.f2833f = i13 - i11;
                    }
                }
            }
        }

        public void n(int i10, f fVar) {
            c(i10);
            this.f2831a[i10] = fVar.f2851e;
        }

        public int o(int i10) {
            int length = this.f2831a.length;
            while (length <= i10) {
                length *= 2;
            }
            return length;
        }

        @SuppressLint({"BanParcelableUsage"})
        /* loaded from: classes.dex */
        public static class a implements Parcelable {
            public static final Parcelable.Creator<a> CREATOR = new C0044a();

            /* renamed from: f, reason: collision with root package name */
            public int f2833f;

            /* renamed from: g, reason: collision with root package name */
            public int f2834g;

            /* renamed from: h, reason: collision with root package name */
            public int[] f2835h;

            /* renamed from: i, reason: collision with root package name */
            public boolean f2836i;

            /* renamed from: androidx.recyclerview.widget.StaggeredGridLayoutManager$d$a$a, reason: collision with other inner class name */
            /* loaded from: classes.dex */
            public class C0044a implements Parcelable.Creator<a> {
                @Override // android.os.Parcelable.Creator
                /* renamed from: a, reason: merged with bridge method [inline-methods] */
                public a createFromParcel(Parcel parcel) {
                    return new a(parcel);
                }

                @Override // android.os.Parcelable.Creator
                /* renamed from: b, reason: merged with bridge method [inline-methods] */
                public a[] newArray(int i10) {
                    return new a[i10];
                }
            }

            public a(Parcel parcel) {
                this.f2833f = parcel.readInt();
                this.f2834g = parcel.readInt();
                this.f2836i = parcel.readInt() == 1;
                int readInt = parcel.readInt();
                if (readInt > 0) {
                    int[] iArr = new int[readInt];
                    this.f2835h = iArr;
                    parcel.readIntArray(iArr);
                }
            }

            public int a(int i10) {
                int[] iArr = this.f2835h;
                if (iArr == null) {
                    return 0;
                }
                return iArr[i10];
            }

            @Override // android.os.Parcelable
            public int describeContents() {
                return 0;
            }

            public String toString() {
                return "FullSpanItem{mPosition=" + this.f2833f + ", mGapDir=" + this.f2834g + ", mHasUnwantedGapAfter=" + this.f2836i + ", mGapPerSpan=" + Arrays.toString(this.f2835h) + '}';
            }

            @Override // android.os.Parcelable
            public void writeToParcel(Parcel parcel, int i10) {
                parcel.writeInt(this.f2833f);
                parcel.writeInt(this.f2834g);
                parcel.writeInt(this.f2836i ? 1 : 0);
                int[] iArr = this.f2835h;
                if (iArr != null && iArr.length > 0) {
                    parcel.writeInt(iArr.length);
                    parcel.writeIntArray(this.f2835h);
                } else {
                    parcel.writeInt(0);
                }
            }

            public a() {
            }
        }
    }

    public StaggeredGridLayoutManager(int i10, int i11) {
        this.f2801e = i11;
        f0(i10);
        this.f2803g = new m();
        A();
    }
}
