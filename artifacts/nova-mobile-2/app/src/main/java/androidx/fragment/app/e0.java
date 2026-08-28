package androidx.fragment.app;

import android.view.View;
import android.view.ViewGroup;
import com.google.android.material.internal.StaticLayoutBuilderCompat;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import m0.c;

/* compiled from: SpecialEffectsController.java */
/* loaded from: classes.dex */
public abstract class e0 {

    /* renamed from: a, reason: collision with root package name */
    public final ViewGroup f2197a;

    /* renamed from: b, reason: collision with root package name */
    public final ArrayList<e> f2198b = new ArrayList<>();

    /* renamed from: c, reason: collision with root package name */
    public final ArrayList<e> f2199c = new ArrayList<>();

    /* renamed from: d, reason: collision with root package name */
    public boolean f2200d = false;

    /* renamed from: e, reason: collision with root package name */
    public boolean f2201e = false;

    /* compiled from: SpecialEffectsController.java */
    /* loaded from: classes.dex */
    public class a implements Runnable {

        /* renamed from: f, reason: collision with root package name */
        public final /* synthetic */ d f2202f;

        public a(d dVar) {
            this.f2202f = dVar;
        }

        @Override // java.lang.Runnable
        public void run() {
            if (e0.this.f2198b.contains(this.f2202f)) {
                this.f2202f.e().a(this.f2202f.f().mView);
            }
        }
    }

    /* compiled from: SpecialEffectsController.java */
    /* loaded from: classes.dex */
    public class b implements Runnable {

        /* renamed from: f, reason: collision with root package name */
        public final /* synthetic */ d f2204f;

        public b(d dVar) {
            this.f2204f = dVar;
        }

        @Override // java.lang.Runnable
        public void run() {
            e0.this.f2198b.remove(this.f2204f);
            e0.this.f2199c.remove(this.f2204f);
        }
    }

