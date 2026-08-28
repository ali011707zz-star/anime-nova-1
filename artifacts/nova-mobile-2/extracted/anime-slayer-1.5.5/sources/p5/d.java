package p5;

import android.content.Context;
import android.content.SharedPreferences;
import android.graphics.drawable.Drawable;
import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import androidx.lifecycle.k;
import androidx.recyclerview.widget.RecyclerView;
import androidx.recyclerview.widget.StaggeredGridLayoutManager;
import com.anslayer.R;
import com.anslayer.widget.SupportRefreshLayout;
import com.google.android.material.snackbar.Snackbar;
import com.nguyenhoanglam.progresslayout.ProgressLayout;
import io.wax911.support.SupportExtentionKt;
import io.wax911.support.base.event.RecyclerLoadListener;
import io.wax911.support.custom.recycler.SupportRecyclerView;
import io.wax911.support.util.SupportNotifyUtil;
import io.wax911.support.util.SupportStateUtil;
import java.util.List;
import jc.l;
import l7.f;
import r5.b;
import vb.p;

/* compiled from: SupportFragmentList.kt */
/* loaded from: classes.dex */
public abstract class d<M, P extends r5.b<?>, VM> extends a<M, P, VM> implements RecyclerLoadListener, SupportRefreshLayout.m {

    /* renamed from: j, reason: collision with root package name */
    public String f12041j;

    /* renamed from: k, reason: collision with root package name */
    public ProgressLayout f12042k;

    /* renamed from: l, reason: collision with root package name */
    public SupportRefreshLayout f12043l;

    /* renamed from: m, reason: collision with root package name */
    public SupportRecyclerView f12044m;

    /* renamed from: n, reason: collision with root package name */
    public final int f12045n = R.layout.support_list;

    /* renamed from: o, reason: collision with root package name */
    public final View.OnClickListener f12046o = new View.OnClickListener() { // from class: p5.c
        @Override // android.view.View.OnClickListener
        public final void onClick(View view) {
            d.j0(d.this, view);
        }
    };

    /* renamed from: p, reason: collision with root package name */
    public final View.OnClickListener f12047p = new View.OnClickListener() { // from class: p5.b
        @Override // android.view.View.OnClickListener
        public final void onClick(View view) {
            d.i0(d.this, view);
        }
    };

    public static final void i0(d dVar, View view) {
        l.f(dVar, "this$0");
        dVar.c0();
        SupportRefreshLayout supportRefreshLayout = dVar.f12043l;
        if (supportRefreshLayout != null) {
            supportRefreshLayout.setLoading(true);
        }
        dVar.e();
    }

    public static final void j0(d dVar, View view) {
        l.f(dVar, "this$0");
        dVar.c0();
        ProgressLayout progressLayout = dVar.f12042k;
        if (progressLayout != null) {
            SupportExtentionKt.showContentLoading(progressLayout);
        }
        dVar.b();
    }

    @Override // com.anslayer.widget.SupportRefreshLayout.m
    public void C() {
    }

    public final p O() {
        if (p().isPager()) {
            SupportRecyclerView supportRecyclerView = this.f12044m;
            if (l.a(supportRecyclerView == null ? null : Boolean.valueOf(supportRecyclerView.hasOnScrollListener()), Boolean.FALSE)) {
                P p10 = p();
                SupportRecyclerView supportRecyclerView2 = this.f12044m;
                RecyclerView.p layoutManager = supportRecyclerView2 == null ? null : supportRecyclerView2.getLayoutManager();
                if (layoutManager != null) {
                    p10.initListener((StaggeredGridLayoutManager) layoutManager, this);
                    SupportRecyclerView supportRecyclerView3 = this.f12044m;
                    if (supportRecyclerView3 == null) {
                        return null;
                    }
                    supportRecyclerView3.addOnScrollListener(p());
                } else {
                    throw new NullPointerException("null cannot be cast to non-null type androidx.recyclerview.widget.StaggeredGridLayoutManager");
                }
            }
        }
        return p.f15031a;
    }

    public final void P(String str) {
        if (H(k.c.RESUMED)) {
            SupportRefreshLayout supportRefreshLayout = this.f12043l;
            if (supportRefreshLayout != null) {
                f.b(supportRefreshLayout);
            }
            if (p().isFirstPage()) {
                ProgressLayout progressLayout = this.f12042k;
                if (progressLayout != null) {
                    SupportExtentionKt.showLoadedContent(progressLayout);
                }
                ProgressLayout progressLayout2 = this.f12042k;
                if (progressLayout2 == null) {
                    return;
                }
                SupportNotifyUtil.Companion companion = SupportNotifyUtil.Companion;
                l.c(str);
                J(companion.make(progressLayout2, str, -2).setAction(d0(), this.f12047p));
                Snackbar E = E();
                if (E == null) {
                    return;
                }
                E.show();
                return;
            }
            ProgressLayout progressLayout3 = this.f12042k;
            if (progressLayout3 == null) {
                return;
            }
            Context context = getContext();
            Drawable compatDrawable = context == null ? null : SupportExtentionKt.getCompatDrawable(context, R.drawable.ic_support_empty_state);
            Context context2 = getContext();
            progressLayout3.n(compatDrawable, str, context2 != null ? context2.getString(d0()) : null, this.f12046o);
        }
    }

