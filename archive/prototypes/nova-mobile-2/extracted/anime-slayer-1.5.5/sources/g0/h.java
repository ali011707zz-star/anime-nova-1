package g0;

import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.Configuration;
import android.content.res.Resources;
import android.graphics.Typeface;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.os.Handler;
import android.os.Looper;
import android.util.SparseArray;
import android.util.TypedValue;
import g0.e;
import java.io.IOException;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.util.WeakHashMap;
import org.xmlpull.v1.XmlPullParserException;

/* compiled from: ResourcesCompat.java */
/* loaded from: classes.dex */
public final class h {

    /* renamed from: a, reason: collision with root package name */
    public static final ThreadLocal<TypedValue> f6735a = new ThreadLocal<>();

    /* renamed from: b, reason: collision with root package name */
    public static final WeakHashMap<c, SparseArray<b>> f6736b = new WeakHashMap<>(0);

    /* renamed from: c, reason: collision with root package name */
    public static final Object f6737c = new Object();

    /* compiled from: ResourcesCompat.java */
    /* loaded from: classes.dex */
    public static class a {
        public static ColorStateList a(Resources resources, int i10, Resources.Theme theme) {
            return resources.getColorStateList(i10, theme);
        }
    }

    /* compiled from: ResourcesCompat.java */
    /* loaded from: classes.dex */
    public static class b {

        /* renamed from: a, reason: collision with root package name */
        public final ColorStateList f6738a;

        /* renamed from: b, reason: collision with root package name */
        public final Configuration f6739b;

        public b(ColorStateList colorStateList, Configuration configuration) {
            this.f6738a = colorStateList;
            this.f6739b = configuration;
        }
    }

    /* compiled from: ResourcesCompat.java */
    /* loaded from: classes.dex */
    public static final class c {

        /* renamed from: a, reason: collision with root package name */
        public final Resources f6740a;

        /* renamed from: b, reason: collision with root package name */
        public final Resources.Theme f6741b;

        public c(Resources resources, Resources.Theme theme) {
            this.f6740a = resources;
            this.f6741b = theme;
        }

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (obj == null || c.class != obj.getClass()) {
                return false;
            }
            c cVar = (c) obj;
            return this.f6740a.equals(cVar.f6740a) && p0.d.a(this.f6741b, cVar.f6741b);
        }

