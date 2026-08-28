package e0;

import android.app.Notification;
import android.app.PendingIntent;
import android.content.Context;
import android.content.res.Resources;
import android.graphics.Bitmap;
import android.graphics.drawable.Icon;
import android.media.AudioAttributes;
import android.net.Uri;
import android.os.Build;
import android.os.Bundle;
import android.widget.RemoteViews;
import androidx.core.graphics.drawable.IconCompat;
import java.util.ArrayList;

/* compiled from: NotificationCompat.java */
/* loaded from: classes.dex */
public class j {

    /* compiled from: NotificationCompat.java */
    /* loaded from: classes.dex */
    public static class a {

        /* renamed from: a, reason: collision with root package name */
        public final Bundle f5860a;

        /* renamed from: b, reason: collision with root package name */
        public IconCompat f5861b;

        /* renamed from: c, reason: collision with root package name */
        public final n[] f5862c;

        /* renamed from: d, reason: collision with root package name */
        public final n[] f5863d;

        /* renamed from: e, reason: collision with root package name */
        public boolean f5864e;

        /* renamed from: f, reason: collision with root package name */
        public boolean f5865f;

        /* renamed from: g, reason: collision with root package name */
        public final int f5866g;

        /* renamed from: h, reason: collision with root package name */
        public final boolean f5867h;

        /* renamed from: i, reason: collision with root package name */
        @Deprecated
        public int f5868i;

        /* renamed from: j, reason: collision with root package name */
        public CharSequence f5869j;

        /* renamed from: k, reason: collision with root package name */
        public PendingIntent f5870k;

        public a(int i10, CharSequence charSequence, PendingIntent pendingIntent) {
            this(i10 != 0 ? IconCompat.c(null, "", i10) : null, charSequence, pendingIntent);
        }

        public PendingIntent a() {
            return this.f5870k;
        }

        public boolean b() {
            return this.f5864e;
        }

        public n[] c() {
            return this.f5863d;
        }

        public Bundle d() {
            return this.f5860a;
        }

        public IconCompat e() {
            int i10;
            if (this.f5861b == null && (i10 = this.f5868i) != 0) {
                this.f5861b = IconCompat.c(null, "", i10);
            }
            return this.f5861b;
        }

        public n[] f() {
            return this.f5862c;
        }

        public int g() {
            return this.f5866g;
        }

        public boolean h() {
            return this.f5865f;
        }

        public CharSequence i() {
            return this.f5869j;
        }

        public boolean j() {
            return this.f5867h;
        }

        public a(IconCompat iconCompat, CharSequence charSequence, PendingIntent pendingIntent) {
            this(iconCompat, charSequence, pendingIntent, new Bundle(), null, null, true, 0, true, false);
        }

        public a(IconCompat iconCompat, CharSequence charSequence, PendingIntent pendingIntent, Bundle bundle, n[] nVarArr, n[] nVarArr2, boolean z10, int i10, boolean z11, boolean z12) {
            this.f5865f = true;
            this.f5861b = iconCompat;
            if (iconCompat != null && iconCompat.i() == 2) {
                this.f5868i = iconCompat.e();
            }
            this.f5869j = e.d(charSequence);
            this.f5870k = pendingIntent;
            this.f5860a = bundle == null ? new Bundle() : bundle;
            this.f5862c = nVarArr;
            this.f5863d = nVarArr2;
            this.f5864e = z10;
            this.f5866g = i10;
            this.f5865f = z11;
            this.f5867h = z12;
        }
    }

    /* compiled from: NotificationCompat.java */
    /* loaded from: classes.dex */
    public static class b extends f {

        /* renamed from: e, reason: collision with root package name */
        public Bitmap f5871e;

        /* renamed from: f, reason: collision with root package name */
        public IconCompat f5872f;

        /* renamed from: g, reason: collision with root package name */
        public boolean f5873g;

        /* renamed from: h, reason: collision with root package name */
        public boolean f5874h;

        /* compiled from: NotificationCompat.java */
        /* loaded from: classes.dex */
        public static class a {
            public static void a(Notification.BigPictureStyle bigPictureStyle, Bitmap bitmap) {
                bigPictureStyle.bigLargeIcon(bitmap);
            }

            public static void b(Notification.BigPictureStyle bigPictureStyle, CharSequence charSequence) {
                bigPictureStyle.setSummaryText(charSequence);
            }
        }

