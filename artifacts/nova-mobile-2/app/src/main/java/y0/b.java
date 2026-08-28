package y0;

import android.os.Looper;
import android.util.AndroidRuntimeException;
import android.view.View;
import com.google.android.material.internal.StaticLayoutBuilderCompat;
import java.util.ArrayList;
import q0.b0;
import y0.a;
import y0.b;

/* compiled from: DynamicAnimation.java */
/* loaded from: classes.dex */
public abstract class b<T extends b<T>> implements a.b {

    /* renamed from: m, reason: collision with root package name */
    public static final r f16285m = new f("translationX");

    /* renamed from: n, reason: collision with root package name */
    public static final r f16286n = new g("translationY");

    /* renamed from: o, reason: collision with root package name */
    public static final r f16287o = new h("translationZ");

    /* renamed from: p, reason: collision with root package name */
    public static final r f16288p = new i("scaleX");

    /* renamed from: q, reason: collision with root package name */
    public static final r f16289q = new j("scaleY");

    /* renamed from: r, reason: collision with root package name */
    public static final r f16290r = new k("rotation");

    /* renamed from: s, reason: collision with root package name */
    public static final r f16291s = new l("rotationX");

    /* renamed from: t, reason: collision with root package name */
    public static final r f16292t = new m("rotationY");

    /* renamed from: u, reason: collision with root package name */
    public static final r f16293u = new n("x");

    /* renamed from: v, reason: collision with root package name */
    public static final r f16294v = new a("y");

    /* renamed from: w, reason: collision with root package name */
    public static final r f16295w = new C0425b("z");

    /* renamed from: x, reason: collision with root package name */
    public static final r f16296x = new c("alpha");

    /* renamed from: y, reason: collision with root package name */
    public static final r f16297y = new d("scrollX");

    /* renamed from: z, reason: collision with root package name */
    public static final r f16298z = new e("scrollY");

    /* renamed from: d, reason: collision with root package name */
    public final Object f16302d;

    /* renamed from: e, reason: collision with root package name */
    public final y0.c f16303e;

    /* renamed from: j, reason: collision with root package name */
    public float f16308j;

    /* renamed from: a, reason: collision with root package name */
    public float f16299a = StaticLayoutBuilderCompat.DEFAULT_LINE_SPACING_ADD;

    /* renamed from: b, reason: collision with root package name */
    public float f16300b = Float.MAX_VALUE;

    /* renamed from: c, reason: collision with root package name */
    public boolean f16301c = false;

    /* renamed from: f, reason: collision with root package name */
    public boolean f16304f = false;

    /* renamed from: g, reason: collision with root package name */
    public float f16305g = Float.MAX_VALUE;

    /* renamed from: h, reason: collision with root package name */
    public float f16306h = -Float.MAX_VALUE;

    /* renamed from: i, reason: collision with root package name */
    public long f16307i = 0;

    /* renamed from: k, reason: collision with root package name */
    public final ArrayList<p> f16309k = new ArrayList<>();

    /* renamed from: l, reason: collision with root package name */
    public final ArrayList<q> f16310l = new ArrayList<>();

    /* compiled from: DynamicAnimation.java */
    /* loaded from: classes.dex */
    public static class a extends r {
        public a(String str) {
            super(str, null);
        }

        @Override // y0.c
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public float getValue(View view) {
            return view.getY();
        }

        @Override // y0.c
        /* renamed from: b, reason: merged with bridge method [inline-methods] */
        public void setValue(View view, float f10) {
            view.setY(f10);
        }
    }

    /* compiled from: DynamicAnimation.java */
    /* renamed from: y0.b$b, reason: collision with other inner class name */
    /* loaded from: classes.dex */
    public static class C0425b extends r {
        public C0425b(String str) {
            super(str, null);
        }

        @Override // y0.c
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public float getValue(View view) {
            return b0.R(view);
        }

        @Override // y0.c
        /* renamed from: b, reason: merged with bridge method [inline-methods] */
        public void setValue(View view, float f10) {
            b0.S0(view, f10);
        }
    }

    /* compiled from: DynamicAnimation.java */
    /* loaded from: classes.dex */
    public static class c extends r {
        public c(String str) {
            super(str, null);
        }

        @Override // y0.c
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public float getValue(View view) {
            return view.getAlpha();
        }

        @Override // y0.c
        /* renamed from: b, reason: merged with bridge method [inline-methods] */
        public void setValue(View view, float f10) {
            view.setAlpha(f10);
        }
    }

