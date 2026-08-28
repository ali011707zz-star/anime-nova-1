package j;

import android.content.Context;
import android.view.Menu;
import android.view.MenuInflater;
import android.view.MenuItem;
import android.view.View;
import androidx.appcompat.view.menu.e;
import androidx.appcompat.widget.ActionBarContextView;
import j.b;
import java.lang.ref.WeakReference;

/* compiled from: StandaloneActionMode.java */
/* loaded from: classes.dex */
public class e extends b implements e.a {

    /* renamed from: h, reason: collision with root package name */
    public Context f7994h;

    /* renamed from: i, reason: collision with root package name */
    public ActionBarContextView f7995i;

    /* renamed from: j, reason: collision with root package name */
    public b.a f7996j;

    /* renamed from: k, reason: collision with root package name */
    public WeakReference<View> f7997k;

    /* renamed from: l, reason: collision with root package name */
    public boolean f7998l;

    /* renamed from: m, reason: collision with root package name */
    public boolean f7999m;

    /* renamed from: n, reason: collision with root package name */
    public androidx.appcompat.view.menu.e f8000n;

    public e(Context context, ActionBarContextView actionBarContextView, b.a aVar, boolean z10) {
        this.f7994h = context;
        this.f7995i = actionBarContextView;
        this.f7996j = aVar;
        androidx.appcompat.view.menu.e defaultShowAsAction = new androidx.appcompat.view.menu.e(actionBarContextView.getContext()).setDefaultShowAsAction(1);
        this.f8000n = defaultShowAsAction;
        defaultShowAsAction.setCallback(this);
        this.f7999m = z10;
    }

    @Override // j.b
    public void a() {
        if (this.f7998l) {
            return;
        }
        this.f7998l = true;
        this.f7996j.c(this);
    }

    @Override // j.b
    public View b() {
        WeakReference<View> weakReference = this.f7997k;
        if (weakReference != null) {
            return weakReference.get();
        }
        return null;
    }

    @Override // j.b
    public Menu c() {
        return this.f8000n;
    }

    @Override // j.b
    public MenuInflater d() {
        return new g(this.f7995i.getContext());
    }

    @Override // j.b
    public CharSequence e() {
        return this.f7995i.getSubtitle();
    }

    @Override // j.b
    public CharSequence g() {
        return this.f7995i.getTitle();
    }

    @Override // j.b
    public void i() {
        this.f7996j.d(this, this.f8000n);
    }

    @Override // j.b
    public boolean j() {
        return this.f7995i.j();
    }

    @Override // j.b
    public void k(View view) {
        this.f7995i.setCustomView(view);
        this.f7997k = view != null ? new WeakReference<>(view) : null;
    }

    @Override // j.b
    public void l(int i10) {
        m(this.f7994h.getString(i10));
    }

    @Override // j.b
    public void m(CharSequence charSequence) {
        this.f7995i.setSubtitle(charSequence);
    }

    @Override // j.b
    public void o(int i10) {
        p(this.f7994h.getString(i10));
    }

    @Override // androidx.appcompat.view.menu.e.a
    public boolean onMenuItemSelected(androidx.appcompat.view.menu.e eVar, MenuItem menuItem) {
        return this.f7996j.a(this, menuItem);
    }

    @Override // androidx.appcompat.view.menu.e.a
    public void onMenuModeChange(androidx.appcompat.view.menu.e eVar) {
        i();
        this.f7995i.l();
    }

    @Override // j.b
    public void p(CharSequence charSequence) {
        this.f7995i.setTitle(charSequence);
    }

    @Override // j.b
    public void q(boolean z10) {
        super.q(z10);
        this.f7995i.setTitleOptional(z10);
    }
}