        /* compiled from: NotificationCompat.java */
        /* renamed from: e0.j$b$b, reason: collision with other inner class name */
        /* loaded from: classes.dex */
        public static class C0112b {
            public static void a(Notification.BigPictureStyle bigPictureStyle, Icon icon) {
                bigPictureStyle.bigLargeIcon(icon);
            }
        }

        /* compiled from: NotificationCompat.java */
        /* loaded from: classes.dex */
        public static class c {
            public static void a(Notification.BigPictureStyle bigPictureStyle, boolean z10) {
                bigPictureStyle.showBigPictureWhenCollapsed(z10);
            }
        }

        @Override // e0.j.f
        public void b(i iVar) {
            int i10 = Build.VERSION.SDK_INT;
            if (i10 >= 16) {
                Notification.BigPictureStyle bigPicture = new Notification.BigPictureStyle(iVar.a()).setBigContentTitle(this.f5903b).bigPicture(this.f5871e);
                if (this.f5873g) {
                    IconCompat iconCompat = this.f5872f;
                    if (iconCompat == null) {
                        a.a(bigPicture, null);
                    } else if (i10 >= 23) {
                        C0112b.a(bigPicture, this.f5872f.q(iVar instanceof k ? ((k) iVar).f() : null));
                    } else if (iconCompat.i() == 1) {
                        a.a(bigPicture, this.f5872f.d());
                    } else {
                        a.a(bigPicture, null);
                    }
                }
                if (this.f5905d) {
                    a.b(bigPicture, this.f5904c);
                }
                if (i10 >= 31) {
                    c.a(bigPicture, this.f5874h);
                }
            }
        }

        @Override // e0.j.f
        public String c() {
            return "androidx.core.app.NotificationCompat$BigPictureStyle";
        }

        public b h(Bitmap bitmap) {
            this.f5872f = bitmap == null ? null : IconCompat.b(bitmap);
            this.f5873g = true;
            return this;
        }

        public b i(Bitmap bitmap) {
            this.f5871e = bitmap;
            return this;
        }
    }

    /* compiled from: NotificationCompat.java */
    /* loaded from: classes.dex */
    public static class c extends f {

        /* renamed from: e, reason: collision with root package name */
        public CharSequence f5875e;

        @Override // e0.j.f
        public void a(Bundle bundle) {
            super.a(bundle);
            if (Build.VERSION.SDK_INT < 21) {
                bundle.putCharSequence("android.bigText", this.f5875e);
            }
        }

        @Override // e0.j.f
        public void b(i iVar) {
            if (Build.VERSION.SDK_INT >= 16) {
                Notification.BigTextStyle bigText = new Notification.BigTextStyle(iVar.a()).setBigContentTitle(this.f5903b).bigText(this.f5875e);
                if (this.f5905d) {
                    bigText.setSummaryText(this.f5904c);
                }
            }
        }

        @Override // e0.j.f
        public String c() {
            return "androidx.core.app.NotificationCompat$BigTextStyle";
        }

        public c h(CharSequence charSequence) {
            this.f5875e = e.d(charSequence);
            return this;
        }
    }

    /* compiled from: NotificationCompat.java */
    /* loaded from: classes.dex */
    public static final class d {
        public static Notification.BubbleMetadata a(d dVar) {
            return null;
        }
    }

    /* compiled from: NotificationCompat.java */
    /* loaded from: classes.dex */
    public static abstract class f {

        /* renamed from: a, reason: collision with root package name */
        public e f5902a;

        /* renamed from: b, reason: collision with root package name */
        public CharSequence f5903b;

        /* renamed from: c, reason: collision with root package name */
        public CharSequence f5904c;

        /* renamed from: d, reason: collision with root package name */
        public boolean f5905d = false;

        public void a(Bundle bundle) {
            if (this.f5905d) {
                bundle.putCharSequence("android.summaryText", this.f5904c);
            }
            CharSequence charSequence = this.f5903b;
            if (charSequence != null) {
                bundle.putCharSequence("android.title.big", charSequence);
            }
            String c10 = c();
            if (c10 != null) {
                bundle.putString("androidx.core.app.extra.COMPAT_TEMPLATE", c10);
            }
        }

        public abstract void b(i iVar);

        public abstract String c();

        public RemoteViews d(i iVar) {
            return null;
        }

        public RemoteViews e(i iVar) {
            return null;
        }

        public RemoteViews f(i iVar) {
            return null;
        }

