package h3;

import android.view.animation.Interpolator;
import com.google.android.material.internal.StaticLayoutBuilderCompat;
import java.util.ArrayList;
import java.util.List;

/* compiled from: BaseKeyframeAnimation.java */
/* loaded from: classes.dex */
public abstract class a<K, A> {

    /* renamed from: c, reason: collision with root package name */
    public final d<K> f7208c;

    /* renamed from: e, reason: collision with root package name */
    public r3.c<A> f7210e;

    /* renamed from: a, reason: collision with root package name */
    public final List<b> f7206a = new ArrayList(1);

    /* renamed from: b, reason: collision with root package name */
    public boolean f7207b = false;

    /* renamed from: d, reason: collision with root package name */
    public float f7209d = StaticLayoutBuilderCompat.DEFAULT_LINE_SPACING_ADD;

    /* renamed from: f, reason: collision with root package name */
    public A f7211f = null;

    /* renamed from: g, reason: collision with root package name */
    public float f7212g = -1.0f;

    /* renamed from: h, reason: collision with root package name */
    public float f7213h = -1.0f;

    /* compiled from: BaseKeyframeAnimation.java */
    /* loaded from: classes.dex */
    public interface b {
        void b();
    }

    /* compiled from: BaseKeyframeAnimation.java */
    /* loaded from: classes.dex */
    public static final class c<T> implements d<T> {
        public c() {
        }

        @Override // h3.a.d
        public float a() {
            return 1.0f;
        }

        @Override // h3.a.d
        public boolean b(float f10) {
            throw new IllegalStateException("not implemented");
        }

        @Override // h3.a.d
        public float c() {
            return StaticLayoutBuilderCompat.DEFAULT_LINE_SPACING_ADD;
        }

        @Override // h3.a.d
        public r3.a<T> d() {
            throw new IllegalStateException("not implemented");
        }

        @Override // h3.a.d
        public boolean e(float f10) {
            return false;
        }

        @Override // h3.a.d
        public boolean isEmpty() {
            return true;
        }
    }

    /* compiled from: BaseKeyframeAnimation.java */
    /* loaded from: classes.dex */
    public interface d<T> {
        float a();

        boolean b(float f10);

        float c();

        r3.a<T> d();

        boolean e(float f10);

        boolean isEmpty();
    }

    /* compiled from: BaseKeyframeAnimation.java */
    /* loaded from: classes.dex */
    public static final class e<T> implements d<T> {

        /* renamed from: a, reason: collision with root package name */
        public final List<? extends r3.a<T>> f7214a;

        /* renamed from: c, reason: collision with root package name */
        public r3.a<T> f7216c = null;

        /* renamed from: d, reason: collision with root package name */
        public float f7217d = -1.0f;

        /* renamed from: b, reason: collision with root package name */
        public r3.a<T> f7215b = f(StaticLayoutBuilderCompat.DEFAULT_LINE_SPACING_ADD);

        public e(List<? extends r3.a<T>> list) {
            this.f7214a = list;
        }

        @Override // h3.a.d
        public float a() {
            return this.f7214a.get(r0.size() - 1).b();
        }

        @Override // h3.a.d
        public boolean b(float f10) {
            r3.a<T> aVar = this.f7216c;
            r3.a<T> aVar2 = this.f7215b;
            if (aVar == aVar2 && this.f7217d == f10) {
                return true;
            }
            this.f7216c = aVar2;
            this.f7217d = f10;
            return false;
        }

        @Override // h3.a.d
        public float c() {
            return this.f7214a.get(0).e();
        }

        @Override // h3.a.d
        public r3.a<T> d() {
            return this.f7215b;
        }

        @Override // h3.a.d
        public boolean e(float f10) {
            if (this.f7215b.a(f10)) {
                return !this.f7215b.h();
            }
            this.f7215b = f(f10);
            return true;
        }

        public final r3.a<T> f(float f10) {
            List<? extends r3.a<T>> list = this.f7214a;
            r3.a<T> aVar = list.get(list.size() - 1);
            if (f10 >= aVar.e()) {
                return aVar;
            }
            for (int size = this.f7214a.size() - 2; size >= 1; size--) {
                r3.a<T> aVar2 = this.f7214a.get(size);
                if (this.f7215b != aVar2 && aVar2.a(f10)) {
                    return aVar2;
                }
            }
            return this.f7214a.get(0);
        }

