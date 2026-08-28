package androidx.recyclerview.widget;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.TimeInterpolator;
import android.animation.ValueAnimator;
import android.view.View;
import android.view.ViewPropertyAnimator;
import androidx.recyclerview.widget.RecyclerView;
import com.google.android.material.internal.StaticLayoutBuilderCompat;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

/* compiled from: DefaultItemAnimator.java */
/* loaded from: classes.dex */
public class i extends w {

    /* renamed from: s, reason: collision with root package name */
    public static TimeInterpolator f2937s;

    /* renamed from: h, reason: collision with root package name */
    public ArrayList<RecyclerView.e0> f2938h = new ArrayList<>();

    /* renamed from: i, reason: collision with root package name */
    public ArrayList<RecyclerView.e0> f2939i = new ArrayList<>();

    /* renamed from: j, reason: collision with root package name */
    public ArrayList<j> f2940j = new ArrayList<>();

    /* renamed from: k, reason: collision with root package name */
    public ArrayList<C0049i> f2941k = new ArrayList<>();

    /* renamed from: l, reason: collision with root package name */
    public ArrayList<ArrayList<RecyclerView.e0>> f2942l = new ArrayList<>();

    /* renamed from: m, reason: collision with root package name */
    public ArrayList<ArrayList<j>> f2943m = new ArrayList<>();

    /* renamed from: n, reason: collision with root package name */
    public ArrayList<ArrayList<C0049i>> f2944n = new ArrayList<>();

    /* renamed from: o, reason: collision with root package name */
    public ArrayList<RecyclerView.e0> f2945o = new ArrayList<>();

    /* renamed from: p, reason: collision with root package name */
    public ArrayList<RecyclerView.e0> f2946p = new ArrayList<>();

    /* renamed from: q, reason: collision with root package name */
    public ArrayList<RecyclerView.e0> f2947q = new ArrayList<>();

    /* renamed from: r, reason: collision with root package name */
    public ArrayList<RecyclerView.e0> f2948r = new ArrayList<>();

    /* compiled from: DefaultItemAnimator.java */
    /* loaded from: classes.dex */
    public class a implements Runnable {

        /* renamed from: f, reason: collision with root package name */
        public final /* synthetic */ ArrayList f2949f;

        public a(ArrayList arrayList) {
            this.f2949f = arrayList;
        }

        @Override // java.lang.Runnable
        public void run() {
            Iterator it2 = this.f2949f.iterator();
            while (it2.hasNext()) {
                j jVar = (j) it2.next();
                i.this.S(jVar.f2983a, jVar.f2984b, jVar.f2985c, jVar.f2986d, jVar.f2987e);
            }
            this.f2949f.clear();
            i.this.f2943m.remove(this.f2949f);
        }
    }

    /* compiled from: DefaultItemAnimator.java */
    /* loaded from: classes.dex */
    public class b implements Runnable {

        /* renamed from: f, reason: collision with root package name */
        public final /* synthetic */ ArrayList f2951f;

        public b(ArrayList arrayList) {
            this.f2951f = arrayList;
        }

        @Override // java.lang.Runnable
        public void run() {
            Iterator it2 = this.f2951f.iterator();
            while (it2.hasNext()) {
                i.this.R((C0049i) it2.next());
            }
            this.f2951f.clear();
            i.this.f2944n.remove(this.f2951f);
        }
    }

    /* compiled from: DefaultItemAnimator.java */
    /* loaded from: classes.dex */
    public class c implements Runnable {

        /* renamed from: f, reason: collision with root package name */
        public final /* synthetic */ ArrayList f2953f;

        public c(ArrayList arrayList) {
            this.f2953f = arrayList;
        }

        @Override // java.lang.Runnable
        public void run() {
            Iterator it2 = this.f2953f.iterator();
            while (it2.hasNext()) {
                i.this.Q((RecyclerView.e0) it2.next());
            }
            this.f2953f.clear();
            i.this.f2942l.remove(this.f2953f);
        }
    }

