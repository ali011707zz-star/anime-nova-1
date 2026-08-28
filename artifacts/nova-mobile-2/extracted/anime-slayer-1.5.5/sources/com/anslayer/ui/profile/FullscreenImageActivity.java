package com.anslayer.ui.profile;

import android.content.Context;
import android.content.Intent;
import android.os.Build;
import android.os.Bundle;
import android.view.Menu;
import android.view.MenuItem;
import android.view.View;
import androidx.activity.ComponentActivity;
import androidx.lifecycle.k0;
import androidx.lifecycle.l0;
import androidx.lifecycle.m0;
import androidx.lifecycle.z;
import com.anslayer.R;
import com.anslayer.ui.profile.FullscreenImageActivity;
import com.google.android.material.appbar.MaterialToolbar;
import g7.c;
import io.wax911.support.SupportExtentionKt;
import j4.g1;
import jc.g;
import jc.l;
import jc.m;
import jc.y;
import r7.j;
import uk.co.senab.photoview.PhotoView;
import vb.p;

/* compiled from: FullscreenImageActivity.kt */
/* loaded from: classes.dex */
public final class FullscreenImageActivity extends androidx.appcompat.app.e {

    /* renamed from: i, reason: collision with root package name */
    public static final a f4238i = new a(null);

    /* renamed from: f, reason: collision with root package name */
    public g1 f4239f;

    /* renamed from: g, reason: collision with root package name */
    public final vb.e f4240g = new k0(y.b(h6.c.class), new e(this), new d(this));

    /* renamed from: h, reason: collision with root package name */
    public String f4241h;

    /* compiled from: FullscreenImageActivity.kt */
    /* loaded from: classes.dex */
    public static final class a {
        public a() {
        }

        public /* synthetic */ a(g gVar) {
            this();
        }

        public final Intent a(Context context, String str) {
            l.f(context, "context");
            Intent intent = new Intent(context, (Class<?>) FullscreenImageActivity.class);
            intent.putExtra("IMAGE", str);
            return intent;
        }
    }

    /* compiled from: FullscreenImageActivity.kt */
    /* loaded from: classes.dex */
    public static final class b extends m implements ic.l<mb.c, p> {

        /* renamed from: f, reason: collision with root package name */
        public static final b f4242f = new b();

        /* compiled from: FullscreenImageActivity.kt */
        /* loaded from: classes.dex */
        public static final class a extends m implements ic.l<mb.b, p> {

            /* renamed from: f, reason: collision with root package name */
            public static final a f4243f = new a();

            public a() {
                super(1);
            }

            public final void a(mb.b bVar) {
                l.f(bVar, "$this$type");
                mb.b.f(bVar, false, 1, null);
            }

            @Override // ic.l
            public /* bridge */ /* synthetic */ p invoke(mb.b bVar) {
                a(bVar);
                return p.f15031a;
            }
        }

        public b() {
            super(1);
        }

        public final void a(mb.c cVar) {
            l.f(cVar, "$this$applyInsetter");
            cVar.c((r23 & 1) != 0 ? false : false, (r23 & 2) != 0 ? false : true, (r23 & 4) != 0 ? false : true, (r23 & 8) != 0 ? false : false, (r23 & 16) != 0 ? false : false, (r23 & 32) != 0 ? false : false, (r23 & 64) != 0 ? false : false, (r23 & 128) != 0 ? false : false, a.f4243f);
        }

        @Override // ic.l
        public /* bridge */ /* synthetic */ p invoke(mb.c cVar) {
            a(cVar);
            return p.f15031a;
        }
    }

    /* compiled from: FullscreenImageActivity.kt */
    /* loaded from: classes.dex */
    public static final class c extends m implements ic.l<mb.c, p> {

        /* renamed from: f, reason: collision with root package name */
        public static final c f4244f = new c();

        /* compiled from: FullscreenImageActivity.kt */
        /* loaded from: classes.dex */
        public static final class a extends m implements ic.l<mb.b, p> {

            /* renamed from: f, reason: collision with root package name */
            public static final a f4245f = new a();

            public a() {
                super(1);
            }

            public final void a(mb.b bVar) {
                l.f(bVar, "$this$type");
                mb.b.c(bVar, false, true, false, false, true, false, false, 109, null);
            }

            @Override // ic.l
            public /* bridge */ /* synthetic */ p invoke(mb.b bVar) {
                a(bVar);
                return p.f15031a;
            }
        }

        public c() {
            super(1);
        }

        public final void a(mb.c cVar) {
            l.f(cVar, "$this$applyInsetter");
            cVar.c((r23 & 1) != 0 ? false : false, (r23 & 2) != 0 ? false : true, (r23 & 4) != 0 ? false : true, (r23 & 8) != 0 ? false : false, (r23 & 16) != 0 ? false : false, (r23 & 32) != 0 ? false : false, (r23 & 64) != 0 ? false : false, (r23 & 128) != 0 ? false : false, a.f4245f);
        }

        @Override // ic.l
        public /* bridge */ /* synthetic */ p invoke(mb.c cVar) {
            a(cVar);
            return p.f15031a;
        }
    }

    /* compiled from: ActivityViewModelLazy.kt */
    /* loaded from: classes.dex */
    public static final class d extends m implements ic.a<l0.b> {