        public int hashCode() {
            return p0.d.b(this.f6740a, this.f6741b);
        }
    }

    /* compiled from: ResourcesCompat.java */
    /* loaded from: classes.dex */
    public static abstract class d {

        /* compiled from: ResourcesCompat.java */
        /* loaded from: classes.dex */
        public class a implements Runnable {

            /* renamed from: f, reason: collision with root package name */
            public final /* synthetic */ Typeface f6742f;

            public a(Typeface typeface) {
                this.f6742f = typeface;
            }

            @Override // java.lang.Runnable
            public void run() {
                d.this.onFontRetrieved(this.f6742f);
            }
        }

        /* compiled from: ResourcesCompat.java */
        /* loaded from: classes.dex */
        public class b implements Runnable {

            /* renamed from: f, reason: collision with root package name */
            public final /* synthetic */ int f6744f;

            public b(int i10) {
                this.f6744f = i10;
            }

            @Override // java.lang.Runnable
            public void run() {
                d.this.onFontRetrievalFailed(this.f6744f);
            }
        }

        public static Handler getHandler(Handler handler) {
            return handler == null ? new Handler(Looper.getMainLooper()) : handler;
        }

        public final void callbackFailAsync(int i10, Handler handler) {
            getHandler(handler).post(new b(i10));
        }

        public final void callbackSuccessAsync(Typeface typeface, Handler handler) {
            getHandler(handler).post(new a(typeface));
        }

        public abstract void onFontRetrievalFailed(int i10);

        public abstract void onFontRetrieved(Typeface typeface);
    }

    /* compiled from: ResourcesCompat.java */
    /* loaded from: classes.dex */
    public static final class e {

        /* compiled from: ResourcesCompat.java */
        /* loaded from: classes.dex */
        public static class a {

            /* renamed from: a, reason: collision with root package name */
            public static final Object f6746a = new Object();

            /* renamed from: b, reason: collision with root package name */
            public static Method f6747b;

            /* renamed from: c, reason: collision with root package name */
            public static boolean f6748c;

            public static void a(Resources.Theme theme) {
                synchronized (f6746a) {
                    if (!f6748c) {
                        try {
                            Method declaredMethod = Resources.Theme.class.getDeclaredMethod("rebase", new Class[0]);
                            f6747b = declaredMethod;
                            declaredMethod.setAccessible(true);
                        } catch (NoSuchMethodException unused) {
                        }
                        f6748c = true;
                    }
                    Method method = f6747b;
                    if (method != null) {
                        try {
                            method.invoke(theme, new Object[0]);
                        } catch (IllegalAccessException | InvocationTargetException unused2) {
                            f6747b = null;
                        }
                    }
                }
            }
        }

        /* compiled from: ResourcesCompat.java */
        /* loaded from: classes.dex */
        public static class b {
            public static void a(Resources.Theme theme) {
                theme.rebase();
            }
        }

        public static void a(Resources.Theme theme) {
            int i10 = Build.VERSION.SDK_INT;
            if (i10 >= 29) {
                b.a(theme);
            } else if (i10 >= 23) {
                a.a(theme);
            }
        }
    }

    public static void a(c cVar, int i10, ColorStateList colorStateList) {
        synchronized (f6737c) {
            WeakHashMap<c, SparseArray<b>> weakHashMap = f6736b;
            SparseArray<b> sparseArray = weakHashMap.get(cVar);
            if (sparseArray == null) {
                sparseArray = new SparseArray<>();
                weakHashMap.put(cVar, sparseArray);
            }
            sparseArray.append(i10, new b(colorStateList, cVar.f6740a.getConfiguration()));
        }
    }

    public static ColorStateList b(c cVar, int i10) {
        b bVar;
        synchronized (f6737c) {
            SparseArray<b> sparseArray = f6736b.get(cVar);
            if (sparseArray != null && sparseArray.size() > 0 && (bVar = sparseArray.get(i10)) != null) {
                if (bVar.f6739b.equals(cVar.f6740a.getConfiguration())) {
                    return bVar.f6738a;
                }
                sparseArray.remove(i10);
            }
            return null;
        }
    }

    public static Typeface c(Context context, int i10) throws Resources.NotFoundException {
        if (context.isRestricted()) {
            return null;
        }
        return m(context, i10, new TypedValue(), 0, null, null, false, true);
    }

    public static ColorStateList d(Resources resources, int i10, Resources.Theme theme) throws Resources.NotFoundException {
        c cVar = new c(resources, theme);
        ColorStateList b10 = b(cVar, i10);
        if (b10 != null) {
            return b10;
        }
        ColorStateList k10 = k(resources, i10, theme);
        if (k10 != null) {
            a(cVar, i10, k10);
            return k10;
        }
        if (Build.VERSION.SDK_INT >= 23) {
            return a.a(resources, i10, theme);
        }
        return resources.getColorStateList(i10);
    }

    public static Drawable e(Resources resources, int i10, Resources.Theme theme) throws Resources.NotFoundException {
        if (Build.VERSION.SDK_INT >= 21) {
            return resources.getDrawable(i10, theme);
        }
        return resources.getDrawable(i10);
    }

    public static Drawable f(Resources resources, int i10, int i11, Resources.Theme theme) throws Resources.NotFoundException {
        int i12 = Build.VERSION.SDK_INT;
        if (i12 >= 21) {
            return resources.getDrawableForDensity(i10, i11, theme);
        }
        if (i12 >= 15) {
            return resources.getDrawableForDensity(i10, i11);
        }
        return resources.getDrawable(i10);
    }

    public static Typeface g(Context context, int i10) throws Resources.NotFoundException {
        if (context.isRestricted()) {
            return null;
        }
        return m(context, i10, new TypedValue(), 0, null, null, false, false);
    }

    public static Typeface h(Context context, int i10, TypedValue typedValue, int i11, d dVar) throws Resources.NotFoundException {
        if (context.isRestricted()) {
            return null;
        }
        return m(context, i10, typedValue, i11, dVar, null, true, false);
    }

    public static void i(Context context, int i10, d dVar, Handler handler) throws Resources.NotFoundException {
        p0.i.g(dVar);
        if (context.isRestricted()) {
            dVar.callbackFailAsync(-4, handler);
        } else {
            m(context, i10, new TypedValue(), 0, dVar, handler, false, false);
        }
    }

    public static TypedValue j() {
        ThreadLocal<TypedValue> threadLocal = f6735a;
        TypedValue typedValue = threadLocal.get();
        if (typedValue != null) {
            return typedValue;
        }
        TypedValue typedValue2 = new TypedValue();
        threadLocal.set(typedValue2);
        return typedValue2;
    }

    public static ColorStateList k(Resources resources, int i10, Resources.Theme theme) {
        if (l(resources, i10)) {
            return null;
        }
        try {
            return g0.c.a(resources, resources.getXml(i10), theme);
        } catch (Exception unused) {
            return null;
        }
    }

    public static boolean l(Resources resources, int i10) {
        TypedValue j10 = j();
        resources.getValue(i10, j10, true);
        int i11 = j10.type;
        return i11 >= 28 && i11 <= 31;
    }

    public static Typeface m(Context context, int i10, TypedValue typedValue, int i11, d dVar, Handler handler, boolean z10, boolean z11) {
        Resources resources = context.getResources();
        resources.getValue(i10, typedValue, true);
        Typeface n10 = n(context, resources, typedValue, i10, i11, dVar, handler, z10, z11);
        if (n10 != null || dVar != null || z11) {
            return n10;
        }
        throw new Resources.NotFoundException("Font resource ID #0x" + Integer.toHexString(i10) + " could not be retrieved.");
    }

    /* JADX WARN: Removed duplicated region for block: B:34:0x008c  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static Typeface n(Context context, Resources resources, TypedValue typedValue, int i10, int i11, d dVar, Handler handler, boolean z10, boolean z11) {
        CharSequence charSequence = typedValue.string;
        if (charSequence != null) {
            String charSequence2 = charSequence.toString();
            if (!charSequence2.startsWith("res/")) {
                if (dVar != null) {
                    dVar.callbackFailAsync(-3, handler);
                }
                return null;
            }
            Typeface f10 = h0.h.f(resources, i10, i11);
            if (f10 != null) {
                if (dVar != null) {
                    dVar.callbackSuccessAsync(f10, handler);
                }
                return f10;
            }
            if (z11) {
                return null;
            }
            try {
                if (charSequence2.toLowerCase().endsWith(".xml")) {
                    e.a b10 = g0.e.b(resources.getXml(i10), resources);
                    if (b10 != null) {
                        return h0.h.c(context, b10, resources, i10, i11, dVar, handler, z10);
                    }
                    if (dVar != null) {
                        dVar.callbackFailAsync(-3, handler);
                    }
                    return null;
                }
                Typeface d10 = h0.h.d(context, resources, i10, charSequence2, i11);
                if (dVar != null) {
                    if (d10 != null) {
                        dVar.callbackSuccessAsync(d10, handler);
                    } else {
                        dVar.callbackFailAsync(-3, handler);
                    }
                }
                return d10;
            } catch (IOException unused) {
                StringBuilder sb2 = new StringBuilder();
                sb2.append("Failed to read xml resource ");
                sb2.append(charSequence2);
                if (dVar != null) {
                    dVar.callbackFailAsync(-3, handler);
                }
                return null;
            } catch (XmlPullParserException unused2) {
                StringBuilder sb3 = new StringBuilder();
                sb3.append("Failed to parse xml resource ");
                sb3.append(charSequence2);
                if (dVar != null) {
                }
                return null;
            }
        }
        throw new Resources.NotFoundException("Resource \"" + resources.getResourceName(i10) + "\" (" + Integer.toHexString(i10) + ") is not a Font: " + typedValue);
    }
}
