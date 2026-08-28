package j6;

import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.view.View;
import android.widget.ProgressBar;
import androidx.fragment.app.Fragment;
import androidx.fragment.app.c0;
import androidx.lifecycle.i0;
import androidx.lifecycle.l0;
import androidx.lifecycle.m0;
import androidx.lifecycle.n0;
import androidx.lifecycle.z;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import com.anslayer.R;
import com.anslayer.api.endpoint.UserEndpoint;
import com.anslayer.ui.profile.people.anime.BrowsePeopleAnimesActivity;
import com.anslayer.widget.ErrorView;
import com.twitter.sdk.android.core.identity.AuthHandler;
import com.zhuinden.fragmentviewbindingdelegatekt.FragmentViewBindingDelegate;
import g7.c;
import ic.l;
import io.wax911.support.SupportExtentionKt;
import j4.l1;
import java.util.List;
import jc.j;
import jc.m;
import jc.s;
import jc.y;
import vb.n;
import vb.p;

/* compiled from: PeopleListFragment.kt */
/* loaded from: classes.dex */
public final class f extends Fragment {

    /* renamed from: i, reason: collision with root package name */
    public static final /* synthetic */ oc.g<Object>[] f8905i = {y.f(new s(f.class, "binding", "getBinding()Lcom/anslayer/databinding/PeopleListFragmentBinding;", 0))};

    /* renamed from: f, reason: collision with root package name */
    public final FragmentViewBindingDelegate f8906f;

    /* renamed from: g, reason: collision with root package name */
    public final vb.e f8907g;

    /* renamed from: h, reason: collision with root package name */
    public j6.c f8908h;

    /* compiled from: PeopleListFragment.kt */
    /* loaded from: classes.dex */
    public /* synthetic */ class a extends j implements l<View, l1> {

        /* renamed from: o, reason: collision with root package name */
        public static final a f8909o = new a();

        public a() {
            super(1, l1.class, "bind", "bind(Landroid/view/View;)Lcom/anslayer/databinding/PeopleListFragmentBinding;", 0);
        }

        @Override // ic.l
        /* renamed from: k, reason: merged with bridge method [inline-methods] */
        public final l1 invoke(View view) {
            jc.l.f(view, "p0");
            return l1.a(view);
        }
    }

    /* compiled from: ErrorView.kt */
    /* loaded from: classes.dex */
    public static final class b implements View.OnClickListener {
        public b() {
        }

        @Override // android.view.View.OnClickListener
        public final void onClick(View view) {
            ProgressBar progressBar = f.this.H().f8517c;
            jc.l.e(progressBar, "binding.progress");
            progressBar.setVisibility(0);
            ErrorView errorView = f.this.H().f8516b;
            jc.l.e(errorView, "binding.errorView");
            errorView.setVisibility(8);
            f.this.K();
        }
    }

    /* compiled from: PeopleListFragment.kt */
    /* loaded from: classes.dex */
    public static final class c extends m implements l<Integer, p> {

        /* renamed from: f, reason: collision with root package name */
        public final /* synthetic */ View f8911f;

        /* renamed from: g, reason: collision with root package name */
        public final /* synthetic */ f f8912g;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public c(View view, f fVar) {
            super(1);
            this.f8911f = view;
            this.f8912g = fVar;
        }

        public final void a(int i10) {
            String string = this.f8911f.getContext().getString(i10);
            jc.l.e(string, "view.context.getString(titleRes)");
            switch (i10) {
                case R.string.currently_watching /* 2131886228 */:
                    this.f8912g.J("watching", string);
                    return;
                case R.string.dropped /* 2131886239 */:
                    this.f8912g.J("dropped", string);
                    return;
                case R.string.favorite /* 2131886277 */:
                    this.f8912g.J("favorites", string);
                    return;
                case R.string.on_hold /* 2131886423 */:
                    this.f8912g.J("on_hold", string);
                    return;
                case R.string.plan_to_watch /* 2131886433 */:
                    this.f8912g.J("plan_to_watch", string);
                    return;
                case R.string.watched /* 2131886595 */:
                    this.f8912g.J("watched", string);
                    return;
                default:
                    return;
            }
        }

        @Override // ic.l
        public /* bridge */ /* synthetic */ p invoke(Integer num) {
            a(num.intValue());
            return p.f15031a;
        }
    }

    /* compiled from: FragmentViewModelLazy.kt */
    /* loaded from: classes.dex */
    public static final class d extends m implements ic.a<Fragment> {

        /* renamed from: f, reason: collision with root package name */
        public final /* synthetic */ Fragment f8913f;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public d(Fragment fragment) {
            super(0);
            this.f8913f = fragment;
        }

        @Override // ic.a
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final Fragment invoke() {
            return this.f8913f;
        }
    }

    /* compiled from: FragmentViewModelLazy.kt */
    /* loaded from: classes.dex */
    public static final class e extends m implements ic.a<m0> {

        /* renamed from: f, reason: collision with root package name */
        public final /* synthetic */ ic.a f8914f;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public e(ic.a aVar) {
            super(0);
            this.f8914f = aVar;
        }

        @Override // ic.a
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final m0 invoke() {
            m0 viewModelStore = ((n0) this.f8914f.invoke()).getViewModelStore();
            jc.l.e(viewModelStore, "ownerProducer().viewModelStore");
            return viewModelStore;
        }
    }