    /* compiled from: SpecialEffectsController.java */
    /* loaded from: classes.dex */
    public static /* synthetic */ class c {

        /* renamed from: a, reason: collision with root package name */
        public static final /* synthetic */ int[] f2206a;

        /* renamed from: b, reason: collision with root package name */
        public static final /* synthetic */ int[] f2207b;

        static {
            int[] iArr = new int[e.b.values().length];
            f2207b = iArr;
            try {
                iArr[e.b.ADDING.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f2207b[e.b.REMOVING.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f2207b[e.b.NONE.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            int[] iArr2 = new int[e.c.values().length];
            f2206a = iArr2;
            try {
                iArr2[e.c.REMOVED.ordinal()] = 1;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                f2206a[e.c.VISIBLE.ordinal()] = 2;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                f2206a[e.c.GONE.ordinal()] = 3;
            } catch (NoSuchFieldError unused6) {
            }
            try {
                f2206a[e.c.INVISIBLE.ordinal()] = 4;
            } catch (NoSuchFieldError unused7) {
            }
        }
    }

    /* compiled from: SpecialEffectsController.java */
    /* loaded from: classes.dex */
    public static class d extends e {

        /* renamed from: h, reason: collision with root package name */
        public final u f2208h;

        public d(e.c cVar, e.b bVar, u uVar, m0.c cVar2) {
            super(cVar, bVar, uVar.k(), cVar2);
            this.f2208h = uVar;
        }

        @Override // androidx.fragment.app.e0.e
        public void c() {
            super.c();
            this.f2208h.m();
        }

        @Override // androidx.fragment.app.e0.e
        public void l() {
            if (g() == e.b.ADDING) {
                Fragment k10 = this.f2208h.k();
                View findFocus = k10.mView.findFocus();
                if (findFocus != null) {
                    k10.setFocusedView(findFocus);
                    if (FragmentManager.G0(2)) {
                        StringBuilder sb2 = new StringBuilder();
                        sb2.append("requestFocus: Saved focused view ");
                        sb2.append(findFocus);
                        sb2.append(" for Fragment ");
                        sb2.append(k10);
                    }
                }
                View requireView = f().requireView();
                if (requireView.getParent() == null) {
                    this.f2208h.b();
                    requireView.setAlpha(StaticLayoutBuilderCompat.DEFAULT_LINE_SPACING_ADD);
                }
                if (requireView.getAlpha() == StaticLayoutBuilderCompat.DEFAULT_LINE_SPACING_ADD && requireView.getVisibility() == 0) {
                    requireView.setVisibility(4);
                }
                requireView.setAlpha(k10.getPostOnViewCreatedAlpha());
            }
        }
    }

    /* compiled from: SpecialEffectsController.java */
    /* loaded from: classes.dex */
    public static class e {

        /* renamed from: a, reason: collision with root package name */
        public c f2209a;

        /* renamed from: b, reason: collision with root package name */
        public b f2210b;

        /* renamed from: c, reason: collision with root package name */
        public final Fragment f2211c;

        /* renamed from: d, reason: collision with root package name */
        public final List<Runnable> f2212d = new ArrayList();

        /* renamed from: e, reason: collision with root package name */
        public final HashSet<m0.c> f2213e = new HashSet<>();

        /* renamed from: f, reason: collision with root package name */
        public boolean f2214f = false;

        /* renamed from: g, reason: collision with root package name */
        public boolean f2215g = false;

        /* compiled from: SpecialEffectsController.java */
        /* loaded from: classes.dex */
        public class a implements c.a {
            public a() {
            }

            @Override // m0.c.a
            public void onCancel() {
                e.this.b();
            }
        }

        /* compiled from: SpecialEffectsController.java */
        /* loaded from: classes.dex */
        public enum b {
            NONE,
            ADDING,
            REMOVING
        }

        /* compiled from: SpecialEffectsController.java */
        /* loaded from: classes.dex */
        public enum c {
            REMOVED,
            VISIBLE,
            GONE,
            INVISIBLE;

            public static c b(int i10) {
                if (i10 == 0) {
                    return VISIBLE;
                }
                if (i10 == 4) {
                    return INVISIBLE;
                }
                if (i10 == 8) {
                    return GONE;
                }
                throw new IllegalArgumentException("Unknown visibility " + i10);
            }

            public static c c(View view) {
                if (view.getAlpha() == StaticLayoutBuilderCompat.DEFAULT_LINE_SPACING_ADD && view.getVisibility() == 0) {
                    return INVISIBLE;
                }
                return b(view.getVisibility());
            }

            public void a(View view) {
                int i10 = c.f2206a[ordinal()];
                if (i10 == 1) {
                    ViewGroup viewGroup = (ViewGroup) view.getParent();
                    if (viewGroup != null) {
                        if (FragmentManager.G0(2)) {
                            StringBuilder sb2 = new StringBuilder();
                            sb2.append("SpecialEffectsController: Removing view ");
                            sb2.append(view);
                            sb2.append(" from container ");
                            sb2.append(viewGroup);
                        }
                        viewGroup.removeView(view);
                        return;
                    }
                    return;
                }
                if (i10 == 2) {
                    if (FragmentManager.G0(2)) {
                        StringBuilder sb3 = new StringBuilder();
                        sb3.append("SpecialEffectsController: Setting view ");
                        sb3.append(view);
                        sb3.append(" to VISIBLE");
                    }
                    view.setVisibility(0);
                    return;
                }
                if (i10 == 3) {
                    if (FragmentManager.G0(2)) {
                        StringBuilder sb4 = new StringBuilder();
                        sb4.append("SpecialEffectsController: Setting view ");
                        sb4.append(view);
                        sb4.append(" to GONE");
                    }
                    view.setVisibility(8);
                    return;
                }
                if (i10 != 4) {
                    return;
                }
                if (FragmentManager.G0(2)) {
                    StringBuilder sb5 = new StringBuilder();
                    sb5.append("SpecialEffectsController: Setting view ");
                    sb5.append(view);
                    sb5.append(" to INVISIBLE");
                }
                view.setVisibility(4);
            }
        }

        public e(c cVar, b bVar, Fragment fragment, m0.c cVar2) {
            this.f2209a = cVar;
            this.f2210b = bVar;
            this.f2211c = fragment;
            cVar2.c(new a());
        }

        public final void a(Runnable runnable) {
            this.f2212d.add(runnable);
        }

        public final void b() {
            if (h()) {
                return;
            }
            this.f2214f = true;
            if (this.f2213e.isEmpty()) {
                c();
                return;
            }
            Iterator it2 = new ArrayList(this.f2213e).iterator();
            while (it2.hasNext()) {
                ((m0.c) it2.next()).a();
            }
        }

        public void c() {
            if (this.f2215g) {
                return;
            }
            if (FragmentManager.G0(2)) {
                StringBuilder sb2 = new StringBuilder();
                sb2.append("SpecialEffectsController: ");
                sb2.append(this);
                sb2.append(" has called complete.");
            }
            this.f2215g = true;
            Iterator<Runnable> it2 = this.f2212d.iterator();
            while (it2.hasNext()) {
                it2.next().run();
            }
        }

        public final void d(m0.c cVar) {
            if (this.f2213e.remove(cVar) && this.f2213e.isEmpty()) {
                c();
            }
        }

        public c e() {
            return this.f2209a;
        }

        public final Fragment f() {
            return this.f2211c;
        }

        public b g() {
            return this.f2210b;
        }

        public final boolean h() {
            return this.f2214f;
        }

        public final boolean i() {
            return this.f2215g;
        }

        public final void j(m0.c cVar) {
            l();
            this.f2213e.add(cVar);
        }

        public final void k(c cVar, b bVar) {
            int i10 = c.f2207b[bVar.ordinal()];
            if (i10 == 1) {
                if (this.f2209a == c.REMOVED) {
                    if (FragmentManager.G0(2)) {
                        StringBuilder sb2 = new StringBuilder();
                        sb2.append("SpecialEffectsController: For fragment ");
                        sb2.append(this.f2211c);
                        sb2.append(" mFinalState = REMOVED -> VISIBLE. mLifecycleImpact = ");
                        sb2.append(this.f2210b);
                        sb2.append(" to ADDING.");
                    }
                    this.f2209a = c.VISIBLE;
                    this.f2210b = b.ADDING;
                    return;
                }
                return;
            }
            if (i10 != 2) {
                if (i10 == 3 && this.f2209a != c.REMOVED) {
                    if (FragmentManager.G0(2)) {
                        StringBuilder sb3 = new StringBuilder();
                        sb3.append("SpecialEffectsController: For fragment ");
                        sb3.append(this.f2211c);
                        sb3.append(" mFinalState = ");
                        sb3.append(this.f2209a);
                        sb3.append(" -> ");
                        sb3.append(cVar);
                        sb3.append(". ");
                    }
                    this.f2209a = cVar;
                    return;
                }
                return;
            }
            if (FragmentManager.G0(2)) {
                StringBuilder sb4 = new StringBuilder();
                sb4.append("SpecialEffectsController: For fragment ");
                sb4.append(this.f2211c);
                sb4.append(" mFinalState = ");
                sb4.append(this.f2209a);
                sb4.append(" -> REMOVED. mLifecycleImpact  = ");
                sb4.append(this.f2210b);
                sb4.append(" to REMOVING.");
            }
            this.f2209a = c.REMOVED;
            this.f2210b = b.REMOVING;
        }

        public void l() {
        }

        public String toString() {
            return "Operation {" + Integer.toHexString(System.identityHashCode(this)) + "} {mFinalState = " + this.f2209a + "} {mLifecycleImpact = " + this.f2210b + "} {mFragment = " + this.f2211c + "}";
        }
    }

    public e0(ViewGroup viewGroup) {
        this.f2197a = viewGroup;
    }

    public static e0 n(ViewGroup viewGroup, FragmentManager fragmentManager) {
        return o(viewGroup, fragmentManager.z0());
    }

    public static e0 o(ViewGroup viewGroup, f0 f0Var) {
        int i10 = c1.b.f3635b;
        Object tag = viewGroup.getTag(i10);
        if (tag instanceof e0) {
            return (e0) tag;
        }
        e0 a10 = f0Var.a(viewGroup);
        viewGroup.setTag(i10, a10);
        return a10;
    }

    public final void a(e.c cVar, e.b bVar, u uVar) {
        synchronized (this.f2198b) {
            m0.c cVar2 = new m0.c();
            e h10 = h(uVar.k());
            if (h10 != null) {
                h10.k(cVar, bVar);
                return;
            }
            d dVar = new d(cVar, bVar, uVar, cVar2);
            this.f2198b.add(dVar);
            dVar.a(new a(dVar));
            dVar.a(new b(dVar));
        }
    }

    public void b(e.c cVar, u uVar) {
        if (FragmentManager.G0(2)) {
            StringBuilder sb2 = new StringBuilder();
            sb2.append("SpecialEffectsController: Enqueuing add operation for fragment ");
            sb2.append(uVar.k());
        }
        a(cVar, e.b.ADDING, uVar);
    }

    public void c(u uVar) {
        if (FragmentManager.G0(2)) {
            StringBuilder sb2 = new StringBuilder();
            sb2.append("SpecialEffectsController: Enqueuing hide operation for fragment ");
            sb2.append(uVar.k());
        }
        a(e.c.GONE, e.b.NONE, uVar);
    }

    public void d(u uVar) {
        if (FragmentManager.G0(2)) {
            StringBuilder sb2 = new StringBuilder();
            sb2.append("SpecialEffectsController: Enqueuing remove operation for fragment ");
            sb2.append(uVar.k());
        }
        a(e.c.REMOVED, e.b.REMOVING, uVar);
    }

    public void e(u uVar) {
        if (FragmentManager.G0(2)) {
            StringBuilder sb2 = new StringBuilder();
            sb2.append("SpecialEffectsController: Enqueuing show operation for fragment ");
            sb2.append(uVar.k());
        }
        a(e.c.VISIBLE, e.b.NONE, uVar);
    }

    public abstract void f(List<e> list, boolean z10);

    public void g() {
        if (this.f2201e) {
            return;
        }
        if (!q0.b0.W(this.f2197a)) {
            j();
            this.f2200d = false;
            return;
        }
        synchronized (this.f2198b) {
            if (!this.f2198b.isEmpty()) {
                ArrayList arrayList = new ArrayList(this.f2199c);
                this.f2199c.clear();
                Iterator it2 = arrayList.iterator();
                while (it2.hasNext()) {
                    e eVar = (e) it2.next();
                    if (FragmentManager.G0(2)) {
                        StringBuilder sb2 = new StringBuilder();
                        sb2.append("SpecialEffectsController: Cancelling operation ");
                        sb2.append(eVar);
                    }
                    eVar.b();
                    if (!eVar.i()) {
                        this.f2199c.add(eVar);
                    }
                }
                q();
                ArrayList arrayList2 = new ArrayList(this.f2198b);
                this.f2198b.clear();
                this.f2199c.addAll(arrayList2);
                Iterator it3 = arrayList2.iterator();
                while (it3.hasNext()) {
                    ((e) it3.next()).l();
                }
                f(arrayList2, this.f2200d);
                this.f2200d = false;
            }
        }
    }

    public final e h(Fragment fragment) {
        Iterator<e> it2 = this.f2198b.iterator();
        while (it2.hasNext()) {
            e next = it2.next();
            if (next.f().equals(fragment) && !next.h()) {
                return next;
            }
        }
        return null;
    }

    public final e i(Fragment fragment) {
        Iterator<e> it2 = this.f2199c.iterator();
        while (it2.hasNext()) {
            e next = it2.next();
            if (next.f().equals(fragment) && !next.h()) {
                return next;
            }
        }
        return null;
    }

    public void j() {
        String str;
        String str2;
        boolean W = q0.b0.W(this.f2197a);
        synchronized (this.f2198b) {
            q();
            Iterator<e> it2 = this.f2198b.iterator();
            while (it2.hasNext()) {
                it2.next().l();
            }
            Iterator it3 = new ArrayList(this.f2199c).iterator();
            while (it3.hasNext()) {
                e eVar = (e) it3.next();
                if (FragmentManager.G0(2)) {
                    StringBuilder sb2 = new StringBuilder();
                    sb2.append("SpecialEffectsController: ");
                    if (W) {
                        str2 = "";
                    } else {
                        str2 = "Container " + this.f2197a + " is not attached to window. ";
                    }
                    sb2.append(str2);
                    sb2.append("Cancelling running operation ");
                    sb2.append(eVar);
                }
                eVar.b();
            }
            Iterator it4 = new ArrayList(this.f2198b).iterator();
            while (it4.hasNext()) {
                e eVar2 = (e) it4.next();
                if (FragmentManager.G0(2)) {
                    StringBuilder sb3 = new StringBuilder();
                    sb3.append("SpecialEffectsController: ");
                    if (W) {
                        str = "";
                    } else {
                        str = "Container " + this.f2197a + " is not attached to window. ";
                    }
                    sb3.append(str);
                    sb3.append("Cancelling pending operation ");
                    sb3.append(eVar2);
                }
                eVar2.b();
            }
        }
    }

    public void k() {
        if (this.f2201e) {
            this.f2201e = false;
            g();
        }
    }

    public e.b l(u uVar) {
        e h10 = h(uVar.k());
        e.b g10 = h10 != null ? h10.g() : null;
        e i10 = i(uVar.k());
        return (i10 == null || !(g10 == null || g10 == e.b.NONE)) ? g10 : i10.g();
    }

    public ViewGroup m() {
        return this.f2197a;
    }

    public void p() {
        synchronized (this.f2198b) {
            q();
            this.f2201e = false;
            int size = this.f2198b.size() - 1;
            while (true) {
                if (size < 0) {
                    break;
                }
                e eVar = this.f2198b.get(size);
                e.c c10 = e.c.c(eVar.f().mView);
                e.c e10 = eVar.e();
                e.c cVar = e.c.VISIBLE;
                if (e10 == cVar && c10 != cVar) {
                    this.f2201e = eVar.f().isPostponed();
                    break;
                }
                size--;
            }
        }
    }

    public final void q() {
        Iterator<e> it2 = this.f2198b.iterator();
        while (it2.hasNext()) {
            e next = it2.next();
            if (next.g() == e.b.ADDING) {
                next.k(e.c.b(next.f().requireView().getVisibility()), e.b.NONE);
            }
        }
    }

    public void r(boolean z10) {
        this.f2200d = z10;
    }
}
