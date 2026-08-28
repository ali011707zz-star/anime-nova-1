package x1;

import android.annotation.SuppressLint;
import android.graphics.Rect;
import android.view.View;
import android.view.ViewGroup;
import java.util.ArrayList;
import java.util.List;
import x1.o;

/* compiled from: FragmentTransitionSupport.java */
@SuppressLint({"RestrictedApi"})
/* loaded from: classes.dex */
public class e extends androidx.fragment.app.a0 {

    /* compiled from: FragmentTransitionSupport.java */
    /* loaded from: classes.dex */
    public class a extends o.f {

        /* renamed from: a, reason: collision with root package name */
        public final /* synthetic */ Rect f15727a;

        public a(Rect rect) {
            this.f15727a = rect;
        }

        @Override // x1.o.f
        public Rect a(o oVar) {
            return this.f15727a;
        }
    }

    /* compiled from: FragmentTransitionSupport.java */
    /* loaded from: classes.dex */
    public class b implements o.g {

        /* renamed from: a, reason: collision with root package name */
        public final /* synthetic */ View f15729a;

        /* renamed from: b, reason: collision with root package name */
        public final /* synthetic */ ArrayList f15730b;

        public b(View view, ArrayList arrayList) {
            this.f15729a = view;
            this.f15730b = arrayList;
        }

        @Override // x1.o.g
        public void onTransitionCancel(o oVar) {
        }

        @Override // x1.o.g
        public void onTransitionEnd(o oVar) {
            oVar.removeListener(this);
            this.f15729a.setVisibility(8);
            int size = this.f15730b.size();
            for (int i10 = 0; i10 < size; i10++) {
                ((View) this.f15730b.get(i10)).setVisibility(0);
            }
        }

        @Override // x1.o.g
        public void onTransitionPause(o oVar) {
        }

        @Override // x1.o.g
        public void onTransitionResume(o oVar) {
        }

        @Override // x1.o.g
        public void onTransitionStart(o oVar) {
        }
    }

    /* compiled from: FragmentTransitionSupport.java */
    /* loaded from: classes.dex */
    public class c extends p {

        /* renamed from: a, reason: collision with root package name */
        public final /* synthetic */ Object f15732a;

        /* renamed from: b, reason: collision with root package name */
        public final /* synthetic */ ArrayList f15733b;

        /* renamed from: c, reason: collision with root package name */
        public final /* synthetic */ Object f15734c;

        /* renamed from: d, reason: collision with root package name */
        public final /* synthetic */ ArrayList f15735d;

        /* renamed from: e, reason: collision with root package name */
        public final /* synthetic */ Object f15736e;

        /* renamed from: f, reason: collision with root package name */
        public final /* synthetic */ ArrayList f15737f;

        public c(Object obj, ArrayList arrayList, Object obj2, ArrayList arrayList2, Object obj3, ArrayList arrayList3) {
            this.f15732a = obj;
            this.f15733b = arrayList;
            this.f15734c = obj2;
            this.f15735d = arrayList2;
            this.f15736e = obj3;
            this.f15737f = arrayList3;
        }

        @Override // x1.o.g
        public void onTransitionEnd(o oVar) {
            oVar.removeListener(this);
        }

        @Override // x1.p, x1.o.g
        public void onTransitionStart(o oVar) {
            Object obj = this.f15732a;
            if (obj != null) {
                e.this.q(obj, this.f15733b, null);
            }
            Object obj2 = this.f15734c;
            if (obj2 != null) {
                e.this.q(obj2, this.f15735d, null);
            }
            Object obj3 = this.f15736e;
            if (obj3 != null) {
                e.this.q(obj3, this.f15737f, null);
            }
        }
    }

    /* compiled from: FragmentTransitionSupport.java */
    /* loaded from: classes.dex */
    public class d extends o.f {

        /* renamed from: a, reason: collision with root package name */
        public final /* synthetic */ Rect f15739a;

        public d(Rect rect) {
            this.f15739a = rect;
        }

        @Override // x1.o.f
        public Rect a(o oVar) {
            Rect rect = this.f15739a;
            if (rect == null || rect.isEmpty()) {
                return null;
            }
            return this.f15739a;
        }
    }

    public static boolean C(o oVar) {
        return (androidx.fragment.app.a0.l(oVar.getTargetIds()) && androidx.fragment.app.a0.l(oVar.getTargetNames()) && androidx.fragment.app.a0.l(oVar.getTargetTypes())) ? false : true;
    }

    @Override // androidx.fragment.app.a0
    public void A(Object obj, ArrayList<View> arrayList, ArrayList<View> arrayList2) {
        s sVar = (s) obj;
        if (sVar != null) {
            sVar.getTargets().clear();
            sVar.getTargets().addAll(arrayList2);
            q(sVar, arrayList, arrayList2);
        }
    }

    @Override // androidx.fragment.app.a0
    public Object B(Object obj) {
        if (obj == null) {
            return null;
        }
        s sVar = new s();
        sVar.f((o) obj);
        return sVar;
    }

