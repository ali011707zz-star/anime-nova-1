package t7;

import android.annotation.TargetApi;
import android.app.ActivityManager;
import android.content.Context;
import android.os.Build;
import android.text.format.Formatter;
import android.util.DisplayMetrics;
import android.util.Log;
import androidx.recyclerview.widget.RecyclerView;
import com.google.android.material.internal.StaticLayoutBuilderCompat;

/* compiled from: MemorySizeCalculator.java */
/* loaded from: classes.dex */
public final class j {

    /* renamed from: a, reason: collision with root package name */
    public final int f14065a;

    /* renamed from: b, reason: collision with root package name */
    public final int f14066b;

    /* renamed from: c, reason: collision with root package name */
    public final Context f14067c;

    /* renamed from: d, reason: collision with root package name */
    public final int f14068d;

    /* compiled from: MemorySizeCalculator.java */
    /* loaded from: classes.dex */
    public static final class a {

        /* renamed from: i, reason: collision with root package name */
        public static final int f14069i;

        /* renamed from: a, reason: collision with root package name */
        public final Context f14070a;

        /* renamed from: b, reason: collision with root package name */
        public ActivityManager f14071b;

        /* renamed from: c, reason: collision with root package name */
        public c f14072c;

        /* renamed from: e, reason: collision with root package name */
        public float f14074e;

        /* renamed from: d, reason: collision with root package name */
        public float f14073d = 2.0f;

        /* renamed from: f, reason: collision with root package name */
        public float f14075f = 0.4f;

        /* renamed from: g, reason: collision with root package name */
        public float f14076g = 0.33f;

        /* renamed from: h, reason: collision with root package name */
        public int f14077h = 4194304;

        static {
            f14069i = Build.VERSION.SDK_INT < 26 ? 4 : 1;
        }

        public a(Context context) {
            this.f14074e = f14069i;
            this.f14070a = context;
            this.f14071b = (ActivityManager) context.getSystemService("activity");
            this.f14072c = new b(context.getResources().getDisplayMetrics());
            if (Build.VERSION.SDK_INT < 26 || !j.e(this.f14071b)) {
                return;
            }
            this.f14074e = StaticLayoutBuilderCompat.DEFAULT_LINE_SPACING_ADD;
        }

        public j a() {
            return new j(this);
        }

        public a b(float f10) {
            l8.j.a(f10 >= StaticLayoutBuilderCompat.DEFAULT_LINE_SPACING_ADD, "Memory cache screens must be greater than or equal to 0");
            this.f14073d = f10;
            return this;
        }
    }

    /* compiled from: MemorySizeCalculator.java */
    /* loaded from: classes.dex */
    public static final class b implements c {

        /* renamed from: a, reason: collision with root package name */
        public final DisplayMetrics f14078a;

        public b(DisplayMetrics displayMetrics) {
            this.f14078a = displayMetrics;
        }

        @Override // t7.j.c
        public int a() {
            return this.f14078a.heightPixels;
        }

        @Override // t7.j.c
        public int b() {
            return this.f14078a.widthPixels;
        }
    }

    /* compiled from: MemorySizeCalculator.java */
    /* loaded from: classes.dex */
    public interface c {
        int a();

        int b();
    }

    public j(a aVar) {
        int i10;
        this.f14067c = aVar.f14070a;
        if (e(aVar.f14071b)) {
            i10 = aVar.f14077h / 2;
        } else {
            i10 = aVar.f14077h;
        }
        this.f14068d = i10;
        int c10 = c(aVar.f14071b, aVar.f14075f, aVar.f14076g);
        float b10 = aVar.f14072c.b() * aVar.f14072c.a() * 4;
        int round = Math.round(aVar.f14074e * b10);
        int round2 = Math.round(b10 * aVar.f14073d);
        int i11 = c10 - i10;
        int i12 = round2 + round;
        if (i12 <= i11) {
            this.f14066b = round2;
            this.f14065a = round;
        } else {
            float f10 = i11;
            float f11 = aVar.f14074e;
            float f12 = aVar.f14073d;
            float f13 = f10 / (f11 + f12);
            this.f14066b = Math.round(f12 * f13);
            this.f14065a = Math.round(f13 * aVar.f14074e);
        }
        if (Log.isLoggable("MemorySizeCalculator", 3)) {
            StringBuilder sb2 = new StringBuilder();
            sb2.append("Calculation complete, Calculated memory cache size: ");
            sb2.append(f(this.f14066b));
            sb2.append(", pool size: ");
            sb2.append(f(this.f14065a));
            sb2.append(", byte array size: ");
            sb2.append(f(i10));
            sb2.append(", memory class limited? ");
            sb2.append(i12 > c10);
            sb2.append(", max size: ");
            sb2.append(f(c10));
            sb2.append(", memoryClass: ");
            sb2.append(aVar.f14071b.getMemoryClass());
            sb2.append(", isLowMemoryDevice: ");
            sb2.append(e(aVar.f14071b));
        }
    }

    public static int c(ActivityManager activityManager, float f10, float f11) {
        float memoryClass = activityManager.getMemoryClass() * RecyclerView.e0.FLAG_ADAPTER_FULLUPDATE * RecyclerView.e0.FLAG_ADAPTER_FULLUPDATE;
        if (e(activityManager)) {
            f10 = f11;
        }
        return Math.round(memoryClass * f10);
    }

    @TargetApi(19)
    public static boolean e(ActivityManager activityManager) {
        if (Build.VERSION.SDK_INT >= 19) {
            return activityManager.isLowRamDevice();
        }
        return true;
    }

    public int a() {
        return this.f14068d;
    }

    public int b() {
        return this.f14065a;
    }

    public int d() {
        return this.f14066b;
    }

    public final String f(int i10) {
        return Formatter.formatFileSize(this.f14067c, i10);
    }
}
