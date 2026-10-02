package mb;

import android.util.Log;
import android.view.View;
import com.google.android.material.internal.StaticLayoutBuilderCompat;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import q0.b0;
import q0.l0;
import q0.m0;
import q0.u;

/* compiled from: Insetter.kt */
/* loaded from: classes.dex */
public final class a {

    /* renamed from: i, reason: collision with root package name */
    public static final b f11064i = new b(null);

    /* renamed from: a, reason: collision with root package name */
    public int f11065a;

    /* renamed from: b, reason: collision with root package name */
    public m0 f11066b;

    /* renamed from: c, reason: collision with root package name */
    public final i f11067c;

    /* renamed from: d, reason: collision with root package name */
    public final i f11068d;

    /* renamed from: e, reason: collision with root package name */
    public final g f11069e;

    /* renamed from: f, reason: collision with root package name */
    public final int f11070f;

    /* renamed from: g, reason: collision with root package name */
    public final int f11071g;

    /* renamed from: h, reason: collision with root package name */
    public final List<View> f11072h;

    /* compiled from: Insetter.kt */
    /* renamed from: mb.a$a, reason: collision with other inner class name */
    /* loaded from: classes.dex */
    public static final class C0260a {

        /* renamed from: a, reason: collision with root package name */
        public g f11073a;

        /* renamed from: d, reason: collision with root package name */
        public int f11076d;

        /* renamed from: e, reason: collision with root package name */
        public int f11077e;

        /* renamed from: b, reason: collision with root package name */
        public i f11074b = new i();

        /* renamed from: c, reason: collision with root package name */
        public i f11075c = new i();

        /* renamed from: f, reason: collision with root package name */
        public ArrayList<View> f11078f = new ArrayList<>();

        public final a a(View view) {
            jc.l.f(view, "view");
            a b10 = b();
            b10.k(view);
            return b10;
        }

        public final a b() {
            return new a(this.f11074b, this.f11075c, this.f11073a, this.f11076d, this.f11077e, this.f11078f, null);
        }

        public final C0260a c(int i10, int i11, boolean z10) {
            this.f11075c.i(i10, i11);
            if (z10) {
                this.f11077e = i10 | this.f11077e;
            }
            return this;
        }

        public final C0260a d(int i10, int i11, boolean z10) {
            this.f11074b.i(i10, i11);
            if (z10) {
                this.f11077e = i10 | this.f11077e;
            }
            return this;
        }
    }

    /* compiled from: Insetter.kt */
    /* loaded from: classes.dex */
    public static final class b {
        public b() {
        }

        public final C0260a a() {
            return new C0260a();
        }

        public /* synthetic */ b(jc.g gVar) {
            this();
        }
    }

    /* compiled from: Insetter.kt */
    /* loaded from: classes.dex */
    public static final class c implements View.OnAttachStateChangeListener {
        @Override // android.view.View.OnAttachStateChangeListener
        public void onViewAttachedToWindow(View view) {
            jc.l.f(view, "v");
            b0.q0(view);
        }

        @Override // android.view.View.OnAttachStateChangeListener
        public void onViewDetachedFromWindow(View view) {
            jc.l.f(view, "v");
        }
    }

    /* compiled from: Insetter.kt */
    /* loaded from: classes.dex */
    public static final class d implements u {

        /* renamed from: b, reason: collision with root package name */
        public final /* synthetic */ m f11080b;

        public d(m mVar) {
            this.f11080b = mVar;
        }

        @Override // q0.u
        public final m0 onApplyWindowInsets(View view, m0 m0Var) {
            m0.b f10;
            m0.b f11;
            m0.b f12;
            m0.b f13;
            m0.b f14;
            a.this.f11066b = new m0(m0Var);
            if (a.this.f11069e != null) {
                g gVar = a.this.f11069e;
                jc.l.e(view, "v");
                jc.l.e(m0Var, "insets");
                gVar.a(view, m0Var, this.f11080b);
                return a.this.f11070f != 0 ? m0.f12368b : m0Var;
            }
            a aVar = a.this;
            jc.l.e(view, "v");
            jc.l.e(m0Var, "insets");
            aVar.j(view, m0Var, this.f11080b);
            int i10 = a.this.f11070f;
            if (i10 == 1) {
                return m0.f12368b;
            }
            if (i10 != 2) {
                return m0Var;
            }
            f10 = mb.e.f(new m0.b(m0Var), m0.m.g(), m0Var, a.this.l());
            f11 = mb.e.f(f10, m0.m.f(), m0Var, a.this.l());
            f12 = mb.e.f(f11, m0.m.c(), m0Var, a.this.l());
            f13 = mb.e.f(f12, m0.m.h(), m0Var, a.this.l());
            f14 = mb.e.f(f13, m0.m.b(), m0Var, a.this.l());
            return f14.a();
        }
    }