        public void g(e eVar) {
            if (this.f5902a != eVar) {
                this.f5902a = eVar;
                if (eVar != null) {
                    eVar.z(this);
                }
            }
        }
    }

    public static Bundle a(Notification notification) {
        int i10 = Build.VERSION.SDK_INT;
        if (i10 >= 19) {
            return notification.extras;
        }
        if (i10 >= 16) {
            return l.c(notification);
        }
        return null;
    }

    /* compiled from: NotificationCompat.java */
    /* loaded from: classes.dex */
    public static class e {
        public boolean A;
        public boolean B;
        public String C;
        public Bundle D;
        public int E;
        public int F;
        public Notification G;
        public RemoteViews H;
        public RemoteViews I;
        public RemoteViews J;
        public String K;
        public int L;
        public String M;
        public long N;
        public int O;
        public int P;
        public boolean Q;
        public d R;
        public Notification S;
        public boolean T;
        public Icon U;

        @Deprecated
        public ArrayList<String> V;

        /* renamed from: a, reason: collision with root package name */
        public Context f5876a;

        /* renamed from: b, reason: collision with root package name */
        public ArrayList<a> f5877b;

        /* renamed from: c, reason: collision with root package name */
        public ArrayList<m> f5878c;

        /* renamed from: d, reason: collision with root package name */
        public ArrayList<a> f5879d;

        /* renamed from: e, reason: collision with root package name */
        public CharSequence f5880e;

        /* renamed from: f, reason: collision with root package name */
        public CharSequence f5881f;

        /* renamed from: g, reason: collision with root package name */
        public PendingIntent f5882g;

        /* renamed from: h, reason: collision with root package name */
        public PendingIntent f5883h;

        /* renamed from: i, reason: collision with root package name */
        public RemoteViews f5884i;

        /* renamed from: j, reason: collision with root package name */
        public Bitmap f5885j;

        /* renamed from: k, reason: collision with root package name */
        public CharSequence f5886k;

        /* renamed from: l, reason: collision with root package name */
        public int f5887l;

        /* renamed from: m, reason: collision with root package name */
        public int f5888m;

        /* renamed from: n, reason: collision with root package name */
        public boolean f5889n;

        /* renamed from: o, reason: collision with root package name */
        public boolean f5890o;

        /* renamed from: p, reason: collision with root package name */
        public f f5891p;

        /* renamed from: q, reason: collision with root package name */
        public CharSequence f5892q;

        /* renamed from: r, reason: collision with root package name */
        public CharSequence f5893r;

        /* renamed from: s, reason: collision with root package name */
        public CharSequence[] f5894s;

        /* renamed from: t, reason: collision with root package name */
        public int f5895t;

        /* renamed from: u, reason: collision with root package name */
        public int f5896u;

        /* renamed from: v, reason: collision with root package name */
        public boolean f5897v;

        /* renamed from: w, reason: collision with root package name */
        public String f5898w;

        /* renamed from: x, reason: collision with root package name */
        public boolean f5899x;

        /* renamed from: y, reason: collision with root package name */
        public String f5900y;

        /* renamed from: z, reason: collision with root package name */
        public boolean f5901z;

        public e(Context context, String str) {
            this.f5877b = new ArrayList<>();
            this.f5878c = new ArrayList<>();
            this.f5879d = new ArrayList<>();
            this.f5889n = true;
            this.f5901z = false;
            this.E = 0;
            this.F = 0;
            this.L = 0;
            this.O = 0;
            this.P = 0;
            Notification notification = new Notification();
            this.S = notification;
            this.f5876a = context;
            this.K = str;
            notification.when = System.currentTimeMillis();
            this.S.audioStreamType = -1;
            this.f5888m = 0;
            this.V = new ArrayList<>();
            this.Q = true;
        }

        public static CharSequence d(CharSequence charSequence) {
            return (charSequence != null && charSequence.length() > 5120) ? charSequence.subSequence(0, 5120) : charSequence;
        }

        public e A(CharSequence charSequence) {
            this.S.tickerText = d(charSequence);
            return this;
        }

        public e B(long[] jArr) {
            this.S.vibrate = jArr;
            return this;
        }

        public e C(int i10) {
            this.F = i10;
            return this;
        }

        public e D(long j10) {
            this.S.when = j10;
            return this;
        }

