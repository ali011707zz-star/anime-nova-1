package h0;

import android.content.Context;
import android.content.res.AssetManager;
import android.content.res.Resources;
import android.graphics.Typeface;
import android.graphics.fonts.FontVariationAxis;
import android.net.Uri;
import android.os.CancellationSignal;
import android.os.ParcelFileDescriptor;
import g0.e;
import java.io.IOException;
import java.lang.reflect.Array;
import java.lang.reflect.Constructor;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.nio.ByteBuffer;
import java.util.Map;
import n0.f;

/* compiled from: TypefaceCompatApi26Impl.java */
/* loaded from: classes.dex */
public class k extends i {

    /* renamed from: g, reason: collision with root package name */
    public final Class<?> f7173g;

    /* renamed from: h, reason: collision with root package name */
    public final Constructor<?> f7174h;

    /* renamed from: i, reason: collision with root package name */
    public final Method f7175i;

    /* renamed from: j, reason: collision with root package name */
    public final Method f7176j;

    /* renamed from: k, reason: collision with root package name */
    public final Method f7177k;

    /* renamed from: l, reason: collision with root package name */
    public final Method f7178l;

    /* renamed from: m, reason: collision with root package name */
    public final Method f7179m;

    public k() {
        Method method;
        Constructor<?> constructor;
        Method method2;
        Method method3;
        Method method4;
        Method method5;
        Class<?> cls = null;
        try {
            Class<?> y10 = y();
            constructor = z(y10);
            method2 = v(y10);
            method3 = w(y10);
            method4 = A(y10);
            method5 = u(y10);
            method = x(y10);
            cls = y10;
        } catch (ClassNotFoundException | NoSuchMethodException e10) {
            StringBuilder sb2 = new StringBuilder();
            sb2.append("Unable to collect necessary methods for class ");
            sb2.append(e10.getClass().getName());
            method = null;
            constructor = null;
            method2 = null;
            method3 = null;
            method4 = null;
            method5 = null;
        }
        this.f7173g = cls;
        this.f7174h = constructor;
        this.f7175i = method2;
        this.f7176j = method3;
        this.f7177k = method4;
        this.f7178l = method5;
        this.f7179m = method;
    }

    private Object o() {
        try {
            return this.f7174h.newInstance(new Object[0]);
        } catch (IllegalAccessException | InstantiationException | InvocationTargetException unused) {
            return null;
        }
    }

    public Method A(Class<?> cls) throws NoSuchMethodException {
        return cls.getMethod("freeze", new Class[0]);
    }

    @Override // h0.i, h0.n
    public Typeface b(Context context, e.b bVar, Resources resources, int i10) {
        if (!t()) {
            return super.b(context, bVar, resources, i10);
        }
        Object o10 = o();
        if (o10 == null) {
            return null;
        }
        for (e.c cVar : bVar.a()) {
            if (!q(context, o10, cVar.a(), cVar.c(), cVar.e(), cVar.f() ? 1 : 0, FontVariationAxis.fromFontVariationSettings(cVar.d()))) {
                p(o10);
                return null;
            }
        }
        if (s(o10)) {
            return l(o10);
        }
        return null;
    }

    @Override // h0.i, h0.n
    public Typeface c(Context context, CancellationSignal cancellationSignal, f.b[] bVarArr, int i10) {
        Typeface l10;
        if (bVarArr.length < 1) {
            return null;
        }
        if (!t()) {
            f.b h10 = h(bVarArr, i10);
            try {
                ParcelFileDescriptor openFileDescriptor = context.getContentResolver().openFileDescriptor(h10.d(), "r", cancellationSignal);
                if (openFileDescriptor == null) {
                    if (openFileDescriptor != null) {
                    }
                    return null;
                }
                try {
                    Typeface build = new Typeface.Builder(openFileDescriptor.getFileDescriptor()).setWeight(h10.e()).setItalic(h10.f()).build();
                    openFileDescriptor.close();
                    return build;
                } finally {
                    try {
                        openFileDescriptor.close();
                    } catch (Throwable unused) {
                    }
                }
            } catch (IOException unused2) {
                return null;
            }
        }
        Map<Uri, ByteBuffer> h11 = o.h(context, bVarArr, cancellationSignal);
        Object o10 = o();
        if (o10 == null) {
            return null;
        }
        boolean z10 = false;
        for (f.b bVar : bVarArr) {
            ByteBuffer byteBuffer = h11.get(bVar.d());
            if (byteBuffer != null) {
                if (!r(o10, byteBuffer, bVar.c(), bVar.e(), bVar.f() ? 1 : 0)) {
                    p(o10);
                    return null;
                }
                z10 = true;
            }
        }
        if (!z10) {
            p(o10);
            return null;
        }
        if (s(o10) && (l10 = l(o10)) != null) {
            return Typeface.create(l10, i10);
        }
        return null;
    }

