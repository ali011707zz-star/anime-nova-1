package i5;

import android.app.Dialog;
import android.graphics.drawable.Drawable;
import android.view.View;
import android.widget.ImageView;
import android.widget.ProgressBar;
import android.widget.TextView;
import androidx.appcompat.widget.AppCompatImageView;
import j4.u0;
import rc.b1;
import rc.q0;

/* compiled from: StateImageViewTarget.kt */
/* loaded from: classes.dex */
public final class d0 extends i8.f<Drawable> {

    /* renamed from: n, reason: collision with root package name */
    public final androidx.appcompat.app.e f7602n;

    /* renamed from: o, reason: collision with root package name */
    public final u0 f7603o;

    /* renamed from: p, reason: collision with root package name */
    public final Dialog f7604p;

    /* renamed from: q, reason: collision with root package name */
    public final boolean f7605q;

    /* renamed from: r, reason: collision with root package name */
    public final boolean f7606r;

    /* renamed from: s, reason: collision with root package name */
    public final ic.a<vb.p> f7607s;

    /* renamed from: t, reason: collision with root package name */
    public Drawable f7608t;

    /* renamed from: u, reason: collision with root package name */
    public final ImageView.ScaleType f7609u;

    /* compiled from: StateImageViewTarget.kt */
    @cc.f(c = "com.anslayer.ui.anime.info.StateImageViewTarget$onResourceReady$2", f = "StateImageViewTarget.kt", l = {65}, m = "invokeSuspend")
    /* loaded from: classes.dex */
    public static final class a extends cc.k implements ic.p<q0, ac.d<? super vb.p>, Object> {

        /* renamed from: f, reason: collision with root package name */
        public int f7610f;

        /* renamed from: g, reason: collision with root package name */
        public int f7611g;

        public a(ac.d<? super a> dVar) {
            super(2, dVar);
        }

        @Override // cc.a
        public final ac.d<vb.p> create(Object obj, ac.d<?> dVar) {
            return new a(dVar);
        }

        @Override // ic.p
        public final Object invoke(q0 q0Var, ac.d<? super vb.p> dVar) {
            return ((a) create(q0Var, dVar)).invokeSuspend(vb.p.f15031a);
        }

