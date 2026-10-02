package nc;

import wb.z;

/* compiled from: Progressions.kt */
/* loaded from: classes2.dex */
public class c implements Iterable<Integer> {

    /* renamed from: i, reason: collision with root package name */
    public static final a f11388i = new a(null);

    /* renamed from: f, reason: collision with root package name */
    public final int f11389f;

    /* renamed from: g, reason: collision with root package name */
    public final int f11390g;

    /* renamed from: h, reason: collision with root package name */
    public final int f11391h;

    /* compiled from: Progressions.kt */
    /* loaded from: classes2.dex */
    public static final class a {
        public a() {
        }

        public /* synthetic */ a(jc.g gVar) {
            this();
        }

        public final c a(int i10, int i11, int i12) {
            return new c(i10, i11, i12);
        }
    }

    public c(int i10, int i11, int i12) {
        if (i12 == 0) {
            throw new IllegalArgumentException("Step must be non-zero.");
        }
        if (i12 != Integer.MIN_VALUE) {
            this.f11389f = i10;
            this.f11390g = dc.c.b(i10, i11, i12);
            this.f11391h = i12;
            return;
        }
        throw new IllegalArgumentException("Step must be greater than Int.MIN_VALUE to avoid overflow on negation.");
    }

    public final int d() {
        return this.f11389f;
    }

    public final int e() {
        return this.f11390g;
    }

    public boolean equals(Object obj) {
        if (obj instanceof c) {
            if (!isEmpty() || !((c) obj).isEmpty()) {
                c cVar = (c) obj;
                if (this.f11389f != cVar.f11389f || this.f11390g != cVar.f11390g || this.f11391h != cVar.f11391h) {
                }
            }
            return true;
        }
        return false;
    }

    public final int f() {
        return this.f11391h;
    }

    @Override // java.lang.Iterable
    /* renamed from: g, reason: merged with bridge method [inline-methods] */
    public z iterator() {
        return new d(this.f11389f, this.f11390g, this.f11391h);
    }

    public int hashCode() {
        if (isEmpty()) {
            return -1;
        }
        return (((this.f11389f * 31) + this.f11390g) * 31) + this.f11391h;
    }

    public boolean isEmpty() {
        if (this.f11391h > 0) {
            if (this.f11389f > this.f11390g) {
                return true;
            }
        } else if (this.f11389f < this.f11390g) {
            return true;
        }
        return false;
    }

    public String toString() {
        StringBuilder sb2;
        int i10;
        if (this.f11391h > 0) {
            sb2 = new StringBuilder();
            sb2.append(this.f11389f);
            sb2.append("..");
            sb2.append(this.f11390g);
            sb2.append(" step ");
            i10 = this.f11391h;
        } else {
            sb2 = new StringBuilder();
            sb2.append(this.f11389f);
            sb2.append(" downTo ");
            sb2.append(this.f11390g);
            sb2.append(" step ");
            i10 = -this.f11391h;
        }
        sb2.append(i10);
        return sb2.toString();
    }
}
