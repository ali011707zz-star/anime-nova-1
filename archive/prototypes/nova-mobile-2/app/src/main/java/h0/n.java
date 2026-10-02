package h0;

import android.annotation.SuppressLint;
import android.content.Context;
import android.content.res.Resources;
import android.graphics.Typeface;
import android.os.CancellationSignal;
import com.google.android.gms.common.api.Api;
import g0.e;
import java.io.File;
import java.io.IOException;
import java.io.InputStream;
import java.lang.reflect.Field;
import java.util.concurrent.ConcurrentHashMap;
import n0.f;
import org.apache.http.HttpStatus;

/* compiled from: TypefaceCompatBaseImpl.java */
/* loaded from: classes.dex */
public class n {

    /* renamed from: a, reason: collision with root package name */
    @SuppressLint({"BanConcurrentHashMap"})
    public ConcurrentHashMap<Long, e.b> f7180a = new ConcurrentHashMap<>();

    /* compiled from: TypefaceCompatBaseImpl.java */
    /* loaded from: classes.dex */
    public class a implements c<f.b> {
        public a() {
        }

        @Override // h0.n.c
        /* renamed from: c, reason: merged with bridge method [inline-methods] */
        public int a(f.b bVar) {
            return bVar.e();
        }

        @Override // h0.n.c
        /* renamed from: d, reason: merged with bridge method [inline-methods] */
        public boolean b(f.b bVar) {
            return bVar.f();
        }
    }

    /* compiled from: TypefaceCompatBaseImpl.java */
    /* loaded from: classes.dex */
    public class b implements c<e.c> {
        public b() {
        }

        @Override // h0.n.c
        /* renamed from: c, reason: merged with bridge method [inline-methods] */
        public int a(e.c cVar) {
            return cVar.e();
        }

        @Override // h0.n.c
        /* renamed from: d, reason: merged with bridge method [inline-methods] */
        public boolean b(e.c cVar) {
            return cVar.f();
        }
    }

    /* compiled from: TypefaceCompatBaseImpl.java */
    /* loaded from: classes.dex */
    public interface c<T> {
        int a(T t10);

        boolean b(T t10);
    }

    public static <T> T g(T[] tArr, int i10, c<T> cVar) {
        int i11 = (i10 & 1) == 0 ? HttpStatus.SC_BAD_REQUEST : 700;
        boolean z10 = (i10 & 2) != 0;
        T t10 = null;
        int i12 = Api.BaseClientBuilder.API_PRIORITY_OTHER;
        for (T t11 : tArr) {
            int abs = (Math.abs(cVar.a(t11) - i11) * 2) + (cVar.b(t11) == z10 ? 0 : 1);
            if (t10 == null || i12 > abs) {
                t10 = t11;
                i12 = abs;
            }
        }
        return t10;
    }

    public static long j(Typeface typeface) {
        if (typeface == null) {
            return 0L;
        }
        try {
            Field declaredField = Typeface.class.getDeclaredField("native_instance");
            declaredField.setAccessible(true);
            return ((Number) declaredField.get(typeface)).longValue();
        } catch (IllegalAccessException | NoSuchFieldException unused) {
            return 0L;
        }
    }

    public final void a(Typeface typeface, e.b bVar) {
        long j10 = j(typeface);
        if (j10 != 0) {
            this.f7180a.put(Long.valueOf(j10), bVar);
        }
    }

    public Typeface b(Context context, e.b bVar, Resources resources, int i10) {
        e.c f10 = f(bVar, i10);
        if (f10 == null) {
            return null;
        }
        Typeface d10 = h.d(context, resources, f10.b(), f10.a(), i10);
        a(d10, bVar);
        return d10;
    }

    public Typeface c(Context context, CancellationSignal cancellationSignal, f.b[] bVarArr, int i10) {
        InputStream inputStream;
        InputStream inputStream2 = null;
        if (bVarArr.length < 1) {
            return null;
        }
        try {
            inputStream = context.getContentResolver().openInputStream(h(bVarArr, i10).d());
        } catch (IOException unused) {
            inputStream = null;
        } catch (Throwable th) {
            th = th;
        }
        try {
            Typeface d10 = d(context, inputStream);
            o.a(inputStream);
            return d10;
        } catch (IOException unused2) {
            o.a(inputStream);
            return null;
        } catch (Throwable th2) {
            th = th2;
            inputStream2 = inputStream;
            o.a(inputStream2);
            throw th;
        }
    }

    public Typeface d(Context context, InputStream inputStream) {
        File e10 = o.e(context);
        if (e10 == null) {
            return null;
        }
        try {
            if (o.d(e10, inputStream)) {
                return Typeface.createFromFile(e10.getPath());
            }
            return null;
        } catch (RuntimeException unused) {
            return null;
        } finally {
            e10.delete();
        }
    }

    public Typeface e(Context context, Resources resources, int i10, String str, int i11) {
        File e10 = o.e(context);
        if (e10 == null) {
            return null;
        }
        try {
            if (o.c(e10, resources, i10)) {
                return Typeface.createFromFile(e10.getPath());
            }
            return null;
        } catch (RuntimeException unused) {
            return null;
        } finally {
            e10.delete();
        }
    }

    public final e.c f(e.b bVar, int i10) {
        return (e.c) g(bVar.a(), i10, new b());
    }

    public f.b h(f.b[] bVarArr, int i10) {
        return (f.b) g(bVarArr, i10, new a());
    }

    public e.b i(Typeface typeface) {
        long j10 = j(typeface);
        if (j10 == 0) {
            return null;
        }
        return this.f7180a.get(Long.valueOf(j10));
    }
}
