package androidx.appcompat.widget;

import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.Resources;
import android.content.res.XmlResourceParser;
import android.graphics.PorterDuff;
import android.graphics.PorterDuffColorFilter;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.util.AttributeSet;
import android.util.TypedValue;
import android.util.Xml;
import java.lang.ref.WeakReference;
import java.util.WeakHashMap;
import org.xmlpull.v1.XmlPullParser;
import org.xmlpull.v1.XmlPullParserException;
import s.d;
import s.e;
import s.g;
import s.h;

/* compiled from: ResourceManagerInternal.java */
/* loaded from: classes.dex */
public final class l0 {

    /* renamed from: i, reason: collision with root package name */
    public static l0 f1404i;

    /* renamed from: a, reason: collision with root package name */
    public WeakHashMap<Context, h<ColorStateList>> f1406a;

    /* renamed from: b, reason: collision with root package name */
    public g<String, ResourceDelegate> f1407b;

    /* renamed from: c, reason: collision with root package name */
    public h<String> f1408c;

    /* renamed from: d, reason: collision with root package name */
    public final WeakHashMap<Context, d<WeakReference<Drawable.ConstantState>>> f1409d = new WeakHashMap<>(0);

    /* renamed from: e, reason: collision with root package name */
    public TypedValue f1410e;

    /* renamed from: f, reason: collision with root package name */
    public boolean f1411f;

    /* renamed from: g, reason: collision with root package name */
    public f f1412g;

    /* renamed from: h, reason: collision with root package name */
    public static final PorterDuff.Mode f1403h = PorterDuff.Mode.SRC_IN;

    /* renamed from: j, reason: collision with root package name */
    public static final c f1405j = new c(6);

    /* compiled from: ResourceManagerInternal.java */
    /* loaded from: classes.dex */
    public static class a implements ResourceDelegate {
        @Override // androidx.appcompat.widget.l0.e
        public Drawable a(Context context, XmlPullParser xmlPullParser, AttributeSet attributeSet, Resources.Theme theme) {
            try {
                return g.a.m(context, context.getResources(), xmlPullParser, attributeSet, theme);
            } catch (Exception unused) {
                return null;
            }
        }
    }

    /* compiled from: ResourceManagerInternal.java */
    /* loaded from: classes.dex */
    public static class b implements ResourceDelegate {
        @Override // androidx.appcompat.widget.l0.e
        public Drawable a(Context context, XmlPullParser xmlPullParser, AttributeSet attributeSet, Resources.Theme theme) {
            try {
                return y1.c.a(context, context.getResources(), xmlPullParser, attributeSet, theme);
            } catch (Exception unused) {
                return null;
            }
        }
    }

    /* compiled from: ResourceManagerInternal.java */
    /* loaded from: classes.dex */
    public static class c extends e<Integer, PorterDuffColorFilter> {
        public c(int i10) {
            super(i10);
        }

        public static int a(int i10, PorterDuff.Mode mode) {
            return ((i10 + 31) * 31) + mode.hashCode();
        }

        public PorterDuffColorFilter b(int i10, PorterDuff.Mode mode) {
            return get(Integer.valueOf(a(i10, mode)));
        }

        public PorterDuffColorFilter c(int i10, PorterDuff.Mode mode, PorterDuffColorFilter porterDuffColorFilter) {
            return put(Integer.valueOf(a(i10, mode)), porterDuffColorFilter);
        }
    }

    /* compiled from: ResourceManagerInternal.java */
    /* loaded from: classes.dex */
    public static class d implements ResourceDelegate {
        @Override // androidx.appcompat.widget.l0.e
        public Drawable a(Context context, XmlPullParser xmlPullParser, AttributeSet attributeSet, Resources.Theme theme) {
            String classAttribute = attributeSet.getClassAttribute();
            if (classAttribute != null) {
                try {
                    Drawable drawable = (Drawable) d.class.getClassLoader().loadClass(classAttribute).asSubclass(Drawable.class).getDeclaredConstructor(new Class[0]).newInstance(new Object[0]);
                    if (Build.VERSION.SDK_INT >= 21) {
                        h.c.c(drawable, context.getResources(), xmlPullParser, attributeSet, theme);
                    } else {
                        drawable.inflate(context.getResources(), xmlPullParser, attributeSet);
                    }
                    return drawable;
                } catch (Exception unused) {
                }
            }
            return null;
        }
    }

    /* compiled from: ResourceManagerInternal.java */
    /* loaded from: classes.dex */
    public interface ResourceDelegate {
        Drawable a(Context context, XmlPullParser xmlPullParser, AttributeSet attributeSet, Resources.Theme theme);
    }

    /* compiled from: ResourceManagerInternal.java */
    /* loaded from: classes.dex */
    public interface f {
        boolean a(Context context, int i10, Drawable drawable);

        PorterDuff.Mode b(int i10);

        Drawable c(l0 l0Var, Context context, int i10);

        ColorStateList d(Context context, int i10);

