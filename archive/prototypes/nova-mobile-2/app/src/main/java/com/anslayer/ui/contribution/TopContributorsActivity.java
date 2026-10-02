package com.anslayer.ui.contribution;

import android.os.Bundle;
import android.view.Menu;
import android.view.MenuItem;
import android.view.View;
import android.widget.ProgressBar;
import androidx.activity.ComponentActivity;
import androidx.lifecycle.k0;
import androidx.lifecycle.l0;
import androidx.lifecycle.m0;
import androidx.lifecycle.z;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import androidx.swiperefreshlayout.widget.SwipeRefreshLayout;
import com.anslayer.R;
import com.anslayer.ui.contribution.TopContributorsActivity;
import com.anslayer.ui.profile.people.PeopleProfileActivity;
import com.anslayer.ui.profile.self.ProfileActivity;
import com.anslayer.widget.ErrorView;
import com.google.android.material.dialog.MaterialAlertDialogBuilder;
import g7.c;
import ic.l;
import io.wax911.support.SupportExtentionKt;
import j4.q2;
import java.util.List;
import jc.m;
import jc.y;
import p4.h;
import vb.f;
import vb.p;
import w5.g;

/* compiled from: TopContributorsActivity.kt */
/* loaded from: classes.dex */
public final class TopContributorsActivity extends o5.a<q2> {

    /* renamed from: m, reason: collision with root package name */
    public w5.d f4179m;

    /* renamed from: l, reason: collision with root package name */
    public final vb.e f4178l = new k0(y.b(g.class), new c(this), new e());

    /* renamed from: n, reason: collision with root package name */
    public final vb.e f4180n = f.a(new d());

    /* compiled from: ErrorView.kt */
    /* loaded from: classes.dex */
    public static final class a implements View.OnClickListener {
        public a() {
        }

        @Override // android.view.View.OnClickListener
        public final void onClick(View view) {
            TopContributorsActivity.this.s().d();
        }
    }

    /* compiled from: TopContributorsActivity.kt */
    /* loaded from: classes.dex */
    public static final class b extends m implements l<h, p> {
        public b() {
            super(1);
        }

        public final void a(h hVar) {
            jc.l.f(hVar, "contributor");
            if (TopContributorsActivity.this.r().D() == hVar.h() && TopContributorsActivity.this.g().b()) {
                TopContributorsActivity topContributorsActivity = TopContributorsActivity.this;
                topContributorsActivity.startActivity(ProfileActivity.f4249l.a(topContributorsActivity));
            } else {
                TopContributorsActivity.this.startActivity(PeopleProfileActivity.f4248l.a(TopContributorsActivity.this, hVar.h()));
            }
        }

        @Override // ic.l
        public /* bridge */ /* synthetic */ p invoke(h hVar) {
            a(hVar);
            return p.f15031a;
        }
    }

    /* compiled from: ActivityViewModelLazy.kt */
    /* loaded from: classes.dex */
    public static final class c extends m implements ic.a<m0> {

        /* renamed from: f, reason: collision with root package name */
        public final /* synthetic */ ComponentActivity f4183f;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public c(ComponentActivity componentActivity) {
            super(0);
            this.f4183f = componentActivity;
        }

        @Override // ic.a
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final m0 invoke() {
            m0 viewModelStore = this.f4183f.getViewModelStore();
            jc.l.e(viewModelStore, "viewModelStore");
            return viewModelStore;
        }
    }

    /* compiled from: TopContributorsActivity.kt */
    /* loaded from: classes.dex */
    public static final class d extends m implements ic.a<w4.e> {
        public d() {
            super(0);
        }

        @Override // ic.a
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final w4.e invoke() {
            return TopContributorsActivity.this.g().N().get();
        }
    }

    /* compiled from: TopContributorsActivity.kt */
    /* loaded from: classes.dex */
    public static final class e extends m implements ic.a<l0.b> {
        public e() {
            super(0);
        }

        @Override // ic.a
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final l0.b invoke() {
            return new g.a(TopContributorsActivity.this);
        }
    }

    public static final void t(TopContributorsActivity topContributorsActivity, View view) {
        jc.l.f(topContributorsActivity, "this$0");
        topContributorsActivity.onBackPressed();
    }

    public static final void u(TopContributorsActivity topContributorsActivity) {
        jc.l.f(topContributorsActivity, "this$0");
        topContributorsActivity.s().d();
    }

    public static final void v(TopContributorsActivity topContributorsActivity, g7.c cVar) {
        jc.l.f(topContributorsActivity, "this$0");
        if (cVar == null) {
            return;
        }
        jc.l.e(cVar, "result");
        if (cVar instanceof c.b) {
            topContributorsActivity.y();
        } else if (cVar instanceof c.C0133c) {
            topContributorsActivity.x((List) ((c.C0133c) cVar).a());
        } else if (cVar instanceof c.a) {
            topContributorsActivity.w(((c.a) cVar).a());
        }
    }

