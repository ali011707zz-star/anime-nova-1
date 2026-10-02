package s;

/* compiled from: SparseArrayCompat.java */
/* loaded from: classes.dex */
public class h<E> implements Cloneable {

    /* renamed from: j, reason: collision with root package name */
    public static final Object f13600j = new Object();

    /* renamed from: f, reason: collision with root package name */
    public boolean f13601f;

    /* renamed from: g, reason: collision with root package name */
    public int[] f13602g;

    /* renamed from: h, reason: collision with root package name */
    public Object[] f13603h;

    /* renamed from: i, reason: collision with root package name */
    public int f13604i;

    public h() {
        this(10);
    }

    public void a(int i10, E e10) {
        int i11 = this.f13604i;
        if (i11 != 0 && i10 <= this.f13602g[i11 - 1]) {
            i(i10, e10);
            return;
        }
        if (this.f13601f && i11 >= this.f13602g.length) {
            d();
        }
        int i12 = this.f13604i;
        if (i12 >= this.f13602g.length) {
            int e11 = c.e(i12 + 1);
            int[] iArr = new int[e11];
            Object[] objArr = new Object[e11];
            int[] iArr2 = this.f13602g;
            System.arraycopy(iArr2, 0, iArr, 0, iArr2.length);
            Object[] objArr2 = this.f13603h;
            System.arraycopy(objArr2, 0, objArr, 0, objArr2.length);
            this.f13602g = iArr;
            this.f13603h = objArr;
        }
        this.f13602g[i12] = i10;
        this.f13603h[i12] = e10;
        this.f13604i = i12 + 1;
    }

    public void b() {
        int i10 = this.f13604i;
        Object[] objArr = this.f13603h;
        for (int i11 = 0; i11 < i10; i11++) {
            objArr[i11] = null;
        }
        this.f13604i = 0;
        this.f13601f = false;
    }

    /* renamed from: c, reason: merged with bridge method [inline-methods] */
    public h<E> clone() {
        try {
            h<E> hVar = (h) super.clone();
            hVar.f13602g = (int[]) this.f13602g.clone();
            hVar.f13603h = (Object[]) this.f13603h.clone();
            return hVar;
        } catch (CloneNotSupportedException e10) {
            throw new AssertionError(e10);
        }
    }

    public final void d() {
        int i10 = this.f13604i;
        int[] iArr = this.f13602g;
        Object[] objArr = this.f13603h;
        int i11 = 0;
        for (int i12 = 0; i12 < i10; i12++) {
            Object obj = objArr[i12];
            if (obj != f13600j) {
                if (i12 != i11) {
                    iArr[i11] = iArr[i12];
                    objArr[i11] = obj;
                    objArr[i12] = null;
                }
                i11++;
            }
        }
        this.f13601f = false;
        this.f13604i = i11;
    }

    public E e(int i10) {
        return f(i10, null);
    }

    public E f(int i10, E e10) {
        int a10 = c.a(this.f13602g, this.f13604i, i10);
        if (a10 >= 0) {
            Object[] objArr = this.f13603h;
            if (objArr[a10] != f13600j) {
                return (E) objArr[a10];
            }
        }
        return e10;
    }

    public int g(E e10) {
        if (this.f13601f) {
            d();
        }
        for (int i10 = 0; i10 < this.f13604i; i10++) {
            if (this.f13603h[i10] == e10) {
                return i10;
            }
        }
        return -1;
    }

    public int h(int i10) {
        if (this.f13601f) {
            d();
        }
        return this.f13602g[i10];
    }

    public void i(int i10, E e10) {
        int a10 = c.a(this.f13602g, this.f13604i, i10);
        if (a10 >= 0) {
            this.f13603h[a10] = e10;
            return;
        }
        int i11 = a10 ^ (-1);
        int i12 = this.f13604i;
        if (i11 < i12) {
            Object[] objArr = this.f13603h;
            if (objArr[i11] == f13600j) {
                this.f13602g[i11] = i10;
                objArr[i11] = e10;
                return;
            }
        }
        if (this.f13601f && i12 >= this.f13602g.length) {
            d();
            i11 = c.a(this.f13602g, this.f13604i, i10) ^ (-1);
        }
        int i13 = this.f13604i;
        if (i13 >= this.f13602g.length) {
            int e11 = c.e(i13 + 1);
            int[] iArr = new int[e11];
            Object[] objArr2 = new Object[e11];
            int[] iArr2 = this.f13602g;
            System.arraycopy(iArr2, 0, iArr, 0, iArr2.length);
            Object[] objArr3 = this.f13603h;
            System.arraycopy(objArr3, 0, objArr2, 0, objArr3.length);
            this.f13602g = iArr;
            this.f13603h = objArr2;
        }
        int i14 = this.f13604i;
        if (i14 - i11 != 0) {
            int[] iArr3 = this.f13602g;
            int i15 = i11 + 1;
            System.arraycopy(iArr3, i11, iArr3, i15, i14 - i11);
            Object[] objArr4 = this.f13603h;
            System.arraycopy(objArr4, i11, objArr4, i15, this.f13604i - i11);
        }
        this.f13602g[i11] = i10;
        this.f13603h[i11] = e10;
        this.f13604i++;
    }

    public int j() {
        if (this.f13601f) {
            d();
        }
        return this.f13604i;
    }

    public E k(int i10) {
        if (this.f13601f) {
            d();
        }
        return (E) this.f13603h[i10];
    }

    public String toString() {
        if (j() <= 0) {
            return "{}";
        }
        StringBuilder sb2 = new StringBuilder(this.f13604i * 28);
        sb2.append('{');
        for (int i10 = 0; i10 < this.f13604i; i10++) {
            if (i10 > 0) {
                sb2.append(", ");
            }
            sb2.append(h(i10));
            sb2.append('=');
            E k10 = k(i10);
            if (k10 != this) {
                sb2.append(k10);
            } else {
                sb2.append("(this Map)");
            }
        }
        sb2.append('}');
        return sb2.toString();
    }

    public h(int i10) {
        this.f13601f = false;
        if (i10 == 0) {
            this.f13602g = c.f13570a;
            this.f13603h = c.f13572c;
        } else {
            int e10 = c.e(i10);
            this.f13602g = new int[e10];
            this.f13603h = new Object[e10];
        }
    }
}
