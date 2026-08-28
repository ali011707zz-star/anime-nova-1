package g6;

import android.animation.Animator;
import android.view.View;
import android.view.ViewGroup;
import androidx.recyclerview.widget.j;
import io.wax911.support.base.animation.SupportAnimation;
import io.wax911.support.custom.animation.ScaleAnimation;
import java.util.ArrayList;
import java.util.Iterator;
import k1.r0;
import wb.z;

/* compiled from: BrowseAdapter.kt */
/* loaded from: classes.dex */
public final class c extends r0<p4.p, q5.a> {

    /* renamed from: d, reason: collision with root package name */
    public final e f6936d;

    /* renamed from: e, reason: collision with root package name */
    public final vb.e f6937e;

    /* renamed from: f, reason: collision with root package name */
    public d7.a f6938f;

    /* renamed from: g, reason: collision with root package name */
    public final b f6939g;

    /* renamed from: h, reason: collision with root package name */
    public int f6940h;

    /* renamed from: i, reason: collision with root package name */
    public SupportAnimation f6941i;

    /* compiled from: BrowseAdapter.kt */
    /* loaded from: classes.dex */
    public static final class a extends j.f<p4.p> {
        @Override // androidx.recyclerview.widget.j.f
        /* renamed from: d, reason: merged with bridge method [inline-methods] */
        public boolean a(p4.p pVar, p4.p pVar2) {
            jc.l.f(pVar, "oldItem");
            jc.l.f(pVar2, "newItem");
            return jc.l.a(pVar, pVar2);
        }

        @Override // androidx.recyclerview.widget.j.f
        /* renamed from: e, reason: merged with bridge method [inline-methods] */
        public boolean b(p4.p pVar, p4.p pVar2) {
            jc.l.f(pVar, "oldItem");
            jc.l.f(pVar2, "newItem");
            return pVar.m() == pVar2.m();
        }
    }

    /* compiled from: BrowseAdapter.kt */
    /* loaded from: classes.dex */
    public interface b {
        void a(p4.p pVar, int i10);

        void h(p4.p pVar);
    }

    /* compiled from: Injekt.kt */
    /* renamed from: g6.c$c, reason: collision with other inner class name */
    /* loaded from: classes.dex */
    public static final class C0131c extends jc.m implements ic.a<f4.d> {

        /* renamed from: f, reason: collision with root package name */
        public static final C0131c f6942f = new C0131c();

        /* compiled from: TypeInfo.kt */
        /* renamed from: g6.c$c$a */
        /* loaded from: classes.dex */
        public static final class a extends zd.a<f4.d> {
        }

        public C0131c() {
            super(0);
        }

        /* JADX WARN: Type inference failed for: r0v1, types: [java.lang.Object, f4.d] */
        @Override // ic.a
        public final f4.d invoke() {
            return yd.a.a().a(new a().getType());
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public c(e eVar) {
        super(new a(), null, null, 6, null);
        jc.l.f(eVar, "fragment");
        this.f6936d = eVar;
        this.f6937e = vb.f.a(C0131c.f6942f);
        this.f6939g = eVar;
        this.f6941i = new ScaleAnimation();
    }

    public static final void t(q5.a aVar, p4.p pVar, c cVar, int i10, View view) {
        jc.l.f(aVar, "$holder");
        jc.l.f(pVar, "$item");
        jc.l.f(cVar, "this$0");
        if (aVar.b(pVar)) {
            cVar.f6939g.a(pVar, i10);
        }
    }

    public static final boolean u(q5.a aVar, p4.p pVar, View view) {
        jc.l.f(aVar, "$holder");
        jc.l.f(pVar, "$item");
        aVar.c(pVar);
        return true;
    }

    public final void o(q5.a aVar, int i10) {
        SupportAnimation supportAnimation;
        if (aVar == null) {
            return;
        }
        int i11 = 0;
        if ((i10 > this.f6940h) && (supportAnimation = this.f6941i) != null) {
            View view = aVar.itemView;
            jc.l.e(view, "h.itemView");
            Animator[] animators = supportAnimation.getAnimators(view);
            int length = animators.length;
            while (i11 < length) {
                Animator animator = animators[i11];
                i11++;
                animator.setDuration(supportAnimation.getAnimationDuration());
                animator.setInterpolator(supportAnimation.getInterpolator());
                animator.start();
            }
        }
        this.f6940h = i10;
    }

    public final b p() {
        return this.f6939g;
    }

    public final f4.d q() {
        return (f4.d) this.f6937e.getValue();
    }

    public final q4.a r() {
        return q().B();
    }

    @Override // androidx.recyclerview.widget.RecyclerView.h
    /* renamed from: s, reason: merged with bridge method [inline-methods] */
    public void onBindViewHolder(final q5.a aVar, final int i10) {
        jc.l.f(aVar, "holder");
        final p4.p g10 = g(i10);
        if (g10 == null) {
            return;
        }
        aVar.e(this.f6938f);
        aVar.itemView.setOnClickListener(new View.OnClickListener() { // from class: g6.a
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                c.t(q5.a.this, g10, this, i10, view);
            }
        });
        aVar.itemView.setOnLongClickListener(new View.OnLongClickListener() { // from class: g6.b
            @Override // android.view.View.OnLongClickListener
            public final boolean onLongClick(View view) {
                boolean u10;
                u10 = c.u(q5.a.this, g10, view);
                return u10;
            }
        });
        o(aVar, i10);
        aVar.a(g10);
        aVar.d(g10);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.h
    /* renamed from: v, reason: merged with bridge method [inline-methods] */
    public q5.a onCreateViewHolder(ViewGroup viewGroup, int i10) {
        jc.l.f(viewGroup, "parent");
        if (r() == q4.a.GRID) {
            return m.f6985c.a(viewGroup);
        }
        return o.f6989c.a(viewGroup);
    }

    public final void w() {
        if (getItemCount() <= 0) {
            return;
        }
        ArrayList arrayList = new ArrayList();
        Iterator<Integer> it2 = nc.g.i(0, getItemCount()).iterator();
        while (it2.hasNext()) {
            p4.p g10 = g(((z) it2).a());
            if (g10 != null) {
                arrayList.add(g10);
            }
        }
        d7.a aVar = this.f6938f;
        if (aVar == null) {
            return;
        }
        aVar.f(arrayList);
    }

    public final void x(d7.a aVar) {
        if (aVar == null) {
            aVar = null;
        } else {
            aVar.j(this);
        }
        this.f6938f = aVar;
    }
}