    public final p Q() {
        if (p().isPager()) {
            SupportRecyclerView supportRecyclerView = this.f12044m;
            if (supportRecyclerView == null) {
                return null;
            }
            supportRecyclerView.clearOnScrollListeners();
        }
        return p.f15031a;
    }

    public int R() {
        return this.f12045n;
    }

    public abstract int S();

    public final ProgressLayout T() {
        return this.f12042k;
    }

    public final View.OnClickListener U() {
        return this.f12046o;
    }

    public final SupportRecyclerView V() {
        return this.f12044m;
    }

    public final SupportRefreshLayout W() {
        return this.f12043l;
    }

    public abstract n5.d<M> X();

    public abstract void Y(Bundle bundle);

    public final void Z(int i10) {
        if (X().j()) {
            X().s(p());
            X().p(this);
            SupportRecyclerView supportRecyclerView = this.f12044m;
            if ((supportRecyclerView != null ? supportRecyclerView.getAdapter() : null) == null) {
                X().t(F());
                SupportRecyclerView supportRecyclerView2 = this.f12044m;
                if (supportRecyclerView2 != null) {
                    supportRecyclerView2.setAdapter(X());
                }
            } else {
                SupportRefreshLayout supportRefreshLayout = this.f12043l;
                if (supportRefreshLayout != null) {
                    f.b(supportRefreshLayout);
                }
                String str = this.f12041j;
                if (!(str == null || str.length() == 0)) {
                    X().getFilter().filter(this.f12041j);
                }
            }
            ProgressLayout progressLayout = this.f12042k;
            if (progressLayout == null) {
                return;
            }
            SupportExtentionKt.showLoadedContent(progressLayout);
            return;
        }
        Context context = getContext();
        P(context != null ? context.getString(i10) : null);
    }

    public boolean a0(String str) {
        l.f(str, "key");
        return true;
    }

    @Override // com.anslayer.widget.SupportRefreshLayout.m
    public void b() {
        SupportRefreshLayout supportRefreshLayout;
        SupportRefreshLayout supportRefreshLayout2 = this.f12043l;
        if (l.a(supportRefreshLayout2 == null ? null : Boolean.valueOf(supportRefreshLayout2.x()), Boolean.FALSE)) {
            ProgressLayout progressLayout = this.f12042k;
            if (((progressLayout == null || progressLayout.h()) ? false : true) && (supportRefreshLayout = this.f12043l) != null) {
                supportRefreshLayout.setRefreshing(true);
            }
        }
        p().setPagingLimit(false);
        p().onRefreshPage();
        e();
    }

    public void b0(List<? extends M> list, int i10) {
        if (!(list == null || list.isEmpty())) {
            boolean isPager = p().isPager();
            if (isPager) {
                SupportRefreshLayout supportRefreshLayout = this.f12043l;
                Boolean valueOf = supportRefreshLayout == null ? null : Boolean.valueOf(supportRefreshLayout.x());
                if (l.a(valueOf, Boolean.TRUE)) {
                    X().onItemsInserted(list);
                } else if (l.a(valueOf, Boolean.FALSE)) {
                    X().onItemRangeInserted(list);
                }
            } else if (!isPager) {
                X().onItemsInserted(list);
            }
            SupportRefreshLayout supportRefreshLayout2 = this.f12043l;
            if (supportRefreshLayout2 != null) {
                f.b(supportRefreshLayout2);
            }
            m();
            return;
        }
        if (p().isPager()) {
            e0();
        }
        if (!X().j()) {
            k7.b.m(getContext(), this.f12042k, i10, d0(), this.f12046o);
        }
        SupportRefreshLayout supportRefreshLayout3 = this.f12043l;
        if (supportRefreshLayout3 == null) {
            return;
        }
        f.b(supportRefreshLayout3);
    }

    public final void c0() {
        SupportRefreshLayout supportRefreshLayout;
        SupportRefreshLayout supportRefreshLayout2 = this.f12043l;
        if ((supportRefreshLayout2 == null ? null : Boolean.valueOf(supportRefreshLayout2.x())) != null && (supportRefreshLayout = this.f12043l) != null) {
            supportRefreshLayout.setRefreshing(false);
        }
        Snackbar E = E();
        if (E != null && E.isShown()) {
            E.dismiss();
        }
    }

    public abstract int d0();

    public final void e0() {
        if (p().getCurrentPage() != 0) {
            SupportRefreshLayout supportRefreshLayout = this.f12043l;
            if (supportRefreshLayout != null) {
                supportRefreshLayout.setLoading(false);
            }
            p().setPagingLimit(true);
        }
    }

