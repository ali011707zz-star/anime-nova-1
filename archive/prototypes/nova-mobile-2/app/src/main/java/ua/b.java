package ua;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import jc.l;
import jc.m;
import vb.p;

/* compiled from: NetworkListener.kt */
/* loaded from: classes.dex */
public final class b extends BroadcastReceiver {

    /* renamed from: a, reason: collision with root package name */
    public ic.a<p> f14501a = C0370b.f14504f;

    /* renamed from: b, reason: collision with root package name */
    public ic.a<p> f14502b = a.f14503f;

    /* compiled from: NetworkListener.kt */
    /* loaded from: classes.dex */
    public static final class a extends m implements ic.a<p> {

        /* renamed from: f, reason: collision with root package name */
        public static final a f14503f = new a();

        public a() {
            super(0);
        }

        public final void a() {
        }

        @Override // ic.a
        public /* bridge */ /* synthetic */ p invoke() {
            a();
            return p.f15031a;
        }
    }

    /* compiled from: NetworkListener.kt */
    /* renamed from: ua.b$b, reason: collision with other inner class name */
    /* loaded from: classes.dex */
    public static final class C0370b extends m implements ic.a<p> {

        /* renamed from: f, reason: collision with root package name */
        public static final C0370b f14504f = new C0370b();

        public C0370b() {
            super(0);
        }

        public final void a() {
        }

        @Override // ic.a
        public /* bridge */ /* synthetic */ p invoke() {
            a();
            return p.f15031a;
        }
    }

    public final void a(ic.a<p> aVar) {
        l.f(aVar, "<set-?>");
        this.f14502b = aVar;
    }

    @Override // android.content.BroadcastReceiver
    public void onReceive(Context context, Intent intent) {
        l.f(context, "context");
        l.f(intent, "intent");
        if (d.f14511a.a(context)) {
            this.f14502b.invoke();
        } else {
            this.f14501a.invoke();
        }
    }
}
