package s7;

import android.annotation.SuppressLint;
import android.annotation.TargetApi;
import android.graphics.Bitmap;
import android.os.Build;
import android.util.Log;
import java.util.Arrays;
import java.util.Collections;
import java.util.HashSet;
import java.util.Set;

/* compiled from: LruBitmapPool.java */
/* loaded from: classes.dex */
public class k implements e {

    /* renamed from: k, reason: collision with root package name */
    public static final Bitmap.Config f13827k = Bitmap.Config.ARGB_8888;

    /* renamed from: a, reason: collision with root package name */
    public final l f13828a;

    /* renamed from: b, reason: collision with root package name */
    public final Set<Bitmap.Config> f13829b;

    /* renamed from: c, reason: collision with root package name */
    public final long f13830c;

    /* renamed from: d, reason: collision with root package name */
    public final a f13831d;

    /* renamed from: e, reason: collision with root package name */
    public long f13832e;

    /* renamed from: f, reason: collision with root package name */
    public long f13833f;

    /* renamed from: g, reason: collision with root package name */
    public int f13834g;

    /* renamed from: h, reason: collision with root package name */
    public int f13835h;

    /* renamed from: i, reason: collision with root package name */
    public int f13836i;

    /* renamed from: j, reason: collision with root package name */
    public int f13837j;

    /* compiled from: LruBitmapPool.java */
    /* loaded from: classes.dex */
    public interface a {
        void a(Bitmap bitmap);

        void b(Bitmap bitmap);
    }

    /* compiled from: LruBitmapPool.java */
    /* loaded from: classes.dex */
    public static final class b implements a {
        @Override // s7.k.a
        public void a(Bitmap bitmap) {
        }

        @Override // s7.k.a
        public void b(Bitmap bitmap) {
        }
    }

    public k(long j10, l lVar, Set<Bitmap.Config> set) {
        this.f13830c = j10;
        this.f13832e = j10;
        this.f13828a = lVar;
        this.f13829b = set;
        this.f13831d = new b();
    }

    @TargetApi(26)
    public static void f(Bitmap.Config config) {
        if (Build.VERSION.SDK_INT >= 26 && config == Bitmap.Config.HARDWARE) {
            throw new IllegalArgumentException("Cannot create a mutable Bitmap with config: " + config + ". Consider setting Downsampler#ALLOW_HARDWARE_CONFIG to false in your RequestOptions and/or in GlideBuilder.setDefaultRequestOptions");
        }
    }

    public static Bitmap g(int i10, int i11, Bitmap.Config config) {
        if (config == null) {
            config = f13827k;
        }
        return Bitmap.createBitmap(i10, i11, config);
    }

    @TargetApi(26)
    public static Set<Bitmap.Config> k() {
        HashSet hashSet = new HashSet(Arrays.asList(Bitmap.Config.values()));
        int i10 = Build.VERSION.SDK_INT;
        if (i10 >= 19) {
            hashSet.add(null);
        }
        if (i10 >= 26) {
            hashSet.remove(Bitmap.Config.HARDWARE);
        }
        return Collections.unmodifiableSet(hashSet);
    }

    public static l l() {
        if (Build.VERSION.SDK_INT >= 19) {
            return new n();
        }
        return new c();
    }

    @TargetApi(19)
    public static void o(Bitmap bitmap) {
        if (Build.VERSION.SDK_INT >= 19) {
            bitmap.setPremultiplied(true);
        }
    }

    public static void p(Bitmap bitmap) {
        bitmap.setHasAlpha(true);
        o(bitmap);
    }

    @Override // s7.e
    @SuppressLint({"InlinedApi"})
    public void a(int i10) {
        if (Log.isLoggable("LruBitmapPool", 3)) {
            StringBuilder sb2 = new StringBuilder();
            sb2.append("trimMemory, level=");
            sb2.append(i10);
        }
        if (i10 >= 40 || (Build.VERSION.SDK_INT >= 23 && i10 >= 20)) {
            b();
        } else if (i10 >= 20 || i10 == 15) {
            q(n() / 2);
        }
    }

    @Override // s7.e
    public void b() {
        q(0L);
    }

    @Override // s7.e
    public Bitmap c(int i10, int i11, Bitmap.Config config) {
        Bitmap m10 = m(i10, i11, config);
        if (m10 != null) {
            m10.eraseColor(0);
            return m10;
        }
        return g(i10, i11, config);
    }

