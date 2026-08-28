package w6;

import android.animation.Animator;
import android.view.View;
import android.view.ViewGroup;
import androidx.recyclerview.widget.j;
import io.wax911.support.base.animation.SupportAnimation;
import io.wax911.support.custom.animation.ScaleAnimation;
import k1.r0;

/* compiled from: SearchAdapter.kt */
/* loaded from: classes.dex */
public final class d extends r0<p4.p, q5.a> {

    /* renamed from: d, reason: collision with root package name */
    public final k f15267d;

    /* renamed from: e, reason: collision with root package name */
    public final f4.d f15268e;

    /* renamed from: f, reason: collision with root package name */
    public final b f15269f;

    /* renamed from: g, reason: collision with root package name */
    public int f15270g;

    /* renamed from: h, reason: collision with root package name */
    public SupportAnimation f15271h;

    /* compiled from: SearchAdapter.kt */
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

    /* compiled from: SearchAdapter.kt */
    /* loaded from: classes.dex */
    public interface b {
        void a(p4.p pVar, int i10);
    }

    /* compiled from: TypeInfo.kt */
    /* loaded from: classes.dex */
    public static final class c extends zd.a<f4.d> {
    }

    public /* synthetic */ d(k kVar, f4.d dVar, int i10, jc.g gVar) {
        this(kVar, (i10 & 2) != 0 ? (f4.d) yd.a.a().a(new c().getType()) : dVar);
    }

    public static final void q(q5.a aVar, p4.p pVar, d dVar, int i10, View view) {
        jc.l.f(aVar, "$holder");
        jc.l.f(pVar, "$item");
        jc.l.f(dVar, "this$0");
        if (aVar.b(pVar)) {
            dVar.f15269f.a(pVar, i10);
        }
    }

    public final void n(q5.a aVar, int i10) {
        SupportAnimation supportAnimation;
        if (aVar == null) {
            return;
        }
        int i11 = 0;
        if ((i10 > this.f15270g) && (supportAnimation = this.f15271h) != null) {
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
        this.f15270g = i10;
    }

    public final q4.a o() {
        return this.f15268e.B();
    }

    @Override // androidx.recyclerview.widget.RecyclerView.h
    /* renamed from: p, reason: merged with bridge method [inline-methods] */
    public void onBindViewHolder(final q5.a aVar, final int i10) {
        jc.l.f(aVar, "holder");
        final p4.p g10 = g(i10);
        if (g10 == null) {
            return;
        }
        aVar.itemView.setOnClickListener(new View.OnClickListener() { // from class: w6.c
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                d.q(q5.a.this, g10, this, i10, view);
            }
        });
        n(aVar, i10);
        aVar.a(g10);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.h
    /* renamed from: r, reason: merged with bridge method [inline-methods] */
    public q5.a onCreateViewHolder(ViewGroup viewGroup, int i10) {
        jc.l.f(viewGroup, "parent");
        if (o() == q4.a.GRID) {
            return g6.m.f6985c.a(viewGroup);
        }
        return g6.o.f6989c.a(viewGroup);
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public d(k kVar, f4.d dVar) {
        super(new a(), null, null, 6, null);
        jc.l.f(kVar, "fragment");
        jc.l.f(dVar, "preference");
        this.f15267d = kVar;
        this.f15268e = dVar;
        this.f15269f = kVar;
        this.f15271h = new ScaleAnimation();
    }
}
