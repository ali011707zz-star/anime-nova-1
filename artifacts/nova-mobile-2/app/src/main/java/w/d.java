package w;

import java.util.ArrayList;
import java.util.HashSet;
import java.util.Iterator;
import t.i;
import x.o;

/* compiled from: ConstraintAnchor.java */
/* loaded from: classes.dex */
public class d {

    /* renamed from: b, reason: collision with root package name */
    public int f15138b;

    /* renamed from: c, reason: collision with root package name */
    public boolean f15139c;

    /* renamed from: d, reason: collision with root package name */
    public final e f15140d;

    /* renamed from: e, reason: collision with root package name */
    public final b f15141e;

    /* renamed from: f, reason: collision with root package name */
    public d f15142f;

    /* renamed from: i, reason: collision with root package name */
    public t.i f15145i;

    /* renamed from: a, reason: collision with root package name */
    public HashSet<d> f15137a = null;

    /* renamed from: g, reason: collision with root package name */
    public int f15143g = 0;

    /* renamed from: h, reason: collision with root package name */
    public int f15144h = Integer.MIN_VALUE;

    /* compiled from: ConstraintAnchor.java */
    /* loaded from: classes.dex */
    public static /* synthetic */ class a {

        /* renamed from: a, reason: collision with root package name */
        public static final /* synthetic */ int[] f15146a;

        static {
            int[] iArr = new int[b.values().length];
            f15146a = iArr;
            try {
                iArr[b.CENTER.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f15146a[b.LEFT.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f15146a[b.RIGHT.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                f15146a[b.TOP.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                f15146a[b.BOTTOM.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                f15146a[b.BASELINE.ordinal()] = 6;
            } catch (NoSuchFieldError unused6) {
            }
            try {
                f15146a[b.CENTER_X.ordinal()] = 7;
            } catch (NoSuchFieldError unused7) {
            }
            try {
                f15146a[b.CENTER_Y.ordinal()] = 8;
            } catch (NoSuchFieldError unused8) {
            }
            try {
                f15146a[b.NONE.ordinal()] = 9;
            } catch (NoSuchFieldError unused9) {
            }
        }
    }

    /* compiled from: ConstraintAnchor.java */
    /* loaded from: classes.dex */
    public enum b {
        NONE,
        LEFT,
        TOP,
        RIGHT,
        BOTTOM,
        BASELINE,
        CENTER,
        CENTER_X,
        CENTER_Y
    }

    public d(e eVar, b bVar) {
        this.f15140d = eVar;
        this.f15141e = bVar;
    }

    public boolean a(d dVar, int i10, int i11, boolean z10) {
        if (dVar == null) {
            p();
            return true;
        }
        if (!z10 && !o(dVar)) {
            return false;
        }
        this.f15142f = dVar;
        if (dVar.f15137a == null) {
            dVar.f15137a = new HashSet<>();
        }
        HashSet<d> hashSet = this.f15142f.f15137a;
        if (hashSet != null) {
            hashSet.add(this);
        }
        this.f15143g = i10;
        this.f15144h = i11;
        return true;
    }

    public void b(int i10, ArrayList<o> arrayList, o oVar) {
        HashSet<d> hashSet = this.f15137a;
        if (hashSet != null) {
            Iterator<d> it2 = hashSet.iterator();
            while (it2.hasNext()) {
                x.i.a(it2.next().f15140d, i10, arrayList, oVar);
            }
        }
    }

    public HashSet<d> c() {
        return this.f15137a;
    }

    public int d() {
        if (this.f15139c) {
            return this.f15138b;
        }
        return 0;
    }

    public int e() {
        d dVar;
        if (this.f15140d.Q() == 8) {
            return 0;
        }
        if (this.f15144h != Integer.MIN_VALUE && (dVar = this.f15142f) != null && dVar.f15140d.Q() == 8) {
            return this.f15144h;
        }
        return this.f15143g;
    }

    public final d f() {
        switch (a.f15146a[this.f15141e.ordinal()]) {
            case 1:
            case 6:
            case 7:
            case 8:
            case 9:
                return null;
            case 2:
                return this.f15140d.P;
            case 3:
                return this.f15140d.N;
            case 4:
                return this.f15140d.Q;
            case 5:
                return this.f15140d.O;
            default:
                throw new AssertionError(this.f15141e.name());
        }
    }

    public e g() {
        return this.f15140d;
    }

    public t.i h() {
        return this.f15145i;
    }

    public d i() {
        return this.f15142f;
    }

    public b j() {
        return this.f15141e;
    }

    public boolean k() {
        HashSet<d> hashSet = this.f15137a;
        if (hashSet == null) {
            return false;
        }
        Iterator<d> it2 = hashSet.iterator();
        while (it2.hasNext()) {
            if (it2.next().f().n()) {
                return true;
            }
        }
        return false;
    }

    public boolean l() {
        HashSet<d> hashSet = this.f15137a;
        return hashSet != null && hashSet.size() > 0;
    }

    public boolean m() {
        return this.f15139c;
    }

    public boolean n() {
        return this.f15142f != null;
    }

    public boolean o(d dVar) {
        if (dVar == null) {
            return false;
        }
        b j10 = dVar.j();
        b bVar = this.f15141e;
        if (j10 == bVar) {
            return bVar != b.BASELINE || (dVar.g().U() && g().U());
        }
        switch (a.f15146a[bVar.ordinal()]) {
            case 1:
                return (j10 == b.BASELINE || j10 == b.CENTER_X || j10 == b.CENTER_Y) ? false : true;
            case 2:
            case 3:
                boolean z10 = j10 == b.LEFT || j10 == b.RIGHT;
                if (dVar.g() instanceof g) {
                    return z10 || j10 == b.CENTER_X;
                }
                return z10;
            case 4:
            case 5:
                boolean z11 = j10 == b.TOP || j10 == b.BOTTOM;
                if (dVar.g() instanceof g) {
                    return z11 || j10 == b.CENTER_Y;
                }
                return z11;
            case 6:
                return (j10 == b.LEFT || j10 == b.RIGHT) ? false : true;
            case 7:
            case 8:
            case 9:
                return false;
            default:
                throw new AssertionError(this.f15141e.name());
        }
    }

    public void p() {
        HashSet<d> hashSet;
        d dVar = this.f15142f;
        if (dVar != null && (hashSet = dVar.f15137a) != null) {
            hashSet.remove(this);
            if (this.f15142f.f15137a.size() == 0) {
                this.f15142f.f15137a = null;
            }
        }
        this.f15137a = null;
        this.f15142f = null;
        this.f15143g = 0;
        this.f15144h = Integer.MIN_VALUE;
        this.f15139c = false;
        this.f15138b = 0;
    }

    public void q() {
        this.f15139c = false;
        this.f15138b = 0;
    }

    public void r(t.c cVar) {
        t.i iVar = this.f15145i;
        if (iVar == null) {
            this.f15145i = new t.i(i.a.UNRESTRICTED, null);
        } else {
            iVar.e();
        }
    }

    public void s(int i10) {
        this.f15138b = i10;
        this.f15139c = true;
    }

    public String toString() {
        return this.f15140d.r() + ":" + this.f15141e.toString();
    }
}
