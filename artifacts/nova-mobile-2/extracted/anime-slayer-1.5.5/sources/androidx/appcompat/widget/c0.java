package androidx.appcompat.widget;

import android.content.Context;
import android.graphics.drawable.Drawable;
import android.view.Menu;
import android.view.ViewGroup;
import android.view.Window;
import androidx.appcompat.view.menu.e;
import androidx.appcompat.view.menu.i;

/* compiled from: DecorToolbar.java */
/* loaded from: classes.dex */
public interface c0 {
    void a(Menu menu, i.a aVar);

    boolean b();

    void c();

    void collapseActionView();

    boolean d();

    boolean e();

    boolean f();

    boolean g();

    Context getContext();

    CharSequence getTitle();

    void h();

    void i(i.a aVar, e.a aVar2);

    void j(int i10);

    void k(o0 o0Var);

    ViewGroup l();

    void m(boolean z10);

    boolean n();

    void o(int i10);

    int p();

    Menu q();

    void r(int i10);

    void s(int i10);

    void setIcon(int i10);

    void setIcon(Drawable drawable);

    void setTitle(CharSequence charSequence);

    void setWindowCallback(Window.Callback callback);

    void setWindowTitle(CharSequence charSequence);

    int t();

    q0.g0 u(int i10, long j10);

    void v();

    void w();

    void x(Drawable drawable);

    void y(boolean z10);
}
