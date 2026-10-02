package x;

import com.google.android.material.internal.StaticLayoutBuilderCompat;
import java.util.ArrayList;

/* compiled from: RunGroup.java */
/* loaded from: classes.dex */
public class m {

    /* renamed from: h, reason: collision with root package name */
    public static int f15602h;

    /* renamed from: c, reason: collision with root package name */
    public p f15605c;

    /* renamed from: d, reason: collision with root package name */
    public p f15606d;

    /* renamed from: f, reason: collision with root package name */
    public int f15608f;

    /* renamed from: g, reason: collision with root package name */
    public int f15609g;

    /* renamed from: a, reason: collision with root package name */
    public int f15603a = 0;

    /* renamed from: b, reason: collision with root package name */
    public boolean f15604b = false;

    /* renamed from: e, reason: collision with root package name */
    public ArrayList<p> f15607e = new ArrayList<>();

    public m(p pVar, int i10) {
        this.f15605c = null;
        this.f15606d = null;
        this.f15608f = 0;
        int i11 = f15602h;
        this.f15608f = i11;
        f15602h = i11 + 1;
        this.f15605c = pVar;
        this.f15606d = pVar;
        this.f15609g = i10;
    }

    public void a(p pVar) {
        this.f15607e.add(pVar);
        this.f15606d = pVar;
    }

    public long b(w.f fVar, int i10) {
        long j10;
        int i11;
        p pVar = this.f15605c;
        if (pVar instanceof c) {
            if (((c) pVar).f15633f != i10) {
                return 0L;
            }
        } else if (i10 == 0) {
            if (!(pVar instanceof l)) {
                return 0L;
            }
        } else if (!(pVar instanceof n)) {
            return 0L;
        }
        f fVar2 = (i10 == 0 ? fVar.f15165e : fVar.f15167f).f15635h;
        f fVar3 = (i10 == 0 ? fVar.f15165e : fVar.f15167f).f15636i;
        boolean contains = pVar.f15635h.f15586l.contains(fVar2);
        boolean contains2 = this.f15605c.f15636i.f15586l.contains(fVar3);
        long j11 = this.f15605c.j();
        if (contains && contains2) {
            long d10 = d(this.f15605c.f15635h, 0L);
            long c10 = c(this.f15605c.f15636i, 0L);
            long j12 = d10 - j11;
            p pVar2 = this.f15605c;
            int i12 = pVar2.f15636i.f15580f;
            if (j12 >= (-i12)) {
                j12 += i12;
            }
            int i13 = pVar2.f15635h.f15580f;
            long j13 = ((-c10) - j11) - i13;
            if (j13 >= i13) {
                j13 -= i13;
            }
            float f10 = (float) (pVar2.f15629b.o(i10) > StaticLayoutBuilderCompat.DEFAULT_LINE_SPACING_ADD ? (((float) j13) / r13) + (((float) j12) / (1.0f - r13)) : 0L);
            long j14 = (f10 * r13) + 0.5f + j11 + (f10 * (1.0f - r13)) + 0.5f;
            j10 = r13.f15635h.f15580f + j14;
            i11 = this.f15605c.f15636i.f15580f;
        } else {
            if (contains) {
                return Math.max(d(this.f15605c.f15635h, r13.f15580f), this.f15605c.f15635h.f15580f + j11);
            }
            if (contains2) {
                return Math.max(-c(this.f15605c.f15636i, r13.f15580f), (-this.f15605c.f15636i.f15580f) + j11);
            }
            j10 = r13.f15635h.f15580f + this.f15605c.j();
            i11 = this.f15605c.f15636i.f15580f;
        }
        return j10 - i11;
    }

    public final long c(f fVar, long j10) {
        p pVar = fVar.f15578d;
        if (pVar instanceof k) {
            return j10;
        }
        int size = fVar.f15585k.size();
        long j11 = j10;
        for (int i10 = 0; i10 < size; i10++) {
            d dVar = fVar.f15585k.get(i10);
            if (dVar instanceof f) {
                f fVar2 = (f) dVar;
                if (fVar2.f15578d != pVar) {
                    j11 = Math.min(j11, c(fVar2, fVar2.f15580f + j10));
                }
            }
        }
        if (fVar != pVar.f15636i) {
            return j11;
        }
        long j12 = j10 - pVar.j();
        return Math.min(Math.min(j11, c(pVar.f15635h, j12)), j12 - pVar.f15635h.f15580f);
    }

    public final long d(f fVar, long j10) {
        p pVar = fVar.f15578d;
        if (pVar instanceof k) {
            return j10;
        }
        int size = fVar.f15585k.size();
        long j11 = j10;
        for (int i10 = 0; i10 < size; i10++) {
            d dVar = fVar.f15585k.get(i10);
            if (dVar instanceof f) {
                f fVar2 = (f) dVar;
                if (fVar2.f15578d != pVar) {
                    j11 = Math.max(j11, d(fVar2, fVar2.f15580f + j10));
                }
            }
        }
        if (fVar != pVar.f15635h) {
            return j11;
        }
        long j12 = j10 + pVar.j();
        return Math.max(Math.max(j11, d(pVar.f15636i, j12)), j12 - pVar.f15636i.f15580f);
    }
}
