package z;

import a0.e;
import android.graphics.Rect;
import android.view.MotionEvent;
import android.view.View;
import androidx.constraintlayout.widget.ConstraintLayout;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.Iterator;
import z.u;

/* compiled from: ViewTransitionController.java */
/* loaded from: classes.dex */
public class v {

    /* renamed from: a, reason: collision with root package name */
    public final p f17236a;

    /* renamed from: c, reason: collision with root package name */
    public HashSet<View> f17238c;

    /* renamed from: e, reason: collision with root package name */
    public ArrayList<u.b> f17240e;

    /* renamed from: b, reason: collision with root package name */
    public ArrayList<u> f17237b = new ArrayList<>();

    /* renamed from: d, reason: collision with root package name */
    public String f17239d = "ViewTransitionController";

    /* renamed from: f, reason: collision with root package name */
    public ArrayList<u.b> f17241f = new ArrayList<>();

    /* compiled from: ViewTransitionController.java */
    /* loaded from: classes.dex */
    public class a implements e.a {

        /* renamed from: a, reason: collision with root package name */
        public final /* synthetic */ u f17242a;

        /* renamed from: b, reason: collision with root package name */
        public final /* synthetic */ int f17243b;

        /* renamed from: c, reason: collision with root package name */
        public final /* synthetic */ boolean f17244c;

        /* renamed from: d, reason: collision with root package name */
        public final /* synthetic */ int f17245d;

        public a(u uVar, int i10, boolean z10, int i11) {
            this.f17242a = uVar;
            this.f17243b = i10;
            this.f17244c = z10;
            this.f17245d = i11;
        }
    }

    public v(p pVar) {
        this.f17236a = pVar;
    }

    public void a(u uVar) {
        this.f17237b.add(uVar);
        this.f17238c = null;
        if (uVar.i() == 4) {
            e(uVar, true);
        } else if (uVar.i() == 5) {
            e(uVar, false);
        }
    }

    public void b(u.b bVar) {
        if (this.f17240e == null) {
            this.f17240e = new ArrayList<>();
        }
        this.f17240e.add(bVar);
    }

    public void c() {
        ArrayList<u.b> arrayList = this.f17240e;
        if (arrayList == null) {
            return;
        }
        Iterator<u.b> it2 = arrayList.iterator();
        while (it2.hasNext()) {
            it2.next().a();
        }
        this.f17240e.removeAll(this.f17241f);
        this.f17241f.clear();
        if (this.f17240e.isEmpty()) {
            this.f17240e = null;
        }
    }

    public void d() {
        this.f17236a.invalidate();
    }

    public final void e(u uVar, boolean z10) {
        ConstraintLayout.getSharedValues().a(uVar.h(), new a(uVar, uVar.h(), z10, uVar.g()));
    }

    public void f(u.b bVar) {
        this.f17241f.add(bVar);
    }

    public void g(MotionEvent motionEvent) {
        u uVar;
        int currentState = this.f17236a.getCurrentState();
        if (currentState == -1) {
            return;
        }
        if (this.f17238c == null) {
            this.f17238c = new HashSet<>();
            Iterator<u> it2 = this.f17237b.iterator();
            while (it2.hasNext()) {
                u next = it2.next();
                int childCount = this.f17236a.getChildCount();
                for (int i10 = 0; i10 < childCount; i10++) {
                    View childAt = this.f17236a.getChildAt(i10);
                    if (next.k(childAt)) {
                        childAt.getId();
                        this.f17238c.add(childAt);
                    }
                }
            }
        }
        float x10 = motionEvent.getX();
        float y10 = motionEvent.getY();
        Rect rect = new Rect();
        int action = motionEvent.getAction();
        ArrayList<u.b> arrayList = this.f17240e;
        if (arrayList != null && !arrayList.isEmpty()) {
            Iterator<u.b> it3 = this.f17240e.iterator();
            while (it3.hasNext()) {
                it3.next().d(action, x10, y10);
            }
        }
        if (action == 0 || action == 1) {
            androidx.constraintlayout.widget.c m10 = this.f17236a.m(currentState);
            Iterator<u> it4 = this.f17237b.iterator();
            while (it4.hasNext()) {
                u next2 = it4.next();
                if (next2.m(action)) {
                    Iterator<View> it5 = this.f17238c.iterator();
                    while (it5.hasNext()) {
                        View next3 = it5.next();
                        if (next2.k(next3)) {
                            next3.getHitRect(rect);
                            if (rect.contains((int) x10, (int) y10)) {
                                uVar = next2;
                                next2.c(this, this.f17236a, currentState, m10, next3);
                            } else {
                                uVar = next2;
                            }
                            next2 = uVar;
                        }
                    }
                }
            }
        }
    }

    public void h(int i10, View... viewArr) {
        ArrayList arrayList = new ArrayList();
        Iterator<u> it2 = this.f17237b.iterator();
        while (it2.hasNext()) {
            u next = it2.next();
            if (next.e() == i10) {
                for (View view : viewArr) {
                    if (next.d(view)) {
                        arrayList.add(view);
                    }
                }
                if (!arrayList.isEmpty()) {
                    i(next, (View[]) arrayList.toArray(new View[0]));
                    arrayList.clear();
                }
            }
        }
    }

    public final void i(u uVar, View... viewArr) {
        int currentState = this.f17236a.getCurrentState();
        if (uVar.f17201e == 2) {
            uVar.c(this, this.f17236a, currentState, null, viewArr);
            return;
        }
        if (currentState == -1) {
            StringBuilder sb2 = new StringBuilder();
            sb2.append("No support for ViewTransition within transition yet. Currently: ");
            sb2.append(this.f17236a.toString());
        } else {
            androidx.constraintlayout.widget.c m10 = this.f17236a.m(currentState);
            if (m10 == null) {
                return;
            }
            uVar.c(this, this.f17236a, currentState, m10, viewArr);
        }
    }
}