    public final void f0(ProgressLayout progressLayout) {
        this.f12042k = progressLayout;
    }

    public final void g0(SupportRecyclerView supportRecyclerView) {
        this.f12044m = supportRecyclerView;
    }

    public final void h0(SupportRefreshLayout supportRefreshLayout) {
        this.f12043l = supportRefreshLayout;
    }

    @Override // p5.a, androidx.fragment.app.Fragment
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        Y(bundle);
    }

    @Override // androidx.fragment.app.Fragment
    public View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        l.f(layoutInflater, "inflater");
        View inflate = layoutInflater.inflate(R(), viewGroup, false);
        f0((ProgressLayout) inflate.findViewById(R.id.progressLayout));
        h0((SupportRefreshLayout) inflate.findViewById(R.id.supportRefreshLayout));
        g0((SupportRecyclerView) inflate.findViewById(R.id.supportRecyclerView));
        return inflate;
    }

    @Override // io.wax911.support.base.event.RecyclerLoadListener
    public void onLoadMore() {
        SupportRefreshLayout supportRefreshLayout = this.f12043l;
        if (supportRefreshLayout != null) {
            supportRefreshLayout.setLoading(true);
        }
        e();
    }

    @Override // p5.a, androidx.fragment.app.Fragment
    public void onPause() {
        Q();
        super.onPause();
    }

    @Override // p5.a, androidx.fragment.app.Fragment
    public void onResume() {
        super.onResume();
        O();
    }

    @Override // androidx.fragment.app.Fragment
    public void onSaveInstanceState(Bundle bundle) {
        l.f(bundle, "outState");
        super.onSaveInstanceState(bundle);
        SupportStateUtil supportStateUtil = SupportStateUtil.INSTANCE;
        bundle.putInt(supportStateUtil.getKey_columns(), S());
        bundle.putBoolean(supportStateUtil.getKey_pagination(), p().isPager());
        bundle.putBoolean(supportStateUtil.getKey_pagination_limit(), p().isPagingLimit());
        bundle.putInt(supportStateUtil.getArg_page(), p().getCurrentPage());
        bundle.putInt(supportStateUtil.getArg_page_offset(), p().getCurrentOffset());
    }

    @Override // p5.a, android.content.SharedPreferences.OnSharedPreferenceChangeListener
    public void onSharedPreferenceChanged(SharedPreferences sharedPreferences, String str) {
        l.f(sharedPreferences, "sharedPreferences");
        l.f(str, "key");
        super.onSharedPreferenceChanged(sharedPreferences, str);
        if (a0(str)) {
            SupportRefreshLayout supportRefreshLayout = this.f12043l;
            if (supportRefreshLayout != null) {
                supportRefreshLayout.setRefreshing(true);
            }
            b();
        }
    }

    @Override // p5.a, androidx.fragment.app.Fragment
    public void onStart() {
        super.onStart();
        ProgressLayout progressLayout = this.f12042k;
        if (progressLayout != null) {
            SupportExtentionKt.showContentLoading(progressLayout);
        }
        if (!X().j()) {
            b();
        } else {
            m();
        }
    }

    @Override // p5.a, androidx.fragment.app.Fragment
    public void onViewCreated(View view, Bundle bundle) {
        l.f(view, "view");
        SupportRecyclerView supportRecyclerView = this.f12044m;
        if (supportRecyclerView != null) {
            supportRecyclerView.setHasFixedSize(true);
        }
        SupportRecyclerView supportRecyclerView2 = this.f12044m;
        if (supportRecyclerView2 != null) {
            supportRecyclerView2.setNestedScrollingEnabled(true);
        }
        SupportRecyclerView supportRecyclerView3 = this.f12044m;
        if (supportRecyclerView3 != null) {
            supportRecyclerView3.setLayoutManager(new StaggeredGridLayoutManager(getResources().getInteger(S()), 1));
        }
        SupportRefreshLayout supportRefreshLayout = this.f12043l;
        if (supportRefreshLayout == null) {
            return;
        }
        f.a(supportRefreshLayout, getActivity(), p());
        supportRefreshLayout.setOnRefreshAndLoadListener(this);
    }

    @Override // androidx.fragment.app.Fragment
    public void onViewStateRestored(Bundle bundle) {
        super.onViewStateRestored(bundle);
        if (bundle == null) {
            return;
        }
        P p10 = p();
        SupportStateUtil supportStateUtil = SupportStateUtil.INSTANCE;
        p10.setPager(bundle.getBoolean(supportStateUtil.getKey_pagination()));
        p().setPagingLimit(bundle.getBoolean(supportStateUtil.getKey_pagination_limit()));
        p().setCurrentPage(bundle.getInt(supportStateUtil.getArg_page()));
        p().setCurrentOffset(bundle.getInt(supportStateUtil.getArg_page_offset()));
    }
}
