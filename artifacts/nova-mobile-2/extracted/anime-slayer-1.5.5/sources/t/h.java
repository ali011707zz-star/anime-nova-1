package t;

import com.google.android.material.internal.StaticLayoutBuilderCompat;
import java.util.Arrays;
import java.util.Comparator;
import t.b;

/* compiled from: PriorityGoalRow.java */
/* loaded from: classes.dex */
public class h extends t.b {

    /* renamed from: g, reason: collision with root package name */
    public int f13951g;

    /* renamed from: h, reason: collision with root package name */
    public i[] f13952h;

    /* renamed from: i, reason: collision with root package name */
    public i[] f13953i;

    /* renamed from: j, reason: collision with root package name */
    public int f13954j;

    /* renamed from: k, reason: collision with root package name */
    public b f13955k;

    /* renamed from: l, reason: collision with root package name */
    public c f13956l;

    /* compiled from: PriorityGoalRow.java */
    /* loaded from: classes.dex */
    public class a implements Comparator<i> {
        public a() {
        }

        @Override // java.util.Comparator
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public int compare(i iVar, i iVar2) {
            return iVar.f13964h - iVar2.f13964h;
        }
    }

    /* compiled from: PriorityGoalRow.java */
    /* loaded from: classes.dex */
    public class b {

        /* renamed from: a, reason: collision with root package name */
        public i f13958a;

        /* renamed from: b, reason: collision with root package name */
        public h f13959b;

        public b(h hVar) {
            this.f13959b = hVar;
        }

        public boolean a(i iVar, float f10) {
            boolean z10 = true;
            if (!this.f13958a.f13962f) {
                for (int i10 = 0; i10 < 9; i10++) {
                    float f11 = iVar.f13970n[i10];
                    if (f11 != StaticLayoutBuilderCompat.DEFAULT_LINE_SPACING_ADD) {
                        float f12 = f11 * f10;
                        if (Math.abs(f12) < 1.0E-4f) {
                            f12 = StaticLayoutBuilderCompat.DEFAULT_LINE_SPACING_ADD;
                        }
                        this.f13958a.f13970n[i10] = f12;
                    } else {
                        this.f13958a.f13970n[i10] = 0.0f;
                    }
                }
                return true;
            }
            for (int i11 = 0; i11 < 9; i11++) {
                float[] fArr = this.f13958a.f13970n;
                fArr[i11] = fArr[i11] + (iVar.f13970n[i11] * f10);
                if (Math.abs(fArr[i11]) < 1.0E-4f) {
                    this.f13958a.f13970n[i11] = 0.0f;
                } else {
                    z10 = false;
                }
            }
            if (z10) {
                h.this.G(this.f13958a);
            }
            return false;
        }

        public void b(i iVar) {
            this.f13958a = iVar;
        }

        public final boolean c() {
            for (int i10 = 8; i10 >= 0; i10--) {
                float f10 = this.f13958a.f13970n[i10];
                if (f10 > StaticLayoutBuilderCompat.DEFAULT_LINE_SPACING_ADD) {
                    return false;
                }
                if (f10 < StaticLayoutBuilderCompat.DEFAULT_LINE_SPACING_ADD) {
                    return true;
                }
            }
            return false;
        }

        public final boolean d(i iVar) {
            int i10 = 8;
            while (true) {
                if (i10 < 0) {
                    break;
                }
                float f10 = iVar.f13970n[i10];
                float f11 = this.f13958a.f13970n[i10];
                if (f11 == f10) {
                    i10--;
                } else if (f11 < f10) {
                    return true;
                }
            }
            return false;
        }

        public void e() {
            Arrays.fill(this.f13958a.f13970n, StaticLayoutBuilderCompat.DEFAULT_LINE_SPACING_ADD);
        }

        public String toString() {
            String str = "[ ";
            if (this.f13958a != null) {
                for (int i10 = 0; i10 < 9; i10++) {
                    str = str + this.f13958a.f13970n[i10] + " ";
                }
            }
            return str + "] " + this.f13958a;
        }
    }

