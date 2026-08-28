package x1;

import android.view.View;
import android.view.ViewGroup;
import android.view.ViewTreeObserver;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.Iterator;

/* compiled from: TransitionManager.java */
/* loaded from: classes.dex */
public class q {

    /* renamed from: a, reason: collision with root package name */
    public static o f15806a = new b();

    /* renamed from: b, reason: collision with root package name */
    public static ThreadLocal<WeakReference<s.a<ViewGroup, ArrayList<o>>>> f15807b = new ThreadLocal<>();

    /* renamed from: c, reason: collision with root package name */
    public static ArrayList<ViewGroup> f15808c = new ArrayList<>();

    /* compiled from: TransitionManager.java */
    /* loaded from: classes.dex */
    public static class a implements ViewTreeObserver.OnPreDrawListener, View.OnAttachStateChangeListener {

        /* renamed from: f, reason: collision with root package name */
        public o f15809f;

        /* renamed from: g, reason: collision with root package name */
        public ViewGroup f15810g;

        /* compiled from: TransitionManager.java */
        /* renamed from: x1.q$a$a, reason: collision with other inner class name */
        /* loaded from: classes.dex */
        public class C0408a extends p {

            /* renamed from: a, reason: collision with root package name */
            public final /* synthetic */ s.a f15811a;

            public C0408a(s.a aVar) {
                this.f15811a = aVar;
            }

            /* JADX WARN: Multi-variable type inference failed */
            @Override // x1.o.g
            public void onTransitionEnd(o oVar) {
                ((ArrayList) this.f15811a.get(a.this.f15810g)).remove(oVar);
                oVar.removeListener(this);
            }
        }

        public a(o oVar, ViewGroup viewGroup) {
            this.f15809f = oVar;
            this.f15810g = viewGroup;
        }

        public final void a() {
            this.f15810g.getViewTreeObserver().removeOnPreDrawListener(this);
            this.f15810g.removeOnAttachStateChangeListener(this);
        }

        @Override // android.view.ViewTreeObserver.OnPreDrawListener
        public boolean onPreDraw() {
            a();
            if (!q.f15808c.remove(this.f15810g)) {
                return true;
            }
            s.a<ViewGroup, ArrayList<o>> b10 = q.b();
            ArrayList<o> arrayList = b10.get(this.f15810g);
            ArrayList arrayList2 = null;
            if (arrayList == null) {
                arrayList = new ArrayList<>();
                b10.put(this.f15810g, arrayList);
            } else if (arrayList.size() > 0) {
                arrayList2 = new ArrayList(arrayList);
            }
            arrayList.add(this.f15809f);
            this.f15809f.addListener(new C0408a(b10));
            this.f15809f.captureValues(this.f15810g, false);
            if (arrayList2 != null) {
                Iterator it2 = arrayList2.iterator();
                while (it2.hasNext()) {
                    ((o) it2.next()).resume(this.f15810g);
                }
            }
            this.f15809f.playTransition(this.f15810g);
            return true;
        }

        @Override // android.view.View.OnAttachStateChangeListener
        public void onViewAttachedToWindow(View view) {
        }

        @Override // android.view.View.OnAttachStateChangeListener
        public void onViewDetachedFromWindow(View view) {
            a();
            q.f15808c.remove(this.f15810g);
            ArrayList<o> arrayList = q.b().get(this.f15810g);
            if (arrayList != null && arrayList.size() > 0) {
                Iterator<o> it2 = arrayList.iterator();
                while (it2.hasNext()) {
                    it2.next().resume(this.f15810g);
                }
            }
            this.f15809f.clearValues(true);
        }
    }

    public static void a(ViewGroup viewGroup, o oVar) {
        if (f15808c.contains(viewGroup) || !q0.b0.X(viewGroup)) {
            return;
        }
        f15808c.add(viewGroup);
        if (oVar == null) {
            oVar = f15806a;
        }
        o clone = oVar.clone();
        d(viewGroup, clone);
        m.c(viewGroup, null);
        c(viewGroup, clone);
    }

    public static s.a<ViewGroup, ArrayList<o>> b() {
        s.a<ViewGroup, ArrayList<o>> aVar;
        WeakReference<s.a<ViewGroup, ArrayList<o>>> weakReference = f15807b.get();
        if (weakReference != null && (aVar = weakReference.get()) != null) {
            return aVar;
        }
        s.a<ViewGroup, ArrayList<o>> aVar2 = new s.a<>();
        f15807b.set(new WeakReference<>(aVar2));
        return aVar2;
    }

    public static void c(ViewGroup viewGroup, o oVar) {
        if (oVar == null || viewGroup == null) {
            return;
        }
        a aVar = new a(oVar, viewGroup);
        viewGroup.addOnAttachStateChangeListener(aVar);
        viewGroup.getViewTreeObserver().addOnPreDrawListener(aVar);
    }

    public static void d(ViewGroup viewGroup, o oVar) {
        ArrayList<o> arrayList = b().get(viewGroup);
        if (arrayList != null && arrayList.size() > 0) {
            Iterator<o> it2 = arrayList.iterator();
            while (it2.hasNext()) {
                it2.next().pause(viewGroup);
            }
        }
        if (oVar != null) {
            oVar.captureValues(viewGroup, true);
        }
        m b10 = m.b(viewGroup);
        if (b10 != null) {
            b10.a();
        }
    }
}