        @Override // h3.a.d
        public boolean isEmpty() {
            return false;
        }
    }

    /* compiled from: BaseKeyframeAnimation.java */
    /* loaded from: classes.dex */
    public static final class f<T> implements d<T> {

        /* renamed from: a, reason: collision with root package name */
        public final r3.a<T> f7218a;

        /* renamed from: b, reason: collision with root package name */
        public float f7219b = -1.0f;

        public f(List<? extends r3.a<T>> list) {
            this.f7218a = list.get(0);
        }

        @Override // h3.a.d
        public float a() {
            return this.f7218a.b();
        }

        @Override // h3.a.d
        public boolean b(float f10) {
            if (this.f7219b == f10) {
                return true;
            }
            this.f7219b = f10;
            return false;
        }

        @Override // h3.a.d
        public float c() {
            return this.f7218a.e();
        }

        @Override // h3.a.d
        public r3.a<T> d() {
            return this.f7218a;
        }

        @Override // h3.a.d
        public boolean e(float f10) {
            return !this.f7218a.h();
        }

        @Override // h3.a.d
        public boolean isEmpty() {
            return false;
        }
    }

    public a(List<? extends r3.a<K>> list) {
        this.f7208c = o(list);
    }

    public static <T> d<T> o(List<? extends r3.a<T>> list) {
        if (list.isEmpty()) {
            return new c();
        }
        if (list.size() == 1) {
            return new f(list);
        }
        return new e(list);
    }

    public void a(b bVar) {
        this.f7206a.add(bVar);
    }

    public r3.a<K> b() {
        e3.c.a("BaseKeyframeAnimation#getCurrentKeyframe");
        r3.a<K> d10 = this.f7208c.d();
        e3.c.b("BaseKeyframeAnimation#getCurrentKeyframe");
        return d10;
    }

    public float c() {
        if (this.f7213h == -1.0f) {
            this.f7213h = this.f7208c.a();
        }
        return this.f7213h;
    }

    public float d() {
        r3.a<K> b10 = b();
        return b10.h() ? StaticLayoutBuilderCompat.DEFAULT_LINE_SPACING_ADD : b10.f12832d.getInterpolation(e());
    }

    public float e() {
        if (this.f7207b) {
            return StaticLayoutBuilderCompat.DEFAULT_LINE_SPACING_ADD;
        }
        r3.a<K> b10 = b();
        return b10.h() ? StaticLayoutBuilderCompat.DEFAULT_LINE_SPACING_ADD : (this.f7209d - b10.e()) / (b10.b() - b10.e());
    }

    public float f() {
        return this.f7209d;
    }

    public final float g() {
        if (this.f7212g == -1.0f) {
            this.f7212g = this.f7208c.c();
        }
        return this.f7212g;
    }

    public A h() {
        A i10;
        float e10 = e();
        if (this.f7210e == null && this.f7208c.b(e10)) {
            return this.f7211f;
        }
        r3.a<K> b10 = b();
        Interpolator interpolator = b10.f12833e;
        if (interpolator != null && b10.f12834f != null) {
            i10 = j(b10, e10, interpolator.getInterpolation(e10), b10.f12834f.getInterpolation(e10));
        } else {
            i10 = i(b10, d());
        }
        this.f7211f = i10;
        return i10;
    }

    public abstract A i(r3.a<K> aVar, float f10);

    public A j(r3.a<K> aVar, float f10, float f11, float f12) {
        throw new UnsupportedOperationException("This animation does not support split dimensions!");
    }

    public void k() {
        for (int i10 = 0; i10 < this.f7206a.size(); i10++) {
            this.f7206a.get(i10).b();
        }
    }

    public void l() {
        this.f7207b = true;
    }

    public void m(float f10) {
        if (this.f7208c.isEmpty()) {
            return;
        }
        if (f10 < g()) {
            f10 = g();
        } else if (f10 > c()) {
            f10 = c();
        }
        if (f10 == this.f7209d) {
            return;
        }
        this.f7209d = f10;
        if (this.f7208c.e(f10)) {
            k();
        }
    }

    public void n(r3.c<A> cVar) {
        r3.c<A> cVar2 = this.f7210e;
        if (cVar2 != null) {
            cVar2.c(null);
        }
        this.f7210e = cVar;
        if (cVar != null) {
            cVar.c(this);
        }
    }
}
