package t;

import com.google.android.material.internal.StaticLayoutBuilderCompat;
import java.util.Arrays;
import java.util.HashSet;

/* compiled from: SolverVariable.java */
/* loaded from: classes.dex */
public class i implements Comparable<i> {

    /* renamed from: w, reason: collision with root package name */
    public static int f13961w = 1;

    /* renamed from: f, reason: collision with root package name */
    public boolean f13962f;

    /* renamed from: g, reason: collision with root package name */
    public String f13963g;

    /* renamed from: k, reason: collision with root package name */
    public float f13967k;

    /* renamed from: o, reason: collision with root package name */
    public a f13971o;

    /* renamed from: h, reason: collision with root package name */
    public int f13964h = -1;

    /* renamed from: i, reason: collision with root package name */
    public int f13965i = -1;

    /* renamed from: j, reason: collision with root package name */
    public int f13966j = 0;

    /* renamed from: l, reason: collision with root package name */
    public boolean f13968l = false;

    /* renamed from: m, reason: collision with root package name */
    public float[] f13969m = new float[9];

    /* renamed from: n, reason: collision with root package name */
    public float[] f13970n = new float[9];

    /* renamed from: p, reason: collision with root package name */
    public b[] f13972p = new b[16];

    /* renamed from: q, reason: collision with root package name */
    public int f13973q = 0;

    /* renamed from: r, reason: collision with root package name */
    public int f13974r = 0;

    /* renamed from: s, reason: collision with root package name */
    public boolean f13975s = false;

    /* renamed from: t, reason: collision with root package name */
    public int f13976t = -1;

    /* renamed from: u, reason: collision with root package name */
    public float f13977u = StaticLayoutBuilderCompat.DEFAULT_LINE_SPACING_ADD;

    /* renamed from: v, reason: collision with root package name */
    public HashSet<b> f13978v = null;

    /* compiled from: SolverVariable.java */
    /* loaded from: classes.dex */
    public enum a {
        UNRESTRICTED,
        CONSTANT,
        SLACK,
        ERROR,
        UNKNOWN
    }

    public i(a aVar, String str) {
        this.f13971o = aVar;
    }

    public static void c() {
        f13961w++;
    }

    public final void a(b bVar) {
        int i10 = 0;
        while (true) {
            int i11 = this.f13973q;
            if (i10 < i11) {
                if (this.f13972p[i10] == bVar) {
                    return;
                } else {
                    i10++;
                }
            } else {
                b[] bVarArr = this.f13972p;
                if (i11 >= bVarArr.length) {
                    this.f13972p = (b[]) Arrays.copyOf(bVarArr, bVarArr.length * 2);
                }
                b[] bVarArr2 = this.f13972p;
                int i12 = this.f13973q;
                bVarArr2[i12] = bVar;
                this.f13973q = i12 + 1;
                return;
            }
        }
    }

    @Override // java.lang.Comparable
    /* renamed from: b, reason: merged with bridge method [inline-methods] */
    public int compareTo(i iVar) {
        return this.f13964h - iVar.f13964h;
    }

    public final void d(b bVar) {
        int i10 = this.f13973q;
        int i11 = 0;
        while (i11 < i10) {
            if (this.f13972p[i11] == bVar) {
                while (i11 < i10 - 1) {
                    b[] bVarArr = this.f13972p;
                    int i12 = i11 + 1;
                    bVarArr[i11] = bVarArr[i12];
                    i11 = i12;
                }
                this.f13973q--;
                return;
            }
            i11++;
        }
    }

    public void e() {
        this.f13963g = null;
        this.f13971o = a.UNKNOWN;
        this.f13966j = 0;
        this.f13964h = -1;
        this.f13965i = -1;
        this.f13967k = StaticLayoutBuilderCompat.DEFAULT_LINE_SPACING_ADD;
        this.f13968l = false;
        this.f13975s = false;
        this.f13976t = -1;
        this.f13977u = StaticLayoutBuilderCompat.DEFAULT_LINE_SPACING_ADD;
        int i10 = this.f13973q;
        for (int i11 = 0; i11 < i10; i11++) {
            this.f13972p[i11] = null;
        }
        this.f13973q = 0;
        this.f13974r = 0;
        this.f13962f = false;
        Arrays.fill(this.f13970n, StaticLayoutBuilderCompat.DEFAULT_LINE_SPACING_ADD);
    }

    public void f(d dVar, float f10) {
        this.f13967k = f10;
        this.f13968l = true;
        this.f13975s = false;
        this.f13976t = -1;
        this.f13977u = StaticLayoutBuilderCompat.DEFAULT_LINE_SPACING_ADD;
        int i10 = this.f13973q;
        this.f13965i = -1;
        for (int i11 = 0; i11 < i10; i11++) {
            this.f13972p[i11].A(dVar, this, false);
        }
        this.f13973q = 0;
    }

    public void g(a aVar, String str) {
        this.f13971o = aVar;
    }

    public final void h(d dVar, b bVar) {
        int i10 = this.f13973q;
        for (int i11 = 0; i11 < i10; i11++) {
            this.f13972p[i11].B(dVar, bVar, false);
        }
        this.f13973q = 0;
    }

    public String toString() {
        if (this.f13963g != null) {
            return "" + this.f13963g;
        }
        return "" + this.f13964h;
    }
}
