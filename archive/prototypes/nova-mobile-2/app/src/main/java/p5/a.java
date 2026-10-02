package p5;

import android.content.SharedPreferences;
import android.os.Bundle;
import android.view.ActionMode;
import android.view.Menu;
import android.view.MenuInflater;
import android.view.MenuItem;
import android.view.View;
import androidx.fragment.app.Fragment;
import androidx.lifecycle.k;
import com.google.android.material.snackbar.Snackbar;
import io.wax911.support.base.event.ActionModeListener;
import io.wax911.support.base.event.ItemClickListener;
import io.wax911.support.util.SupportActionUtil;
import jc.l;
import jc.m;
import n5.a;
import r5.b;
import rc.c2;
import rc.d0;
import rc.g1;
import rc.h2;
import rc.q0;
import vb.e;
import vb.f;
import vb.g;

/* compiled from: SupportFragment.kt */
/* loaded from: classes.dex */
public abstract class a<M, P extends r5.b<?>, VM> extends Fragment implements q0, ActionModeListener, n5.a<VM, P>, ItemClickListener<M> {

    /* renamed from: f, reason: collision with root package name */
    public c2 f12034f;

    /* renamed from: g, reason: collision with root package name */
    public int f12035g;

    /* renamed from: h, reason: collision with root package name */
    public Snackbar f12036h;

    /* renamed from: i, reason: collision with root package name */
    public final e f12037i = f.b(g.NONE, new C0297a(this));

    /* compiled from: SupportFragment.kt */
    /* renamed from: p5.a$a, reason: collision with other inner class name */
    /* loaded from: classes.dex */
    public static final class C0297a extends m implements ic.a<SupportActionUtil<M>> {

        /* renamed from: f, reason: collision with root package name */
        public final /* synthetic */ a<M, P, VM> f12038f;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C0297a(a<M, P, VM> aVar) {
            super(0);
            this.f12038f = aVar;
        }

        @Override // ic.a
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final SupportActionUtil<M> invoke() {
            return new SupportActionUtil<>(this.f12038f, false, 2, null);
        }
    }

    public final Snackbar E() {
        return this.f12036h;
    }

    public final SupportActionUtil<M> F() {
        return (SupportActionUtil) this.f12037i.getValue();
    }

    public String G() {
        String fragment = toString();
        l.e(fragment, "this.toString()");
        return fragment;
    }

    public final boolean H(k.c cVar) {
        l.f(cVar, "state");
        return getLifecycle().b().a(cVar);
    }

    public final void I(int i10) {
        this.f12035g = i10;
    }

    public final void J(Snackbar snackbar) {
        this.f12036h = snackbar;
    }

    public boolean K() {
        return a.C0270a.a(this);
    }

    public boolean L() {
        return a.C0270a.b(this);
    }

    @Override // rc.q0
    public ac.g getCoroutineContext() {
        c2 c2Var = this.f12034f;
        if (c2Var == null) {
            l.v("job");
            c2Var = null;
        }
        return c2Var.plus(g1.a());
    }

    public boolean onActionItemClicked(ActionMode actionMode, MenuItem menuItem) {
        l.f(actionMode, "mode");
        l.f(menuItem, "item");
        return false;
    }

    @Override // androidx.fragment.app.Fragment
    public void onCreate(Bundle bundle) {
        d0 b10;
        super.onCreate(bundle);
        b10 = h2.b(null, 1, null);
        this.f12034f = b10;
        setRetainInstance(true);
    }

    public boolean onCreateActionMode(ActionMode actionMode, Menu menu) {
        l.f(actionMode, "mode");
        l.f(menu, "menu");
        return F().isEnabled();
    }

    @Override // androidx.fragment.app.Fragment
    public void onCreateOptionsMenu(Menu menu, MenuInflater menuInflater) {
        l.f(menu, "menu");
        l.f(menuInflater, "inflater");
        int i10 = this.f12035g;
        if (i10 != 0) {
            menuInflater.inflate(i10, menu);
        }
    }

    @Override // androidx.fragment.app.Fragment
    public void onDestroy() {
        c2 c2Var = this.f12034f;
        if (c2Var == null) {
            l.v("job");
            c2Var = null;
        }
        c2.a.a(c2Var, null, 1, null);
        p().onDestroy();
        super.onDestroy();
    }

    @Override // android.view.ActionMode.Callback
    public void onDestroyActionMode(ActionMode actionMode) {
        l.f(actionMode, "mode");
        F().clearSelection();
    }

    public void onItemClick(View view, s3.c<M> cVar) {
        l.f(view, "target");
        l.f(cVar, "data");
    }

    public void onItemLongClick(View view, s3.c<M> cVar) {
        l.f(view, "target");
        l.f(cVar, "data");
    }

    @Override // androidx.fragment.app.Fragment
    public void onPause() {
        p().onPause(this);
        super.onPause();
    }

    @Override // android.view.ActionMode.Callback
    public boolean onPrepareActionMode(ActionMode actionMode, Menu menu) {
        l.f(actionMode, "mode");
        l.f(menu, "menu");
        return false;
    }

    @Override // androidx.fragment.app.Fragment
    public void onResume() {
        super.onResume();
        p().onResume(this);
    }

    public void onSelectionChanged(ActionMode actionMode, int i10) {
    }

    @Override // android.content.SharedPreferences.OnSharedPreferenceChangeListener
    public void onSharedPreferenceChanged(SharedPreferences sharedPreferences, String str) {
        l.f(sharedPreferences, "sharedPreferences");
        l.f(str, "key");
        G();
        StringBuilder sb2 = new StringBuilder();
        sb2.append("onSharedPreferenceChanged -> ");
        sb2.append(str);
        sb2.append(" | Changed value");
    }

    @Override // androidx.fragment.app.Fragment
    public void onStart() {
        super.onStart();
        if (L() && !ed.c.d().k(this)) {
            ed.c.d().r(this);
        }
        if (K()) {
            return;
        }
        setHasOptionsMenu(true);
    }

    @Override // androidx.fragment.app.Fragment
    public void onStop() {
        if (ed.c.d().k(this)) {
            ed.c.d().t(this);
        }
        super.onStop();
    }

    @Override // androidx.fragment.app.Fragment
    public void onViewCreated(View view, Bundle bundle) {
        l.f(view, "view");
    }
}
