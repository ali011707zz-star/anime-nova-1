package p;

import android.app.PendingIntent;
import android.content.Context;
import android.content.Intent;
import android.net.Uri;
import android.os.Bundle;
import android.os.IBinder;
import android.util.SparseArray;
import e0.f;
import java.util.ArrayList;
import p.a;

/* compiled from: CustomTabsIntent.java */
/* loaded from: classes.dex */
public final class b {

    /* renamed from: a, reason: collision with root package name */
    public final Intent f11979a;

    /* renamed from: b, reason: collision with root package name */
    public final Bundle f11980b;

    /* compiled from: CustomTabsIntent.java */
    /* loaded from: classes.dex */
    public static final class a {

        /* renamed from: c, reason: collision with root package name */
        public ArrayList<Bundle> f11983c;

        /* renamed from: d, reason: collision with root package name */
        public Bundle f11984d;

        /* renamed from: e, reason: collision with root package name */
        public ArrayList<Bundle> f11985e;

        /* renamed from: f, reason: collision with root package name */
        public SparseArray<Bundle> f11986f;

        /* renamed from: g, reason: collision with root package name */
        public Bundle f11987g;

        /* renamed from: a, reason: collision with root package name */
        public final Intent f11981a = new Intent("android.intent.action.VIEW");

        /* renamed from: b, reason: collision with root package name */
        public final a.C0296a f11982b = new a.C0296a();

        /* renamed from: h, reason: collision with root package name */
        public int f11988h = 0;

        /* renamed from: i, reason: collision with root package name */
        public boolean f11989i = true;

        public b a() {
            if (!this.f11981a.hasExtra("android.support.customtabs.extra.SESSION")) {
                c(null, null);
            }
            ArrayList<Bundle> arrayList = this.f11983c;
            if (arrayList != null) {
                this.f11981a.putParcelableArrayListExtra("android.support.customtabs.extra.MENU_ITEMS", arrayList);
            }
            ArrayList<Bundle> arrayList2 = this.f11985e;
            if (arrayList2 != null) {
                this.f11981a.putParcelableArrayListExtra("android.support.customtabs.extra.TOOLBAR_ITEMS", arrayList2);
            }
            this.f11981a.putExtra("android.support.customtabs.extra.EXTRA_ENABLE_INSTANT_APPS", this.f11989i);
            this.f11981a.putExtras(this.f11982b.a().a());
            Bundle bundle = this.f11987g;
            if (bundle != null) {
                this.f11981a.putExtras(bundle);
            }
            if (this.f11986f != null) {
                Bundle bundle2 = new Bundle();
                bundle2.putSparseParcelableArray("androidx.browser.customtabs.extra.COLOR_SCHEME_PARAMS", this.f11986f);
                this.f11981a.putExtras(bundle2);
            }
            this.f11981a.putExtra("androidx.browser.customtabs.extra.SHARE_STATE", this.f11988h);
            return new b(this.f11981a, this.f11984d);
        }

        public a b(p.a aVar) {
            this.f11987g = aVar.a();
            return this;
        }

        public final void c(IBinder iBinder, PendingIntent pendingIntent) {
            Bundle bundle = new Bundle();
            f.b(bundle, "android.support.customtabs.extra.SESSION", iBinder);
            if (pendingIntent != null) {
                bundle.putParcelable("android.support.customtabs.extra.SESSION_ID", pendingIntent);
            }
            this.f11981a.putExtras(bundle);
        }
    }

    public b(Intent intent, Bundle bundle) {
        this.f11979a = intent;
        this.f11980b = bundle;
    }

    public void a(Context context, Uri uri) {
        this.f11979a.setData(uri);
        f0.a.n(context, this.f11979a, this.f11980b);
    }
}
