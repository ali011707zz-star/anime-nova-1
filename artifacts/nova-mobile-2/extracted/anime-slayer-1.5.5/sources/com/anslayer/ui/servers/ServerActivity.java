package com.anslayer.ui.servers;

import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.view.View;
import androidx.activity.ComponentActivity;
import androidx.fragment.app.FragmentManager;
import androidx.lifecycle.k0;
import androidx.lifecycle.l0;
import androidx.lifecycle.m0;
import com.anslayer.R;
import com.anslayer.ui.servers.ServerActivity;
import j4.k2;
import java.lang.reflect.ParameterizedType;
import java.lang.reflect.Type;
import jc.g;
import jc.l;
import jc.m;
import jc.y;
import vb.f;
import y6.v;
import y6.x;

/* compiled from: ServerActivity.kt */
/* loaded from: classes.dex */
public final class ServerActivity extends o5.a<k2> {

    /* renamed from: o, reason: collision with root package name */
    public static final a f4340o = new a(null);

    /* renamed from: l, reason: collision with root package name */
    public final vb.e f4341l = new k0(y.b(x.class), new e(this), new d(this));

    /* renamed from: m, reason: collision with root package name */
    public final vb.e f4342m = f.a(c.f4345f);

    /* renamed from: n, reason: collision with root package name */
    public final vb.e f4343n = f.a(new b());

    /* compiled from: ServerActivity.kt */
    /* loaded from: classes.dex */
    public static final class a {
        public a() {
        }

        public /* synthetic */ a(g gVar) {
            this();
        }

        public final Intent a(Context context, long j10, String str, String str2, String str3) {
            l.f(context, "context");
            l.f(str, "episodeId");
            l.f(str2, "title");
            l.f(str3, "episodeName");
            Intent intent = new Intent(context, (Class<?>) ServerActivity.class);
            intent.putExtra("anime_id", j10);
            intent.putExtra("episode_id", str);
            intent.putExtra("arg_title", str2);
            intent.putExtra("arg_episode_title", str3);
            return intent;
        }
    }

    /* compiled from: ServerActivity.kt */
    /* loaded from: classes.dex */
    public static final class b extends m implements ic.a<r4.b> {

        /* compiled from: GsonBuilder.kt */
        /* loaded from: classes.dex */
        public static final class a extends oa.a<r4.b> {
        }

        public b() {
            super(0);
        }

        @Override // ic.a
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final r4.b invoke() {
            Type b10;
            try {
                ja.f o10 = ServerActivity.this.o();
                String n10 = ServerActivity.this.g().n();
                l.c(n10);
                Type type = new a().getType();
                l.b(type, "object : TypeToken<T>() {} .type");
                if ((type instanceof ParameterizedType) && com.github.salomonbrys.kotson.c.a((ParameterizedType) type)) {
                    b10 = ((ParameterizedType) type).getRawType();
                    l.b(b10, "type.rawType");
                } else {
                    b10 = com.github.salomonbrys.kotson.c.b(type);
                }
                Object l10 = o10.l(n10, b10);
                l.b(l10, "fromJson(json, typeToken<T>())");
                return (r4.b) l10;
            } catch (Exception unused) {
                return null;
            }
        }
    }

    /* compiled from: Injekt.kt */
    /* loaded from: classes.dex */
    public static final class c extends m implements ic.a<ja.f> {

        /* renamed from: f, reason: collision with root package name */
        public static final c f4345f = new c();

        /* compiled from: TypeInfo.kt */
        /* loaded from: classes.dex */
        public static final class a extends zd.a<ja.f> {
        }

        public c() {
            super(0);
        }

        /* JADX WARN: Type inference failed for: r0v1, types: [java.lang.Object, ja.f] */
        @Override // ic.a
        public final ja.f invoke() {
            return yd.a.a().a(new a().getType());
        }
    }

    /* compiled from: ActivityViewModelLazy.kt */
    /* loaded from: classes.dex */
    public static final class d extends m implements ic.a<l0.b> {

        /* renamed from: f, reason: collision with root package name */
        public final /* synthetic */ ComponentActivity f4346f;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public d(ComponentActivity componentActivity) {
            super(0);
            this.f4346f = componentActivity;
        }

        @Override // ic.a
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final l0.b invoke() {
            return this.f4346f.getDefaultViewModelProviderFactory();
        }
    }

    /* compiled from: ActivityViewModelLazy.kt */
    /* loaded from: classes.dex */
    public static final class e extends m implements ic.a<m0> {

        /* renamed from: f, reason: collision with root package name */
        public final /* synthetic */ ComponentActivity f4347f;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public e(ComponentActivity componentActivity) {
            super(0);
            this.f4347f = componentActivity;
        }

        @Override // ic.a
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final m0 invoke() {
            m0 viewModelStore = this.f4347f.getViewModelStore();
            l.e(viewModelStore, "viewModelStore");
            return viewModelStore;
        }
    }

    public static final void q(ServerActivity serverActivity, View view) {
        l.f(serverActivity, "this$0");
        serverActivity.onBackPressed();
    }

    public final ja.f o() {
        return (ja.f) this.f4342m.getValue();
    }

    @Override // androidx.activity.ComponentActivity, android.app.Activity
    public void onBackPressed() {
        if (!p().a().isEmpty()) {
            Intent intent = new Intent();
            intent.putStringArrayListExtra("episode_ids", p().a());
            setResult(-1, intent);
        }
        super.onBackPressed();
    }

    @Override // o5.a, androidx.fragment.app.e, androidx.activity.ComponentActivity, e0.g, android.app.Activity
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        k2 c10 = k2.c(getLayoutInflater());
        l.e(c10, "inflate(layoutInflater)");
        j(c10);
        setContentView(c().b());
        n8.b.a(this, "native-lib");
        setSupportActionBar(c().f8499c);
        androidx.appcompat.app.a supportActionBar = getSupportActionBar();
        if (supportActionBar != null) {
            supportActionBar.s(true);
        }
        c().f8499c.setNavigationOnClickListener(new View.OnClickListener() { // from class: y6.i
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                ServerActivity.q(ServerActivity.this, view);
            }
        });
        if (bundle == null) {
            FragmentManager supportFragmentManager = getSupportFragmentManager();
            l.e(supportFragmentManager, "supportFragmentManager");
            androidx.fragment.app.x m10 = supportFragmentManager.m();
            l.e(m10, "beginTransaction()");
            m10.u(true);
            l.e(m10.d(R.id.fragment_container_view, v.class, getIntent().getExtras(), null), "add(containerViewId, F::class.java, args, tag)");
            m10.i();
        }
    }

    public final x p() {
        return (x) this.f4341l.getValue();
    }
}
