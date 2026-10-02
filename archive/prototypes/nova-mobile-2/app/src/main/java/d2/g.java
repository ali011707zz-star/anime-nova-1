package d2;

import android.app.Notification;

/* compiled from: ForegroundInfo.java */
/* loaded from: classes.dex */
public final class g {

    /* renamed from: a, reason: collision with root package name */
    public final int f5572a;

    /* renamed from: b, reason: collision with root package name */
    public final int f5573b;

    /* renamed from: c, reason: collision with root package name */
    public final Notification f5574c;

    public g(int i10, Notification notification, int i11) {
        this.f5572a = i10;
        this.f5574c = notification;
        this.f5573b = i11;
    }

    public int a() {
        return this.f5573b;
    }

    public Notification b() {
        return this.f5574c;
    }

    public int c() {
        return this.f5572a;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || g.class != obj.getClass()) {
            return false;
        }
        g gVar = (g) obj;
        if (this.f5572a == gVar.f5572a && this.f5573b == gVar.f5573b) {
            return this.f5574c.equals(gVar.f5574c);
        }
        return false;
    }

    public int hashCode() {
        return (((this.f5572a * 31) + this.f5573b) * 31) + this.f5574c.hashCode();
    }

    public String toString() {
        return "ForegroundInfo{mNotificationId=" + this.f5572a + ", mForegroundServiceType=" + this.f5573b + ", mNotification=" + this.f5574c + '}';
    }
}