        public e a(int i10, CharSequence charSequence, PendingIntent pendingIntent) {
            this.f5877b.add(new a(i10, charSequence, pendingIntent));
            return this;
        }

        public Notification b() {
            return new k(this).c();
        }

        public Bundle c() {
            if (this.D == null) {
                this.D = new Bundle();
            }
            return this.D;
        }

        public final Bitmap e(Bitmap bitmap) {
            if (bitmap == null || Build.VERSION.SDK_INT >= 27) {
                return bitmap;
            }
            Resources resources = this.f5876a.getResources();
            int dimensionPixelSize = resources.getDimensionPixelSize(d0.b.f5460b);
            int dimensionPixelSize2 = resources.getDimensionPixelSize(d0.b.f5459a);
            if (bitmap.getWidth() <= dimensionPixelSize && bitmap.getHeight() <= dimensionPixelSize2) {
                return bitmap;
            }
            double d10 = dimensionPixelSize;
            double max = Math.max(1, bitmap.getWidth());
            Double.isNaN(d10);
            Double.isNaN(max);
            double d11 = d10 / max;
            double d12 = dimensionPixelSize2;
            double max2 = Math.max(1, bitmap.getHeight());
            Double.isNaN(d12);
            Double.isNaN(max2);
            double min = Math.min(d11, d12 / max2);
            double width = bitmap.getWidth();
            Double.isNaN(width);
            int ceil = (int) Math.ceil(width * min);
            double height = bitmap.getHeight();
            Double.isNaN(height);
            return Bitmap.createScaledBitmap(bitmap, ceil, (int) Math.ceil(height * min), true);
        }

        public e f(boolean z10) {
            n(16, z10);
            return this;
        }

        public e g(String str) {
            this.K = str;
            return this;
        }

        public e h(int i10) {
            this.E = i10;
            return this;
        }

        public e i(PendingIntent pendingIntent) {
            this.f5882g = pendingIntent;
            return this;
        }

        public e j(CharSequence charSequence) {
            this.f5881f = d(charSequence);
            return this;
        }

        public e k(CharSequence charSequence) {
            this.f5880e = d(charSequence);
            return this;
        }

        public e l(int i10) {
            Notification notification = this.S;
            notification.defaults = i10;
            if ((i10 & 4) != 0) {
                notification.flags |= 1;
            }
            return this;
        }

        public e m(PendingIntent pendingIntent) {
            this.S.deleteIntent = pendingIntent;
            return this;
        }

        public final void n(int i10, boolean z10) {
            if (z10) {
                Notification notification = this.S;
                notification.flags = i10 | notification.flags;
            } else {
                Notification notification2 = this.S;
                notification2.flags = (i10 ^ (-1)) & notification2.flags;
            }
        }

        public e o(Bitmap bitmap) {
            this.f5885j = e(bitmap);
            return this;
        }

        public e p(int i10, int i11, int i12) {
            Notification notification = this.S;
            notification.ledARGB = i10;
            notification.ledOnMS = i11;
            notification.ledOffMS = i12;
            notification.flags = ((i11 == 0 || i12 == 0) ? 0 : 1) | (notification.flags & (-2));
            return this;
        }

        public e q(boolean z10) {
            this.f5901z = z10;
            return this;
        }

        public e r(int i10) {
            this.f5887l = i10;
            return this;
        }

        public e s(boolean z10) {
            n(2, z10);
            return this;
        }

        public e t(boolean z10) {
            n(8, z10);
            return this;
        }

        public e u(int i10) {
            this.f5888m = i10;
            return this;
        }

        public e v(int i10, int i11, boolean z10) {
            this.f5895t = i10;
            this.f5896u = i11;
            this.f5897v = z10;
            return this;
        }

        public e w(boolean z10) {
            this.f5889n = z10;
            return this;
        }

        public e x(int i10) {
            this.S.icon = i10;
            return this;
        }

        public e y(Uri uri) {
            Notification notification = this.S;
            notification.sound = uri;
            notification.audioStreamType = -1;
            if (Build.VERSION.SDK_INT >= 21) {
                notification.audioAttributes = new AudioAttributes.Builder().setContentType(4).setUsage(5).build();
            }
            return this;
        }

        public e z(f fVar) {
            if (this.f5891p != fVar) {
                this.f5891p = fVar;
                if (fVar != null) {
                    fVar.g(this);
                }
            }
            return this;
        }

        @Deprecated
        public e(Context context) {
            this(context, null);
        }
    }
}