    /* compiled from: DynamicAnimation.java */
    /* loaded from: classes.dex */
    public static class d extends r {
        public d(String str) {
            super(str, null);
        }

        @Override // y0.c
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public float getValue(View view) {
            return view.getScrollX();
        }

        @Override // y0.c
        /* renamed from: b, reason: merged with bridge method [inline-methods] */
        public void setValue(View view, float f10) {
            view.setScrollX((int) f10);
        }
    }

    /* compiled from: DynamicAnimation.java */
    /* loaded from: classes.dex */
    public static class e extends r {
        public e(String str) {
            super(str, null);
        }

        @Override // y0.c
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public float getValue(View view) {
            return view.getScrollY();
        }

        @Override // y0.c
        /* renamed from: b, reason: merged with bridge method [inline-methods] */
        public void setValue(View view, float f10) {
            view.setScrollY((int) f10);
        }
    }

    /* compiled from: DynamicAnimation.java */
    /* loaded from: classes.dex */
    public static class f extends r {
        public f(String str) {
            super(str, null);
        }

        @Override // y0.c
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public float getValue(View view) {
            return view.getTranslationX();
        }

        @Override // y0.c
        /* renamed from: b, reason: merged with bridge method [inline-methods] */
        public void setValue(View view, float f10) {
            view.setTranslationX(f10);
        }
    }

    /* compiled from: DynamicAnimation.java */
    /* loaded from: classes.dex */
    public static class g extends r {
        public g(String str) {
            super(str, null);
        }

        @Override // y0.c
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public float getValue(View view) {
            return view.getTranslationY();
        }

        @Override // y0.c
        /* renamed from: b, reason: merged with bridge method [inline-methods] */
        public void setValue(View view, float f10) {
            view.setTranslationY(f10);
        }
    }

    /* compiled from: DynamicAnimation.java */
    /* loaded from: classes.dex */
    public static class h extends r {
        public h(String str) {
            super(str, null);
        }

        @Override // y0.c
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public float getValue(View view) {
            return b0.P(view);
        }

        @Override // y0.c
        /* renamed from: b, reason: merged with bridge method [inline-methods] */
        public void setValue(View view, float f10) {
            b0.P0(view, f10);
        }
    }

    /* compiled from: DynamicAnimation.java */
    /* loaded from: classes.dex */
    public static class i extends r {
        public i(String str) {
            super(str, null);
        }

        @Override // y0.c
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public float getValue(View view) {
            return view.getScaleX();
        }

        @Override // y0.c
        /* renamed from: b, reason: merged with bridge method [inline-methods] */
        public void setValue(View view, float f10) {
            view.setScaleX(f10);
        }
    }

    /* compiled from: DynamicAnimation.java */
    /* loaded from: classes.dex */
    public static class j extends r {
        public j(String str) {
            super(str, null);
        }

        @Override // y0.c
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public float getValue(View view) {
            return view.getScaleY();
        }

        @Override // y0.c
        /* renamed from: b, reason: merged with bridge method [inline-methods] */
        public void setValue(View view, float f10) {
            view.setScaleY(f10);
        }
    }

    /* compiled from: DynamicAnimation.java */
    /* loaded from: classes.dex */
    public static class k extends r {
        public k(String str) {
            super(str, null);
        }

        @Override // y0.c
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public float getValue(View view) {
            return view.getRotation();
        }

        @Override // y0.c
        /* renamed from: b, reason: merged with bridge method [inline-methods] */
        public void setValue(View view, float f10) {
            view.setRotation(f10);
        }
    }

    /* compiled from: DynamicAnimation.java */
    /* loaded from: classes.dex */
    public static class l extends r {
        public l(String str) {
            super(str, null);
        }

        @Override // y0.c
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public float getValue(View view) {
            return view.getRotationX();
        }

        @Override // y0.c
        /* renamed from: b, reason: merged with bridge method [inline-methods] */
        public void setValue(View view, float f10) {
            view.setRotationX(f10);
        }
    }

    /* compiled from: DynamicAnimation.java */
    /* loaded from: classes.dex */
    public static class m extends r {
        public m(String str) {
            super(str, null);
        }

        @Override // y0.c
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public float getValue(View view) {
            return view.getRotationY();
        }

        @Override // y0.c
        /* renamed from: b, reason: merged with bridge method [inline-methods] */
        public void setValue(View view, float f10) {
            view.setRotationY(f10);
        }
    }

    /* compiled from: DynamicAnimation.java */
    /* loaded from: classes.dex */
    public static class n extends r {
        public n(String str) {
            super(str, null);
        }

