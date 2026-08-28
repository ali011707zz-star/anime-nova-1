package com.anslayer.ui.main;

import android.app.Activity;
import android.app.Dialog;
import android.content.DialogInterface;
import android.content.Intent;
import android.content.SharedPreferences;
import android.content.res.Resources;
import android.graphics.Point;
import android.net.Uri;
import android.os.Build;
import android.os.Bundle;
import android.view.Menu;
import android.view.MenuItem;
import android.view.View;
import android.view.Window;
import android.view.WindowManager;
import android.widget.TextView;
import android.widget.Toast;
import androidx.appcompat.widget.AppCompatImageView;
import androidx.drawerlayout.widget.DrawerLayout;
import androidx.fragment.app.Fragment;
import androidx.fragment.app.x;
import androidx.lifecycle.k;
import com.anslayer.R;
import com.anslayer.data.comment_notification.NotificationWorker;
import com.anslayer.ui.authintication.AuthSelectionActivity;
import com.anslayer.ui.character.CharacterSearchActivity;
import com.anslayer.ui.comment_notification.NotificationActivity;
import com.anslayer.ui.main.MainActivity;
import com.anslayer.ui.profile.self.ProfileActivity;
import com.anslayer.ui.search.FilterActivity;
import com.anslayer.ui.setting.SettingsActivity;
import com.anslayer.widget.SlayerAvatar;
import com.google.android.gms.common.GoogleApiAvailability;
import com.google.android.gms.common.GooglePlayServicesNotAvailableException;
import com.google.android.gms.common.GooglePlayServicesRepairableException;
import com.google.android.gms.security.ProviderInstaller;
import com.google.android.material.badge.BadgeDrawable;
import com.google.android.material.navigation.NavigationView;
import com.google.android.material.tabs.TabLayout;
import com.twitter.sdk.android.core.identity.AuthHandler;
import i5.d0;
import io.wax911.support.SupportExtentionKt;
import io.wax911.support.custom.widget.SingleLineTextView;
import io.wax911.support.util.SupportStateUtil;
import j4.u0;
import java.lang.reflect.ParameterizedType;
import java.lang.reflect.Type;
import java.util.ArrayList;
import java.util.Date;
import java.util.concurrent.TimeUnit;
import r2.d;
import rc.g1;
import rc.n2;
import rc.q0;
import rc.y0;
import s6.n;
import wb.t;

/* compiled from: MainActivity.kt */
/* loaded from: classes.dex */
public final class MainActivity extends o5.a<j4.d> implements NavigationView.OnNavigationItemSelectedListener {

    /* renamed from: l, reason: collision with root package name */
    public androidx.appcompat.app.b f4196l;

    /* renamed from: q, reason: collision with root package name */
    public boolean f4201q;

    /* renamed from: r, reason: collision with root package name */
    public int f4202r;

    /* renamed from: s, reason: collision with root package name */
    public int f4203s;

    /* renamed from: w, reason: collision with root package name */
    public boolean f4207w;

    /* renamed from: z, reason: collision with root package name */
    public Integer f4210z;

    /* renamed from: m, reason: collision with root package name */
    public final vb.e f4197m = vb.f.a(new g());

    /* renamed from: n, reason: collision with root package name */
    public final vb.e f4198n = vb.f.a(new a());

    /* renamed from: o, reason: collision with root package name */
    public final vb.e f4199o = vb.f.a(new c());

    /* renamed from: p, reason: collision with root package name */
    public final vb.e f4200p = vb.f.a(new d());

    /* renamed from: t, reason: collision with root package name */
    public final vb.e f4204t = vb.f.a(new q());

    /* renamed from: u, reason: collision with root package name */
    public final vb.e f4205u = vb.f.a(new e());

    /* renamed from: v, reason: collision with root package name */
    public final vb.e f4206v = vb.f.a(new f());

    /* renamed from: x, reason: collision with root package name */
    public final vb.e f4208x = vb.f.a(s.f4236f);

    /* renamed from: y, reason: collision with root package name */
    public final vb.e f4209y = vb.f.a(new b());
    public final SharedPreferences.OnSharedPreferenceChangeListener A = new SharedPreferences.OnSharedPreferenceChangeListener() { // from class: c6.d
        @Override // android.content.SharedPreferences.OnSharedPreferenceChangeListener
        public final void onSharedPreferenceChanged(SharedPreferences sharedPreferences, String str) {
            MainActivity.z(MainActivity.this, sharedPreferences, str);
        }
    };

    /* compiled from: MainActivity.kt */
    /* loaded from: classes.dex */
    public static final class a extends jc.m implements ic.a<SlayerAvatar> {
        public a() {
            super(0);
        }

        @Override // ic.a
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final SlayerAvatar invoke() {
            return (SlayerAvatar) MainActivity.this.H().findViewById(R.id.navHeaderAvatar);
        }
    }