    /* compiled from: PeopleListFragment.kt */
    /* renamed from: j6.f$f, reason: collision with other inner class name */
    /* loaded from: classes.dex */
    public static final class C0162f extends m implements ic.a<l0.b> {

        /* compiled from: PeopleListFragment.kt */
        /* renamed from: j6.f$f$a */
        /* loaded from: classes.dex */
        public static final class a extends l0.d {

            /* renamed from: b, reason: collision with root package name */
            public final /* synthetic */ f f8916b;

            public a(f fVar) {
                this.f8916b = fVar;
            }

            @Override // androidx.lifecycle.l0.d, androidx.lifecycle.l0.b
            public <T extends i0> T a(Class<T> cls) {
                jc.l.f(cls, "modelClass");
                long j10 = this.f8916b.requireArguments().getLong(AuthHandler.EXTRA_USER_ID);
                Context context = this.f8916b.getContext();
                return new g(context == null ? null : (UserEndpoint) z3.b.f17284d.getInstance(context).b(UserEndpoint.class), j10);
            }
        }

        public C0162f() {
            super(0);
        }

        @Override // ic.a
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final l0.b invoke() {
            return new a(f.this);
        }
    }

    public f() {
        super(R.layout.people_list_fragment);
        this.f8906f = lb.a.a(this, a.f8909o);
        this.f8907g = c0.a(this, y.b(g.class), new e(new d(this)), new C0162f());
    }

    public static final void M(f fVar, g7.c cVar) {
        jc.l.f(fVar, "this$0");
        if (cVar == null) {
            return;
        }
        ErrorView errorView = fVar.H().f8516b;
        jc.l.e(errorView, "binding.errorView");
        errorView.setVisibility(8);
        ProgressBar progressBar = fVar.H().f8517c;
        jc.l.e(progressBar, "binding.progress");
        progressBar.setVisibility(8);
        RecyclerView recyclerView = fVar.H().f8518d;
        jc.l.e(recyclerView, "binding.recycler");
        recyclerView.setVisibility(0);
        if (!(cVar instanceof c.C0133c)) {
            if (cVar instanceof c.a) {
                fVar.L(((c.a) cVar).a());
            }
        } else {
            j6.c cVar2 = fVar.f8908h;
            if (cVar2 == null) {
                return;
            }
            cVar2.h((List) ((c.C0133c) cVar).a());
        }
    }

    public final l1 H() {
        return (l1) this.f8906f.c(this, f8905i[0]);
    }

    public final g I() {
        return (g) this.f8907g.getValue();
    }

    public final void J(String str, String str2) {
        Bundle a10 = m0.b.a(n.a("request_param", com.github.salomonbrys.kotson.a.b(n.a("list_type", str), n.a(AuthHandler.EXTRA_USER_ID, Long.valueOf(I().f())), n.a("_order_by", "latest_first")).toString()), n.a("list_type", str), n.a("arg_title", str2));
        androidx.fragment.app.e activity = getActivity();
        if (activity == null) {
            return;
        }
        Intent intent = new Intent(activity, (Class<?>) BrowsePeopleAnimesActivity.class);
        intent.putExtras(a10);
        startActivity(intent);
        activity.overridePendingTransition(R.anim.activity_open_enter, R.anim.activity_open_exit);
    }

    public final void K() {
        I().g(true);
        I().b();
    }

    public final void L(Throwable th) {
        RecyclerView recyclerView = H().f8518d;
        jc.l.e(recyclerView, "binding.recycler");
        recyclerView.setVisibility(8);
        ErrorView errorView = H().f8516b;
        jc.l.e(errorView, "binding.errorView");
        boolean z10 = false;
        errorView.setVisibility(0);
        androidx.fragment.app.e activity = getActivity();
        if (activity != null && !SupportExtentionKt.isConnectedToNetwork(activity)) {
            z10 = true;
        }
        if (z10) {
            H().f8516b.b();
        } else {
            H().f8516b.c();
        }
    }

    @Override // androidx.fragment.app.Fragment
    public void onDestroyView() {
        this.f8908h = null;
        super.onDestroyView();
    }

    @Override // androidx.fragment.app.Fragment
    public void onResume() {
        super.onResume();
        if (I().c()) {
            return;
        }
        K();
    }

    @Override // androidx.fragment.app.Fragment
    public void onViewCreated(View view, Bundle bundle) {
        jc.l.f(view, "view");
        super.onViewCreated(view, bundle);
        RecyclerView recyclerView = H().f8518d;
        jc.l.e(recyclerView, "binding.recycler");
        recyclerView.setVisibility(8);
        ProgressBar progressBar = H().f8517c;
        jc.l.e(progressBar, "binding.progress");
        progressBar.setVisibility(0);
        H().f8516b.getBinding().f8511b.setOnClickListener(new b());
        this.f8908h = new j6.c(new c(view, this));
        LinearLayoutManager linearLayoutManager = new LinearLayoutManager(view.getContext(), 1, false);
        H().f8518d.setNestedScrollingEnabled(true);
        H().f8518d.setLayoutManager(linearLayoutManager);
        H().f8518d.setAdapter(this.f8908h);
        RecyclerView recyclerView2 = H().f8518d;
        jc.l.e(recyclerView2, "binding.recycler");
        l7.p.b(recyclerView2);
        I().d().i(getViewLifecycleOwner(), new z() { // from class: j6.e
            @Override // androidx.lifecycle.z
            public final void B(Object obj) {
                f.M(f.this, (g7.c) obj);
            }
        });
    }
}
