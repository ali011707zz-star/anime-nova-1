package m3;

import java.util.List;
import java.util.Locale;
import k3.j;
import k3.k;
import k3.l;

/* compiled from: Layer.java */
/* loaded from: classes.dex */
public class d {

    /* renamed from: a, reason: collision with root package name */
    public final List<l3.c> f10911a;

    /* renamed from: b, reason: collision with root package name */
    public final e3.d f10912b;

    /* renamed from: c, reason: collision with root package name */
    public final String f10913c;

    /* renamed from: d, reason: collision with root package name */
    public final long f10914d;

    /* renamed from: e, reason: collision with root package name */
    public final a f10915e;

    /* renamed from: f, reason: collision with root package name */
    public final long f10916f;

    /* renamed from: g, reason: collision with root package name */
    public final String f10917g;

    /* renamed from: h, reason: collision with root package name */
    public final List<l3.h> f10918h;

    /* renamed from: i, reason: collision with root package name */
    public final l f10919i;

    /* renamed from: j, reason: collision with root package name */
    public final int f10920j;

    /* renamed from: k, reason: collision with root package name */
    public final int f10921k;

    /* renamed from: l, reason: collision with root package name */
    public final int f10922l;

    /* renamed from: m, reason: collision with root package name */
    public final float f10923m;

    /* renamed from: n, reason: collision with root package name */
    public final float f10924n;

    /* renamed from: o, reason: collision with root package name */
    public final int f10925o;

    /* renamed from: p, reason: collision with root package name */
    public final int f10926p;

    /* renamed from: q, reason: collision with root package name */
    public final j f10927q;

    /* renamed from: r, reason: collision with root package name */
    public final k f10928r;

    /* renamed from: s, reason: collision with root package name */
    public final k3.b f10929s;

    /* renamed from: t, reason: collision with root package name */
    public final List<r3.a<Float>> f10930t;

    /* renamed from: u, reason: collision with root package name */
    public final b f10931u;

    /* renamed from: v, reason: collision with root package name */
    public final boolean f10932v;

    /* renamed from: w, reason: collision with root package name */
    public final l3.a f10933w;

    /* renamed from: x, reason: collision with root package name */
    public final o3.j f10934x;

    /* compiled from: Layer.java */
    /* loaded from: classes.dex */
    public enum a {
        PRE_COMP,
        SOLID,
        IMAGE,
        NULL,
        SHAPE,
        TEXT,
        UNKNOWN
    }

    /* compiled from: Layer.java */
    /* loaded from: classes.dex */
    public enum b {
        NONE,
        ADD,
        INVERT,
        LUMA,
        LUMA_INVERTED,
        UNKNOWN
    }

    public d(List<l3.c> list, e3.d dVar, String str, long j10, a aVar, long j11, String str2, List<l3.h> list2, l lVar, int i10, int i11, int i12, float f10, float f11, int i13, int i14, j jVar, k kVar, List<r3.a<Float>> list3, b bVar, k3.b bVar2, boolean z10, l3.a aVar2, o3.j jVar2) {
        this.f10911a = list;
        this.f10912b = dVar;
        this.f10913c = str;
        this.f10914d = j10;
        this.f10915e = aVar;
        this.f10916f = j11;
        this.f10917g = str2;
        this.f10918h = list2;
        this.f10919i = lVar;
        this.f10920j = i10;
        this.f10921k = i11;
        this.f10922l = i12;
        this.f10923m = f10;
        this.f10924n = f11;
        this.f10925o = i13;
        this.f10926p = i14;
        this.f10927q = jVar;
        this.f10928r = kVar;
        this.f10930t = list3;
        this.f10931u = bVar;
        this.f10929s = bVar2;
        this.f10932v = z10;
        this.f10933w = aVar2;
        this.f10934x = jVar2;
    }

    public l3.a a() {
        return this.f10933w;
    }

    public e3.d b() {
        return this.f10912b;
    }

    public o3.j c() {
        return this.f10934x;
    }

    public long d() {
        return this.f10914d;
    }

    public List<r3.a<Float>> e() {
        return this.f10930t;
    }

    public a f() {
        return this.f10915e;
    }

    public List<l3.h> g() {
        return this.f10918h;
    }

    public b h() {
        return this.f10931u;
    }

    public String i() {
        return this.f10913c;
    }

    public long j() {
        return this.f10916f;
    }

    public int k() {
        return this.f10926p;
    }

    public int l() {
        return this.f10925o;
    }

    public String m() {
        return this.f10917g;
    }

    public List<l3.c> n() {
        return this.f10911a;
    }

    public int o() {
        return this.f10922l;
    }

    public int p() {
        return this.f10921k;
    }

    public int q() {
        return this.f10920j;
    }

    public float r() {
        return this.f10924n / this.f10912b.e();
    }

    public j s() {
        return this.f10927q;
    }

    public k t() {
        return this.f10928r;
    }

    public String toString() {
        return y("");
    }

    public k3.b u() {
        return this.f10929s;
    }

    public float v() {
        return this.f10923m;
    }

    public l w() {
        return this.f10919i;
    }

    public boolean x() {
        return this.f10932v;
    }

    public String y(String str) {
        StringBuilder sb2 = new StringBuilder();
        sb2.append(str);
        sb2.append(i());
        sb2.append("\n");
        d t10 = this.f10912b.t(j());
        if (t10 != null) {
            sb2.append("\t\tParents: ");
            sb2.append(t10.i());
            d t11 = this.f10912b.t(t10.j());
            while (t11 != null) {
                sb2.append("->");
                sb2.append(t11.i());
                t11 = this.f10912b.t(t11.j());
            }
            sb2.append(str);
            sb2.append("\n");
        }
        if (!g().isEmpty()) {
            sb2.append(str);
            sb2.append("\tMasks: ");
            sb2.append(g().size());
            sb2.append("\n");
        }
        if (q() != 0 && p() != 0) {
            sb2.append(str);
            sb2.append("\tBackground: ");
            sb2.append(String.format(Locale.US, "%dx%d %X\n", Integer.valueOf(q()), Integer.valueOf(p()), Integer.valueOf(o())));
        }
        if (!this.f10911a.isEmpty()) {
            sb2.append(str);
            sb2.append("\tShapes:\n");
            for (l3.c cVar : this.f10911a) {
                sb2.append(str);
                sb2.append("\t\t");
                sb2.append(cVar);
                sb2.append("\n");
            }
        }
        return sb2.toString();
    }
}