    public h(c cVar) {
        super(cVar);
        this.f13951g = 128;
        this.f13952h = new i[128];
        this.f13953i = new i[128];
        this.f13954j = 0;
        this.f13955k = new b(this);
        this.f13956l = cVar;
    }

    @Override // t.b
    public void B(d dVar, t.b bVar, boolean z10) {
        i iVar = bVar.f13912a;
        if (iVar == null) {
            return;
        }
        b.a aVar = bVar.f13916e;
        int f10 = aVar.f();
        for (int i10 = 0; i10 < f10; i10++) {
            i h10 = aVar.h(i10);
            float a10 = aVar.a(i10);
            this.f13955k.b(h10);
            if (this.f13955k.a(iVar, a10)) {
                F(h10);
            }
            this.f13913b += bVar.f13913b * a10;
        }
        G(iVar);
    }

    public final void F(i iVar) {
        int i10;
        int i11 = this.f13954j + 1;
        i[] iVarArr = this.f13952h;
        if (i11 > iVarArr.length) {
            i[] iVarArr2 = (i[]) Arrays.copyOf(iVarArr, iVarArr.length * 2);
            this.f13952h = iVarArr2;
            this.f13953i = (i[]) Arrays.copyOf(iVarArr2, iVarArr2.length * 2);
        }
        i[] iVarArr3 = this.f13952h;
        int i12 = this.f13954j;
        iVarArr3[i12] = iVar;
        int i13 = i12 + 1;
        this.f13954j = i13;
        if (i13 > 1 && iVarArr3[i13 - 1].f13964h > iVar.f13964h) {
            int i14 = 0;
            while (true) {
                i10 = this.f13954j;
                if (i14 >= i10) {
                    break;
                }
                this.f13953i[i14] = this.f13952h[i14];
                i14++;
            }
            Arrays.sort(this.f13953i, 0, i10, new a());
            for (int i15 = 0; i15 < this.f13954j; i15++) {
                this.f13952h[i15] = this.f13953i[i15];
            }
        }
        iVar.f13962f = true;
        iVar.a(this);
    }

    public final void G(i iVar) {
        int i10 = 0;
        while (i10 < this.f13954j) {
            if (this.f13952h[i10] == iVar) {
                while (true) {
                    int i11 = this.f13954j;
                    if (i10 < i11 - 1) {
                        i[] iVarArr = this.f13952h;
                        int i12 = i10 + 1;
                        iVarArr[i10] = iVarArr[i12];
                        i10 = i12;
                    } else {
                        this.f13954j = i11 - 1;
                        iVar.f13962f = false;
                        return;
                    }
                }
            } else {
                i10++;
            }
        }
    }

    @Override // t.b, t.d.a
    public i a(d dVar, boolean[] zArr) {
        int i10 = -1;
        for (int i11 = 0; i11 < this.f13954j; i11++) {
            i iVar = this.f13952h[i11];
            if (!zArr[iVar.f13964h]) {
                this.f13955k.b(iVar);
                if (i10 == -1) {
                    if (!this.f13955k.c()) {
                    }
                    i10 = i11;
                } else {
                    if (!this.f13955k.d(this.f13952h[i10])) {
                    }
                    i10 = i11;
                }
            }
        }
        if (i10 == -1) {
            return null;
        }
        return this.f13952h[i10];
    }

    @Override // t.b, t.d.a
    public void c(i iVar) {
        this.f13955k.b(iVar);
        this.f13955k.e();
        iVar.f13970n[iVar.f13966j] = 1.0f;
        F(iVar);
    }

    @Override // t.b, t.d.a
    public void clear() {
        this.f13954j = 0;
        this.f13913b = StaticLayoutBuilderCompat.DEFAULT_LINE_SPACING_ADD;
    }

    @Override // t.b, t.d.a
    public boolean isEmpty() {
        return this.f13954j == 0;
    }

    @Override // t.b
    public String toString() {
        String str = " goal -> (" + this.f13913b + ") : ";
        for (int i10 = 0; i10 < this.f13954j; i10++) {
            this.f13955k.b(this.f13952h[i10]);
            str = str + this.f13955k + " ";
        }
        return str;
    }
}