        /* renamed from: f, reason: collision with root package name */
        public final /* synthetic */ ComponentActivity f4246f;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public d(ComponentActivity componentActivity) {
            super(0);
            this.f4246f = componentActivity;
        }

        @Override // ic.a
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final l0.b invoke() {
            return this.f4246f.getDefaultViewModelProviderFactory();
        }
    }

    /* compiled from: ActivityViewModelLazy.kt */
    /* loaded from: classes.dex */
    public static final class e extends m implements ic.a<m0> {

        /* renamed from: f, reason: collision with root package name */
        public final /* synthetic */ ComponentActivity f4247f;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public e(ComponentActivity componentActivity) {
            super(0);
            this.f4247f = componentActivity;
        }

        @Override // ic.a
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final m0 invoke() {
            m0 viewModelStore = this.f4247f.getViewModelStore();
            l.e(viewModelStore, "viewModelStore");
            return viewModelStore;
        }
    }

    public static final void g(FullscreenImageActivity fullscreenImageActivity, g7.c cVar) {
        l.f(fullscreenImageActivity, "this$0");
        if (cVar == null) {
            return;
        }
        if (cVar instanceof c.C0133c) {
            k7.b.r(fullscreenImageActivity, "تم حفظ الصورة", 0, 2, null);
        } else {
            boolean z10 = cVar instanceof c.a;
        }
    }

    public static final void l(FullscreenImageActivity fullscreenImageActivity, View view) {
        l.f(fullscreenImageActivity, "this$0");
        fullscreenImageActivity.onBackPressed();
    }

    public final g1 d() {
        g1 g1Var = this.f4239f;
        if (g1Var != null) {
            return g1Var;
        }
        l.v("binding");
        return null;
    }

    public final String e() {
        String str = this.f4241h;
        if (str != null) {
            return str;
        }
        l.v("imageUrl");
        return null;
    }

    public final h6.c f() {
        return (h6.c) this.f4240g.getValue();
    }

    @Override // android.app.Activity
    public void finish() {
        super.finish();
        overridePendingTransition(R.anim.activity_close_enter, R.anim.activity_close_exit);
    }

    public final void h(String str) {
        l.f(str, "imageUrl");
        if (k7.a.b(this, "android.permission.WRITE_EXTERNAL_STORAGE", 0, 2, null)) {
            f().q(str);
        }
    }

    public final void i(g1 g1Var) {
        l.f(g1Var, "<set-?>");
        this.f4239f = g1Var;
    }

    public final void j(String str) {
        l.f(str, "<set-?>");
        this.f4241h = str;
    }

    public final void k() {
        setSupportActionBar(d().f8385c);
        if (Build.VERSION.SDK_INT >= 21) {
            q0.k0.a(getWindow(), false);
            MaterialToolbar materialToolbar = d().f8385c;
            l.e(materialToolbar, "binding.toolbar");
            mb.d.a(materialToolbar, c.f4244f);
            int j10 = h0.d.j(SupportExtentionKt.getColorFromAttr(this, R.attr.colorSurface), 179);
            getWindow().setStatusBarColor(j10);
            getWindow().setNavigationBarColor(j10);
        }
        d().f8385c.setOverflowIcon(SupportExtentionKt.getCompatDrawable(this, R.drawable.ic_menu_overflow_image_circle));
        d().f8385c.setNavigationOnClickListener(new View.OnClickListener() { // from class: h6.a
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                FullscreenImageActivity.l(FullscreenImageActivity.this, view);
            }
        });
        androidx.appcompat.app.a supportActionBar = getSupportActionBar();
        if (supportActionBar == null) {
            return;
        }
        supportActionBar.s(true);
        supportActionBar.t(false);
    }

    @Override // androidx.fragment.app.e, androidx.activity.ComponentActivity, e0.g, android.app.Activity
    public void onCreate(Bundle bundle) {
        setTheme(R.style.Theme_ImageViewer);
        super.onCreate(bundle);
        g1 c10 = g1.c(getLayoutInflater());
        l.e(c10, "inflate(layoutInflater)");
        i(c10);
        setContentView(d().b());
        k();
        String stringExtra = getIntent().getStringExtra("IMAGE");
        if (stringExtra == null || stringExtra.length() == 0) {
            finish();
            return;
        }
        j(stringExtra);
        d4.a.b(d().f8384b).s(stringExtra).g(j.f12974c).u0(d().f8384b);
        if (Build.VERSION.SDK_INT >= 21) {
            PhotoView photoView = d().f8384b;
            l.e(photoView, "binding.imageFull");
            mb.d.a(photoView, b.f4242f);
        }
        f().n().i(this, new z() { // from class: h6.b
            @Override // androidx.lifecycle.z
            public final void B(Object obj) {
                FullscreenImageActivity.g(FullscreenImageActivity.this, (g7.c) obj);
            }
        });
    }

    @Override // android.app.Activity
    public boolean onCreateOptionsMenu(Menu menu) {
        l.f(menu, "menu");
        getMenuInflater().inflate(R.menu.image, menu);
        return super.onCreateOptionsMenu(menu);
    }

    @Override // android.app.Activity
    public boolean onOptionsItemSelected(MenuItem menuItem) {
        l.f(menuItem, "item");
        if (menuItem.getItemId() == R.id.action_save) {
            h(e());
        }
        return super.onOptionsItemSelected(menuItem);
    }
}
