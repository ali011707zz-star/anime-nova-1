package x6;

import android.animation.Animator;
import android.view.View;
import android.view.ViewGroup;
import androidx.recyclerview.widget.j;
import g6.o;
import io.wax911.support.base.animation.SupportAnimation;
import io.wax911.support.custom.animation.ScaleAnimation;
import k1.r0;
import p4.p;

/* compiled from: SeasonAdapter.kt */
/* loaded from: classes.dex */
public final class g extends r0<p, q5.a> {

    /* renamed from: d, reason: collision with root package name */
    public final k f16059d;

    /* renamed from: e, reason: collision with root package name */
    public final vb.e f16060e;

    /* renamed from: f, reason: collision with root package name */
    public final b f16061f;

    /* renamed from: g, reason: collision with root package name */
    public int f16062g;

    /* renamed from: h, reason: collision with root package name */
    public SupportAnimation f16063h;

    /* compiled from: SeasonAdapter.kt */
    /* loaded from: classes.dex */
    public static final class a extends j.f<p> {
        @Override // androidx.recyclerview.widget.j.f
        /* renamed from: d, reason: merged with bridge method [inline-methods] */
        public boolean a(p pVar, p pVar2) {
            jc.l.f(pVar, "oldItem");
            jc.l.f(pVar2, "newItem");
            return jc.l.a(pVar, pVar2);
        }

        @Override // androidx.recyclerview.widget.j.f
        /* renamed from: e, reason: merged with bridge method [inline-methods] */
        public boolean b(p pVar, p pVar2) {
            jc.l.f(pVar, "oldItem");
            jc.l.f(pVar2, "newItem");
            return pVar.m() == pVar2.m();
        }
    }

    /* compiled from: SeasonAdapter.kt */
    /* loaded from: classes.dex */
    public interface b {
        void a(p pVar, int i10);
    }

    /* compiled from: Injekt.kt */
    /* loaded from: classes.dex */
    public static final class c extends jc.m implements ic.a<f4.d> {

        /* renamed from: f, reason: collision with root package name */
        public static final c f16064f = new c();

        /* compiled from: TypeInfo.kt */
        /* loaded from: classes.dex */
        public static final class a extends zd.a<f4.d> {
        }

        public c() {
            super(0);
        }

        /* JADX WARN: Type inference failed for: r0v1, types: [java.lang.Object, f4.d] */
        @Override // ic.a
        public final f4.d invoke() {
            return yd.a.a().a(new a().getType());
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public g(k kVar) {
        super(new a(), null, null, 6, null);
        jc.l.f(kVar, "fragment");
        this.f16059d = kVar;
        this.f16060e = vb.f.a(c.f16064f);
        this.f16061f = kVar;
        this.f16063h = new ScaleAnimation();
    }

    public static final void r(q5.a aVar, p pVar, g gVar, int i10, View view) {
        jc.l.f(aVar, "$holder");
        jc.l.f(pVar, "$item");
        jc.l.f(gVar, "this$0");
        if (aVar.b(pVar)) {
            gVar.f16061f.a(pVar, i10);
        }
    }

    public final void n(q5.a aVar, int i10) {
        SupportAnimation supportAnimation;
        if (aVar == null) {
            return;
        }
        int i11 = 0;
        if ((i10 > this.f16062g) && (supportAnimation = this.f16063h) != null) {
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
        this.f16062g = i10;
    }

    public final f4.d o() {
        return (f4.d) this.f16060e.getValue();
    }

    public final q4.a p() {
        return o().B();
    }

    @Override // androidx.recyclerview.widget.RecyclerView.h
    /* renamed from: q, reason: merged with bridge method [inline-methods] */
    public void onBindViewHolder(final q5.a aVar, final int i10) {
        jc.l.f(aVar, "holder");
        final p g10 = g(i10);
        if (g10 == null) {
            return;
        }
        aVar.itemView.setOnClickListener(new View.OnClickListener() { // from class: x6.f
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                g.r(q5.a.this, g10, this, i10, view);
            }
        });
        n(aVar, i10);
        aVar.a(g10);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.h
    /* renamed from: s, reason: merged with bridge method [inline-methods] */
    public q5.a onCreateViewHolder(ViewGroup viewGroup, int i10) {
        jc.l.f(viewGroup, "parent");
        if (p() == q4.a.GRID) {
            return g6.m.f6985c.a(viewGroup);
        }
        return o.f6989c.a(viewGroup);
    }
}