        @Override // y0.c
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public float getValue(View view) {
            return view.getX();
        }

        @Override // y0.c
        /* renamed from: b, reason: merged with bridge method [inline-methods] */
        public void setValue(View view, float f10) {
            view.setX(f10);
        }
    }

    /* compiled from: DynamicAnimation.java */
    /* loaded from: classes.dex */
    public static class o {

        /* renamed from: a, reason: collision with root package name */
        public float f16311a;

        /* renamed from: b, reason: collision with root package name */
        public float f16312b;
    }

    /* compiled from: DynamicAnimation.java */
    /* loaded from: classes.dex */
    public interface p {
        void a(b bVar, boolean z10, float f10, float f11);
    }

    /* compiled from: DynamicAnimation.java */
    /* loaded from: classes.dex */
    public interface q {
        void a(b bVar, float f10, float f11);
    }

    /* compiled from: DynamicAnimation.java */
    /* loaded from: classes.dex */
    public static abstract class r extends y0.c<View> {
        public /* synthetic */ r(String str, f fVar) {
            this(str);
        }

        public r(String str) {
            super(str);
        }
    }

    public <K> b(K k10, y0.c<K> cVar) {
        this.f16302d = k10;
        this.f16303e = cVar;
        if (cVar != f16290r && cVar != f16291s && cVar != f16292t) {
            if (cVar == f16296x) {
                this.f16308j = 0.00390625f;
                return;
            } else if (cVar != f16288p && cVar != f16289q) {
                this.f16308j = 1.0f;
                return;
            } else {
                this.f16308j = 0.00390625f;
                return;
            }
        }
        this.f16308j = 0.1f;
    }

    public static <T> void g(ArrayList<T> arrayList) {
        for (int size = arrayList.size() - 1; size >= 0; size--) {
            if (arrayList.get(size) == null) {
                arrayList.remove(size);
            }
        }
    }

    @Override // y0.a.b
    public boolean a(long j10) {
        long j11 = this.f16307i;
        if (j11 == 0) {
            this.f16307i = j10;
            h(this.f16300b);
            return false;
        }
        this.f16307i = j10;
        boolean l10 = l(j10 - j11);
        float min = Math.min(this.f16300b, this.f16305g);
        this.f16300b = min;
        float max = Math.max(min, this.f16306h);
        this.f16300b = max;
        h(max);
        if (l10) {
            c(false);
        }
        return l10;
    }

    public void b() {
        if (Looper.myLooper() == Looper.getMainLooper()) {
            if (this.f16304f) {
                c(true);
                return;
            }
            return;
        }
        throw new AndroidRuntimeException("Animations may only be canceled on the main thread");
    }

    public final void c(boolean z10) {
        this.f16304f = false;
        y0.a.d().g(this);
        this.f16307i = 0L;
        this.f16301c = false;
        for (int i10 = 0; i10 < this.f16309k.size(); i10++) {
            if (this.f16309k.get(i10) != null) {
                this.f16309k.get(i10).a(this, z10, this.f16300b, this.f16299a);
            }
        }
        g(this.f16309k);
    }

    public final float d() {
        return this.f16303e.getValue(this.f16302d);
    }

    public float e() {
        return this.f16308j * 0.75f;
    }

    public boolean f() {
        return this.f16304f;
    }

    public void h(float f10) {
        this.f16303e.setValue(this.f16302d, f10);
        for (int i10 = 0; i10 < this.f16310l.size(); i10++) {
            if (this.f16310l.get(i10) != null) {
                this.f16310l.get(i10).a(this, this.f16300b, this.f16299a);
            }
        }
        g(this.f16310l);
    }

    public T i(float f10) {
        this.f16300b = f10;
        this.f16301c = true;
        return this;
    }

    public void j() {
        if (Looper.myLooper() == Looper.getMainLooper()) {
            if (this.f16304f) {
                return;
            }
            k();
            return;
        }
        throw new AndroidRuntimeException("Animations may only be started on the main thread");
    }

    public final void k() {
        if (this.f16304f) {
            return;
        }
        this.f16304f = true;
        if (!this.f16301c) {
            this.f16300b = d();
        }
        float f10 = this.f16300b;
        if (f10 <= this.f16305g && f10 >= this.f16306h) {
            y0.a.d().a(this, 0L);
            return;
        }
        throw new IllegalArgumentException("Starting value need to be in between min value and max value");
    }

    public abstract boolean l(long j10);
}
