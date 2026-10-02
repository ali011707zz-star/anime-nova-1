package s2;

import android.R;
import android.app.Dialog;
import android.content.Context;
import android.graphics.Typeface;
import android.graphics.drawable.ColorDrawable;
import android.view.LayoutInflater;
import android.view.ViewGroup;
import android.view.Window;
import com.afollestad.materialdialogs.internal.button.DialogActionButton;
import com.afollestad.materialdialogs.internal.main.DialogLayout;
import com.google.android.material.internal.StaticLayoutBuilderCompat;
import java.util.ArrayList;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import vb.p;

/* compiled from: MaterialDialog.kt */
/* loaded from: classes.dex */
public final class c extends Dialog {

    /* renamed from: f, reason: collision with root package name */
    public final Map<String, Object> f13633f;

    /* renamed from: g, reason: collision with root package name */
    public boolean f13634g;

    /* renamed from: h, reason: collision with root package name */
    public Typeface f13635h;

    /* renamed from: i, reason: collision with root package name */
    public Typeface f13636i;

    /* renamed from: j, reason: collision with root package name */
    public Typeface f13637j;

    /* renamed from: k, reason: collision with root package name */
    public boolean f13638k;

    /* renamed from: l, reason: collision with root package name */
    public boolean f13639l;

    /* renamed from: m, reason: collision with root package name */
    public Float f13640m;

    /* renamed from: n, reason: collision with root package name */
    public Integer f13641n;

    /* renamed from: o, reason: collision with root package name */
    public final DialogLayout f13642o;

    /* renamed from: p, reason: collision with root package name */
    public final List<ic.l<c, p>> f13643p;

    /* renamed from: q, reason: collision with root package name */
    public final List<ic.l<c, p>> f13644q;

    /* renamed from: r, reason: collision with root package name */
    public final List<ic.l<c, p>> f13645r;

    /* renamed from: s, reason: collision with root package name */
    public final List<ic.l<c, p>> f13646s;

    /* renamed from: t, reason: collision with root package name */
    public final List<ic.l<c, p>> f13647t;

    /* renamed from: u, reason: collision with root package name */
    public final List<ic.l<c, p>> f13648u;

    /* renamed from: v, reason: collision with root package name */
    public final List<ic.l<c, p>> f13649v;

    /* renamed from: w, reason: collision with root package name */
    public final Context f13650w;

    /* renamed from: x, reason: collision with root package name */
    public final s2.a f13651x;

    /* renamed from: z, reason: collision with root package name */
    public static final a f13632z = new a(null);

    /* renamed from: y, reason: collision with root package name */
    public static s2.a f13631y = e.f13654a;

    /* compiled from: MaterialDialog.kt */
    /* loaded from: classes.dex */
    public static final class a {
        public a() {
        }

        public /* synthetic */ a(jc.g gVar) {
            this();
        }
    }

    /* compiled from: MaterialDialog.kt */
    /* loaded from: classes.dex */
    public static final class b extends jc.m implements ic.a<Integer> {
        public b() {
            super(0);
        }

        public final int a() {
            return d3.a.c(c.this, null, Integer.valueOf(f.f13657a), null, 5, null);
        }

        @Override // ic.a
        public /* bridge */ /* synthetic */ Integer invoke() {
            return Integer.valueOf(a());
        }
    }

    public /* synthetic */ c(Context context, s2.a aVar, int i10, jc.g gVar) {
        this(context, (i10 & 2) != 0 ? f13631y : aVar);
    }