        boolean e(Context context, int i10, Drawable drawable);
    }

    /* compiled from: ResourceManagerInternal.java */
    /* loaded from: classes.dex */
    public static class g implements ResourceDelegate {
        @Override // androidx.appcompat.widget.l0.e
        public Drawable a(Context context, XmlPullParser xmlPullParser, AttributeSet attributeSet, Resources.Theme theme) {
            try {
                return y1.i.c(context.getResources(), xmlPullParser, attributeSet, theme);
            } catch (Exception unused) {
                return null;
            }
        }
    }

    public static long e(TypedValue typedValue) {
        return (typedValue.assetCookie << 32) | typedValue.data;
    }

    public static PorterDuffColorFilter g(ColorStateList colorStateList, PorterDuff.Mode mode, int[] iArr) {
        if (colorStateList == null || mode == null) {
            return null;
        }
        return l(colorStateList.getColorForState(iArr, 0), mode);
    }

    public static synchronized l0 h() {
        l0 l0Var;
        synchronized (l0.class) {
            if (f1404i == null) {
                l0 l0Var2 = new l0();
                f1404i = l0Var2;
                p(l0Var2);
            }
            l0Var = f1404i;
        }
        return l0Var;
    }

    public static synchronized PorterDuffColorFilter l(int i10, PorterDuff.Mode mode) {
        PorterDuffColorFilter b10;
        synchronized (l0.class) {
            c cVar = f1405j;
            b10 = cVar.b(i10, mode);
            if (b10 == null) {
                b10 = new PorterDuffColorFilter(i10, mode);
                cVar.c(i10, mode, b10);
            }
        }
        return b10;
    }

    public static void p(l0 l0Var) {
        if (Build.VERSION.SDK_INT < 24) {
            l0Var.a("vector", new g());
            l0Var.a("animated-vector", new b());
            l0Var.a("animated-selector", new a());
            l0Var.a("drawable", new d());
        }
    }

    public static boolean q(Drawable drawable) {
        return (drawable instanceof y1.i) || "android.graphics.drawable.VectorDrawable".equals(drawable.getClass().getName());
    }

    public static void w(Drawable drawable, t0 t0Var, int[] iArr) {
        if (!d0.a(drawable) || drawable.mutate() == drawable) {
            boolean z10 = t0Var.f1489d;
            if (!z10 && !t0Var.f1488c) {
                drawable.clearColorFilter();
            } else {
                drawable.setColorFilter(g(z10 ? t0Var.f1486a : null, t0Var.f1488c ? t0Var.f1487b : f1403h, iArr));
            }
            if (Build.VERSION.SDK_INT <= 23) {
                drawable.invalidateSelf();
            }
        }
    }

    public final void a(String str, e eVar) {
        if (this.f1407b == null) {
            this.f1407b = new g<>();
        }
        this.f1407b.put(str, eVar);
    }

    public final synchronized boolean b(Context context, long j10, Drawable drawable) {
        Drawable.ConstantState constantState = drawable.getConstantState();
        if (constantState == null) {
            return false;
        }
        d<WeakReference<Drawable.ConstantState>> dVar = this.f1409d.get(context);
        if (dVar == null) {
            dVar = new d<>();
            this.f1409d.put(context, dVar);
        }
        dVar.j(j10, new WeakReference<>(constantState));
        return true;
    }

    public final void c(Context context, int i10, ColorStateList colorStateList) {
        if (this.f1406a == null) {
            this.f1406a = new WeakHashMap<>();
        }
        h<ColorStateList> hVar = this.f1406a.get(context);
        if (hVar == null) {
            hVar = new h<>();
            this.f1406a.put(context, hVar);
        }
        hVar.a(i10, colorStateList);
    }

    public final void d(Context context) {
        if (this.f1411f) {
            return;
        }
        this.f1411f = true;
        Drawable j10 = j(context, h.d.f7110a);
        if (j10 == null || !q(j10)) {
            this.f1411f = false;
            throw new IllegalStateException("This app has been built with an incorrect configuration. Please configure your build for VectorDrawableCompat.");
        }
    }

    public final Drawable f(Context context, int i10) {
        if (this.f1410e == null) {
            this.f1410e = new TypedValue();
        }
        TypedValue typedValue = this.f1410e;
        context.getResources().getValue(i10, typedValue, true);
        long e10 = e(typedValue);
        Drawable i11 = i(context, e10);
        if (i11 != null) {
            return i11;
        }
        f fVar = this.f1412g;
        Drawable c10 = fVar == null ? null : fVar.c(this, context, i10);
        if (c10 != null) {
            c10.setChangingConfigurations(typedValue.changingConfigurations);
            b(context, e10, c10);
        }
        return c10;
    }

