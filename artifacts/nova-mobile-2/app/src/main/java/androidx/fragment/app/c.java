package androidx.fragment.app;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.content.Context;
import android.graphics.Rect;
import android.view.View;
import android.view.ViewGroup;
import android.view.animation.Animation;
import androidx.fragment.app.e0;
import androidx.fragment.app.f;
import java.util.ArrayList;
import java.util.Collection;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import m0.c;

/* compiled from: DefaultSpecialEffectsController.java */
/* loaded from: classes.dex */
public class c extends e0 {

    /* compiled from: DefaultSpecialEffectsController.java */
    /* loaded from: classes.dex */
    public static /* synthetic */ class a {

        /* renamed from: a, reason: collision with root package name */
        public static final /* synthetic */ int[] f2143a;

        static {
            int[] iArr = new int[e0.e.c.values().length];
            f2143a = iArr;
            try {
                iArr[e0.e.c.GONE.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f2143a[e0.e.c.INVISIBLE.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f2143a[e0.e.c.REMOVED.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                f2143a[e0.e.c.VISIBLE.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
        }
    }

    /* compiled from: DefaultSpecialEffectsController.java */
    /* loaded from: classes.dex */
    public class b implements Runnable {

        /* renamed from: f, reason: collision with root package name */
        public final /* synthetic */ List f2144f;

        /* renamed from: g, reason: collision with root package name */
        public final /* synthetic */ e0.e f2145g;

        public b(List list, e0.e eVar) {
            this.f2144f = list;
            this.f2145g = eVar;
        }

        @Override // java.lang.Runnable
        public void run() {
            if (this.f2144f.contains(this.f2145g)) {
                this.f2144f.remove(this.f2145g);
                c.this.s(this.f2145g);
            }
        }
    }

    /* compiled from: DefaultSpecialEffectsController.java */
    /* renamed from: androidx.fragment.app.c$c, reason: collision with other inner class name */
    /* loaded from: classes.dex */
    public class C0037c extends AnimatorListenerAdapter {

        /* renamed from: a, reason: collision with root package name */
        public final /* synthetic */ ViewGroup f2147a;

        /* renamed from: b, reason: collision with root package name */
        public final /* synthetic */ View f2148b;

        /* renamed from: c, reason: collision with root package name */
        public final /* synthetic */ boolean f2149c;

        /* renamed from: d, reason: collision with root package name */
        public final /* synthetic */ e0.e f2150d;

        /* renamed from: e, reason: collision with root package name */
        public final /* synthetic */ k f2151e;

        public C0037c(ViewGroup viewGroup, View view, boolean z10, e0.e eVar, k kVar) {
            this.f2147a = viewGroup;
            this.f2148b = view;
            this.f2149c = z10;
            this.f2150d = eVar;
            this.f2151e = kVar;
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationEnd(Animator animator) {
            this.f2147a.endViewTransition(this.f2148b);
            if (this.f2149c) {
                this.f2150d.e().a(this.f2148b);
            }
            this.f2151e.a();
        }
    }

    /* compiled from: DefaultSpecialEffectsController.java */
    /* loaded from: classes.dex */
    public class d implements c.a {

        /* renamed from: a, reason: collision with root package name */
        public final /* synthetic */ Animator f2153a;

        public d(Animator animator) {
            this.f2153a = animator;
        }

        @Override // m0.c.a
        public void onCancel() {
            this.f2153a.end();
        }
    }

    /* compiled from: DefaultSpecialEffectsController.java */
    /* loaded from: classes.dex */
    public class e implements Animation.AnimationListener {

        /* renamed from: a, reason: collision with root package name */
        public final /* synthetic */ ViewGroup f2155a;

        /* renamed from: b, reason: collision with root package name */
        public final /* synthetic */ View f2156b;

        /* renamed from: c, reason: collision with root package name */
        public final /* synthetic */ k f2157c;

        /* compiled from: DefaultSpecialEffectsController.java */
        /* loaded from: classes.dex */
        public class a implements Runnable {
            public a() {
            }

            @Override // java.lang.Runnable
            public void run() {
                e eVar = e.this;
                eVar.f2155a.endViewTransition(eVar.f2156b);
                e.this.f2157c.a();
            }
        }

        public e(ViewGroup viewGroup, View view, k kVar) {
            this.f2155a = viewGroup;
            this.f2156b = view;
            this.f2157c = kVar;
        }

        @Override // android.view.animation.Animation.AnimationListener
        public void onAnimationEnd(Animation animation) {
            this.f2155a.post(new a());
        }

        @Override // android.view.animation.Animation.AnimationListener
        public void onAnimationRepeat(Animation animation) {
        }

        @Override // android.view.animation.Animation.AnimationListener
        public void onAnimationStart(Animation animation) {
        }
    }

    /* compiled from: DefaultSpecialEffectsController.java */
    /* loaded from: classes.dex */
    public class f implements c.a {

        /* renamed from: a, reason: collision with root package name */
        public final /* synthetic */ View f2160a;

        /* renamed from: b, reason: collision with root package name */
        public final /* synthetic */ ViewGroup f2161b;

        /* renamed from: c, reason: collision with root package name */
        public final /* synthetic */ k f2162c;

        public f(View view, ViewGroup viewGroup, k kVar) {
            this.f2160a = view;
            this.f2161b = viewGroup;
            this.f2162c = kVar;
        }

        @Override // m0.c.a
        public void onCancel() {
            this.f2160a.clearAnimation();
            this.f2161b.endViewTransition(this.f2160a);
            this.f2162c.a();
        }
    }

    /* compiled from: DefaultSpecialEffectsController.java */
    /* loaded from: classes.dex */
    public class g implements Runnable {

        /* renamed from: f, reason: collision with root package name */
        public final /* synthetic */ e0.e f2164f;

        /* renamed from: g, reason: collision with root package name */
        public final /* synthetic */ e0.e f2165g;

        /* renamed from: h, reason: collision with root package name */
        public final /* synthetic */ boolean f2166h;

        /* renamed from: i, reason: collision with root package name */
        public final /* synthetic */ s.a f2167i;

        public g(e0.e eVar, e0.e eVar2, boolean z10, s.a aVar) {
            this.f2164f = eVar;
            this.f2165g = eVar2;
            this.f2166h = z10;
            this.f2167i = aVar;
        }

        @Override // java.lang.Runnable
        public void run() {
            y.f(this.f2164f.f(), this.f2165g.f(), this.f2166h, this.f2167i, false);
        }
    }

    /* compiled from: DefaultSpecialEffectsController.java */
    /* loaded from: classes.dex */
    public class h implements Runnable {

        /* renamed from: f, reason: collision with root package name */
        public final /* synthetic */ a0 f2169f;

        /* renamed from: g, reason: collision with root package name */
        public final /* synthetic */ View f2170g;

        /* renamed from: h, reason: collision with root package name */
        public final /* synthetic */ Rect f2171h;

        public h(a0 a0Var, View view, Rect rect) {
            this.f2169f = a0Var;
            this.f2170g = view;
            this.f2171h = rect;
        }

        @Override // java.lang.Runnable
        public void run() {
            this.f2169f.k(this.f2170g, this.f2171h);
        }
    }

    /* compiled from: DefaultSpecialEffectsController.java */
    /* loaded from: classes.dex */
    public class i implements Runnable {

        /* renamed from: f, reason: collision with root package name */
        public final /* synthetic */ ArrayList f2173f;

        public i(ArrayList arrayList) {
            this.f2173f = arrayList;
        }

        @Override // java.lang.Runnable
        public void run() {
            y.A(this.f2173f, 4);
        }
    }

    /* compiled from: DefaultSpecialEffectsController.java */
    /* loaded from: classes.dex */
    public class j implements Runnable {

        /* renamed from: f, reason: collision with root package name */
        public final /* synthetic */ m f2175f;

        public j(m mVar) {
            this.f2175f = mVar;
        }

        @Override // java.lang.Runnable
        public void run() {
            this.f2175f.a();
        }
    }

    /* compiled from: DefaultSpecialEffectsController.java */
    /* loaded from: classes.dex */
    public static class k extends l {

        /* renamed from: c, reason: collision with root package name */
        public boolean f2177c;

        /* renamed from: d, reason: collision with root package name */
        public boolean f2178d;

        /* renamed from: e, reason: collision with root package name */
        public f.d f2179e;

        public k(e0.e eVar, m0.c cVar, boolean z10) {
            super(eVar, cVar);
            this.f2178d = false;
            this.f2177c = z10;
        }

        public f.d e(Context context) {
            if (this.f2178d) {
                return this.f2179e;
            }
            f.d c10 = androidx.fragment.app.f.c(context, b().f(), b().e() == e0.e.c.VISIBLE, this.f2177c);
            this.f2179e = c10;
            this.f2178d = true;
            return c10;
        }
    }

    /* compiled from: DefaultSpecialEffectsController.java */
    /* loaded from: classes.dex */
    public static class l {

        /* renamed from: a, reason: collision with root package name */
        public final e0.e f2180a;

        /* renamed from: b, reason: collision with root package name */
        public final m0.c f2181b;

        public l(e0.e eVar, m0.c cVar) {
            this.f2180a = eVar;
            this.f2181b = cVar;
        }

        public void a() {
            this.f2180a.d(this.f2181b);
        }

        public e0.e b() {
            return this.f2180a;
        }

        public m0.c c() {
            return this.f2181b;
        }

        public boolean d() {
            e0.e.c cVar;
            e0.e.c c10 = e0.e.c.c(this.f2180a.f().mView);
            e0.e.c e10 = this.f2180a.e();
            return c10 == e10 || !(c10 == (cVar = e0.e.c.VISIBLE) || e10 == cVar);
        }
    }

    /* compiled from: DefaultSpecialEffectsController.java */
    /* loaded from: classes.dex */
    public static class m extends l {

        /* renamed from: c, reason: collision with root package name */
        public final Object f2182c;

        /* renamed from: d, reason: collision with root package name */
        public final boolean f2183d;

        /* renamed from: e, reason: collision with root package name */
        public final Object f2184e;

        public m(e0.e eVar, m0.c cVar, boolean z10, boolean z11) {
            super(eVar, cVar);
            Object exitTransition;
            Object enterTransition;
            boolean allowEnterTransitionOverlap;
            if (eVar.e() == e0.e.c.VISIBLE) {
                if (z10) {
                    enterTransition = eVar.f().getReenterTransition();
                } else {
                    enterTransition = eVar.f().getEnterTransition();
                }
                this.f2182c = enterTransition;
                if (z10) {
                    allowEnterTransitionOverlap = eVar.f().getAllowReturnTransitionOverlap();
                } else {
                    allowEnterTransitionOverlap = eVar.f().getAllowEnterTransitionOverlap();
                }
                this.f2183d = allowEnterTransitionOverlap;
            } else {
                if (z10) {
                    exitTransition = eVar.f().getReturnTransition();
                } else {
                    exitTransition = eVar.f().getExitTransition();
                }
                this.f2182c = exitTransition;
                this.f2183d = true;
            }
            if (!z11) {
                this.f2184e = null;
            } else if (z10) {
                this.f2184e = eVar.f().getSharedElementReturnTransition();
            } else {
                this.f2184e = eVar.f().getSharedElementEnterTransition();
            }
        }

        public a0 e() {
            a0 f10 = f(this.f2182c);
            a0 f11 = f(this.f2184e);
            if (f10 == null || f11 == null || f10 == f11) {
                return f10 != null ? f10 : f11;
            }
            throw new IllegalArgumentException("Mixing framework transitions and AndroidX transitions is not allowed. Fragment " + b().f() + " returned Transition " + this.f2182c + " which uses a different Transition  type than its shared element transition " + this.f2184e);
        }

        public final a0 f(Object obj) {
            if (obj == null) {
                return null;
            }
            a0 a0Var = y.f2327b;
            if (a0Var != null && a0Var.e(obj)) {
                return a0Var;
            }
            a0 a0Var2 = y.f2328c;
            if (a0Var2 != null && a0Var2.e(obj)) {
                return a0Var2;
            }
            throw new IllegalArgumentException("Transition " + obj + " for fragment " + b().f() + " is not a valid framework Transition or AndroidX Transition");
        }

        public Object g() {
            return this.f2184e;
        }

        public Object h() {
            return this.f2182c;
        }

        public boolean i() {
            return this.f2184e != null;
        }

        public boolean j() {
            return this.f2183d;
        }
    }

    public c(ViewGroup viewGroup) {
        super(viewGroup);
    }

    @Override // androidx.fragment.app.e0
    public void f(List<e0.e> list, boolean z10) {
        e0.e eVar = null;
        e0.e eVar2 = null;
        for (e0.e eVar3 : list) {
            e0.e.c c10 = e0.e.c.c(eVar3.f().mView);
            int i10 = a.f2143a[eVar3.e().ordinal()];
            if (i10 != 1 && i10 != 2 && i10 != 3) {
                if (i10 == 4 && c10 != e0.e.c.VISIBLE) {
                    eVar2 = eVar3;
                }
            } else if (c10 == e0.e.c.VISIBLE && eVar == null) {
                eVar = eVar3;
            }
        }
        ArrayList arrayList = new ArrayList();
        ArrayList arrayList2 = new ArrayList();
        ArrayList arrayList3 = new ArrayList(list);
        for (e0.e eVar4 : list) {
            m0.c cVar = new m0.c();
            eVar4.j(cVar);
            arrayList.add(new k(eVar4, cVar, z10));
            m0.c cVar2 = new m0.c();
            eVar4.j(cVar2);
            boolean z11 = false;
            if (z10) {
                if (eVar4 != eVar) {
                    arrayList2.add(new m(eVar4, cVar2, z10, z11));
                    eVar4.a(new b(arrayList3, eVar4));
                }
                z11 = true;
                arrayList2.add(new m(eVar4, cVar2, z10, z11));
                eVar4.a(new b(arrayList3, eVar4));
            } else {
                if (eVar4 != eVar2) {
                    arrayList2.add(new m(eVar4, cVar2, z10, z11));
                    eVar4.a(new b(arrayList3, eVar4));
                }
                z11 = true;
                arrayList2.add(new m(eVar4, cVar2, z10, z11));
                eVar4.a(new b(arrayList3, eVar4));
            }
        }
        Map<e0.e, Boolean> x10 = x(arrayList2, arrayList3, z10, eVar, eVar2);
        w(arrayList, arrayList3, x10.containsValue(Boolean.TRUE), x10);
        Iterator<e0.e> it2 = arrayList3.iterator();
        while (it2.hasNext()) {
            s(it2.next());
        }
        arrayList3.clear();
    }

    public void s(e0.e eVar) {
        eVar.e().a(eVar.f().mView);
    }

    public void t(ArrayList<View> arrayList, View view) {
        if (view instanceof ViewGroup) {
            ViewGroup viewGroup = (ViewGroup) view;
            if (q0.e0.a(viewGroup)) {
                if (arrayList.contains(view)) {
                    return;
                }
                arrayList.add(viewGroup);
                return;
            }
            int childCount = viewGroup.getChildCount();
            for (int i10 = 0; i10 < childCount; i10++) {
                View childAt = viewGroup.getChildAt(i10);
                if (childAt.getVisibility() == 0) {
                    t(arrayList, childAt);
                }
            }
            return;
        }
        if (arrayList.contains(view)) {
            return;
        }
        arrayList.add(view);
    }

    public void u(Map<String, View> map, View view) {
        String O = q0.b0.O(view);
        if (O != null) {
            map.put(O, view);
        }
        if (view instanceof ViewGroup) {
            ViewGroup viewGroup = (ViewGroup) view;
            int childCount = viewGroup.getChildCount();
            for (int i10 = 0; i10 < childCount; i10++) {
                View childAt = viewGroup.getChildAt(i10);
                if (childAt.getVisibility() == 0) {
                    u(map, childAt);
                }
            }
        }
    }

    public void v(s.a<String, View> aVar, Collection<String> collection) {
        Iterator<Map.Entry<String, View>> it2 = aVar.entrySet().iterator();
        while (it2.hasNext()) {
            if (!collection.contains(q0.b0.O(it2.next().getValue()))) {
                it2.remove();
            }
        }
    }

    public final void w(List<k> list, List<e0.e> list2, boolean z10, Map<e0.e, Boolean> map) {
        ViewGroup m10 = m();
        Context context = m10.getContext();
        ArrayList arrayList = new ArrayList();
        boolean z11 = false;
        for (k kVar : list) {
            if (kVar.d()) {
                kVar.a();
            } else {
                f.d e10 = kVar.e(context);
                if (e10 == null) {
                    kVar.a();
                } else {
                    Animator animator = e10.f2238b;
                    if (animator == null) {
                        arrayList.add(kVar);
                    } else {
                        e0.e b10 = kVar.b();
                        Fragment f10 = b10.f();
                        if (Boolean.TRUE.equals(map.get(b10))) {
                            if (FragmentManager.G0(2)) {
                                StringBuilder sb2 = new StringBuilder();
                                sb2.append("Ignoring Animator set on ");
                                sb2.append(f10);
                                sb2.append(" as this Fragment was involved in a Transition.");
                            }
                            kVar.a();
                        } else {
                            boolean z12 = b10.e() == e0.e.c.GONE;
                            if (z12) {
                                list2.remove(b10);
                            }
                            View view = f10.mView;
                            m10.startViewTransition(view);
                            animator.addListener(new C0037c(m10, view, z12, b10, kVar));
                            animator.setTarget(view);
                            animator.start();
                            kVar.c().c(new d(animator));
                            z11 = true;
                        }
                    }
                }
            }
        }
        Iterator it2 = arrayList.iterator();
        while (it2.hasNext()) {
            k kVar2 = (k) it2.next();
            e0.e b11 = kVar2.b();
            Fragment f11 = b11.f();
            if (z10) {
                if (FragmentManager.G0(2)) {
                    StringBuilder sb3 = new StringBuilder();
                    sb3.append("Ignoring Animation set on ");
                    sb3.append(f11);
                    sb3.append(" as Animations cannot run alongside Transitions.");
                }
                kVar2.a();
            } else if (z11) {
                if (FragmentManager.G0(2)) {
                    StringBuilder sb4 = new StringBuilder();
                    sb4.append("Ignoring Animation set on ");
                    sb4.append(f11);
                    sb4.append(" as Animations cannot run alongside Animators.");
                }
                kVar2.a();
            } else {
                View view2 = f11.mView;
                Animation animation = (Animation) p0.i.g(((f.d) p0.i.g(kVar2.e(context))).f2237a);
                if (b11.e() != e0.e.c.REMOVED) {
                    view2.startAnimation(animation);
                    kVar2.a();
                } else {
                    m10.startViewTransition(view2);
                    f.e eVar = new f.e(animation, m10, view2);
                    eVar.setAnimationListener(new e(m10, view2, kVar2));
                    view2.startAnimation(eVar);
                }
                kVar2.c().c(new f(view2, m10, kVar2));
            }
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final Map<e0.e, Boolean> x(List<m> list, List<e0.e> list2, boolean z10, e0.e eVar, e0.e eVar2) {
        View view;
        Object obj;
        ArrayList<View> arrayList;
        Object obj2;
        ArrayList<View> arrayList2;
        e0.e eVar3;
        e0.e eVar4;
        View view2;
        Object n10;
        s.a aVar;
        ArrayList<View> arrayList3;
        e0.e eVar5;
        ArrayList<View> arrayList4;
        Rect rect;
        View view3;
        a0 a0Var;
        e0.e eVar6;
        View view4;
        boolean z11 = z10;
        e0.e eVar7 = eVar;
        e0.e eVar8 = eVar2;
        HashMap hashMap = new HashMap();
        a0 a0Var2 = null;
        for (m mVar : list) {
            if (!mVar.d()) {
                a0 e10 = mVar.e();
                if (a0Var2 == null) {
                    a0Var2 = e10;
                } else if (e10 != null && a0Var2 != e10) {
                    throw new IllegalArgumentException("Mixing framework transitions and AndroidX transitions is not allowed. Fragment " + mVar.b().f() + " returned Transition " + mVar.h() + " which uses a different Transition  type than other Fragments.");
                }
            }
        }
        if (a0Var2 == null) {
            for (m mVar2 : list) {
                hashMap.put(mVar2.b(), Boolean.FALSE);
                mVar2.a();
            }
            return hashMap;
        }
        View view5 = new View(m().getContext());
        Rect rect2 = new Rect();
        ArrayList<View> arrayList5 = new ArrayList<>();
        ArrayList<View> arrayList6 = new ArrayList<>();
        s.a aVar2 = new s.a();
        Object obj3 = null;
        View view6 = null;
        boolean z12 = false;
        for (m mVar3 : list) {
            if (!mVar3.i() || eVar7 == null || eVar8 == null) {
                aVar = aVar2;
                arrayList3 = arrayList6;
                eVar5 = eVar7;
                arrayList4 = arrayList5;
                rect = rect2;
                view3 = view5;
                a0Var = a0Var2;
                eVar6 = eVar8;
                view6 = view6;
            } else {
                Object B = a0Var2.B(a0Var2.g(mVar3.g()));
                ArrayList<String> sharedElementSourceNames = eVar2.f().getSharedElementSourceNames();
                ArrayList<String> sharedElementSourceNames2 = eVar.f().getSharedElementSourceNames();
                ArrayList<String> sharedElementTargetNames = eVar.f().getSharedElementTargetNames();
                View view7 = view6;
                int i10 = 0;
                while (i10 < sharedElementTargetNames.size()) {
                    int indexOf = sharedElementSourceNames.indexOf(sharedElementTargetNames.get(i10));
                    ArrayList<String> arrayList7 = sharedElementTargetNames;
                    if (indexOf != -1) {
                        sharedElementSourceNames.set(indexOf, sharedElementSourceNames2.get(i10));
                    }
                    i10++;
                    sharedElementTargetNames = arrayList7;
                }
                ArrayList<String> sharedElementTargetNames2 = eVar2.f().getSharedElementTargetNames();
                if (!z11) {
                    eVar.f().getExitTransitionCallback();
                    eVar2.f().getEnterTransitionCallback();
                } else {
                    eVar.f().getEnterTransitionCallback();
                    eVar2.f().getExitTransitionCallback();
                }
                int i11 = 0;
                for (int size = sharedElementSourceNames.size(); i11 < size; size = size) {
                    aVar2.put(sharedElementSourceNames.get(i11), sharedElementTargetNames2.get(i11));
                    i11++;
                }
                s.a<String, View> aVar3 = new s.a<>();
                u(aVar3, eVar.f().mView);
                aVar3.o(sharedElementSourceNames);
                aVar2.o(aVar3.keySet());
                s.a<String, View> aVar4 = new s.a<>();
                u(aVar4, eVar2.f().mView);
                aVar4.o(sharedElementTargetNames2);
                aVar4.o(aVar2.values());
                y.x(aVar2, aVar4);
                v(aVar3, aVar2.keySet());
                v(aVar4, aVar2.values());
                if (aVar2.isEmpty()) {
                    arrayList5.clear();
                    arrayList6.clear();
                    aVar = aVar2;
                    arrayList3 = arrayList6;
                    eVar5 = eVar7;
                    arrayList4 = arrayList5;
                    rect = rect2;
                    view3 = view5;
                    a0Var = a0Var2;
                    view6 = view7;
                    obj3 = null;
                    eVar6 = eVar8;
                } else {
                    y.f(eVar2.f(), eVar.f(), z11, aVar3, true);
                    aVar = aVar2;
                    ArrayList<View> arrayList8 = arrayList6;
                    q0.x.a(m(), new g(eVar2, eVar, z10, aVar4));
                    arrayList5.addAll(aVar3.values());
                    if (sharedElementSourceNames.isEmpty()) {
                        view6 = view7;
                    } else {
                        View view8 = (View) aVar3.get(sharedElementSourceNames.get(0));
                        a0Var2.v(B, view8);
                        view6 = view8;
                    }
                    arrayList3 = arrayList8;
                    arrayList3.addAll(aVar4.values());
                    if (!sharedElementTargetNames2.isEmpty() && (view4 = (View) aVar4.get(sharedElementTargetNames2.get(0))) != null) {
                        q0.x.a(m(), new h(a0Var2, view4, rect2));
                        z12 = true;
                    }
                    a0Var2.z(B, view5, arrayList5);
                    arrayList4 = arrayList5;
                    rect = rect2;
                    view3 = view5;
                    a0Var = a0Var2;
                    a0Var2.t(B, null, null, null, null, B, arrayList3);
                    Boolean bool = Boolean.TRUE;
                    eVar5 = eVar;
                    hashMap.put(eVar5, bool);
                    eVar6 = eVar2;
                    hashMap.put(eVar6, bool);
                    obj3 = B;
                }
            }
            eVar7 = eVar5;
            arrayList5 = arrayList4;
            rect2 = rect;
            view5 = view3;
            eVar8 = eVar6;
            aVar2 = aVar;
            z11 = z10;
            arrayList6 = arrayList3;
            a0Var2 = a0Var;
        }
        View view9 = view6;
        s.a aVar5 = aVar2;
        ArrayList<View> arrayList9 = arrayList6;
        e0.e eVar9 = eVar7;
        ArrayList<View> arrayList10 = arrayList5;
        Rect rect3 = rect2;
        View view10 = view5;
        a0 a0Var3 = a0Var2;
        e0.e eVar10 = eVar8;
        ArrayList arrayList11 = new ArrayList();
        Object obj4 = null;
        Object obj5 = null;
        for (m mVar4 : list) {
            if (mVar4.d()) {
                hashMap.put(mVar4.b(), Boolean.FALSE);
                mVar4.a();
            } else {
                Object g10 = a0Var3.g(mVar4.h());
                e0.e b10 = mVar4.b();
                boolean z13 = obj3 != null && (b10 == eVar9 || b10 == eVar10);
                if (g10 == null) {
                    if (!z13) {
                        hashMap.put(b10, Boolean.FALSE);
                        mVar4.a();
                    }
                    arrayList2 = arrayList9;
                    arrayList = arrayList10;
                    view = view10;
                    n10 = obj4;
                    eVar3 = eVar10;
                    view2 = view9;
                } else {
                    ArrayList<View> arrayList12 = new ArrayList<>();
                    Object obj6 = obj4;
                    t(arrayList12, b10.f().mView);
                    if (z13) {
                        if (b10 == eVar9) {
                            arrayList12.removeAll(arrayList10);
                        } else {
                            arrayList12.removeAll(arrayList9);
                        }
                    }
                    if (arrayList12.isEmpty()) {
                        a0Var3.a(g10, view10);
                        arrayList2 = arrayList9;
                        arrayList = arrayList10;
                        view = view10;
                        eVar4 = b10;
                        obj2 = obj5;
                        eVar3 = eVar10;
                        obj = obj6;
                    } else {
                        a0Var3.b(g10, arrayList12);
                        view = view10;
                        obj = obj6;
                        arrayList = arrayList10;
                        obj2 = obj5;
                        arrayList2 = arrayList9;
                        eVar3 = eVar10;
                        a0Var3.t(g10, g10, arrayList12, null, null, null, null);
                        if (b10.e() == e0.e.c.GONE) {
                            eVar4 = b10;
                            list2.remove(eVar4);
                            ArrayList<View> arrayList13 = new ArrayList<>(arrayList12);
                            arrayList13.remove(eVar4.f().mView);
                            a0Var3.r(g10, eVar4.f().mView, arrayList13);
                            q0.x.a(m(), new i(arrayList12));
                        } else {
                            eVar4 = b10;
                        }
                    }
                    if (eVar4.e() == e0.e.c.VISIBLE) {
                        arrayList11.addAll(arrayList12);
                        if (z12) {
                            a0Var3.u(g10, rect3);
                        }
                        view2 = view9;
                    } else {
                        view2 = view9;
                        a0Var3.v(g10, view2);
                    }
                    hashMap.put(eVar4, Boolean.TRUE);
                    if (mVar4.j()) {
                        obj5 = a0Var3.n(obj2, g10, null);
                        n10 = obj;
                    } else {
                        n10 = a0Var3.n(obj, g10, null);
                        obj5 = obj2;
                    }
                }
                eVar10 = eVar3;
                obj4 = n10;
                view9 = view2;
                view10 = view;
                arrayList10 = arrayList;
                arrayList9 = arrayList2;
            }
        }
        ArrayList<View> arrayList14 = arrayList9;
        ArrayList<View> arrayList15 = arrayList10;
        e0.e eVar11 = eVar10;
        Object m10 = a0Var3.m(obj5, obj4, obj3);
        for (m mVar5 : list) {
            if (!mVar5.d()) {
                Object h10 = mVar5.h();
                e0.e b11 = mVar5.b();
                boolean z14 = obj3 != null && (b11 == eVar9 || b11 == eVar11);
                if (h10 != null || z14) {
                    if (!q0.b0.X(m())) {
                        if (FragmentManager.G0(2)) {
                            StringBuilder sb2 = new StringBuilder();
                            sb2.append("SpecialEffectsController: Container ");
                            sb2.append(m());
                            sb2.append(" has not been laid out. Completing operation ");
                            sb2.append(b11);
                        }
                        mVar5.a();
                    } else {
                        a0Var3.w(mVar5.b().f(), m10, mVar5.c(), new j(mVar5));
                    }
                }
            }
        }
        if (!q0.b0.X(m())) {
            return hashMap;
        }
        y.A(arrayList11, 4);
        ArrayList<String> o10 = a0Var3.o(arrayList14);
        a0Var3.c(m(), m10);
        a0Var3.y(m(), arrayList15, arrayList14, o10, aVar5);
        y.A(arrayList11, 0);
        a0Var3.A(obj3, arrayList15, arrayList14);
        return hashMap;
    }
}
