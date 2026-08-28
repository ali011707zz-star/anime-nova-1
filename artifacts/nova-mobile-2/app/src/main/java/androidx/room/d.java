package androidx.room;

import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.ServiceConnection;
import android.os.IBinder;
import android.os.RemoteException;
import androidx.room.a;
import androidx.room.b;
import androidx.room.c;
import java.util.Set;
import java.util.concurrent.Executor;
import java.util.concurrent.atomic.AtomicBoolean;

/* compiled from: MultiInstanceInvalidationClient.java */
/* loaded from: classes.dex */
public class d {

    /* renamed from: a, reason: collision with root package name */
    public final Context f3140a;

    /* renamed from: b, reason: collision with root package name */
    public final String f3141b;

    /* renamed from: c, reason: collision with root package name */
    public int f3142c;

    /* renamed from: d, reason: collision with root package name */
    public final androidx.room.c f3143d;

    /* renamed from: e, reason: collision with root package name */
    public final c.AbstractC0054c f3144e;

    /* renamed from: f, reason: collision with root package name */
    public androidx.room.b f3145f;

    /* renamed from: g, reason: collision with root package name */
    public final Executor f3146g;

    /* renamed from: h, reason: collision with root package name */
    public final androidx.room.a f3147h = new a();

    /* renamed from: i, reason: collision with root package name */
    public final AtomicBoolean f3148i = new AtomicBoolean(false);

    /* renamed from: j, reason: collision with root package name */
    public final ServiceConnection f3149j;

    /* renamed from: k, reason: collision with root package name */
    public final Runnable f3150k;

    /* renamed from: l, reason: collision with root package name */
    public final Runnable f3151l;

    /* compiled from: MultiInstanceInvalidationClient.java */
    /* loaded from: classes.dex */
    public class a extends a.AbstractBinderC0051a {

        /* compiled from: MultiInstanceInvalidationClient.java */
        /* renamed from: androidx.room.d$a$a, reason: collision with other inner class name */
        /* loaded from: classes.dex */
        public class RunnableC0055a implements Runnable {

            /* renamed from: f, reason: collision with root package name */
            public final /* synthetic */ String[] f3153f;

            public RunnableC0055a(String[] strArr) {
                this.f3153f = strArr;
            }

            @Override // java.lang.Runnable
            public void run() {
                d.this.f3143d.h(this.f3153f);
            }
        }

        public a() {
        }

        @Override // androidx.room.a
        public void i(String[] strArr) {
            d.this.f3146g.execute(new RunnableC0055a(strArr));
        }
    }

    /* compiled from: MultiInstanceInvalidationClient.java */
    /* loaded from: classes.dex */
    public class b implements ServiceConnection {
        public b() {
        }

        @Override // android.content.ServiceConnection
        public void onServiceConnected(ComponentName componentName, IBinder iBinder) {
            d.this.f3145f = b.a.s(iBinder);
            d dVar = d.this;
            dVar.f3146g.execute(dVar.f3150k);
        }

        @Override // android.content.ServiceConnection
        public void onServiceDisconnected(ComponentName componentName) {
            d dVar = d.this;
            dVar.f3146g.execute(dVar.f3151l);
            d.this.f3145f = null;
        }
    }

    /* compiled from: MultiInstanceInvalidationClient.java */
    /* loaded from: classes.dex */
    public class c implements Runnable {
        public c() {
        }

        @Override // java.lang.Runnable
        public void run() {
            try {
                d dVar = d.this;
                androidx.room.b bVar = dVar.f3145f;
                if (bVar != null) {
                    dVar.f3142c = bVar.l(dVar.f3147h, dVar.f3141b);
                    d dVar2 = d.this;
                    dVar2.f3143d.a(dVar2.f3144e);
                }
            } catch (RemoteException unused) {
            }
        }
    }

    /* compiled from: MultiInstanceInvalidationClient.java */
    /* renamed from: androidx.room.d$d, reason: collision with other inner class name */
    /* loaded from: classes.dex */
    public class RunnableC0056d implements Runnable {
        public RunnableC0056d() {
        }

        @Override // java.lang.Runnable
        public void run() {
            d dVar = d.this;
            dVar.f3143d.k(dVar.f3144e);
        }
    }

    /* compiled from: MultiInstanceInvalidationClient.java */
    /* loaded from: classes.dex */
    public class e extends c.AbstractC0054c {
        public e(String[] strArr) {
            super(strArr);
        }

        @Override // androidx.room.c.AbstractC0054c
        public boolean a() {
            return true;
        }

        @Override // androidx.room.c.AbstractC0054c
        public void b(Set<String> set) {
            if (d.this.f3148i.get()) {
                return;
            }
            try {
                d dVar = d.this;
                androidx.room.b bVar = dVar.f3145f;
                if (bVar != null) {
                    bVar.m(dVar.f3142c, (String[]) set.toArray(new String[0]));
                }
            } catch (RemoteException unused) {
            }
        }
    }

    public d(Context context, String str, Intent intent, androidx.room.c cVar, Executor executor) {
        b bVar = new b();
        this.f3149j = bVar;
        this.f3150k = new c();
        this.f3151l = new RunnableC0056d();
        Context applicationContext = context.getApplicationContext();
        this.f3140a = applicationContext;
        this.f3141b = str;
        this.f3143d = cVar;
        this.f3146g = executor;
        this.f3144e = new e((String[]) cVar.f3114a.keySet().toArray(new String[0]));
        applicationContext.bindService(intent, bVar, 1);
    }
}
