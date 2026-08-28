package g9;

import com.google.android.material.internal.StaticLayoutBuilderCompat;
import g9.f.a;

/* compiled from: ObjectPool.java */
/* loaded from: classes.dex */
public class f<T extends a> {

    /* renamed from: g, reason: collision with root package name */
    public static int f7057g;

    /* renamed from: a, reason: collision with root package name */
    public int f7058a;

    /* renamed from: b, reason: collision with root package name */
    public int f7059b;

    /* renamed from: c, reason: collision with root package name */
    public Object[] f7060c;

    /* renamed from: d, reason: collision with root package name */
    public int f7061d;

    /* renamed from: e, reason: collision with root package name */
    public T f7062e;

    /* renamed from: f, reason: collision with root package name */
    public float f7063f;

    /* compiled from: ObjectPool.java */
    /* loaded from: classes.dex */
    public static abstract class a {

        /* renamed from: b, reason: collision with root package name */
        public static int f7064b = -1;

        /* renamed from: a, reason: collision with root package name */
        public int f7065a = f7064b;

        public abstract a a();
    }

    public f(int i10, T t10) {
        if (i10 > 0) {
            this.f7059b = i10;
            this.f7060c = new Object[i10];
            this.f7061d = 0;
            this.f7062e = t10;
            this.f7063f = 1.0f;
            d();
            return;
        }
        throw new IllegalArgumentException("Object Pool must be instantiated with a capacity greater than 0!");
    }

    public static synchronized f a(int i10, a aVar) {
        f fVar;
        synchronized (f.class) {
            fVar = new f(i10, aVar);
            int i11 = f7057g;
            fVar.f7058a = i11;
            f7057g = i11 + 1;
        }
        return fVar;
    }

    public synchronized T b() {
        T t10;
        if (this.f7061d == -1 && this.f7063f > StaticLayoutBuilderCompat.DEFAULT_LINE_SPACING_ADD) {
            d();
        }
        Object[] objArr = this.f7060c;
        int i10 = this.f7061d;
        t10 = (T) objArr[i10];
        t10.f7065a = a.f7064b;
        this.f7061d = i10 - 1;
        return t10;
    }

    public synchronized void c(T t10) {
        int i10 = t10.f7065a;
        if (i10 != a.f7064b) {
            if (i10 == this.f7058a) {
                throw new IllegalArgumentException("The object passed is already stored in this pool!");
            }
            throw new IllegalArgumentException("The object to recycle already belongs to poolId " + t10.f7065a + ".  Object cannot belong to two different pool instances simultaneously!");
        }
        int i11 = this.f7061d + 1;
        this.f7061d = i11;
        if (i11 >= this.f7060c.length) {
            f();
        }
        t10.f7065a = this.f7058a;
        this.f7060c[this.f7061d] = t10;
    }

    public final void d() {
        e(this.f7063f);
    }

    public final void e(float f10) {
        int i10 = this.f7059b;
        int i11 = (int) (i10 * f10);
        if (i11 < 1) {
            i10 = 1;
        } else if (i11 <= i10) {
            i10 = i11;
        }
        for (int i12 = 0; i12 < i10; i12++) {
            this.f7060c[i12] = this.f7062e.a();
        }
        this.f7061d = i10 - 1;
    }

    public final void f() {
        int i10 = this.f7059b;
        int i11 = i10 * 2;
        this.f7059b = i11;
        Object[] objArr = new Object[i11];
        for (int i12 = 0; i12 < i10; i12++) {
            objArr[i12] = this.f7060c[i12];
        }
        this.f7060c = objArr;
    }

    public void g(float f10) {
        if (f10 > 1.0f) {
            f10 = 1.0f;
        } else if (f10 < StaticLayoutBuilderCompat.DEFAULT_LINE_SPACING_ADD) {
            f10 = StaticLayoutBuilderCompat.DEFAULT_LINE_SPACING_ADD;
        }
        this.f7063f = f10;
    }
}
