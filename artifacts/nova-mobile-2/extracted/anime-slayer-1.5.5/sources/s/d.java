package s;

/* compiled from: LongSparseArray.java */
/* loaded from: classes.dex */
public class d<E> implements Cloneable {

    /* renamed from: j, reason: collision with root package name */
    public static final Object f13573j = new Object();

    /* renamed from: f, reason: collision with root package name */
    public boolean f13574f;

    /* renamed from: g, reason: collision with root package name */
    public long[] f13575g;

    /* renamed from: h, reason: collision with root package name */
    public Object[] f13576h;

    /* renamed from: i, reason: collision with root package name */
    public int f13577i;

    public d() {
        this(10);
    }

    public void a(long j10, E e10) {
        int i10 = this.f13577i;
        if (i10 != 0 && j10 <= this.f13575g[i10 - 1]) {
            j(j10, e10);
            return;
        }
        if (this.f13574f && i10 >= this.f13575g.length) {
            e();
        }
        int i11 = this.f13577i;
        if (i11 >= this.f13575g.length) {
            int f10 = c.f(i11 + 1);
            long[] jArr = new long[f10];
            Object[] objArr = new Object[f10];
            long[] jArr2 = this.f13575g;
            System.arraycopy(jArr2, 0, jArr, 0, jArr2.length);
            Object[] objArr2 = this.f13576h;
            System.arraycopy(objArr2, 0, objArr, 0, objArr2.length);
            this.f13575g = jArr;
            this.f13576h = objArr;
        }
        this.f13575g[i11] = j10;
        this.f13576h[i11] = e10;
        this.f13577i = i11 + 1;
    }

    public void b() {
        int i10 = this.f13577i;
        Object[] objArr = this.f13576h;
        for (int i11 = 0; i11 < i10; i11++) {
            objArr[i11] = null;
        }
        this.f13577i = 0;
        this.f13574f = false;
    }

    /* renamed from: c, reason: merged with bridge method [inline-methods] */
    public d<E> clone() {
        try {
            d<E> dVar = (d) super.clone();
            dVar.f13575g = (long[]) this.f13575g.clone();
            dVar.f13576h = (Object[]) this.f13576h.clone();
            return dVar;
        } catch (CloneNotSupportedException e10) {
            throw new AssertionError(e10);
        }
    }

    public boolean d(long j10) {
        return h(j10) >= 0;
    }

    public final void e() {
        int i10 = this.f13577i;
        long[] jArr = this.f13575g;
        Object[] objArr = this.f13576h;
        int i11 = 0;
        for (int i12 = 0; i12 < i10; i12++) {
            Object obj = objArr[i12];
            if (obj != f13573j) {
                if (i12 != i11) {
                    jArr[i11] = jArr[i12];
                    objArr[i11] = obj;
                    objArr[i12] = null;
                }
                i11++;
            }
        }
        this.f13574f = false;
        this.f13577i = i11;
    }

    public E f(long j10) {
        return g(j10, null);
    }

    public E g(long j10, E e10) {
        int b10 = c.b(this.f13575g, this.f13577i, j10);
        if (b10 >= 0) {
            Object[] objArr = this.f13576h;
            if (objArr[b10] != f13573j) {
                return (E) objArr[b10];
            }
        }
        return e10;
    }

    public int h(long j10) {
        if (this.f13574f) {
            e();
        }
        return c.b(this.f13575g, this.f13577i, j10);
    }

    public long i(int i10) {
        if (this.f13574f) {
            e();
        }
        return this.f13575g[i10];
    }

    public void j(long j10, E e10) {
        int b10 = c.b(this.f13575g, this.f13577i, j10);
        if (b10 >= 0) {
            this.f13576h[b10] = e10;
            return;
        }
        int i10 = b10 ^ (-1);
        int i11 = this.f13577i;
        if (i10 < i11) {
            Object[] objArr = this.f13576h;
            if (objArr[i10] == f13573j) {
                this.f13575g[i10] = j10;
                objArr[i10] = e10;
                return;
            }
        }
        if (this.f13574f && i11 >= this.f13575g.length) {
            e();
            i10 = c.b(this.f13575g, this.f13577i, j10) ^ (-1);
        }
        int i12 = this.f13577i;
        if (i12 >= this.f13575g.length) {
            int f10 = c.f(i12 + 1);
            long[] jArr = new long[f10];
            Object[] objArr2 = new Object[f10];
            long[] jArr2 = this.f13575g;
            System.arraycopy(jArr2, 0, jArr, 0, jArr2.length);
            Object[] objArr3 = this.f13576h;
            System.arraycopy(objArr3, 0, objArr2, 0, objArr3.length);
            this.f13575g = jArr;
            this.f13576h = objArr2;
        }
        int i13 = this.f13577i;
        if (i13 - i10 != 0) {
            long[] jArr3 = this.f13575g;
            int i14 = i10 + 1;
            System.arraycopy(jArr3, i10, jArr3, i14, i13 - i10);
            Object[] objArr4 = this.f13576h;
            System.arraycopy(objArr4, i10, objArr4, i14, this.f13577i - i10);
        }
        this.f13575g[i10] = j10;
        this.f13576h[i10] = e10;
        this.f13577i++;
    }

    public void k(long j10) {
        int b10 = c.b(this.f13575g, this.f13577i, j10);
        if (b10 >= 0) {
            Object[] objArr = this.f13576h;
            Object obj = objArr[b10];
            Object obj2 = f13573j;
            if (obj != obj2) {
                objArr[b10] = obj2;
                this.f13574f = true;
            }
        }
    }

    public void l(int i10) {
        Object[] objArr = this.f13576h;
        Object obj = objArr[i10];
        Object obj2 = f13573j;
        if (obj != obj2) {
            objArr[i10] = obj2;
            this.f13574f = true;
        }
    }

    public int m() {
        if (this.f13574f) {
            e();
        }
        return this.f13577i;
    }

    public E n(int i10) {
        if (this.f13574f) {
            e();
        }
        return (E) this.f13576h[i10];
    }

    public String toString() {
        if (m() <= 0) {
            return "{}";
        }
        StringBuilder sb2 = new StringBuilder(this.f13577i * 28);
        sb2.append('{');
        for (int i10 = 0; i10 < this.f13577i; i10++) {
            if (i10 > 0) {
                sb2.append(", ");
            }
            sb2.append(i(i10));
            sb2.append('=');
            E n10 = n(i10);
            if (n10 != this) {
                sb2.append(n10);
            } else {
                sb2.append("(this Map)");
            }
        }
        sb2.append('}');
        return sb2.toString();
    }

    public d(int i10) {
        this.f13574f = false;
        if (i10 == 0) {
            this.f13575g = c.f13571b;
            this.f13576h = c.f13572c;
        } else {
            int f10 = c.f(i10);
            this.f13575g = new long[f10];
            this.f13576h = new Object[f10];
        }
    }
}