    /* compiled from: MainActivity.kt */
    /* loaded from: classes.dex */
    public static final class b extends jc.m implements ic.a<r4.b> {

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
                ja.f G = MainActivity.this.G();
                String n10 = MainActivity.this.g().n();
                jc.l.c(n10);
                Type type = new a().getType();
                jc.l.b(type, "object : TypeToken<T>() {} .type");
                if ((type instanceof ParameterizedType) && com.github.salomonbrys.kotson.c.a((ParameterizedType) type)) {
                    b10 = ((ParameterizedType) type).getRawType();
                    jc.l.b(b10, "type.rawType");
                } else {
                    b10 = com.github.salomonbrys.kotson.c.b(type);
                }
                Object l10 = G.l(n10, b10);
                jc.l.b(l10, "fromJson(json, typeToken<T>())");
                return (r4.b) l10;
            } catch (Exception unused) {
                return null;
            }
        }
    }

    /* compiled from: MainActivity.kt */
    /* loaded from: classes.dex */
    public static final class c extends jc.m implements ic.a<SingleLineTextView> {
        public c() {
            super(0);
        }

        @Override // ic.a
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final SingleLineTextView invoke() {
            return (SingleLineTextView) MainActivity.this.H().findViewById(R.id.navHeaderLogin);
        }
    }

    /* compiled from: MainActivity.kt */
    /* loaded from: classes.dex */
    public static final class d extends jc.m implements ic.a<AppCompatImageView> {
        public d() {
            super(0);
        }

        @Override // ic.a
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final AppCompatImageView invoke() {
            return (AppCompatImageView) MainActivity.this.H().findViewById(R.id.navHeaderNotification);
        }
    }

    /* compiled from: MainActivity.kt */
    /* loaded from: classes.dex */
    public static final class e extends jc.m implements ic.a<d.a> {
        public e() {
            super(0);
        }

        @Override // ic.a
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final d.a invoke() {
            return new d.a(MainActivity.this.getApplicationContext(), new m7.d(MainActivity.this.getApplicationContext(), 0.5f, BadgeDrawable.TOP_END));
        }
    }

    /* compiled from: MainActivity.kt */
    /* loaded from: classes.dex */
    public static final class f extends jc.m implements ic.a<w4.e> {
        public f() {
            super(0);
        }

        @Override // ic.a
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final w4.e invoke() {
            return MainActivity.this.I().f();
        }
    }

    /* compiled from: MainActivity.kt */
    /* loaded from: classes.dex */
    public static final class g extends jc.m implements ic.a<View> {
        public g() {
            super(0);
        }

        @Override // ic.a
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final View invoke() {
            return MainActivity.this.c().f8225c.getHeaderView(0);
        }
    }

    /* compiled from: MainActivity.kt */
    /* loaded from: classes.dex */
    public static final class h extends jc.m implements ic.l<s2.c, vb.p> {
        public h() {
            super(1);
        }

        public final void a(s2.c cVar) {
            jc.l.f(cVar, "it");
            try {
                try {
                    MainActivity.this.startActivity(new Intent("android.intent.action.VIEW", Uri.parse("https://app-mo.com")));
                } catch (Exception e10) {
                    e10.printStackTrace();
                }
            } finally {
                MainActivity.this.finish();
            }
        }

        @Override // ic.l
        public /* bridge */ /* synthetic */ vb.p invoke(s2.c cVar) {
            a(cVar);
            return vb.p.f15031a;
        }
    }

    /* compiled from: MainActivity.kt */
    /* loaded from: classes.dex */
    public static final class i extends jc.m implements ic.a<vb.p> {
        public i() {
            super(0);
        }

        public final void a() {
            MainActivity.this.f4203s = R.string.nav_header_manage;
            TabLayout tabLayout = MainActivity.this.c().f8226d;
            jc.l.e(tabLayout, "binding.tabs");
            tabLayout.setVisibility(0);
            Fragment i02 = MainActivity.this.getSupportFragmentManager().i0("UserListPagerFragment");
            if (i02 == null) {
                i02 = new d6.c();
            }
            MainActivity.this.P(i02, "UserListPagerFragment");
        }

        @Override // ic.a
        public /* bridge */ /* synthetic */ vb.p invoke() {
            a();
            return vb.p.f15031a;
        }
    }

    /* compiled from: MainActivity.kt */
    /* loaded from: classes.dex */
    public static final class j extends jc.m implements ic.a<vb.p> {
        public j() {
            super(0);
        }

        public final void a() {
            MainActivity.this.f4203s = R.string.nav_custom_list;
            TabLayout tabLayout = MainActivity.this.c().f8226d;
            jc.l.e(tabLayout, "binding.tabs");
            tabLayout.setVisibility(8);
            Fragment i02 = MainActivity.this.getSupportFragmentManager().i0("CustomListFragment");
            if (i02 == null) {
                i02 = new x5.f();
            }
            MainActivity.this.P(i02, "CustomListFragment");
        }

        @Override // ic.a
        public /* bridge */ /* synthetic */ vb.p invoke() {
            a();
            return vb.p.f15031a;
        }
    }

    /* compiled from: MainActivity.kt */
    /* loaded from: classes.dex */
    public static final class k extends jc.m implements ic.a<vb.p> {
        public k() {
            super(0);
        }

        public final void a() {
            MainActivity.this.f4203s = R.string.nav_my_favourites;
            TabLayout tabLayout = MainActivity.this.c().f8226d;
            jc.l.e(tabLayout, "binding.tabs");
            tabLayout.setVisibility(8);
            Fragment i02 = MainActivity.this.getSupportFragmentManager().i0("fav_list");
            if (i02 == null) {
                i02 = new g6.h();
                MainActivity mainActivity = MainActivity.this;
                vb.i[] iVarArr = new vb.i[2];
                vb.i[] iVarArr2 = new vb.i[3];
                iVarArr2[0] = vb.n.a("list_type", "favorites");
                w4.e F = mainActivity.F();
                iVarArr2[1] = vb.n.a(AuthHandler.EXTRA_USER_ID, F == null ? null : Long.valueOf(F.D()));
                iVarArr2[2] = vb.n.a("_order_by", "latest_first");
                iVarArr[0] = vb.n.a("request_param", com.github.salomonbrys.kotson.a.b(iVarArr2).toString());
                iVarArr[1] = vb.n.a("list_type", "favorites");
                i02.setArguments(m0.b.a(iVarArr));
            }
            MainActivity.this.P(i02, "fav_list");
        }

        @Override // ic.a
        public /* bridge */ /* synthetic */ vb.p invoke() {
            a();
            return vb.p.f15031a;
        }
    }

    /* compiled from: MainActivity.kt */
    /* loaded from: classes.dex */
    public static final class l extends jc.m implements ic.a<vb.p> {
        public l() {
            super(0);
        }

        public final void a() {
            MainActivity.this.f4203s = R.string.nav_fav_characters_title;
            TabLayout tabLayout = MainActivity.this.c().f8226d;
            jc.l.e(tabLayout, "binding.tabs");
            tabLayout.setVisibility(8);
            Fragment i02 = MainActivity.this.getSupportFragmentManager().i0("fav_character_list");
            if (i02 == null) {
                i02 = new d6.b();
                i02.setArguments(m0.b.a(vb.n.a("list_type", "character_fav_list")));
            }
            MainActivity.this.P(i02, "fav_character_list");
        }

        @Override // ic.a
        public /* bridge */ /* synthetic */ vb.p invoke() {
            a();
            return vb.p.f15031a;
        }
    }

    /* compiled from: MainActivity.kt */
    /* loaded from: classes.dex */
    public static final class m extends jc.m implements ic.a<vb.p> {
        public m() {
            super(0);
        }

        public final void a() {
            MainActivity.this.f4203s = R.string.nav_my_history;
            TabLayout tabLayout = MainActivity.this.c().f8226d;
            jc.l.e(tabLayout, "binding.tabs");
            tabLayout.setVisibility(8);
            Fragment i02 = MainActivity.this.getSupportFragmentManager().i0("eps_history");
            if (i02 == null) {
                i02 = new g6.s();
                MainActivity mainActivity = MainActivity.this;
                vb.i[] iVarArr = new vb.i[2];
                vb.i[] iVarArr2 = new vb.i[3];
                iVarArr2[0] = vb.n.a("list_type", "watched_history");
                w4.e F = mainActivity.F();
                iVarArr2[1] = vb.n.a(AuthHandler.EXTRA_USER_ID, F == null ? null : Long.valueOf(F.D()));
                iVarArr2[2] = vb.n.a("_order_by", "latest_first");
                iVarArr[0] = vb.n.a("request_param", com.github.salomonbrys.kotson.a.b(iVarArr2).toString());
                iVarArr[1] = vb.n.a("list_type", "watched_history");
                i02.setArguments(m0.b.a(iVarArr));
            }
            MainActivity.this.P(i02, "eps_history");
        }

        @Override // ic.a
        public /* bridge */ /* synthetic */ vb.p invoke() {
            a();
            return vb.p.f15031a;
        }
    }

    /* compiled from: MainActivity.kt */
    /* loaded from: classes.dex */
    public static final class n extends jc.m implements ic.l<s2.c, vb.p> {

        /* renamed from: f, reason: collision with root package name */
        public final /* synthetic */ MenuItem f4224f;

        /* renamed from: g, reason: collision with root package name */
        public final /* synthetic */ MainActivity f4225g;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public n(MenuItem menuItem, MainActivity mainActivity) {
            super(1);
            this.f4224f = menuItem;
            this.f4225g = mainActivity;
        }

        public final void a(s2.c cVar) {
            jc.l.f(cVar, "it");
            this.f4224f.setVisible(false);
            f4.d e10 = this.f4225g.I().e();
            if (e10 == null) {
                return;
            }
            e10.f0(false);
        }

        @Override // ic.l
        public /* bridge */ /* synthetic */ vb.p invoke(s2.c cVar) {
            a(cVar);
            return vb.p.f15031a;
        }
    }

    /* compiled from: MainActivity.kt */
    @cc.f(c = "com.anslayer.ui.main.MainActivity$onResume$1$1", f = "MainActivity.kt", l = {367}, m = "invokeSuspend")
    /* loaded from: classes.dex */
    public static final class o extends cc.k implements ic.p<q0, ac.d<? super w4.e>, Object> {

        /* renamed from: f, reason: collision with root package name */
        public Object f4226f;

        /* renamed from: g, reason: collision with root package name */
        public int f4227g;

        /* compiled from: MainActivity.kt */
        @cc.f(c = "com.anslayer.ui.main.MainActivity$onResume$1$1$1$1", f = "MainActivity.kt", l = {}, m = "invokeSuspend")
        /* loaded from: classes.dex */
        public static final class a extends cc.k implements ic.p<q0, ac.d<? super vb.p>, Object> {

            /* renamed from: f, reason: collision with root package name */
            public int f4229f;

            /* renamed from: g, reason: collision with root package name */
            public final /* synthetic */ w4.e f4230g;

            /* renamed from: h, reason: collision with root package name */
            public final /* synthetic */ MainActivity f4231h;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            public a(w4.e eVar, MainActivity mainActivity, ac.d<? super a> dVar) {
                super(2, dVar);
                this.f4230g = eVar;
                this.f4231h = mainActivity;
            }

            @Override // cc.a
            public final ac.d<vb.p> create(Object obj, ac.d<?> dVar) {
                return new a(this.f4230g, this.f4231h, dVar);
            }

            @Override // ic.p
            public final Object invoke(q0 q0Var, ac.d<? super vb.p> dVar) {
                return ((a) create(q0Var, dVar)).invokeSuspend(vb.p.f15031a);
            }

            @Override // cc.a
            public final Object invokeSuspend(Object obj) {
                bc.c.d();
                if (this.f4229f != 0) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                vb.k.b(obj);
                if (this.f4230g != null) {
                    l7.b.a(this.f4231h.A(), this.f4230g.E());
                }
                if (this.f4230g != null) {
                    this.f4231h.C().setText(this.f4230g.B());
                }
                return vb.p.f15031a;
            }
        }

        public o(ac.d<? super o> dVar) {
            super(2, dVar);
        }

        @Override // cc.a
        public final ac.d<vb.p> create(Object obj, ac.d<?> dVar) {
            return new o(dVar);
        }

        @Override // ic.p
        public final Object invoke(q0 q0Var, ac.d<? super w4.e> dVar) {
            return ((o) create(q0Var, dVar)).invokeSuspend(vb.p.f15031a);
        }

        @Override // cc.a
        public final Object invokeSuspend(Object obj) {
            w4.e eVar;
            Object d10 = bc.c.d();
            int i10 = this.f4227g;
            if (i10 == 0) {
                vb.k.b(obj);
                w4.e f10 = MainActivity.this.I().f();
                MainActivity mainActivity = MainActivity.this;
                if (!mainActivity.getLifecycle().b().a(k.c.CREATED)) {
                    return f10;
                }
                n2 c10 = g1.c();
                a aVar = new a(f10, mainActivity, null);
                this.f4226f = f10;
                this.f4227g = 1;
                if (rc.i.g(c10, aVar, this) == d10) {
                    return d10;
                }
                eVar = f10;
            } else {
                if (i10 != 1) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                eVar = (w4.e) this.f4226f;
                vb.k.b(obj);
            }
            return eVar;
        }
    }

    /* compiled from: MainActivity.kt */
    /* loaded from: classes.dex */
    public static final class p extends jc.m implements ic.l<Throwable, vb.p> {

        /* renamed from: f, reason: collision with root package name */
        public static final p f4232f = new p();

        public p() {
            super(1);
        }

        @Override // ic.l
        public /* bridge */ /* synthetic */ vb.p invoke(Throwable th) {
            invoke2(th);
            return vb.p.f15031a;
        }

        /* renamed from: invoke, reason: avoid collision after fix types in other method */
        public final void invoke2(Throwable th) {
            if (th == null) {
                return;
            }
            th.printStackTrace();
        }
    }

    /* compiled from: MainActivity.kt */
    /* loaded from: classes.dex */
    public static final class q extends jc.m implements ic.a<r5.a> {
        public q() {
            super(0);
        }

        @Override // ic.a
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final r5.a invoke() {
            return r5.a.f12858f.newInstance(MainActivity.this);
        }
    }

    /* compiled from: MainActivity.kt */
    /* loaded from: classes.dex */
    public static final class r extends jc.m implements ic.a<vb.p> {

        /* renamed from: g, reason: collision with root package name */
        public final /* synthetic */ r4.k f4235g;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public r(r4.k kVar) {
            super(0);
            this.f4235g = kVar;
        }

        public final void a() {
            k7.b.l(MainActivity.this, this.f4235g.e());
        }

        @Override // ic.a
        public /* bridge */ /* synthetic */ vb.p invoke() {
            a();
            return vb.p.f15031a;
        }
    }

    /* compiled from: Injekt.kt */
    /* loaded from: classes.dex */
    public static final class s extends jc.m implements ic.a<ja.f> {

        /* renamed from: f, reason: collision with root package name */
        public static final s f4236f = new s();

        /* compiled from: TypeInfo.kt */
        /* loaded from: classes.dex */
        public static final class a extends zd.a<ja.f> {
        }

        public s() {
            super(0);
        }

        /* JADX WARN: Type inference failed for: r0v1, types: [java.lang.Object, ja.f] */
        @Override // ic.a
        public final ja.f invoke() {
            return yd.a.a().a(new a().getType());
        }
    }

    public static final void L(MainActivity mainActivity, View view) {
        jc.l.f(mainActivity, "this$0");
        f4.d e10 = mainActivity.I().e();
        if (e10 == null) {
            return;
        }
        boolean b10 = e10.b();
        if (b10) {
            mainActivity.startActivity(ProfileActivity.f4249l.a(mainActivity));
            return;
        }
        if (b10) {
            return;
        }
        Bundle extras = mainActivity.getIntent().getExtras();
        Intent intent = new Intent(mainActivity, (Class<?>) AuthSelectionActivity.class);
        intent.setFlags(268435456);
        if (extras != null) {
            intent.putExtras(extras);
        }
        mainActivity.startActivity(intent);
    }

    public static final void M(MainActivity mainActivity, View view) {
        jc.l.f(mainActivity, "this$0");
        Bundle bundle = new Bundle();
        bundle.putString("list_type", "GET_USER_NOTIFICATION");
        Intent intent = new Intent(mainActivity, (Class<?>) NotificationActivity.class);
        intent.setFlags(268435456);
        intent.putExtras(bundle);
        mainActivity.startActivity(intent);
    }

    public static final void R(Dialog dialog, View view) {
        jc.l.f(dialog, "$dialog");
        dialog.dismiss();
    }

    public static final void S(MainActivity mainActivity, DialogInterface dialogInterface) {
        jc.l.f(mainActivity, "this$0");
        mainActivity.setRequestedOrientation(1);
    }

    public static final void T(MainActivity mainActivity, DialogInterface dialogInterface) {
        jc.l.f(mainActivity, "this$0");
        mainActivity.setRequestedOrientation(-1);
        mainActivity.f4210z = null;
    }

    public static final void z(MainActivity mainActivity, SharedPreferences sharedPreferences, String str) {
        jc.l.f(mainActivity, "this$0");
        if (jc.l.a(str, "notification_count")) {
            f4.d e10 = mainActivity.I().e();
            Integer valueOf = e10 == null ? null : Integer.valueOf(e10.A());
            if (valueOf == null) {
                return;
            }
            mainActivity.O(valueOf.intValue());
        }
    }

    public final SlayerAvatar A() {
        Object value = this.f4198n.getValue();
        jc.l.e(value, "<get-appAvatar>(...)");
        return (SlayerAvatar) value;
    }

    public final r4.b B() {
        return (r4.b) this.f4209y.getValue();
    }

    public final SingleLineTextView C() {
        Object value = this.f4199o.getValue();
        jc.l.e(value, "<get-appHeading>(...)");
        return (SingleLineTextView) value;
    }

    public final AppCompatImageView D() {
        Object value = this.f4200p.getValue();
        jc.l.e(value, "<get-appNotification>(...)");
        return (AppCompatImageView) value;
    }

    public final d.a E() {
        return (d.a) this.f4205u.getValue();
    }

    public final w4.e F() {
        return (w4.e) this.f4206v.getValue();
    }

    public final ja.f G() {
        return (ja.f) this.f4208x.getValue();
    }

    public final View H() {
        return (View) this.f4197m.getValue();
    }

    public final r5.a I() {
        return (r5.a) this.f4204t.getValue();
    }

    public final boolean J(int i10) {
        return i10 == R.id.nav_settings;
    }

    public final void K(int i10) {
        switch (i10) {
            case R.id.nav_anime_list /* 2131362478 */:
                this.f4203s = R.string.nav_anime_list;
                TabLayout tabLayout = c().f8226d;
                jc.l.e(tabLayout, "binding.tabs");
                tabLayout.setVisibility(8);
                Fragment i02 = getSupportFragmentManager().i0("anime_list");
                if (i02 == null) {
                    i02 = new g6.e();
                    i02.setArguments(m0.b.a(vb.n.a("request_param", com.github.salomonbrys.kotson.a.b(vb.n.a("list_type", "anime_list"), vb.n.a("_order_by", "latest_first")).toString())));
                }
                P(i02, "anime_list");
                return;
            case R.id.nav_anime_season /* 2131362479 */:
                this.f4203s = R.string.nav_season_title;
                TabLayout tabLayout2 = c().f8226d;
                jc.l.e(tabLayout2, "binding.tabs");
                tabLayout2.setVisibility(0);
                Fragment i03 = getSupportFragmentManager().i0("SeasonsFragment");
                if (i03 == null) {
                    i03 = new x6.n();
                }
                P(i03, "SeasonsFragment");
                return;
            case R.id.nav_as_ranking /* 2131362480 */:
                this.f4203s = R.string.nav_header_as_ranking;
                TabLayout tabLayout3 = c().f8226d;
                jc.l.e(tabLayout3, "binding.tabs");
                tabLayout3.setVisibility(0);
                Fragment i04 = getSupportFragmentManager().i0("AnimeSlayerRankingFragment");
                if (i04 == null) {
                    i04 = new r6.a();
                }
                P(i04, "AnimeSlayerRankingFragment");
                return;
            case R.id.nav_custom_list /* 2131362481 */:
                N(new j());
                return;
            case R.id.nav_fav_characters /* 2131362482 */:
                N(new l());
                return;
            case R.id.nav_latest_episodes /* 2131362483 */:
                this.f4203s = R.string.nav_latest_episodes;
                TabLayout tabLayout4 = c().f8226d;
                jc.l.e(tabLayout4, "binding.tabs");
                tabLayout4.setVisibility(8);
                Fragment i05 = getSupportFragmentManager().i0("latest_update");
                if (i05 == null) {
                    i05 = new g6.e();
                    i05.setArguments(m0.b.a(vb.n.a("request_param", com.github.salomonbrys.kotson.a.b(vb.n.a("list_type", "latest_updated_episode_new"), vb.n.a("_order_by", "latest_first")).toString())));
                }
                P(i05, "latest_update");
                return;
            case R.id.nav_main_group /* 2131362484 */:
            case R.id.nav_others_group /* 2131362490 */:
            case R.id.nav_rating_group /* 2131362491 */:
            default:
                return;
            case R.id.nav_mal_ranking /* 2131362485 */:
                this.f4203s = R.string.nav_header_mal_ranking;
                TabLayout tabLayout5 = c().f8226d;
                jc.l.e(tabLayout5, "binding.tabs");
                tabLayout5.setVisibility(0);
                Fragment i06 = getSupportFragmentManager().i0("MyAnimeListRankingFragment");
                if (i06 == null) {
                    i06 = new r6.b();
                }
                P(i06, "MyAnimeListRankingFragment");
                return;
            case R.id.nav_my_downloads /* 2131362486 */:
                this.f4203s = R.string.nav_my_downloads;
                TabLayout tabLayout6 = c().f8226d;
                jc.l.e(tabLayout6, "binding.tabs");
                tabLayout6.setVisibility(8);
                Fragment i07 = getSupportFragmentManager().i0("anime_downloads");
                if (i07 == null) {
                    i07 = new b6.d();
                }
                P(i07, "anime_downloads");
                return;
            case R.id.nav_my_favourites /* 2131362487 */:
                N(new k());
                return;
            case R.id.nav_my_history /* 2131362488 */:
                N(new m());
                return;
            case R.id.nav_my_list /* 2131362489 */:
                N(new i());
                return;
            case R.id.nav_recommendations /* 2131362492 */:
                this.f4203s = R.string.nav_recommendations;
                TabLayout tabLayout7 = c().f8226d;
                jc.l.e(tabLayout7, "binding.tabs");
                tabLayout7.setVisibility(8);
                s6.n i08 = getSupportFragmentManager().i0("anime_recommendations");
                if (i08 == null) {
                    n.a aVar = s6.n.B;
                    Bundle bundle = new Bundle();
                    bundle.putString("list_type", "all");
                    i08 = aVar.newInstance(bundle);
                }
                jc.l.c(i08);
                P(i08, "anime_recommendations");
                return;
            case R.id.nav_schedule /* 2131362493 */:
                this.f4203s = R.string.nav_schedule;
                TabLayout tabLayout8 = c().f8226d;
                jc.l.e(tabLayout8, "binding.tabs");
                tabLayout8.setVisibility(8);
                Fragment i09 = getSupportFragmentManager().i0("anime_schedule");
                if (i09 == null) {
                    i09 = new v6.e();
                }
                P(i09, "anime_schedule");
                return;
            case R.id.nav_settings /* 2131362494 */:
                Bundle bundle2 = new Bundle();
                Intent intent = new Intent(this, (Class<?>) SettingsActivity.class);
                intent.setFlags(268435456);
                intent.putExtras(bundle2);
                startActivity(intent);
                return;
            case R.id.nav_top_characters /* 2131362495 */:
                this.f4203s = R.string.nav_top_characters_title;
                TabLayout tabLayout9 = c().f8226d;
                jc.l.e(tabLayout9, "binding.tabs");
                tabLayout9.setVisibility(8);
                Fragment i010 = getSupportFragmentManager().i0("character_list");
                if (i010 == null) {
                    i010 = new f5.a();
                    i010.setArguments(m0.b.a(vb.n.a("list_type", "character_list")));
                }
                P(i010, "character_list");
                return;
        }
    }

    public final void N(ic.a<vb.p> aVar) {
        f4.d e10 = I().e();
        boolean z10 = false;
        if (e10 != null && e10.b()) {
            z10 = true;
        }
        if (z10) {
            aVar.invoke();
            return;
        }
        Bundle extras = getIntent().getExtras();
        Intent intent = new Intent(this, (Class<?>) AuthSelectionActivity.class);
        intent.setFlags(268435456);
        if (extras != null) {
            intent.putExtras(extras);
        }
        startActivity(intent);
    }

    public final void O(int i10) {
        try {
            ((r2.d) r2.c.a(D(), E())).f(nc.g.c(i10, 999));
        } catch (Exception unused) {
        }
    }

    public final void P(Fragment fragment, String str) {
        c().f8224b.d(8388611);
        c().f8227e.setTitle(this.f4203s);
        x m10 = getSupportFragmentManager().m();
        jc.l.e(m10, "supportFragmentManager.beginTransaction()");
        m10.r(R.id.contentFrame, fragment, str);
        m10.j();
    }

    public final void Q() {
        Integer num;
        r4.b B = B();
        if (B == null) {
            return;
        }
        if (this.f4210z == null) {
            this.f4210z = Integer.valueOf(getResources().getConfiguration().orientation);
        }
        if (new Date().getTime() < g().M().get().longValue() + TimeUnit.HOURS.toMillis(B.t())) {
            if (getRequestedOrientation() != 1 || (num = this.f4210z) == null) {
                return;
            }
            int i10 = getResources().getConfiguration().orientation;
            if (num != null && num.intValue() == i10) {
                return;
            }
        }
        g().M().set(Long.valueOf(new Date().getTime()));
        r4.a a10 = B.a();
        r4.k g10 = a10 == null ? null : a10.g();
        if (g10 == null || this.f4207w) {
            return;
        }
        if (getResources().getConfiguration().orientation != 1) {
            setRequestedOrientation(1);
            return;
        }
        this.f4207w = true;
        u0 c10 = u0.c(getLayoutInflater(), null, false);
        jc.l.e(c10, "inflate(layoutInflater, null, false)");
        final Dialog dialog = new Dialog(this, R.style.AlertDialogTheme);
        dialog.setCancelable(false);
        dialog.setCanceledOnTouchOutside(false);
        dialog.setContentView(c10.b());
        Window window = dialog.getWindow();
        WindowManager windowManager = window == null ? null : window.getWindowManager();
        if (windowManager != null) {
            Resources resources = dialog.getContext().getResources();
            Point point = new Point();
            windowManager.getDefaultDisplay().getSize(point);
            vb.i iVar = new vb.i(Integer.valueOf(point.x), Integer.valueOf(point.y));
            int intValue = ((Number) iVar.a()).intValue();
            c10.b().setMaxHeight(((Number) iVar.b()).intValue() - (resources.getDimensionPixelSize(R.dimen.md_dialog_vertical_margin) * 2));
            WindowManager.LayoutParams layoutParams = new WindowManager.LayoutParams();
            Window window2 = dialog.getWindow();
            layoutParams.copyFrom(window2 != null ? window2.getAttributes() : null);
            layoutParams.width = Math.min(resources.getDimensionPixelSize(R.dimen.md_dialog_max_width), intValue - (k7.b.g(33) * 2));
            Window window3 = dialog.getWindow();
            if (window3 != null) {
                window3.setAttributes(layoutParams);
            }
        }
        d4.a.b(c10.f8736b).s(g10.c()).g(r7.j.f12973b).r0(new d0(this, c10, dialog, g10.a(), g10.e().length() > 0, new r(g10)));
        c10.f8737c.setOnClickListener(new View.OnClickListener() { // from class: c6.e
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                MainActivity.R(dialog, view);
            }
        });
        dialog.setOnShowListener(new DialogInterface.OnShowListener() { // from class: c6.c
            @Override // android.content.DialogInterface.OnShowListener
            public final void onShow(DialogInterface dialogInterface) {
                MainActivity.S(MainActivity.this, dialogInterface);
            }
        });
        dialog.setOnDismissListener(new DialogInterface.OnDismissListener() { // from class: c6.b
            @Override // android.content.DialogInterface.OnDismissListener
            public final void onDismiss(DialogInterface dialogInterface) {
                MainActivity.T(MainActivity.this, dialogInterface);
            }
        });
        dialog.show();
    }

    public final void U(Activity activity) {
        try {
            ProviderInstaller.installIfNeeded(activity);
        } catch (GooglePlayServicesNotAvailableException unused) {
        } catch (GooglePlayServicesRepairableException e10) {
            GoogleApiAvailability.getInstance().showErrorNotification(activity, e10.getConnectionStatusCode());
        }
    }

    public final void V() {
        int i10 = this.f4202r;
        if (i10 != 0) {
            K(i10);
            return;
        }
        this.f4202r = R.id.nav_latest_episodes;
        c().f8225c.setCheckedItem(this.f4202r);
        K(this.f4202r);
    }

    public final boolean W(Activity activity) {
        try {
            return t.x(new ArrayList(wb.l.l("com.android.vending", "com.google.android.feedback", "com.huawei.appmarket", "com.sec.android.app.samsungapps", "com.amazon.venezia")), activity.getPackageManager().getInstallerPackageName(activity.getPackageName()));
        } catch (Exception unused) {
            return false;
        }
    }

    @Override // androidx.activity.ComponentActivity, android.app.Activity
    public void onBackPressed() {
        if (c().f8224b.C(8388611)) {
            c().f8224b.d(8388611);
        } else if (!this.f4201q) {
            Toast.makeText(this, R.string.text_confirm_exit, 0).show();
            this.f4201q = true;
        } else {
            super.onBackPressed();
        }
    }

    @Override // o5.a, androidx.fragment.app.e, androidx.activity.ComponentActivity, e0.g, android.app.Activity
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        j4.d c10 = j4.d.c(getLayoutInflater());
        jc.l.e(c10, "inflate(layoutInflater)");
        j(c10);
        setContentView(c().b());
        setSupportActionBar(c().f8227e);
        this.f4196l = new androidx.appcompat.app.b(this, c().f8224b, c().f8227e, R.string.navigation_drawer_open, R.string.navigation_drawer_close);
        if (getIntent().hasExtra("arg_redirect")) {
            this.f4202r = getIntent().getIntExtra("arg_redirect", 0);
        }
        if (Build.VERSION.SDK_INT <= 19) {
            U(this);
        }
        if (bundle == null) {
            f4.d e10 = I().e();
            if (e10 == null) {
                return;
            }
            if (x3.e.f15857a.a(e10, this)) {
                c6.a.f3711a.a(this);
            }
        }
        if (W(this)) {
            s2.c cVar = new s2.c(this, null, 2, null);
            s2.c.y(cVar, null, "تنبية", 1, null);
            cVar.b(false);
            cVar.s();
            s2.c.n(cVar, null, "يبدو انك قمت بتنصيب التطبيق من مصدر غير رسمي , يرجى تحميل التطبيق من الموقع الرسمي فقط .", null, 5, null);
            s2.c.v(cVar, null, "الذهاب للموقع", new h(), 1, null);
            cVar.show();
        }
        if (bundle != null) {
            this.f4207w = bundle.getBoolean("adShowed");
            this.f4210z = Integer.valueOf(bundle.getInt("originalOrdinance"));
        }
        Q();
    }

    @Override // android.app.Activity
    public boolean onCreateOptionsMenu(Menu menu) {
        jc.l.f(menu, "menu");
        getMenuInflater().inflate(R.menu.main, menu);
        MenuItem findItem = menu.findItem(R.id.action_notification);
        f4.d e10 = I().e();
        findItem.setVisible(e10 == null ? false : e10.J());
        return super.onCreateOptionsMenu(menu);
    }

    @Override // com.google.android.material.navigation.NavigationView.OnNavigationItemSelectedListener
    public boolean onNavigationItemSelected(MenuItem menuItem) {
        jc.l.f(menuItem, "item");
        if (this.f4202r == menuItem.getItemId()) {
            return true;
        }
        if (!J(menuItem.getItemId())) {
            this.f4202r = menuItem.getItemId();
        }
        K(menuItem.getItemId());
        return true;
    }

    @Override // android.app.Activity
    public boolean onOptionsItemSelected(MenuItem menuItem) {
        s2.c a10;
        s2.c b10;
        s2.c v10;
        jc.l.f(menuItem, "item");
        int itemId = menuItem.getItemId();
        if (itemId != R.id.action_notification) {
            if (itemId != R.id.action_search) {
                return super.onOptionsItemSelected(menuItem);
            }
            if (this.f4203s == R.string.nav_top_characters_title) {
                startActivity(new Intent(this, (Class<?>) CharacterSearchActivity.class));
                return true;
            }
            Intent intent = new Intent(this, (Class<?>) FilterActivity.class);
            intent.setFlags(268435456);
            startActivity(intent);
            return true;
        }
        s2.c a11 = k7.c.a(this);
        if (a11 == null) {
            return true;
        }
        s2.c y10 = s2.c.y(a11, Integer.valueOf(R.string.action_notification), null, 2, null);
        if (y10 == null || (a10 = y10.a(false)) == null || (b10 = w2.a.b(a10, Integer.valueOf(R.layout.widget_html_text), null, true, false, false, false, 58, null)) == null || (v10 = s2.c.v(b10, Integer.valueOf(R.string.text_ok), null, new n(menuItem, this), 2, null)) == null) {
            return true;
        }
        TextView textView = (TextView) w2.a.c(v10).findViewById(R.id.widgetHtmlText);
        f4.d e10 = I().e();
        textView.setText(e10 != null ? e10.p() : null);
        v10.show();
        return true;
    }

    @Override // androidx.fragment.app.e, android.app.Activity
    public void onPause() {
        SharedPreferences a10;
        super.onPause();
        DrawerLayout drawerLayout = c().f8224b;
        androidx.appcompat.app.b bVar = this.f4196l;
        if (bVar == null) {
            jc.l.v("mDrawerToggle");
            bVar = null;
        }
        drawerLayout.O(bVar);
        f4.d e10 = I().e();
        if (e10 == null || (a10 = e10.a()) == null) {
            return;
        }
        a10.unregisterOnSharedPreferenceChangeListener(this.A);
    }

    @Override // androidx.appcompat.app.e, android.app.Activity
    public void onPostCreate(Bundle bundle) {
        super.onPostCreate(bundle);
        c().f8225c.setNavigationItemSelectedListener(this);
        H().setOnClickListener(new View.OnClickListener() { // from class: c6.f
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                MainActivity.L(MainActivity.this, view);
            }
        });
        V();
    }

    @Override // android.app.Activity
    public void onRestoreInstanceState(Bundle bundle) {
        jc.l.f(bundle, "savedInstanceState");
        super.onRestoreInstanceState(bundle);
        SupportStateUtil supportStateUtil = SupportStateUtil.INSTANCE;
        this.f4202r = bundle.getInt(supportStateUtil.getKey_navigation_selected());
        this.f4203s = bundle.getInt(supportStateUtil.getKey_navigation_title());
    }

    @Override // androidx.fragment.app.e, android.app.Activity
    public void onResume() {
        y0 b10;
        SharedPreferences a10;
        super.onResume();
        if (l()) {
            Intent intent = getIntent();
            finish();
            startActivity(intent);
        }
        DrawerLayout drawerLayout = c().f8224b;
        androidx.appcompat.app.b bVar = this.f4196l;
        if (bVar == null) {
            jc.l.v("mDrawerToggle");
            bVar = null;
        }
        drawerLayout.a(bVar);
        f4.d e10 = I().e();
        if (e10 != null && (a10 = e10.a()) != null) {
            a10.registerOnSharedPreferenceChangeListener(this.A);
        }
        androidx.appcompat.app.b bVar2 = this.f4196l;
        if (bVar2 == null) {
            jc.l.v("mDrawerToggle");
            bVar2 = null;
        }
        bVar2.i();
        f4.d e11 = I().e();
        if (e11 == null) {
            return;
        }
        boolean b11 = e11.b();
        if (!b11) {
            if (b11) {
                return;
            }
            SupportExtentionKt.gone(D());
            A().setImageResource(R.drawable.ic_account_circle_grey_600_24dp);
            C().setText(getText(R.string.text_login_prompt));
            return;
        }
        D().setVisibility(0);
        f4.d e12 = I().e();
        Integer valueOf = e12 == null ? null : Integer.valueOf(e12.A());
        O(valueOf != null ? valueOf.intValue() : 0);
        if (!e11.K()) {
            NotificationWorker.f4072s.b(this);
            e11.i0(true);
        }
        b10 = rc.k.b(h(), null, null, new o(null), 3, null);
        b10.h0(p.f4232f);
        D().setOnClickListener(new View.OnClickListener() { // from class: c6.g
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                MainActivity.M(MainActivity.this, view);
            }
        });
    }

    @Override // androidx.activity.ComponentActivity, e0.g, android.app.Activity
    public void onSaveInstanceState(Bundle bundle) {
        jc.l.f(bundle, "outState");
        SupportStateUtil supportStateUtil = SupportStateUtil.INSTANCE;
        bundle.putInt(supportStateUtil.getKey_navigation_selected(), this.f4202r);
        bundle.putInt(supportStateUtil.getKey_navigation_title(), this.f4203s);
        bundle.putBoolean("adShowed", this.f4207w);
        Integer num = this.f4210z;
        if (num != null) {
            bundle.putInt("originalOrdinance", num.intValue());
        }
        super.onSaveInstanceState(bundle);
    }
}