    public static /* synthetic */ c l(c cVar, Integer num, Integer num2, int i10, Object obj) {
        if ((i10 & 1) != 0) {
            num = null;
        }
        if ((i10 & 2) != 0) {
            num2 = null;
        }
        return cVar.k(num, num2);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static /* synthetic */ c n(c cVar, Integer num, CharSequence charSequence, ic.l lVar, int i10, Object obj) {
        if ((i10 & 1) != 0) {
            num = null;
        }
        if ((i10 & 2) != 0) {
            charSequence = null;
        }
        if ((i10 & 4) != 0) {
            lVar = null;
        }
        return cVar.m(num, charSequence, lVar);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static /* synthetic */ c p(c cVar, Integer num, CharSequence charSequence, ic.l lVar, int i10, Object obj) {
        if ((i10 & 1) != 0) {
            num = null;
        }
        if ((i10 & 2) != 0) {
            charSequence = null;
        }
        if ((i10 & 4) != 0) {
            lVar = null;
        }
        return cVar.o(num, charSequence, lVar);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static /* synthetic */ c r(c cVar, Integer num, CharSequence charSequence, ic.l lVar, int i10, Object obj) {
        if ((i10 & 1) != 0) {
            num = null;
        }
        if ((i10 & 2) != 0) {
            charSequence = null;
        }
        if ((i10 & 4) != 0) {
            lVar = null;
        }
        return cVar.q(num, charSequence, lVar);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static /* synthetic */ c v(c cVar, Integer num, CharSequence charSequence, ic.l lVar, int i10, Object obj) {
        if ((i10 & 1) != 0) {
            num = null;
        }
        if ((i10 & 2) != 0) {
            charSequence = null;
        }
        if ((i10 & 4) != 0) {
            lVar = null;
        }
        return cVar.u(num, charSequence, lVar);
    }

    public static /* synthetic */ c y(c cVar, Integer num, String str, int i10, Object obj) {
        if ((i10 & 1) != 0) {
            num = null;
        }
        if ((i10 & 2) != 0) {
            str = null;
        }
        return cVar.x(num, str);
    }

    public final c a(boolean z10) {
        setCanceledOnTouchOutside(z10);
        return this;
    }

    public final c b(boolean z10) {
        setCancelable(z10);
        return this;
    }

    public final boolean c() {
        return this.f13634g;
    }

    public final Typeface d() {
        return this.f13636i;
    }

    @Override // android.app.Dialog, android.content.DialogInterface
    public void dismiss() {
        if (this.f13651x.onDismiss()) {
            return;
        }
        d3.b.a(this);
        super.dismiss();
    }

    public final Map<String, Object> e() {
        return this.f13633f;
    }

    public final List<ic.l<c, p>> f() {
        return this.f13643p;
    }

    public final List<ic.l<c, p>> g() {
        return this.f13644q;
    }

    public final DialogLayout h() {
        return this.f13642o;
    }

    public final Context i() {
        return this.f13650w;
    }

    public final void j() {
        int c10 = d3.a.c(this, null, Integer.valueOf(f.f13661e), new b(), 1, null);
        Float f10 = this.f13640m;
        float floatValue = f10 != null ? f10.floatValue() : d3.e.o(d3.e.f5611a, this.f13650w, f.f13669m, StaticLayoutBuilderCompat.DEFAULT_LINE_SPACING_ADD, 4, null);
        Window window = getWindow();
        if (window != null) {
            window.setBackgroundDrawable(new ColorDrawable(0));
        }
        this.f13651x.a(this.f13642o, c10, floatValue);
    }

    public final c k(Integer num, Integer num2) {
        d3.e.f5611a.a("maxWidth", num, num2);
        Integer num3 = this.f13641n;
        boolean z10 = (num3 == null || num3 == null || num3.intValue() != 0) ? false : true;
        if (num != null) {
            num2 = Integer.valueOf(this.f13650w.getResources().getDimensionPixelSize(num.intValue()));
        } else if (num2 == null) {
            jc.l.p();
        }
        this.f13641n = num2;
        if (z10) {
            w();
        }
        return this;
    }

    public final c m(Integer num, CharSequence charSequence, ic.l<? super c3.a, p> lVar) {
        d3.e.f5611a.a("message", charSequence, num);
        this.f13642o.getContentLayout().i(this, num, charSequence, this.f13636i, lVar);
        return this;
    }

    public final c o(Integer num, CharSequence charSequence, ic.l<? super c, p> lVar) {
        if (lVar != null) {
            this.f13648u.add(lVar);
        }
        DialogActionButton a10 = t2.a.a(this, m.NEGATIVE);
        if (num == null && charSequence == null && d3.f.e(a10)) {
            return this;
        }
        d3.b.c(this, a10, num, charSequence, R.string.cancel, this.f13637j, Integer.valueOf(f.f13664h));
        return this;
    }

    public final c q(Integer num, CharSequence charSequence, ic.l<? super c, p> lVar) {
        if (lVar != null) {
            this.f13649v.add(lVar);
        }
        DialogActionButton a10 = t2.a.a(this, m.NEUTRAL);
        if (num == null && charSequence == null && d3.f.e(a10)) {
            return this;
        }
        d3.b.d(this, a10, num, charSequence, 0, this.f13637j, null, 40, null);
        return this;
    }

    public final c s() {
        this.f13634g = false;
        return this;
    }

    @Override // android.app.Dialog
    public void setCancelable(boolean z10) {
        this.f13639l = z10;
        super.setCancelable(z10);
    }

    @Override // android.app.Dialog
    public void setCanceledOnTouchOutside(boolean z10) {
        this.f13638k = z10;
        super.setCanceledOnTouchOutside(z10);
    }

    @Override // android.app.Dialog
    public void show() {
        w();
        d3.b.e(this);
        this.f13651x.b(this);
        super.show();
        this.f13651x.d(this);
    }

    public final void t(m mVar) {
        jc.l.g(mVar, "which");
        int i10 = d.f13653a[mVar.ordinal()];
        if (i10 == 1) {
            u2.a.a(this.f13647t, this);
            Object d10 = b3.a.d(this);
            if (!(d10 instanceof z2.b)) {
                d10 = null;
            }
            z2.b bVar = (z2.b) d10;
            if (bVar != null) {
                bVar.d();
            }
        } else if (i10 == 2) {
            u2.a.a(this.f13648u, this);
        } else if (i10 == 3) {
            u2.a.a(this.f13649v, this);
        }
        if (this.f13634g) {
            dismiss();
        }
    }

    public final c u(Integer num, CharSequence charSequence, ic.l<? super c, p> lVar) {
        if (lVar != null) {
            this.f13647t.add(lVar);
        }
        DialogActionButton a10 = t2.a.a(this, m.POSITIVE);
        if (num == null && charSequence == null && d3.f.e(a10)) {
            return this;
        }
        d3.b.c(this, a10, num, charSequence, R.string.ok, this.f13637j, Integer.valueOf(f.f13664h));
        return this;
    }

    public final void w() {
        s2.a aVar = this.f13651x;
        Context context = this.f13650w;
        Integer num = this.f13641n;
        Window window = getWindow();
        if (window == null) {
            jc.l.p();
        }
        jc.l.b(window, "window!!");
        aVar.g(context, window, this.f13642o, num);
    }

    public final c x(Integer num, String str) {
        d3.e.f5611a.a("title", str, num);
        d3.b.d(this, this.f13642o.getTitleLayout().getTitleView$com_afollestad_material_dialogs_core(), num, str, 0, this.f13635h, Integer.valueOf(f.f13666j), 8, null);
        return this;
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public c(Context context, s2.a aVar) {
        super(context, l.a(context, aVar));
        jc.l.g(context, "windowContext");
        jc.l.g(aVar, "dialogBehavior");
        this.f13650w = context;
        this.f13651x = aVar;
        this.f13633f = new LinkedHashMap();
        this.f13634g = true;
        this.f13638k = true;
        this.f13639l = true;
        this.f13643p = new ArrayList();
        this.f13644q = new ArrayList();
        this.f13645r = new ArrayList();
        this.f13646s = new ArrayList();
        this.f13647t = new ArrayList();
        this.f13648u = new ArrayList();
        this.f13649v = new ArrayList();
        LayoutInflater from = LayoutInflater.from(context);
        Window window = getWindow();
        if (window == null) {
            jc.l.p();
        }
        jc.l.b(window, "window!!");
        jc.l.b(from, "layoutInflater");
        ViewGroup e10 = aVar.e(context, window, from, this);
        setContentView(e10);
        DialogLayout c10 = aVar.c(e10);
        c10.a(this);
        this.f13642o = c10;
        this.f13635h = d3.d.b(this, null, Integer.valueOf(f.f13673q), 1, null);
        this.f13636i = d3.d.b(this, null, Integer.valueOf(f.f13671o), 1, null);
        this.f13637j = d3.d.b(this, null, Integer.valueOf(f.f13672p), 1, null);
        j();
    }
}