        /* JADX WARN: Removed duplicated region for block: B:10:0x0058  */
        /* JADX WARN: Removed duplicated region for block: B:13:0x006b A[RETURN] */
        /* JADX WARN: Removed duplicated region for block: B:15:0x006c  */
        /* JADX WARN: Removed duplicated region for block: B:16:0x0053  */
        /* JADX WARN: Removed duplicated region for block: B:17:0x006f  */
        /* JADX WARN: Removed duplicated region for block: B:8:0x0051  */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:15:0x006c -> B:5:0x006d). Please report as a decompilation issue!!! */
        @Override // cc.a
        /*
            Code decompiled incorrectly, please refer to instructions dump.
        */
        public final Object invokeSuspend(Object obj) {
            int i10;
            a aVar;
            TextView textView;
            Object d10 = bc.c.d();
            int i11 = this.f7611g;
            if (i11 == 0) {
                vb.k.b(obj);
                u0 s10 = d0.this.s();
                TextView textView2 = s10 == null ? null : s10.f8738d;
                if (textView2 != null) {
                    textView2.setVisibility(0);
                }
                u0 s11 = d0.this.s();
                AppCompatImageView appCompatImageView = s11 == null ? null : s11.f8737c;
                if (appCompatImageView != null) {
                    appCompatImageView.setVisibility(4);
                }
                i10 = 5;
                aVar = this;
                int i12 = i10 - 1;
                u0 s12 = d0.this.s();
                if (s12 == null) {
                }
                if (textView != null) {
                }
                aVar.f7610f = i12;
                aVar.f7611g = 1;
                if (b1.a(1000L, aVar) == d10) {
                }
            } else {
                if (i11 != 1) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                int i13 = this.f7610f;
                vb.k.b(obj);
                i10 = i13;
                aVar = this;
                if (1 > i10) {
                    u0 s13 = d0.this.s();
                    TextView textView3 = s13 == null ? null : s13.f8738d;
                    if (textView3 != null) {
                        textView3.setVisibility(4);
                    }
                    u0 s14 = d0.this.s();
                    AppCompatImageView appCompatImageView2 = s14 != null ? s14.f8737c : null;
                    if (appCompatImageView2 != null) {
                        appCompatImageView2.setVisibility(0);
                    }
                    return vb.p.f15031a;
                }
                int i122 = i10 - 1;
                u0 s122 = d0.this.s();
                textView = s122 == null ? null : s122.f8738d;
                if (textView != null) {
                    textView.setText(String.valueOf(i10));
                }
                aVar.f7610f = i122;
                aVar.f7611g = 1;
                if (b1.a(1000L, aVar) == d10) {
                    return d10;
                }
                i10 = i122;
                if (1 > i10) {
                }
                int i1222 = i10 - 1;
                u0 s1222 = d0.this.s();
                if (s1222 == null) {
                }
                if (textView != null) {
                }
                aVar.f7610f = i1222;
                aVar.f7611g = 1;
                if (b1.a(1000L, aVar) == d10) {
                }
            }
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public d0(androidx.appcompat.app.e eVar, u0 u0Var, Dialog dialog, boolean z10, boolean z11, ic.a<vb.p> aVar) {
        super(u0Var.f8736b);
        jc.l.f(u0Var, "dialogBinding");
        jc.l.f(dialog, "dialog");
        jc.l.f(aVar, "onImageClick");
        this.f7602n = eVar;
        this.f7603o = u0Var;
        this.f7604p = dialog;
        this.f7605q = z10;
        this.f7606r = z11;
        this.f7607s = aVar;
        this.f7609u = ((ImageView) this.f7917f).getScaleType();
    }

    public static final void u(d0 d0Var, View view) {
        jc.l.f(d0Var, "this$0");
        d0Var.f7607s.invoke();
    }

    @Override // i8.f, i8.a, i8.i
    public void c(Drawable drawable) {
        u0 u0Var = this.f7603o;
        ProgressBar progressBar = u0Var == null ? null : u0Var.f8739e;
        if (progressBar != null) {
            progressBar.setVisibility(8);
        }
        this.f7604p.dismiss();
    }

    @Override // i8.f, i8.j, i8.a, i8.i
    public void f(Drawable drawable) {
        u0 u0Var = this.f7603o;
        ProgressBar progressBar = u0Var == null ? null : u0Var.f8739e;
        if (progressBar != null) {
            progressBar.setVisibility(0);
        }
        super.f(drawable);
    }

    @Override // i8.f, i8.j, i8.a, i8.i
    public void k(Drawable drawable) {
        u0 u0Var = this.f7603o;
        ProgressBar progressBar = u0Var == null ? null : u0Var.f8739e;
        if (progressBar != null) {
            progressBar.setVisibility(8);
        }
        super.k(drawable);
    }

    public final u0 s() {
        return this.f7603o;
    }

    @Override // i8.f, i8.i
    /* renamed from: t, reason: merged with bridge method [inline-methods] */
    public void i(Drawable drawable, j8.d<? super Drawable> dVar) {
        androidx.lifecycle.l a10;
        jc.l.f(drawable, "resource");
        u0 u0Var = this.f7603o;
        ProgressBar progressBar = u0Var == null ? null : u0Var.f8739e;
        if (progressBar != null) {
            progressBar.setVisibility(8);
        }
        ((ImageView) this.f7917f).setScaleType(this.f7609u);
        ((ImageView) this.f7917f).setEnabled(this.f7606r);
        ((ImageView) this.f7917f).setOnClickListener(new View.OnClickListener() { // from class: i5.c0
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                d0.u(d0.this, view);
            }
        });
        super.i(drawable, dVar);
        if (this.f7605q) {
            androidx.appcompat.app.e eVar = this.f7602n;
            if (eVar != null && (a10 = androidx.lifecycle.r.a(eVar)) != null) {
                rc.k.d(a10, null, null, new a(null), 3, null);
            }
        } else {
            u0 u0Var2 = this.f7603o;
            AppCompatImageView appCompatImageView = u0Var2 != null ? u0Var2.f8737c : null;
            if (appCompatImageView != null) {
                appCompatImageView.setVisibility(0);
            }
        }
        this.f7608t = drawable;
    }

    @Override // i8.f
    /* renamed from: v, reason: merged with bridge method [inline-methods] */
    public void p(Drawable drawable) {
        ((ImageView) this.f7917f).setImageDrawable(drawable);
    }
}
