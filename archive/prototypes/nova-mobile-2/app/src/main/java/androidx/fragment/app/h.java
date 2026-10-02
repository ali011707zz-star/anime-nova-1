package androidx.fragment.app;

import android.content.Context;
import android.content.res.Configuration;
import android.os.Parcelable;
import android.util.AttributeSet;
import android.view.Menu;
import android.view.MenuInflater;
import android.view.MenuItem;
import android.view.View;
import androidx.lifecycle.n0;

/* compiled from: FragmentController.java */
/* loaded from: classes.dex */
public class h {

    /* renamed from: a, reason: collision with root package name */
    public final j<?> f2244a;

    public h(j<?> jVar) {
        this.f2244a = jVar;
    }

    public static h b(j<?> jVar) {
        return new h((j) p0.i.h(jVar, "callbacks == null"));
    }

    public void a(Fragment fragment) {
        j<?> jVar = this.f2244a;
        jVar.f2250j.k(jVar, jVar, fragment);
    }

    public void c() {
        this.f2244a.f2250j.z();
    }

    public void d(Configuration configuration) {
        this.f2244a.f2250j.B(configuration);
    }

    public boolean e(MenuItem menuItem) {
        return this.f2244a.f2250j.C(menuItem);
    }

    public void f() {
        this.f2244a.f2250j.D();
    }

    public boolean g(Menu menu, MenuInflater menuInflater) {
        return this.f2244a.f2250j.E(menu, menuInflater);
    }

    public void h() {
        this.f2244a.f2250j.F();
    }

    public void i() {
        this.f2244a.f2250j.H();
    }

    public void j(boolean z10) {
        this.f2244a.f2250j.I(z10);
    }

    public boolean k(MenuItem menuItem) {
        return this.f2244a.f2250j.K(menuItem);
    }

    public void l(Menu menu) {
        this.f2244a.f2250j.L(menu);
    }

    public void m() {
        this.f2244a.f2250j.N();
    }

    public void n(boolean z10) {
        this.f2244a.f2250j.O(z10);
    }

    public boolean o(Menu menu) {
        return this.f2244a.f2250j.P(menu);
    }

    public void p() {
        this.f2244a.f2250j.R();
    }

    public void q() {
        this.f2244a.f2250j.S();
    }

    public void r() {
        this.f2244a.f2250j.U();
    }

    public boolean s() {
        return this.f2244a.f2250j.b0(true);
    }

    public FragmentManager t() {
        return this.f2244a.f2250j;
    }

    public void u() {
        this.f2244a.f2250j.U0();
    }

    public View v(View view, String str, Context context, AttributeSet attributeSet) {
        return this.f2244a.f2250j.v0().onCreateView(view, str, context, attributeSet);
    }

    public void w(Parcelable parcelable) {
        j<?> jVar = this.f2244a;
        if (jVar instanceof n0) {
            jVar.f2250j.i1(parcelable);
            return;
        }
        throw new IllegalStateException("Your FragmentHostCallback must implement ViewModelStoreOwner to call restoreSaveState(). Call restoreAllState()  if you're still using retainNestedNonConfig().");
    }

    public Parcelable x() {
        return this.f2244a.f2250j.k1();
    }
}
