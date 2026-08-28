package y8;

import android.graphics.Color;
import android.graphics.DashPathEffect;
import android.graphics.Typeface;
import com.google.android.material.progressindicator.BaseProgressIndicator;
import com.twitter.sdk.android.core.TwitterAuthConfig;
import java.util.ArrayList;
import java.util.List;
import x8.e;
import x8.i;
import y8.j;

/* compiled from: BaseDataSet.java */
/* loaded from: classes.dex */
public abstract class f<T extends j> implements c9.d<T> {

    /* renamed from: a, reason: collision with root package name */
    public List<Integer> f16736a;

    /* renamed from: b, reason: collision with root package name */
    public e9.a f16737b;

    /* renamed from: c, reason: collision with root package name */
    public List<e9.a> f16738c;

    /* renamed from: d, reason: collision with root package name */
    public List<Integer> f16739d;

    /* renamed from: e, reason: collision with root package name */
    public String f16740e;

    /* renamed from: f, reason: collision with root package name */
    public i.a f16741f;

    /* renamed from: g, reason: collision with root package name */
    public boolean f16742g;

    /* renamed from: h, reason: collision with root package name */
    public transient z8.c f16743h;

    /* renamed from: i, reason: collision with root package name */
    public Typeface f16744i;

    /* renamed from: j, reason: collision with root package name */
    public e.c f16745j;

    /* renamed from: k, reason: collision with root package name */
    public float f16746k;

    /* renamed from: l, reason: collision with root package name */
    public float f16747l;

    /* renamed from: m, reason: collision with root package name */
    public DashPathEffect f16748m;

    /* renamed from: n, reason: collision with root package name */
    public boolean f16749n;

    /* renamed from: o, reason: collision with root package name */
    public boolean f16750o;

    /* renamed from: p, reason: collision with root package name */
    public g9.e f16751p;

    /* renamed from: q, reason: collision with root package name */
    public float f16752q;

    /* renamed from: r, reason: collision with root package name */
    public boolean f16753r;

    public f() {
        this.f16736a = null;
        this.f16737b = null;
        this.f16738c = null;
        this.f16739d = null;
        this.f16740e = "DataSet";
        this.f16741f = i.a.LEFT;
        this.f16742g = true;
        this.f16745j = e.c.DEFAULT;
        this.f16746k = Float.NaN;
        this.f16747l = Float.NaN;
        this.f16748m = null;
        this.f16749n = true;
        this.f16750o = true;
        this.f16751p = new g9.e();
        this.f16752q = 17.0f;
        this.f16753r = true;
        this.f16736a = new ArrayList();
        this.f16739d = new ArrayList();
        this.f16736a.add(Integer.valueOf(Color.rgb(TwitterAuthConfig.DEFAULT_AUTH_REQUEST_CODE, 234, BaseProgressIndicator.MAX_ALPHA)));
        this.f16739d.add(-16777216);
    }

    @Override // c9.d
    public boolean F() {
        return this.f16750o;
    }

    @Override // c9.d
    public e.c G() {
        return this.f16745j;
    }

    @Override // c9.d
    public List<e9.a> K() {
        return this.f16738c;
    }

    @Override // c9.d
    public String M() {
        return this.f16740e;
    }

    @Override // c9.d
    public boolean U() {
        return this.f16749n;
    }

    @Override // c9.d
    public e9.a Y() {
        return this.f16737b;
    }

    @Override // c9.d
    public i.a a0() {
        return this.f16741f;
    }

    @Override // c9.d
    public float b0() {
        return this.f16752q;
    }

    @Override // c9.d
    public void c0(boolean z10) {
        this.f16749n = z10;
    }

    @Override // c9.d
    public z8.c d0() {
        if (h()) {
            return g9.i.j();
        }
        return this.f16743h;
    }

    @Override // c9.d
    public void e(z8.c cVar) {
        if (cVar == null) {
            return;
        }
        this.f16743h = cVar;
    }

    @Override // c9.d
    public Typeface f() {
        return this.f16744i;
    }

    @Override // c9.d
    public g9.e f0() {
        return this.f16751p;
    }

    @Override // c9.d
    public boolean h() {
        return this.f16743h == null;
    }

    @Override // c9.d
    public int h0() {
        return this.f16736a.get(0).intValue();
    }

    @Override // c9.d
    public boolean i0() {
        return this.f16742g;
    }

    @Override // c9.d
    public boolean isVisible() {
        return this.f16753r;
    }

    @Override // c9.d
    public float k0() {
        return this.f16747l;
    }

    @Override // c9.d
    public e9.a m0(int i10) {
        List<e9.a> list = this.f16738c;
        return list.get(i10 % list.size());
    }

    @Override // c9.d
    public int p(int i10) {
        List<Integer> list = this.f16739d;
        return list.get(i10 % list.size()).intValue();
    }

    @Override // c9.d
    public float q0() {
        return this.f16746k;
    }

    @Override // c9.d
    public int t0(int i10) {
        List<Integer> list = this.f16736a;
        return list.get(i10 % list.size()).intValue();
    }

    @Override // c9.d
    public List<Integer> u() {
        return this.f16736a;
    }

    public void u0(int... iArr) {
        this.f16736a = g9.a.b(iArr);
    }

    public void v0(boolean z10) {
        this.f16742g = z10;
    }

    public void w0(int i10) {
        this.f16739d.clear();
        this.f16739d.add(Integer.valueOf(i10));
    }

    public void x0(float f10) {
        this.f16752q = g9.i.e(f10);
    }

    @Override // c9.d
    public DashPathEffect z() {
        return this.f16748m;
    }

    public f(String str) {
        this();
        this.f16740e = str;
    }
}