    /* compiled from: Insetter.kt */
    /* loaded from: classes.dex */
    public static final class e extends l0.b {

        /* renamed from: d, reason: collision with root package name */
        public final /* synthetic */ View f11082d;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public e(View view, int i10) {
            super(i10);
            this.f11082d = view;
        }

        @Override // q0.l0.b
        public void b(l0 l0Var) {
            jc.l.f(l0Var, "animation");
            if ((a.this.f11065a & l0Var.c()) != 0) {
                a aVar = a.this;
                aVar.f11065a = (l0Var.c() ^ (-1)) & aVar.f11065a;
                if (a.this.f11066b != null) {
                    View view = this.f11082d;
                    m0 m0Var = a.this.f11066b;
                    jc.l.c(m0Var);
                    b0.i(view, m0Var);
                }
            }
            this.f11082d.setTranslationX(StaticLayoutBuilderCompat.DEFAULT_LINE_SPACING_ADD);
            this.f11082d.setTranslationY(StaticLayoutBuilderCompat.DEFAULT_LINE_SPACING_ADD);
            for (View view2 : a.this.f11072h) {
                view2.setTranslationX(StaticLayoutBuilderCompat.DEFAULT_LINE_SPACING_ADD);
                view2.setTranslationY(StaticLayoutBuilderCompat.DEFAULT_LINE_SPACING_ADD);
            }
        }

        @Override // q0.l0.b
        public void c(l0 l0Var) {
            jc.l.f(l0Var, "animation");
            a aVar = a.this;
            aVar.f11065a = (l0Var.c() & a.this.f11071g) | aVar.f11065a;
        }

        @Override // q0.l0.b
        public m0 d(m0 m0Var, List<l0> list) {
            jc.l.f(m0Var, "insets");
            jc.l.f(list, "runningAnimations");
            Iterator<T> it2 = list.iterator();
            int i10 = 0;
            while (it2.hasNext()) {
                i10 |= ((l0) it2.next()).c();
            }
            int i11 = a.this.f11071g & i10;
            if (i11 == 0) {
                return m0Var;
            }
            h0.e f10 = m0Var.f(i11);
            jc.l.e(f10, "insets.getInsets(runningAnimatingTypes)");
            h0.e f11 = m0Var.f((i11 ^ (-1)) & a.this.l().a());
            jc.l.e(f11, "insets.getInsets(\n      …                        )");
            h0.e a10 = h0.e.a(h0.e.d(f10, f11), h0.e.f7151e);
            jc.l.e(a10, "Insets.subtract(animated…                        }");
            float f12 = a10.f7152a - a10.f7154c;
            float f13 = a10.f7153b - a10.f7155d;
            this.f11082d.setTranslationX(f12);
            this.f11082d.setTranslationY(f13);
            for (View view : a.this.f11072h) {
                view.setTranslationX(f12);
                view.setTranslationY(f13);
            }
            return m0Var;
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public a(i iVar, i iVar2, g gVar, int i10, int i11, List<? extends View> list) {
        this.f11067c = iVar;
        this.f11068d = iVar2;
        this.f11069e = gVar;
        this.f11070f = i10;
        this.f11071g = i11;
        this.f11072h = list;
    }

    public final void j(View view, m0 m0Var, m mVar) {
        jc.l.f(view, "view");
        jc.l.f(m0Var, "insets");
        jc.l.f(mVar, "initialState");
        if (Log.isLoggable("Insetter", 3)) {
            StringBuilder sb2 = new StringBuilder();
            sb2.append("applyInsetsToView. View: ");
            sb2.append(view);
            sb2.append(". Insets: ");
            sb2.append(m0Var);
            sb2.append(". State: ");
            sb2.append(mVar);
        }
        mb.e.e(view, m0Var, this.f11067c.g(this.f11065a), mVar.b());
        mb.e.d(view, m0Var, this.f11068d.g(this.f11065a), mVar.a());
    }

    public final void k(View view) {
        jc.l.f(view, "view");
        int i10 = h.f11086a;
        Object tag = view.getTag(i10);
        if (!(tag instanceof m)) {
            tag = null;
        }
        m mVar = (m) tag;
        if (mVar == null) {
            mVar = new m(view);
            view.setTag(i10, mVar);
        }
        b0.G0(view, new d(mVar));
        if (this.f11071g != 0) {
            b0.R0(view, new e(view, 1));
        }
        view.addOnAttachStateChangeListener(new c());
        if (b0.W(view)) {
            b0.q0(view);
        }
    }

    public final i l() {
        return this.f11067c.h(this.f11068d);
    }

    public /* synthetic */ a(i iVar, i iVar2, g gVar, int i10, int i11, List list, jc.g gVar2) {
        this(iVar, iVar2, gVar, i10, i11, list);
    }
}