    @Override // androidx.fragment.app.a0
    public void a(Object obj, View view) {
        if (obj != null) {
            ((o) obj).addTarget(view);
        }
    }

    @Override // androidx.fragment.app.a0
    public void b(Object obj, ArrayList<View> arrayList) {
        o oVar = (o) obj;
        if (oVar == null) {
            return;
        }
        int i10 = 0;
        if (oVar instanceof s) {
            s sVar = (s) oVar;
            int i11 = sVar.i();
            while (i10 < i11) {
                b(sVar.h(i10), arrayList);
                i10++;
            }
            return;
        }
        if (C(oVar) || !androidx.fragment.app.a0.l(oVar.getTargets())) {
            return;
        }
        int size = arrayList.size();
        while (i10 < size) {
            oVar.addTarget(arrayList.get(i10));
            i10++;
        }
    }

    @Override // androidx.fragment.app.a0
    public void c(ViewGroup viewGroup, Object obj) {
        q.a(viewGroup, (o) obj);
    }

    @Override // androidx.fragment.app.a0
    public boolean e(Object obj) {
        return obj instanceof o;
    }

    @Override // androidx.fragment.app.a0
    public Object g(Object obj) {
        if (obj != null) {
            return ((o) obj).clone();
        }
        return null;
    }

    @Override // androidx.fragment.app.a0
    public Object m(Object obj, Object obj2, Object obj3) {
        o oVar = (o) obj;
        o oVar2 = (o) obj2;
        o oVar3 = (o) obj3;
        if (oVar != null && oVar2 != null) {
            oVar = new s().f(oVar).f(oVar2).r(1);
        } else if (oVar == null) {
            oVar = oVar2 != null ? oVar2 : null;
        }
        if (oVar3 == null) {
            return oVar;
        }
        s sVar = new s();
        if (oVar != null) {
            sVar.f(oVar);
        }
        sVar.f(oVar3);
        return sVar;
    }

    @Override // androidx.fragment.app.a0
    public Object n(Object obj, Object obj2, Object obj3) {
        s sVar = new s();
        if (obj != null) {
            sVar.f((o) obj);
        }
        if (obj2 != null) {
            sVar.f((o) obj2);
        }
        if (obj3 != null) {
            sVar.f((o) obj3);
        }
        return sVar;
    }

    @Override // androidx.fragment.app.a0
    public void p(Object obj, View view) {
        if (obj != null) {
            ((o) obj).removeTarget(view);
        }
    }

    @Override // androidx.fragment.app.a0
    public void q(Object obj, ArrayList<View> arrayList, ArrayList<View> arrayList2) {
        o oVar = (o) obj;
        int i10 = 0;
        if (oVar instanceof s) {
            s sVar = (s) oVar;
            int i11 = sVar.i();
            while (i10 < i11) {
                q(sVar.h(i10), arrayList, arrayList2);
                i10++;
            }
            return;
        }
        if (C(oVar)) {
            return;
        }
        List<View> targets = oVar.getTargets();
        if (targets.size() == arrayList.size() && targets.containsAll(arrayList)) {
            int size = arrayList2 == null ? 0 : arrayList2.size();
            while (i10 < size) {
                oVar.addTarget(arrayList2.get(i10));
                i10++;
            }
            for (int size2 = arrayList.size() - 1; size2 >= 0; size2--) {
                oVar.removeTarget(arrayList.get(size2));
            }
        }
    }

    @Override // androidx.fragment.app.a0
    public void r(Object obj, View view, ArrayList<View> arrayList) {
        ((o) obj).addListener(new b(view, arrayList));
    }

    @Override // androidx.fragment.app.a0
    public void t(Object obj, Object obj2, ArrayList<View> arrayList, Object obj3, ArrayList<View> arrayList2, Object obj4, ArrayList<View> arrayList3) {
        ((o) obj).addListener(new c(obj2, arrayList, obj3, arrayList2, obj4, arrayList3));
    }

    @Override // androidx.fragment.app.a0
    public void u(Object obj, Rect rect) {
        if (obj != null) {
            ((o) obj).setEpicenterCallback(new d(rect));
        }
    }

    @Override // androidx.fragment.app.a0
    public void v(Object obj, View view) {
        if (view != null) {
            Rect rect = new Rect();
            k(view, rect);
            ((o) obj).setEpicenterCallback(new a(rect));
        }
    }

    @Override // androidx.fragment.app.a0
    public void z(Object obj, View view, ArrayList<View> arrayList) {
        s sVar = (s) obj;
        List<View> targets = sVar.getTargets();
        targets.clear();
        int size = arrayList.size();
        for (int i10 = 0; i10 < size; i10++) {
            androidx.fragment.app.a0.d(targets, arrayList.get(i10));
        }
        targets.add(view);
        arrayList.add(view);
        b(sVar, arrayList);
    }
}
