package e;

import android.annotation.SuppressLint;
import android.content.Context;
import android.location.Location;
import android.location.LocationManager;
import java.util.Calendar;

/* compiled from: TwilightManager.java */
/* loaded from: classes.dex */
public class h {

    /* renamed from: d, reason: collision with root package name */
    public static h f5821d;

    /* renamed from: a, reason: collision with root package name */
    public final Context f5822a;

    /* renamed from: b, reason: collision with root package name */
    public final LocationManager f5823b;

    /* renamed from: c, reason: collision with root package name */
    public final a f5824c = new a();

    /* compiled from: TwilightManager.java */
    /* loaded from: classes.dex */
    public static class a {

        /* renamed from: a, reason: collision with root package name */
        public boolean f5825a;

        /* renamed from: b, reason: collision with root package name */
        public long f5826b;

        /* renamed from: c, reason: collision with root package name */
        public long f5827c;

        /* renamed from: d, reason: collision with root package name */
        public long f5828d;

        /* renamed from: e, reason: collision with root package name */
        public long f5829e;

        /* renamed from: f, reason: collision with root package name */
        public long f5830f;
    }

    public h(Context context, LocationManager locationManager) {
        this.f5822a = context;
        this.f5823b = locationManager;
    }

    public static h a(Context context) {
        if (f5821d == null) {
            Context applicationContext = context.getApplicationContext();
            f5821d = new h(applicationContext, (LocationManager) applicationContext.getSystemService("location"));
        }
        return f5821d;
    }

    @SuppressLint({"MissingPermission"})
    public final Location b() {
        Location c10 = f0.b.b(this.f5822a, "android.permission.ACCESS_COARSE_LOCATION") == 0 ? c("network") : null;
        Location c11 = f0.b.b(this.f5822a, "android.permission.ACCESS_FINE_LOCATION") == 0 ? c("gps") : null;
        return (c11 == null || c10 == null) ? c11 != null ? c11 : c10 : c11.getTime() > c10.getTime() ? c11 : c10;
    }

    public final Location c(String str) {
        try {
            if (this.f5823b.isProviderEnabled(str)) {
                return this.f5823b.getLastKnownLocation(str);
            }
            return null;
        } catch (Exception unused) {
            return null;
        }
    }

    public boolean d() {
        a aVar = this.f5824c;
        if (e()) {
            return aVar.f5825a;
        }
        Location b10 = b();
        if (b10 != null) {
            f(b10);
            return aVar.f5825a;
        }
        int i10 = Calendar.getInstance().get(11);
        return i10 < 6 || i10 >= 22;
    }

    public final boolean e() {
        return this.f5824c.f5830f > System.currentTimeMillis();
    }

    public final void f(Location location) {
        long j10;
        a aVar = this.f5824c;
        long currentTimeMillis = System.currentTimeMillis();
        g b10 = g.b();
        b10.a(currentTimeMillis - 86400000, location.getLatitude(), location.getLongitude());
        long j11 = b10.f5818a;
        b10.a(currentTimeMillis, location.getLatitude(), location.getLongitude());
        boolean z10 = b10.f5820c == 1;
        long j12 = b10.f5819b;
        long j13 = b10.f5818a;
        boolean z11 = z10;
        b10.a(86400000 + currentTimeMillis, location.getLatitude(), location.getLongitude());
        long j14 = b10.f5819b;
        if (j12 == -1 || j13 == -1) {
            j10 = 43200000 + currentTimeMillis;
        } else {
            j10 = (currentTimeMillis > j13 ? 0 + j14 : currentTimeMillis > j12 ? 0 + j13 : 0 + j12) + 60000;
        }
        aVar.f5825a = z11;
        aVar.f5826b = j11;
        aVar.f5827c = j12;
        aVar.f5828d = j13;
        aVar.f5829e = j14;
        aVar.f5830f = j10;
    }
}