    @Override // s7.e
    public synchronized void d(Bitmap bitmap) {
        try {
            if (bitmap != null) {
                if (!bitmap.isRecycled()) {
                    if (bitmap.isMutable() && this.f13828a.b(bitmap) <= this.f13832e && this.f13829b.contains(bitmap.getConfig())) {
                        int b10 = this.f13828a.b(bitmap);
                        this.f13828a.d(bitmap);
                        this.f13831d.b(bitmap);
                        this.f13836i++;
                        this.f13833f += b10;
                        if (Log.isLoggable("LruBitmapPool", 2)) {
                            StringBuilder sb2 = new StringBuilder();
                            sb2.append("Put bitmap in pool=");
                            sb2.append(this.f13828a.f(bitmap));
                        }
                        h();
                        j();
                        return;
                    }
                    if (Log.isLoggable("LruBitmapPool", 2)) {
                        StringBuilder sb3 = new StringBuilder();
                        sb3.append("Reject bitmap from pool, bitmap: ");
                        sb3.append(this.f13828a.f(bitmap));
                        sb3.append(", is mutable: ");
                        sb3.append(bitmap.isMutable());
                        sb3.append(", is allowed config: ");
                        sb3.append(this.f13829b.contains(bitmap.getConfig()));
                    }
                    bitmap.recycle();
                    return;
                }
                throw new IllegalStateException("Cannot pool recycled bitmap");
            }
            throw new NullPointerException("Bitmap must not be null");
        } catch (Throwable th) {
            throw th;
        }
    }

    @Override // s7.e
    public Bitmap e(int i10, int i11, Bitmap.Config config) {
        Bitmap m10 = m(i10, i11, config);
        return m10 == null ? g(i10, i11, config) : m10;
    }

    public final void h() {
        if (Log.isLoggable("LruBitmapPool", 2)) {
            i();
        }
    }

    public final void i() {
        StringBuilder sb2 = new StringBuilder();
        sb2.append("Hits=");
        sb2.append(this.f13834g);
        sb2.append(", misses=");
        sb2.append(this.f13835h);
        sb2.append(", puts=");
        sb2.append(this.f13836i);
        sb2.append(", evictions=");
        sb2.append(this.f13837j);
        sb2.append(", currentSize=");
        sb2.append(this.f13833f);
        sb2.append(", maxSize=");
        sb2.append(this.f13832e);
        sb2.append("\nStrategy=");
        sb2.append(this.f13828a);
    }

    public final void j() {
        q(this.f13832e);
    }

    public final synchronized Bitmap m(int i10, int i11, Bitmap.Config config) {
        Bitmap c10;
        f(config);
        c10 = this.f13828a.c(i10, i11, config != null ? config : f13827k);
        if (c10 == null) {
            if (Log.isLoggable("LruBitmapPool", 3)) {
                StringBuilder sb2 = new StringBuilder();
                sb2.append("Missing bitmap=");
                sb2.append(this.f13828a.a(i10, i11, config));
            }
            this.f13835h++;
        } else {
            this.f13834g++;
            this.f13833f -= this.f13828a.b(c10);
            this.f13831d.a(c10);
            p(c10);
        }
        if (Log.isLoggable("LruBitmapPool", 2)) {
            StringBuilder sb3 = new StringBuilder();
            sb3.append("Get bitmap=");
            sb3.append(this.f13828a.a(i10, i11, config));
        }
        h();
        return c10;
    }

    public long n() {
        return this.f13832e;
    }

    public final synchronized void q(long j10) {
        while (this.f13833f > j10) {
            Bitmap e10 = this.f13828a.e();
            if (e10 == null) {
                if (Log.isLoggable("LruBitmapPool", 5)) {
                    i();
                }
                this.f13833f = 0L;
                return;
            }
            this.f13831d.a(e10);
            this.f13833f -= this.f13828a.b(e10);
            this.f13837j++;
            if (Log.isLoggable("LruBitmapPool", 3)) {
                StringBuilder sb2 = new StringBuilder();
                sb2.append("Evicting bitmap=");
                sb2.append(this.f13828a.f(e10));
            }
            h();
            e10.recycle();
        }
    }

    public k(long j10) {
        this(j10, l(), k());
    }
}
