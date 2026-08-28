package h0;

import android.content.Context;
import android.content.res.Resources;
import android.graphics.Typeface;
import android.net.Uri;
import android.os.CancellationSignal;
import g0.e;
import java.lang.reflect.Array;
import java.lang.reflect.Constructor;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.nio.ByteBuffer;
import java.util.List;
import n0.f;

/* compiled from: TypefaceCompatApi24Impl.java */
/* loaded from: classes.dex */
public class j extends n {

    /* renamed from: b, reason: collision with root package name */
    public static final Class<?> f7169b;

    /* renamed from: c, reason: collision with root package name */
    public static final Constructor<?> f7170c;

    /* renamed from: d, reason: collision with root package name */
    public static final Method f7171d;

    /* renamed from: e, reason: collision with root package name */
    public static final Method f7172e;

    static {
        Class<?> cls;
        Method method;
        Method method2;
        Constructor<?> constructor = null;
        try {
            cls = Class.forName("android.graphics.FontFamily");
            Constructor<?> constructor2 = cls.getConstructor(new Class[0]);
            Class<?> cls2 = Integer.TYPE;
            method2 = cls.getMethod("addFontWeightStyle", ByteBuffer.class, cls2, List.class, cls2, Boolean.TYPE);
            method = Typeface.class.getMethod("createFromFamiliesWithDefault", Array.newInstance(cls, 1).getClass());
            constructor = constructor2;
        } catch (ClassNotFoundException | NoSuchMethodException unused) {
            cls = null;
            method = null;
            method2 = null;
        }
        f7170c = constructor;
        f7169b = cls;
        f7171d = method2;
        f7172e = method;
    }

    public static boolean k(Object obj, ByteBuffer byteBuffer, int i10, int i11, boolean z10) {
        try {
            return ((Boolean) f7171d.invoke(obj, byteBuffer, Integer.valueOf(i10), null, Integer.valueOf(i11), Boolean.valueOf(z10))).booleanValue();
        } catch (IllegalAccessException | InvocationTargetException unused) {
            return false;
        }
    }

    public static Typeface l(Object obj) {
        try {
            Object newInstance = Array.newInstance(f7169b, 1);
            Array.set(newInstance, 0, obj);
            return (Typeface) f7172e.invoke(null, newInstance);
        } catch (IllegalAccessException | InvocationTargetException unused) {
            return null;
        }
    }

    public static boolean m() {
        return f7171d != null;
    }

    public static Object n() {
        try {
            return f7170c.newInstance(new Object[0]);
        } catch (IllegalAccessException | InstantiationException | InvocationTargetException unused) {
            return null;
        }
    }

    @Override // h0.n
    public Typeface b(Context context, e.b bVar, Resources resources, int i10) {
        Object n10 = n();
        if (n10 == null) {
            return null;
        }
        for (e.c cVar : bVar.a()) {
            ByteBuffer b10 = o.b(context, resources, cVar.b());
            if (b10 == null || !k(n10, b10, cVar.c(), cVar.e(), cVar.f())) {
                return null;
            }
        }
        return l(n10);
    }

    @Override // h0.n
    public Typeface c(Context context, CancellationSignal cancellationSignal, f.b[] bVarArr, int i10) {
        Object n10 = n();
        if (n10 == null) {
            return null;
        }
        s.g gVar = new s.g();
        for (f.b bVar : bVarArr) {
            Uri d10 = bVar.d();
            ByteBuffer byteBuffer = (ByteBuffer) gVar.get(d10);
            if (byteBuffer == null) {
                byteBuffer = o.f(context, cancellationSignal, d10);
                gVar.put(d10, byteBuffer);
            }
            if (byteBuffer == null || !k(n10, byteBuffer, bVar.c(), bVar.e(), bVar.f())) {
                return null;
            }
        }
        Typeface l10 = l(n10);
        if (l10 == null) {
            return null;
        }
        return Typeface.create(l10, i10);
    }
}
