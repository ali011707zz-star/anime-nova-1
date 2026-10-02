package h0;

import android.content.Context;
import android.content.res.Resources;
import android.graphics.Typeface;
import android.os.Build;
import android.os.CancellationSignal;
import android.os.Handler;
import g0.e;
import g0.h;
import n0.f;

/* compiled from: TypefaceCompat.java */
/* loaded from: classes.dex */
public class h {

    /* renamed from: a, reason: collision with root package name */
    public static final n f7161a;

    /* renamed from: b, reason: collision with root package name */
    public static final s.e<String, Typeface> f7162b;

    /* compiled from: TypefaceCompat.java */
    /* loaded from: classes.dex */
    public static class a extends f.c {

        /* renamed from: a, reason: collision with root package name */
        public h.d f7163a;

        public a(h.d dVar) {
            this.f7163a = dVar;
        }

        @Override // n0.f.c
        public void a(int i10) {
            h.d dVar = this.f7163a;
            if (dVar != null) {
                dVar.onFontRetrievalFailed(i10);
            }
        }

        @Override // n0.f.c
        public void b(Typeface typeface) {
            h.d dVar = this.f7163a;
            if (dVar != null) {
                dVar.onFontRetrieved(typeface);
            }
        }
    }

    static {
        int i10 = Build.VERSION.SDK_INT;
        if (i10 >= 29) {
            f7161a = new m();
        } else if (i10 >= 28) {
            f7161a = new l();
        } else if (i10 >= 26) {
            f7161a = new k();
        } else if (i10 >= 24 && j.m()) {
            f7161a = new j();
        } else if (i10 >= 21) {
            f7161a = new i();
        } else {
            f7161a = new n();
        }
        f7162b = new s.e<>(16);
    }

    public static Typeface a(Context context, Typeface typeface, int i10) {
        Typeface g10;
        if (context != null) {
            return (Build.VERSION.SDK_INT >= 21 || (g10 = g(context, typeface, i10)) == null) ? Typeface.create(typeface, i10) : g10;
        }
        throw new IllegalArgumentException("Context cannot be null");
    }

    public static Typeface b(Context context, CancellationSignal cancellationSignal, f.b[] bVarArr, int i10) {
        return f7161a.c(context, cancellationSignal, bVarArr, i10);
    }

    public static Typeface c(Context context, e.a aVar, Resources resources, int i10, int i11, h.d dVar, Handler handler, boolean z10) {
        Typeface b10;
        if (aVar instanceof e.d) {
            e.d dVar2 = (e.d) aVar;
            Typeface h10 = h(dVar2.c());
            if (h10 != null) {
                if (dVar != null) {
                    dVar.callbackSuccessAsync(h10, handler);
                }
                return h10;
            }
            b10 = n0.f.c(context, dVar2.b(), i11, !z10 ? dVar != null : dVar2.a() != 0, z10 ? dVar2.d() : -1, h.d.getHandler(handler), new a(dVar));
        } else {
            b10 = f7161a.b(context, (e.b) aVar, resources, i11);
            if (dVar != null) {
                if (b10 != null) {
                    dVar.callbackSuccessAsync(b10, handler);
                } else {
                    dVar.callbackFailAsync(-3, handler);
                }
            }
        }
        if (b10 != null) {
            f7162b.put(e(resources, i10, i11), b10);
        }
        return b10;
    }

    public static Typeface d(Context context, Resources resources, int i10, String str, int i11) {
        Typeface e10 = f7161a.e(context, resources, i10, str, i11);
        if (e10 != null) {
            f7162b.put(e(resources, i10, i11), e10);
        }
        return e10;
    }

    public static String e(Resources resources, int i10, int i11) {
        return resources.getResourcePackageName(i10) + "-" + i10 + "-" + i11;
    }

    public static Typeface f(Resources resources, int i10, int i11) {
        return f7162b.get(e(resources, i10, i11));
    }

    public static Typeface g(Context context, Typeface typeface, int i10) {
        n nVar = f7161a;
        e.b i11 = nVar.i(typeface);
        if (i11 == null) {
            return null;
        }
        return nVar.b(context, i11, context.getResources(), i10);
    }

    public static Typeface h(String str) {
        if (str == null || str.isEmpty()) {
            return null;
        }
        Typeface create = Typeface.create(str, 0);
        Typeface create2 = Typeface.create(Typeface.DEFAULT, 0);
        if (create == null || create.equals(create2)) {
            return null;
        }
        return create;
    }
}