    @Override // h0.n
    public Typeface e(Context context, Resources resources, int i10, String str, int i11) {
        if (!t()) {
            return super.e(context, resources, i10, str, i11);
        }
        Object o10 = o();
        if (o10 == null) {
            return null;
        }
        if (!q(context, o10, str, 0, -1, -1, null)) {
            p(o10);
            return null;
        }
        if (s(o10)) {
            return l(o10);
        }
        return null;
    }

    public Typeface l(Object obj) {
        try {
            Object newInstance = Array.newInstance(this.f7173g, 1);
            Array.set(newInstance, 0, obj);
            return (Typeface) this.f7179m.invoke(null, newInstance, -1, -1);
        } catch (IllegalAccessException | InvocationTargetException unused) {
            return null;
        }
    }

    public final void p(Object obj) {
        try {
            this.f7178l.invoke(obj, new Object[0]);
        } catch (IllegalAccessException | InvocationTargetException unused) {
        }
    }

    public final boolean q(Context context, Object obj, String str, int i10, int i11, int i12, FontVariationAxis[] fontVariationAxisArr) {
        try {
            return ((Boolean) this.f7175i.invoke(obj, context.getAssets(), str, 0, Boolean.FALSE, Integer.valueOf(i10), Integer.valueOf(i11), Integer.valueOf(i12), fontVariationAxisArr)).booleanValue();
        } catch (IllegalAccessException | InvocationTargetException unused) {
            return false;
        }
    }

    public final boolean r(Object obj, ByteBuffer byteBuffer, int i10, int i11, int i12) {
        try {
            return ((Boolean) this.f7176j.invoke(obj, byteBuffer, Integer.valueOf(i10), null, Integer.valueOf(i11), Integer.valueOf(i12))).booleanValue();
        } catch (IllegalAccessException | InvocationTargetException unused) {
            return false;
        }
    }

    public final boolean s(Object obj) {
        try {
            return ((Boolean) this.f7177k.invoke(obj, new Object[0])).booleanValue();
        } catch (IllegalAccessException | InvocationTargetException unused) {
            return false;
        }
    }

    public final boolean t() {
        return this.f7175i != null;
    }

    public Method u(Class<?> cls) throws NoSuchMethodException {
        return cls.getMethod("abortCreation", new Class[0]);
    }

    public Method v(Class<?> cls) throws NoSuchMethodException {
        Class<?> cls2 = Integer.TYPE;
        return cls.getMethod("addFontFromAssetManager", AssetManager.class, String.class, cls2, Boolean.TYPE, cls2, cls2, cls2, FontVariationAxis[].class);
    }

    public Method w(Class<?> cls) throws NoSuchMethodException {
        Class<?> cls2 = Integer.TYPE;
        return cls.getMethod("addFontFromBuffer", ByteBuffer.class, cls2, FontVariationAxis[].class, cls2, cls2);
    }

    public Method x(Class<?> cls) throws NoSuchMethodException {
        Class cls2 = Integer.TYPE;
        Method declaredMethod = Typeface.class.getDeclaredMethod("createFromFamiliesWithDefault", Array.newInstance(cls, 1).getClass(), cls2, cls2);
        declaredMethod.setAccessible(true);
        return declaredMethod;
    }

    public Class<?> y() throws ClassNotFoundException {
        return Class.forName("android.graphics.FontFamily");
    }

    public Constructor<?> z(Class<?> cls) throws NoSuchMethodException {
        return cls.getConstructor(new Class[0]);
    }
}