    public final synchronized Drawable i(Context context, long j10) {
        d<WeakReference<Drawable.ConstantState>> dVar = this.f1409d.get(context);
        if (dVar == null) {
            return null;
        }
        WeakReference<Drawable.ConstantState> f10 = dVar.f(j10);
        if (f10 != null) {
            Drawable.ConstantState constantState = f10.get();
            if (constantState != null) {
                return constantState.newDrawable(context.getResources());
            }
            dVar.k(j10);
        }
        return null;
    }

    public synchronized Drawable j(Context context, int i10) {
        return k(context, i10, false);
    }

    public synchronized Drawable k(Context context, int i10, boolean z10) {
        Drawable r10;
        d(context);
        r10 = r(context, i10);
        if (r10 == null) {
            r10 = f(context, i10);
        }
        if (r10 == null) {
            r10 = f0.a.f(context, i10);
        }
        if (r10 != null) {
            r10 = v(context, i10, z10, r10);
        }
        if (r10 != null) {
            d0.b(r10);
        }
        return r10;
    }

    public synchronized ColorStateList m(Context context, int i10) {
        ColorStateList n10;
        n10 = n(context, i10);
        if (n10 == null) {
            f fVar = this.f1412g;
            n10 = fVar == null ? null : fVar.d(context, i10);
            if (n10 != null) {
                c(context, i10, n10);
            }
        }
        return n10;
    }

    public final ColorStateList n(Context context, int i10) {
        h<ColorStateList> hVar;
        WeakHashMap<Context, h<ColorStateList>> weakHashMap = this.f1406a;
        if (weakHashMap == null || (hVar = weakHashMap.get(context)) == null) {
            return null;
        }
        return hVar.e(i10);
    }

    public PorterDuff.Mode o(int i10) {
        f fVar = this.f1412g;
        if (fVar == null) {
            return null;
        }
        return fVar.b(i10);
    }

    public final Drawable r(Context context, int i10) {
        int next;
        g<String, ResourceDelegate> gVar = this.f1407b;
        if (gVar == null || gVar.isEmpty()) {
            return null;
        }
        h<String> hVar = this.f1408c;
        if (hVar != null) {
            String e10 = hVar.e(i10);
            if ("appcompat_skip_skip".equals(e10) || (e10 != null && this.f1407b.get(e10) == null)) {
                return null;
            }
        } else {
            this.f1408c = new h<>();
        }
        if (this.f1410e == null) {
            this.f1410e = new TypedValue();
        }
        TypedValue typedValue = this.f1410e;
        Resources resources = context.getResources();
        resources.getValue(i10, typedValue, true);
        long e11 = e(typedValue);
        Drawable i11 = i(context, e11);
        if (i11 != null) {
            return i11;
        }
        CharSequence charSequence = typedValue.string;
        if (charSequence != null && charSequence.toString().endsWith(".xml")) {
            try {
                XmlResourceParser xml = resources.getXml(i10);
                AttributeSet asAttributeSet = Xml.asAttributeSet(xml);
                do {
                    next = xml.next();
                    if (next == 2) {
                        break;
                    }
                } while (next != 1);
                if (next == 2) {
                    String name = xml.getName();
                    this.f1408c.a(i10, name);
                    e eVar = this.f1407b.get(name);
                    if (eVar != null) {
                        i11 = eVar.a(context, xml, asAttributeSet, context.getTheme());
                    }
                    if (i11 != null) {
                        i11.setChangingConfigurations(typedValue.changingConfigurations);
                        b(context, e11, i11);
                    }
                } else {
                    throw new XmlPullParserException("No start tag found");
                }
            } catch (Exception unused) {
            }
        }
        if (i11 == null) {
            this.f1408c.a(i10, "appcompat_skip_skip");
        }
        return i11;
    }

    public synchronized void s(Context context) {
        d<WeakReference<Drawable.ConstantState>> dVar = this.f1409d.get(context);
        if (dVar != null) {
            dVar.b();
        }
    }

    public synchronized Drawable t(Context context, b1 b1Var, int i10) {
        Drawable r10 = r(context, i10);
        if (r10 == null) {
            r10 = b1Var.a(i10);
        }
        if (r10 == null) {
            return null;
        }
        return v(context, i10, false, r10);
    }

    public synchronized void u(f fVar) {
        this.f1412g = fVar;
    }

    public final Drawable v(Context context, int i10, boolean z10, Drawable drawable) {
        ColorStateList m10 = m(context, i10);
        if (m10 != null) {
            if (d0.a(drawable)) {
                drawable = drawable.mutate();
            }
            Drawable r10 = i0.a.r(drawable);
            i0.a.o(r10, m10);
            PorterDuff.Mode o10 = o(i10);
            if (o10 == null) {
                return r10;
            }
            i0.a.p(r10, o10);
            return r10;
        }
        f fVar = this.f1412g;
        if ((fVar == null || !fVar.e(context, i10, drawable)) && !x(context, i10, drawable) && z10) {
            return null;
        }
        return drawable;
    }

    public boolean x(Context context, int i10, Drawable drawable) {
        f fVar = this.f1412g;
        return fVar != null && fVar.a(context, i10, drawable);
    }
}
