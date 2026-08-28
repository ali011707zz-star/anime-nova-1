package s2;

import android.annotation.SuppressLint;
import android.content.Context;
import android.content.res.Resources;
import android.graphics.drawable.GradientDrawable;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.Window;
import android.view.WindowManager;
import com.afollestad.materialdialogs.internal.button.DialogActionButton;
import com.afollestad.materialdialogs.internal.main.DialogLayout;
import kotlin.TypeCastException;

/* compiled from: DialogBehavior.kt */
/* loaded from: classes.dex */
public final class e implements s2.a {

    /* renamed from: a, reason: collision with root package name */
    public static final e f13654a = new e();

    /* compiled from: DialogBehavior.kt */
    /* loaded from: classes.dex */
    public static final class a implements Runnable {

        /* renamed from: f, reason: collision with root package name */
        public final /* synthetic */ DialogActionButton f13655f;

        public a(DialogActionButton dialogActionButton) {
            this.f13655f = dialogActionButton;
        }

        @Override // java.lang.Runnable
        public final void run() {
            this.f13655f.requestFocus();
        }
    }

    /* compiled from: DialogBehavior.kt */
    /* loaded from: classes.dex */
    public static final class b implements Runnable {

        /* renamed from: f, reason: collision with root package name */
        public final /* synthetic */ DialogActionButton f13656f;

        public b(DialogActionButton dialogActionButton) {
            this.f13656f = dialogActionButton;
        }

        @Override // java.lang.Runnable
        public final void run() {
            this.f13656f.requestFocus();
        }
    }

    @Override // s2.a
    public void a(DialogLayout dialogLayout, int i10, float f10) {
        jc.l.g(dialogLayout, "view");
        GradientDrawable gradientDrawable = new GradientDrawable();
        gradientDrawable.setCornerRadius(f10);
        gradientDrawable.setColor(i10);
        dialogLayout.setBackground(gradientDrawable);
    }

    @Override // s2.a
    public void b(c cVar) {
        jc.l.g(cVar, "dialog");
    }

    @Override // s2.a
    public DialogLayout c(ViewGroup viewGroup) {
        jc.l.g(viewGroup, "root");
        return (DialogLayout) viewGroup;
    }

    @Override // s2.a
    public void d(c cVar) {
        jc.l.g(cVar, "dialog");
        DialogActionButton a10 = t2.a.a(cVar, m.NEGATIVE);
        if (d3.f.e(a10)) {
            a10.post(new a(a10));
            return;
        }
        DialogActionButton a11 = t2.a.a(cVar, m.POSITIVE);
        if (d3.f.e(a11)) {
            a11.post(new b(a11));
        }
    }

    @Override // s2.a
    @SuppressLint({"InflateParams"})
    public ViewGroup e(Context context, Window window, LayoutInflater layoutInflater, c cVar) {
        jc.l.g(context, "creatingContext");
        jc.l.g(window, "dialogWindow");
        jc.l.g(layoutInflater, "layoutInflater");
        jc.l.g(cVar, "dialog");
        View inflate = layoutInflater.inflate(j.f13705a, (ViewGroup) null, false);
        if (inflate != null) {
            return (ViewGroup) inflate;
        }
        throw new TypeCastException("null cannot be cast to non-null type android.view.ViewGroup");
    }

    @Override // s2.a
    public int f(boolean z10) {
        if (z10) {
            return k.f13711a;
        }
        return k.f13712b;
    }

    @Override // s2.a
    public void g(Context context, Window window, DialogLayout dialogLayout, Integer num) {
        jc.l.g(context, "context");
        jc.l.g(window, "window");
        jc.l.g(dialogLayout, "view");
        if (num != null && num.intValue() == 0) {
            return;
        }
        window.setSoftInputMode(16);
        WindowManager windowManager = window.getWindowManager();
        if (windowManager != null) {
            Resources resources = context.getResources();
            vb.i<Integer, Integer> e10 = d3.e.f5611a.e(windowManager);
            int intValue = e10.a().intValue();
            dialogLayout.setMaxHeight(e10.b().intValue() - (resources.getDimensionPixelSize(h.f13690m) * 2));
            WindowManager.LayoutParams layoutParams = new WindowManager.LayoutParams();
            layoutParams.copyFrom(window.getAttributes());
            layoutParams.width = Math.min(num != null ? num.intValue() : resources.getDimensionPixelSize(h.f13688k), intValue - (resources.getDimensionPixelSize(h.f13687j) * 2));
            window.setAttributes(layoutParams);
        }
    }

    @Override // s2.a
    public boolean onDismiss() {
        return false;
    }
}
