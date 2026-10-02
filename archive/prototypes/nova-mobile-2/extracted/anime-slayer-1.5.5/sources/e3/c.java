package e3;

import android.content.Context;
import com.google.android.material.internal.StaticLayoutBuilderCompat;
import java.io.File;

/* compiled from: L.java */
/* loaded from: classes.dex */
public class c {

    /* renamed from: a, reason: collision with root package name */
    public static boolean f6007a = false;

    /* renamed from: b, reason: collision with root package name */
    public static boolean f6008b = false;

    /* renamed from: c, reason: collision with root package name */
    public static String[] f6009c;

    /* renamed from: d, reason: collision with root package name */
    public static long[] f6010d;

    /* renamed from: e, reason: collision with root package name */
    public static int f6011e;

    /* renamed from: f, reason: collision with root package name */
    public static int f6012f;

    /* renamed from: g, reason: collision with root package name */
    public static n3.f f6013g;

    /* renamed from: h, reason: collision with root package name */
    public static n3.e f6014h;

    /* renamed from: i, reason: collision with root package name */
    public static volatile n3.h f6015i;

    /* renamed from: j, reason: collision with root package name */
    public static volatile n3.g f6016j;

    /* compiled from: L.java */
    /* loaded from: classes.dex */
    public class a implements n3.e {

        /* renamed from: a, reason: collision with root package name */
        public final /* synthetic */ Context f6017a;

        public a(Context context) {
            this.f6017a = context;
        }

        @Override // n3.e
        public File getCacheDir() {
            return new File(this.f6017a.getCacheDir(), "lottie_network_cache");
        }
    }

    public static void a(String str) {
        if (f6008b) {
            int i10 = f6011e;
            if (i10 == 20) {
                f6012f++;
                return;
            }
            f6009c[i10] = str;
            f6010d[i10] = System.nanoTime();
            m0.k.a(str);
            f6011e++;
        }
    }

    public static float b(String str) {
        int i10 = f6012f;
        if (i10 > 0) {
            f6012f = i10 - 1;
            return StaticLayoutBuilderCompat.DEFAULT_LINE_SPACING_ADD;
        }
        if (!f6008b) {
            return StaticLayoutBuilderCompat.DEFAULT_LINE_SPACING_ADD;
        }
        int i11 = f6011e - 1;
        f6011e = i11;
        if (i11 != -1) {
            if (str.equals(f6009c[i11])) {
                m0.k.b();
                return ((float) (System.nanoTime() - f6010d[f6011e])) / 1000000.0f;
            }
            throw new IllegalStateException("Unbalanced trace call " + str + ". Expected " + f6009c[f6011e] + ".");
        }
        throw new IllegalStateException("Can't end trace section. There are none.");
    }

    public static n3.g c(Context context) {
        Context applicationContext = context.getApplicationContext();
        n3.g gVar = f6016j;
        if (gVar == null) {
            synchronized (n3.g.class) {
                gVar = f6016j;
                if (gVar == null) {
                    n3.e eVar = f6014h;
                    if (eVar == null) {
                        eVar = new a(applicationContext);
                    }
                    gVar = new n3.g(eVar);
                    f6016j = gVar;
                }
            }
        }
        return gVar;
    }

    public static n3.h d(Context context) {
        n3.h hVar = f6015i;
        if (hVar == null) {
            synchronized (n3.h.class) {
                hVar = f6015i;
                if (hVar == null) {
                    n3.g c10 = c(context);
                    n3.f fVar = f6013g;
                    if (fVar == null) {
                        fVar = new n3.b();
                    }
                    hVar = new n3.h(c10, fVar);
                    f6015i = hVar;
                }
            }
        }
        return hVar;
    }
}
