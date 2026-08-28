package androidx.appcompat.view.menu;

import android.content.Context;
import android.graphics.Point;
import android.graphics.Rect;
import android.os.Build;
import android.view.Display;
import android.view.View;
import android.view.WindowManager;
import android.widget.PopupWindow;
import androidx.appcompat.view.menu.i;
import q0.b0;

/* compiled from: MenuPopupHelper.java */
/* loaded from: classes.dex */
public class h {

    /* renamed from: a, reason: collision with root package name */
    public final Context f1062a;

    /* renamed from: b, reason: collision with root package name */
    public final e f1063b;

    /* renamed from: c, reason: collision with root package name */
    public final boolean f1064c;

    /* renamed from: d, reason: collision with root package name */
    public final int f1065d;

    /* renamed from: e, reason: collision with root package name */
    public final int f1066e;

    /* renamed from: f, reason: collision with root package name */
    public View f1067f;

    /* renamed from: g, reason: collision with root package name */
    public int f1068g;

    /* renamed from: h, reason: collision with root package name */
    public boolean f1069h;

    /* renamed from: i, reason: collision with root package name */
    public i.a f1070i;

    /* renamed from: j, reason: collision with root package name */
    public k.d f1071j;

    /* renamed from: k, reason: collision with root package name */
    public PopupWindow.OnDismissListener f1072k;

    /* renamed from: l, reason: collision with root package name */
    public final PopupWindow.OnDismissListener f1073l;

    /* compiled from: MenuPopupHelper.java */
    /* loaded from: classes.dex */
    public class a implements PopupWindow.OnDismissListener {
        public a() {
        }

        @Override // android.widget.PopupWindow.OnDismissListener
        public void onDismiss() {
            h.this.e();
        }
    }

    public h(Context context, e eVar, View view, boolean z10, int i10) {
        this(context, eVar, view, z10, i10, 0);
    }

    public final k.d a() {
        k.d kVar;
        Display defaultDisplay = ((WindowManager) this.f1062a.getSystemService("window")).getDefaultDisplay();
        Point point = new Point();
        if (Build.VERSION.SDK_INT >= 17) {
            defaultDisplay.getRealSize(point);
        } else {
            defaultDisplay.getSize(point);
        }
        if (Math.min(point.x, point.y) >= this.f1062a.getResources().getDimensionPixelSize(d.d.f5219c)) {
            kVar = new b(this.f1062a, this.f1067f, this.f1065d, this.f1066e, this.f1064c);
        } else {
            kVar = new k(this.f1062a, this.f1063b, this.f1067f, this.f1065d, this.f1066e, this.f1064c);
        }
        kVar.b(this.f1063b);
        kVar.l(this.f1073l);
        kVar.g(this.f1067f);
        kVar.setCallback(this.f1070i);
        kVar.i(this.f1069h);
        kVar.j(this.f1068g);
        return kVar;
    }

    public void b() {
        if (d()) {
            this.f1071j.dismiss();
        }
    }

    public k.d c() {
        if (this.f1071j == null) {
            this.f1071j = a();
        }
        return this.f1071j;
    }

    public boolean d() {
        k.d dVar = this.f1071j;
        return dVar != null && dVar.a();
    }

    public void e() {
        this.f1071j = null;
        PopupWindow.OnDismissListener onDismissListener = this.f1072k;
        if (onDismissListener != null) {
            onDismissListener.onDismiss();
        }
    }

    public void f(View view) {
        this.f1067f = view;
    }

    public void g(boolean z10) {
        this.f1069h = z10;
        k.d dVar = this.f1071j;
        if (dVar != null) {
            dVar.i(z10);
        }
    }

    public void h(int i10) {
        this.f1068g = i10;
    }

    public void i(PopupWindow.OnDismissListener onDismissListener) {
        this.f1072k = onDismissListener;
    }

    public void j(i.a aVar) {
        this.f1070i = aVar;
        k.d dVar = this.f1071j;
        if (dVar != null) {
            dVar.setCallback(aVar);
        }
    }

    public void k() {
        if (!m()) {
            throw new IllegalStateException("MenuPopupHelper cannot be used without an anchor");
        }
    }

    public final void l(int i10, int i11, boolean z10, boolean z11) {
        k.d c10 = c();
        c10.m(z11);
        if (z10) {
            if ((q0.e.b(this.f1068g, b0.E(this.f1067f)) & 7) == 5) {
                i10 -= this.f1067f.getWidth();
            }
            c10.k(i10);
            c10.n(i11);
            int i12 = (int) ((this.f1062a.getResources().getDisplayMetrics().density * 48.0f) / 2.0f);
            c10.h(new Rect(i10 - i12, i11 - i12, i10 + i12, i11 + i12));
        }
        c10.show();
    }

    public boolean m() {
        if (d()) {
            return true;
        }
        if (this.f1067f == null) {
            return false;
        }
        l(0, 0, false, false);
        return true;
    }

    public boolean n(int i10, int i11) {
        if (d()) {
            return true;
        }
        if (this.f1067f == null) {
            return false;
        }
        l(i10, i11, true, true);
        return true;
    }

    public h(Context context, e eVar, View view, boolean z10, int i10, int i11) {
        this.f1068g = 8388611;
        this.f1073l = new a();
        this.f1062a = context;
        this.f1063b = eVar;
        this.f1067f = view;
        this.f1064c = z10;
        this.f1065d = i10;
        this.f1066e = i11;
    }
}