    @Override // o5.a, androidx.fragment.app.e, androidx.activity.ComponentActivity, e0.g, android.app.Activity
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        q2 c10 = q2.c(getLayoutInflater());
        jc.l.e(c10, "inflate(layoutInflater)");
        j(c10);
        setContentView(c().b());
        setSupportActionBar(c().f8663f);
        androidx.appcompat.app.a supportActionBar = getSupportActionBar();
        if (supportActionBar != null) {
            supportActionBar.s(true);
        }
        c().f8663f.setNavigationOnClickListener(new View.OnClickListener() { // from class: w5.a
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                TopContributorsActivity.t(TopContributorsActivity.this, view);
            }
        });
        this.f4179m = new w5.d(new b());
        c().f8661d.setLayoutManager(new LinearLayoutManager(this));
        c().f8661d.setHasFixedSize(true);
        c().f8661d.setAdapter(this.f4179m);
        c().f8662e.setOnRefreshListener(new SwipeRefreshLayout.j() { // from class: w5.c
            @Override // androidx.swiperefreshlayout.widget.SwipeRefreshLayout.j
            public final void b() {
                TopContributorsActivity.u(TopContributorsActivity.this);
            }
        });
        c().f8659b.getBinding().f8511b.setOnClickListener(new a());
        s().c().i(this, new z() { // from class: w5.b
            @Override // androidx.lifecycle.z
            public final void B(Object obj) {
                TopContributorsActivity.v(TopContributorsActivity.this, (g7.c) obj);
            }
        });
    }

    @Override // android.app.Activity
    public boolean onCreateOptionsMenu(Menu menu) {
        jc.l.f(menu, "menu");
        getMenuInflater().inflate(R.menu.contributors, menu);
        return super.onCreateOptionsMenu(menu);
    }

    @Override // androidx.appcompat.app.e, androidx.fragment.app.e, android.app.Activity
    public void onDestroy() {
        super.onDestroy();
        this.f4179m = null;
    }

    @Override // android.app.Activity
    public boolean onOptionsItemSelected(MenuItem menuItem) {
        jc.l.f(menuItem, "item");
        if (menuItem.getItemId() == R.id.action_info) {
            z();
        }
        return super.onOptionsItemSelected(menuItem);
    }

    public final w4.e r() {
        return (w4.e) this.f4180n.getValue();
    }

    public final g s() {
        return (g) this.f4178l.getValue();
    }

    public final void w(Exception exc) {
        ProgressBar progressBar = c().f8660c;
        jc.l.e(progressBar, "binding.progress");
        progressBar.setVisibility(8);
        ErrorView errorView = c().f8659b;
        jc.l.e(errorView, "binding.errorView");
        errorView.setVisibility(0);
        c().f8662e.setRefreshing(false);
        RecyclerView recyclerView = c().f8661d;
        jc.l.e(recyclerView, "binding.recycler");
        recyclerView.setVisibility(8);
        if (SupportExtentionKt.isConnectedToNetwork(this)) {
            c().f8659b.c();
        } else {
            c().f8659b.b();
        }
    }

    public final void x(List<h> list) {
        ProgressBar progressBar = c().f8660c;
        jc.l.e(progressBar, "binding.progress");
        progressBar.setVisibility(8);
        ErrorView errorView = c().f8659b;
        jc.l.e(errorView, "binding.errorView");
        errorView.setVisibility(8);
        c().f8662e.setRefreshing(false);
        RecyclerView recyclerView = c().f8661d;
        jc.l.e(recyclerView, "binding.recycler");
        recyclerView.setVisibility(0);
        w5.d dVar = this.f4179m;
        if (dVar != null) {
            dVar.h(list);
        }
        if (list.isEmpty()) {
            ErrorView errorView2 = c().f8659b;
            jc.l.e(errorView2, "binding.errorView");
            errorView2.setVisibility(0);
            c().f8659b.a("قريباً");
        }
    }

    public final void y() {
        ProgressBar progressBar = c().f8660c;
        jc.l.e(progressBar, "binding.progress");
        progressBar.setVisibility(0);
        ErrorView errorView = c().f8659b;
        jc.l.e(errorView, "binding.errorView");
        errorView.setVisibility(8);
        c().f8662e.setRefreshing(false);
        RecyclerView recyclerView = c().f8661d;
        jc.l.e(recyclerView, "binding.recycler");
        recyclerView.setVisibility(8);
    }

    public final void z() {
        new MaterialAlertDialogBuilder(this).setMessage((CharSequence) "المساهمين هم الاشخاص الذي يساعدون في اضافة و تعديل المحتوى في التطبيق").show();
    }
}