    /* compiled from: DefaultItemAnimator.java */
    /* loaded from: classes.dex */
    public class d extends AnimatorListenerAdapter {

        /* renamed from: a, reason: collision with root package name */
        public final /* synthetic */ RecyclerView.e0 f2955a;

        /* renamed from: b, reason: collision with root package name */
        public final /* synthetic */ ViewPropertyAnimator f2956b;

        /* renamed from: c, reason: collision with root package name */
        public final /* synthetic */ View f2957c;

        public d(RecyclerView.e0 e0Var, ViewPropertyAnimator viewPropertyAnimator, View view) {
            this.f2955a = e0Var;
            this.f2956b = viewPropertyAnimator;
            this.f2957c = view;
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationEnd(Animator animator) {
            this.f2956b.setListener(null);
            this.f2957c.setAlpha(1.0f);
            i.this.G(this.f2955a);
            i.this.f2947q.remove(this.f2955a);
            i.this.V();
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationStart(Animator animator) {
            i.this.H(this.f2955a);
        }
    }

    /* compiled from: DefaultItemAnimator.java */
    /* loaded from: classes.dex */
    public class e extends AnimatorListenerAdapter {

        /* renamed from: a, reason: collision with root package name */
        public final /* synthetic */ RecyclerView.e0 f2959a;

        /* renamed from: b, reason: collision with root package name */
        public final /* synthetic */ View f2960b;

        /* renamed from: c, reason: collision with root package name */
        public final /* synthetic */ ViewPropertyAnimator f2961c;

        public e(RecyclerView.e0 e0Var, View view, ViewPropertyAnimator viewPropertyAnimator) {
            this.f2959a = e0Var;
            this.f2960b = view;
            this.f2961c = viewPropertyAnimator;
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationCancel(Animator animator) {
            this.f2960b.setAlpha(1.0f);
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationEnd(Animator animator) {
            this.f2961c.setListener(null);
            i.this.A(this.f2959a);
            i.this.f2945o.remove(this.f2959a);
            i.this.V();
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationStart(Animator animator) {
            i.this.B(this.f2959a);
        }
    }

    /* compiled from: DefaultItemAnimator.java */
    /* loaded from: classes.dex */
    public class f extends AnimatorListenerAdapter {

        /* renamed from: a, reason: collision with root package name */
        public final /* synthetic */ RecyclerView.e0 f2963a;

        /* renamed from: b, reason: collision with root package name */
        public final /* synthetic */ int f2964b;

        /* renamed from: c, reason: collision with root package name */
        public final /* synthetic */ View f2965c;

        /* renamed from: d, reason: collision with root package name */
        public final /* synthetic */ int f2966d;

        /* renamed from: e, reason: collision with root package name */
        public final /* synthetic */ ViewPropertyAnimator f2967e;

        public f(RecyclerView.e0 e0Var, int i10, View view, int i11, ViewPropertyAnimator viewPropertyAnimator) {
            this.f2963a = e0Var;
            this.f2964b = i10;
            this.f2965c = view;
            this.f2966d = i11;
            this.f2967e = viewPropertyAnimator;
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationCancel(Animator animator) {
            if (this.f2964b != 0) {
                this.f2965c.setTranslationX(StaticLayoutBuilderCompat.DEFAULT_LINE_SPACING_ADD);
            }
            if (this.f2966d != 0) {
                this.f2965c.setTranslationY(StaticLayoutBuilderCompat.DEFAULT_LINE_SPACING_ADD);
            }
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationEnd(Animator animator) {
            this.f2967e.setListener(null);
            i.this.E(this.f2963a);
            i.this.f2946p.remove(this.f2963a);
            i.this.V();
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationStart(Animator animator) {
            i.this.F(this.f2963a);
        }
    }

    /* compiled from: DefaultItemAnimator.java */
    /* loaded from: classes.dex */
    public class g extends AnimatorListenerAdapter {

        /* renamed from: a, reason: collision with root package name */
        public final /* synthetic */ C0049i f2969a;

        /* renamed from: b, reason: collision with root package name */
        public final /* synthetic */ ViewPropertyAnimator f2970b;

        /* renamed from: c, reason: collision with root package name */
        public final /* synthetic */ View f2971c;

        public g(C0049i c0049i, ViewPropertyAnimator viewPropertyAnimator, View view) {
            this.f2969a = c0049i;
            this.f2970b = viewPropertyAnimator;
            this.f2971c = view;
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationEnd(Animator animator) {
            this.f2970b.setListener(null);
            this.f2971c.setAlpha(1.0f);
            this.f2971c.setTranslationX(StaticLayoutBuilderCompat.DEFAULT_LINE_SPACING_ADD);
            this.f2971c.setTranslationY(StaticLayoutBuilderCompat.DEFAULT_LINE_SPACING_ADD);
            i.this.C(this.f2969a.f2977a, true);
            i.this.f2948r.remove(this.f2969a.f2977a);
            i.this.V();
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationStart(Animator animator) {
            i.this.D(this.f2969a.f2977a, true);
        }
    }

    /* compiled from: DefaultItemAnimator.java */
    /* loaded from: classes.dex */
    public class h extends AnimatorListenerAdapter {

        /* renamed from: a, reason: collision with root package name */
        public final /* synthetic */ C0049i f2973a;

        /* renamed from: b, reason: collision with root package name */
        public final /* synthetic */ ViewPropertyAnimator f2974b;

        /* renamed from: c, reason: collision with root package name */
        public final /* synthetic */ View f2975c;

        public h(C0049i c0049i, ViewPropertyAnimator viewPropertyAnimator, View view) {
            this.f2973a = c0049i;
            this.f2974b = viewPropertyAnimator;
            this.f2975c = view;
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationEnd(Animator animator) {
            this.f2974b.setListener(null);
            this.f2975c.setAlpha(1.0f);
            this.f2975c.setTranslationX(StaticLayoutBuilderCompat.DEFAULT_LINE_SPACING_ADD);
            this.f2975c.setTranslationY(StaticLayoutBuilderCompat.DEFAULT_LINE_SPACING_ADD);
            i.this.C(this.f2973a.f2978b, false);
            i.this.f2948r.remove(this.f2973a.f2978b);
            i.this.V();
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationStart(Animator animator) {
            i.this.D(this.f2973a.f2978b, false);
        }
    }

    /* compiled from: DefaultItemAnimator.java */
    /* loaded from: classes.dex */
    public static class j {

        /* renamed from: a, reason: collision with root package name */
        public RecyclerView.e0 f2983a;

        /* renamed from: b, reason: collision with root package name */
        public int f2984b;

        /* renamed from: c, reason: collision with root package name */
        public int f2985c;

        /* renamed from: d, reason: collision with root package name */
        public int f2986d;

        /* renamed from: e, reason: collision with root package name */
        public int f2987e;

        public j(RecyclerView.e0 e0Var, int i10, int i11, int i12, int i13) {
            this.f2983a = e0Var;
            this.f2984b = i10;
            this.f2985c = i11;
            this.f2986d = i12;
            this.f2987e = i13;
        }
    }

    public void Q(RecyclerView.e0 e0Var) {
        View view = e0Var.itemView;
        ViewPropertyAnimator animate = view.animate();
        this.f2945o.add(e0Var);
        animate.alpha(1.0f).setDuration(l()).setListener(new e(e0Var, view, animate)).start();
    }

    public void R(C0049i c0049i) {
        RecyclerView.e0 e0Var = c0049i.f2977a;
        View view = e0Var == null ? null : e0Var.itemView;
        RecyclerView.e0 e0Var2 = c0049i.f2978b;
        View view2 = e0Var2 != null ? e0Var2.itemView : null;
        if (view != null) {
            ViewPropertyAnimator duration = view.animate().setDuration(m());
            this.f2948r.add(c0049i.f2977a);
            duration.translationX(c0049i.f2981e - c0049i.f2979c);
            duration.translationY(c0049i.f2982f - c0049i.f2980d);
            duration.alpha(StaticLayoutBuilderCompat.DEFAULT_LINE_SPACING_ADD).setListener(new g(c0049i, duration, view)).start();
        }
        if (view2 != null) {
            ViewPropertyAnimator animate = view2.animate();
            this.f2948r.add(c0049i.f2978b);
            animate.translationX(StaticLayoutBuilderCompat.DEFAULT_LINE_SPACING_ADD).translationY(StaticLayoutBuilderCompat.DEFAULT_LINE_SPACING_ADD).setDuration(m()).alpha(1.0f).setListener(new h(c0049i, animate, view2)).start();
        }
    }

    public void S(RecyclerView.e0 e0Var, int i10, int i11, int i12, int i13) {
        View view = e0Var.itemView;
        int i14 = i12 - i10;
        int i15 = i13 - i11;
        if (i14 != 0) {
            view.animate().translationX(StaticLayoutBuilderCompat.DEFAULT_LINE_SPACING_ADD);
        }
        if (i15 != 0) {
            view.animate().translationY(StaticLayoutBuilderCompat.DEFAULT_LINE_SPACING_ADD);
        }
        ViewPropertyAnimator animate = view.animate();
        this.f2946p.add(e0Var);
        animate.setDuration(n()).setListener(new f(e0Var, i14, view, i15, animate)).start();
    }

    public final void T(RecyclerView.e0 e0Var) {
        View view = e0Var.itemView;
        ViewPropertyAnimator animate = view.animate();
        this.f2947q.add(e0Var);
        animate.setDuration(o()).alpha(StaticLayoutBuilderCompat.DEFAULT_LINE_SPACING_ADD).setListener(new d(e0Var, animate, view)).start();
    }

    public void U(List<RecyclerView.e0> list) {
        for (int size = list.size() - 1; size >= 0; size--) {
            list.get(size).itemView.animate().cancel();
        }
    }

    public void V() {
        if (p()) {
            return;
        }
        i();
    }

    public final void W(List<C0049i> list, RecyclerView.e0 e0Var) {
        for (int size = list.size() - 1; size >= 0; size--) {
            C0049i c0049i = list.get(size);
            if (Y(c0049i, e0Var) && c0049i.f2977a == null && c0049i.f2978b == null) {
                list.remove(c0049i);
            }
        }
    }

    public final void X(C0049i c0049i) {
        RecyclerView.e0 e0Var = c0049i.f2977a;
        if (e0Var != null) {
            Y(c0049i, e0Var);
        }
        RecyclerView.e0 e0Var2 = c0049i.f2978b;
        if (e0Var2 != null) {
            Y(c0049i, e0Var2);
        }
    }

    public final boolean Y(C0049i c0049i, RecyclerView.e0 e0Var) {
        boolean z10 = false;
        if (c0049i.f2978b == e0Var) {
            c0049i.f2978b = null;
        } else {
            if (c0049i.f2977a != e0Var) {
                return false;
            }
            c0049i.f2977a = null;
            z10 = true;
        }
        e0Var.itemView.setAlpha(1.0f);
        e0Var.itemView.setTranslationX(StaticLayoutBuilderCompat.DEFAULT_LINE_SPACING_ADD);
        e0Var.itemView.setTranslationY(StaticLayoutBuilderCompat.DEFAULT_LINE_SPACING_ADD);
        C(e0Var, z10);
        return true;
    }

    public final void Z(RecyclerView.e0 e0Var) {
        if (f2937s == null) {
            f2937s = new ValueAnimator().getInterpolator();
        }
        e0Var.itemView.animate().setInterpolator(f2937s);
        j(e0Var);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.m
    public boolean g(RecyclerView.e0 e0Var, List<Object> list) {
        return !list.isEmpty() || super.g(e0Var, list);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.m
    public void j(RecyclerView.e0 e0Var) {
        View view = e0Var.itemView;
        view.animate().cancel();
        int size = this.f2940j.size();
        while (true) {
            size--;
            if (size < 0) {
                break;
            }
            if (this.f2940j.get(size).f2983a == e0Var) {
                view.setTranslationY(StaticLayoutBuilderCompat.DEFAULT_LINE_SPACING_ADD);
                view.setTranslationX(StaticLayoutBuilderCompat.DEFAULT_LINE_SPACING_ADD);
                E(e0Var);
                this.f2940j.remove(size);
            }
        }
        W(this.f2941k, e0Var);
        if (this.f2938h.remove(e0Var)) {
            view.setAlpha(1.0f);
            G(e0Var);
        }
        if (this.f2939i.remove(e0Var)) {
            view.setAlpha(1.0f);
            A(e0Var);
        }
        for (int size2 = this.f2944n.size() - 1; size2 >= 0; size2--) {
            ArrayList<C0049i> arrayList = this.f2944n.get(size2);
            W(arrayList, e0Var);
            if (arrayList.isEmpty()) {
                this.f2944n.remove(size2);
            }
        }
        for (int size3 = this.f2943m.size() - 1; size3 >= 0; size3--) {
            ArrayList<j> arrayList2 = this.f2943m.get(size3);
            int size4 = arrayList2.size() - 1;
            while (true) {
                if (size4 < 0) {
                    break;
                }
                if (arrayList2.get(size4).f2983a == e0Var) {
                    view.setTranslationY(StaticLayoutBuilderCompat.DEFAULT_LINE_SPACING_ADD);
                    view.setTranslationX(StaticLayoutBuilderCompat.DEFAULT_LINE_SPACING_ADD);
                    E(e0Var);
                    arrayList2.remove(size4);
                    if (arrayList2.isEmpty()) {
                        this.f2943m.remove(size3);
                    }
                } else {
                    size4--;
                }
            }
        }
        for (int size5 = this.f2942l.size() - 1; size5 >= 0; size5--) {
            ArrayList<RecyclerView.e0> arrayList3 = this.f2942l.get(size5);
            if (arrayList3.remove(e0Var)) {
                view.setAlpha(1.0f);
                A(e0Var);
                if (arrayList3.isEmpty()) {
                    this.f2942l.remove(size5);
                }
            }
        }
        this.f2947q.remove(e0Var);
        this.f2945o.remove(e0Var);
        this.f2948r.remove(e0Var);
        this.f2946p.remove(e0Var);
        V();
    }

    @Override // androidx.recyclerview.widget.RecyclerView.m
    public void k() {
        int size = this.f2940j.size();
        while (true) {
            size--;
            if (size < 0) {
                break;
            }
            j jVar = this.f2940j.get(size);
            View view = jVar.f2983a.itemView;
            view.setTranslationY(StaticLayoutBuilderCompat.DEFAULT_LINE_SPACING_ADD);
            view.setTranslationX(StaticLayoutBuilderCompat.DEFAULT_LINE_SPACING_ADD);
            E(jVar.f2983a);
            this.f2940j.remove(size);
        }
        for (int size2 = this.f2938h.size() - 1; size2 >= 0; size2--) {
            G(this.f2938h.get(size2));
            this.f2938h.remove(size2);
        }
        int size3 = this.f2939i.size();
        while (true) {
            size3--;
            if (size3 < 0) {
                break;
            }
            RecyclerView.e0 e0Var = this.f2939i.get(size3);
            e0Var.itemView.setAlpha(1.0f);
            A(e0Var);
            this.f2939i.remove(size3);
        }
        for (int size4 = this.f2941k.size() - 1; size4 >= 0; size4--) {
            X(this.f2941k.get(size4));
        }
        this.f2941k.clear();
        if (p()) {
            for (int size5 = this.f2943m.size() - 1; size5 >= 0; size5--) {
                ArrayList<j> arrayList = this.f2943m.get(size5);
                for (int size6 = arrayList.size() - 1; size6 >= 0; size6--) {
                    j jVar2 = arrayList.get(size6);
                    View view2 = jVar2.f2983a.itemView;
                    view2.setTranslationY(StaticLayoutBuilderCompat.DEFAULT_LINE_SPACING_ADD);
                    view2.setTranslationX(StaticLayoutBuilderCompat.DEFAULT_LINE_SPACING_ADD);
                    E(jVar2.f2983a);
                    arrayList.remove(size6);
                    if (arrayList.isEmpty()) {
                        this.f2943m.remove(arrayList);
                    }
                }
            }
            for (int size7 = this.f2942l.size() - 1; size7 >= 0; size7--) {
                ArrayList<RecyclerView.e0> arrayList2 = this.f2942l.get(size7);
                for (int size8 = arrayList2.size() - 1; size8 >= 0; size8--) {
                    RecyclerView.e0 e0Var2 = arrayList2.get(size8);
                    e0Var2.itemView.setAlpha(1.0f);
                    A(e0Var2);
                    arrayList2.remove(size8);
                    if (arrayList2.isEmpty()) {
                        this.f2942l.remove(arrayList2);
                    }
                }
            }
            for (int size9 = this.f2944n.size() - 1; size9 >= 0; size9--) {
                ArrayList<C0049i> arrayList3 = this.f2944n.get(size9);
                for (int size10 = arrayList3.size() - 1; size10 >= 0; size10--) {
                    X(arrayList3.get(size10));
                    if (arrayList3.isEmpty()) {
                        this.f2944n.remove(arrayList3);
                    }
                }
            }
            U(this.f2947q);
            U(this.f2946p);
            U(this.f2945o);
            U(this.f2948r);
            i();
        }
    }

    @Override // androidx.recyclerview.widget.RecyclerView.m
    public boolean p() {
        return (this.f2939i.isEmpty() && this.f2941k.isEmpty() && this.f2940j.isEmpty() && this.f2938h.isEmpty() && this.f2946p.isEmpty() && this.f2947q.isEmpty() && this.f2945o.isEmpty() && this.f2948r.isEmpty() && this.f2943m.isEmpty() && this.f2942l.isEmpty() && this.f2944n.isEmpty()) ? false : true;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.m
    public void u() {
        boolean z10 = !this.f2938h.isEmpty();
        boolean z11 = !this.f2940j.isEmpty();
        boolean z12 = !this.f2941k.isEmpty();
        boolean z13 = !this.f2939i.isEmpty();
        if (z10 || z11 || z13 || z12) {
            Iterator<RecyclerView.e0> it2 = this.f2938h.iterator();
            while (it2.hasNext()) {
                T(it2.next());
            }
            this.f2938h.clear();
            if (z11) {
                ArrayList<j> arrayList = new ArrayList<>();
                arrayList.addAll(this.f2940j);
                this.f2943m.add(arrayList);
                this.f2940j.clear();
                a aVar = new a(arrayList);
                if (z10) {
                    q0.b0.m0(arrayList.get(0).f2983a.itemView, aVar, o());
                } else {
                    aVar.run();
                }
            }
            if (z12) {
                ArrayList<C0049i> arrayList2 = new ArrayList<>();
                arrayList2.addAll(this.f2941k);
                this.f2944n.add(arrayList2);
                this.f2941k.clear();
                b bVar = new b(arrayList2);
                if (z10) {
                    q0.b0.m0(arrayList2.get(0).f2977a.itemView, bVar, o());
                } else {
                    bVar.run();
                }
            }
            if (z13) {
                ArrayList<RecyclerView.e0> arrayList3 = new ArrayList<>();
                arrayList3.addAll(this.f2939i);
                this.f2942l.add(arrayList3);
                this.f2939i.clear();
                c cVar = new c(arrayList3);
                if (!z10 && !z11 && !z12) {
                    cVar.run();
                } else {
                    q0.b0.m0(arrayList3.get(0).itemView, cVar, (z10 ? o() : 0L) + Math.max(z11 ? n() : 0L, z12 ? m() : 0L));
                }
            }
        }
    }

    @Override // androidx.recyclerview.widget.w
    public boolean w(RecyclerView.e0 e0Var) {
        Z(e0Var);
        e0Var.itemView.setAlpha(StaticLayoutBuilderCompat.DEFAULT_LINE_SPACING_ADD);
        this.f2939i.add(e0Var);
        return true;
    }

    @Override // androidx.recyclerview.widget.w
    public boolean x(RecyclerView.e0 e0Var, RecyclerView.e0 e0Var2, int i10, int i11, int i12, int i13) {
        if (e0Var == e0Var2) {
            return y(e0Var, i10, i11, i12, i13);
        }
        float translationX = e0Var.itemView.getTranslationX();
        float translationY = e0Var.itemView.getTranslationY();
        float alpha = e0Var.itemView.getAlpha();
        Z(e0Var);
        int i14 = (int) ((i12 - i10) - translationX);
        int i15 = (int) ((i13 - i11) - translationY);
        e0Var.itemView.setTranslationX(translationX);
        e0Var.itemView.setTranslationY(translationY);
        e0Var.itemView.setAlpha(alpha);
        if (e0Var2 != null) {
            Z(e0Var2);
            e0Var2.itemView.setTranslationX(-i14);
            e0Var2.itemView.setTranslationY(-i15);
            e0Var2.itemView.setAlpha(StaticLayoutBuilderCompat.DEFAULT_LINE_SPACING_ADD);
        }
        this.f2941k.add(new C0049i(e0Var, e0Var2, i10, i11, i12, i13));
        return true;
    }

    @Override // androidx.recyclerview.widget.w
    public boolean y(RecyclerView.e0 e0Var, int i10, int i11, int i12, int i13) {
        View view = e0Var.itemView;
        int translationX = i10 + ((int) view.getTranslationX());
        int translationY = i11 + ((int) e0Var.itemView.getTranslationY());
        Z(e0Var);
        int i14 = i12 - translationX;
        int i15 = i13 - translationY;
        if (i14 == 0 && i15 == 0) {
            E(e0Var);
            return false;
        }
        if (i14 != 0) {
            view.setTranslationX(-i14);
        }
        if (i15 != 0) {
            view.setTranslationY(-i15);
        }
        this.f2940j.add(new j(e0Var, translationX, translationY, i12, i13));
        return true;
    }

    @Override // androidx.recyclerview.widget.w
    public boolean z(RecyclerView.e0 e0Var) {
        Z(e0Var);
        this.f2938h.add(e0Var);
        return true;
    }

    /* compiled from: DefaultItemAnimator.java */
    /* renamed from: androidx.recyclerview.widget.i$i, reason: collision with other inner class name */
    /* loaded from: classes.dex */
    public static class C0049i {

        /* renamed from: a, reason: collision with root package name */
        public RecyclerView.e0 f2977a;

        /* renamed from: b, reason: collision with root package name */
        public RecyclerView.e0 f2978b;

        /* renamed from: c, reason: collision with root package name */
        public int f2979c;

        /* renamed from: d, reason: collision with root package name */
        public int f2980d;

        /* renamed from: e, reason: collision with root package name */
        public int f2981e;

        /* renamed from: f, reason: collision with root package name */
        public int f2982f;

        public C0049i(RecyclerView.e0 e0Var, RecyclerView.e0 e0Var2) {
            this.f2977a = e0Var;
            this.f2978b = e0Var2;
        }

        public String toString() {
            return "ChangeInfo{oldHolder=" + this.f2977a + ", newHolder=" + this.f2978b + ", fromX=" + this.f2979c + ", fromY=" + this.f2980d + ", toX=" + this.f2981e + ", toY=" + this.f2982f + '}';
        }

        public C0049i(RecyclerView.e0 e0Var, RecyclerView.e0 e0Var2, int i10, int i11, int i12, int i13) {
            this(e0Var, e0Var2);
            this.f2979c = i10;
            this.f2980d = i11;
            this.f2981e = i12;
            this.f2982f = i13;
        }
    }
}
