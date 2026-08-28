package androidx.fragment.app;

import android.content.Context;
import android.graphics.Rect;
import android.os.Build;
import android.util.SparseArray;
import android.view.View;
import android.view.ViewGroup;
import androidx.fragment.app.x;
import java.util.ArrayList;
import java.util.Collection;
import java.util.List;

/* compiled from: FragmentTransition.java */
/* loaded from: classes.dex */
public class y {

    /* renamed from: a, reason: collision with root package name */
    public static final int[] f2326a = {0, 3, 0, 1, 5, 4, 7, 6, 9, 8, 10};

    /* renamed from: b, reason: collision with root package name */
    public static final a0 f2327b;

    /* renamed from: c, reason: collision with root package name */
    public static final a0 f2328c;

    /* compiled from: FragmentTransition.java */
    /* loaded from: classes.dex */
    public class a implements Runnable {

        /* renamed from: f, reason: collision with root package name */
        public final /* synthetic */ g f2329f;

        /* renamed from: g, reason: collision with root package name */
        public final /* synthetic */ Fragment f2330g;

        /* renamed from: h, reason: collision with root package name */
        public final /* synthetic */ m0.c f2331h;

        public a(g gVar, Fragment fragment, m0.c cVar) {
            this.f2329f = gVar;
            this.f2330g = fragment;
            this.f2331h = cVar;
        }

        @Override // java.lang.Runnable
        public void run() {
            this.f2329f.b(this.f2330g, this.f2331h);
        }
    }

    /* compiled from: FragmentTransition.java */
    /* loaded from: classes.dex */
    public class b implements Runnable {

        /* renamed from: f, reason: collision with root package name */
        public final /* synthetic */ ArrayList f2332f;

        public b(ArrayList arrayList) {
            this.f2332f = arrayList;
        }

        @Override // java.lang.Runnable
        public void run() {
            y.A(this.f2332f, 4);
        }
    }

    /* compiled from: FragmentTransition.java */
    /* loaded from: classes.dex */
    public class c implements Runnable {

        /* renamed from: f, reason: collision with root package name */
        public final /* synthetic */ g f2333f;

        /* renamed from: g, reason: collision with root package name */
        public final /* synthetic */ Fragment f2334g;

        /* renamed from: h, reason: collision with root package name */
        public final /* synthetic */ m0.c f2335h;

        public c(g gVar, Fragment fragment, m0.c cVar) {
            this.f2333f = gVar;
            this.f2334g = fragment;
            this.f2335h = cVar;
        }

        @Override // java.lang.Runnable
        public void run() {
            this.f2333f.b(this.f2334g, this.f2335h);
        }
    }

    /* compiled from: FragmentTransition.java */
    /* loaded from: classes.dex */
    public class d implements Runnable {

        /* renamed from: f, reason: collision with root package name */
        public final /* synthetic */ Object f2336f;

        /* renamed from: g, reason: collision with root package name */
        public final /* synthetic */ a0 f2337g;

        /* renamed from: h, reason: collision with root package name */
        public final /* synthetic */ View f2338h;

        /* renamed from: i, reason: collision with root package name */
        public final /* synthetic */ Fragment f2339i;

        /* renamed from: j, reason: collision with root package name */
        public final /* synthetic */ ArrayList f2340j;

        /* renamed from: k, reason: collision with root package name */
        public final /* synthetic */ ArrayList f2341k;

        /* renamed from: l, reason: collision with root package name */
        public final /* synthetic */ ArrayList f2342l;

        /* renamed from: m, reason: collision with root package name */
        public final /* synthetic */ Object f2343m;

        public d(Object obj, a0 a0Var, View view, Fragment fragment, ArrayList arrayList, ArrayList arrayList2, ArrayList arrayList3, Object obj2) {
            this.f2336f = obj;
            this.f2337g = a0Var;
            this.f2338h = view;
            this.f2339i = fragment;
            this.f2340j = arrayList;
            this.f2341k = arrayList2;
            this.f2342l = arrayList3;
            this.f2343m = obj2;
        }

        @Override // java.lang.Runnable
        public void run() {
            Object obj = this.f2336f;
            if (obj != null) {
                this.f2337g.p(obj, this.f2338h);
                this.f2341k.addAll(y.k(this.f2337g, this.f2336f, this.f2339i, this.f2340j, this.f2338h));
            }
            if (this.f2342l != null) {
                if (this.f2343m != null) {
                    ArrayList<View> arrayList = new ArrayList<>();
                    arrayList.add(this.f2338h);
                    this.f2337g.q(this.f2343m, this.f2342l, arrayList);
                }
                this.f2342l.clear();
                this.f2342l.add(this.f2338h);
            }
        }
    }

    /* compiled from: FragmentTransition.java */
    /* loaded from: classes.dex */
    public class e implements Runnable {

        /* renamed from: f, reason: collision with root package name */
        public final /* synthetic */ Fragment f2344f;

        /* renamed from: g, reason: collision with root package name */
        public final /* synthetic */ Fragment f2345g;

        /* renamed from: h, reason: collision with root package name */
        public final /* synthetic */ boolean f2346h;

        /* renamed from: i, reason: collision with root package name */
        public final /* synthetic */ s.a f2347i;

        /* renamed from: j, reason: collision with root package name */
        public final /* synthetic */ View f2348j;

        /* renamed from: k, reason: collision with root package name */
        public final /* synthetic */ a0 f2349k;

        /* renamed from: l, reason: collision with root package name */
        public final /* synthetic */ Rect f2350l;

        public e(Fragment fragment, Fragment fragment2, boolean z10, s.a aVar, View view, a0 a0Var, Rect rect) {
            this.f2344f = fragment;
            this.f2345g = fragment2;
            this.f2346h = z10;
            this.f2347i = aVar;
            this.f2348j = view;
            this.f2349k = a0Var;
            this.f2350l = rect;
        }

        @Override // java.lang.Runnable
        public void run() {
            y.f(this.f2344f, this.f2345g, this.f2346h, this.f2347i, false);
            View view = this.f2348j;
            if (view != null) {
                this.f2349k.k(view, this.f2350l);
            }
        }
    }

    /* compiled from: FragmentTransition.java */
    /* loaded from: classes.dex */
    public class f implements Runnable {

        /* renamed from: f, reason: collision with root package name */
        public final /* synthetic */ a0 f2351f;

        /* renamed from: g, reason: collision with root package name */
        public final /* synthetic */ s.a f2352g;

        /* renamed from: h, reason: collision with root package name */
        public final /* synthetic */ Object f2353h;

        /* renamed from: i, reason: collision with root package name */
        public final /* synthetic */ h f2354i;

        /* renamed from: j, reason: collision with root package name */
        public final /* synthetic */ ArrayList f2355j;

        /* renamed from: k, reason: collision with root package name */
        public final /* synthetic */ View f2356k;

        /* renamed from: l, reason: collision with root package name */
        public final /* synthetic */ Fragment f2357l;

        /* renamed from: m, reason: collision with root package name */
        public final /* synthetic */ Fragment f2358m;

        /* renamed from: n, reason: collision with root package name */
        public final /* synthetic */ boolean f2359n;

        /* renamed from: o, reason: collision with root package name */
        public final /* synthetic */ ArrayList f2360o;

        /* renamed from: p, reason: collision with root package name */
        public final /* synthetic */ Object f2361p;

        /* renamed from: q, reason: collision with root package name */
        public final /* synthetic */ Rect f2362q;

        public f(a0 a0Var, s.a aVar, Object obj, h hVar, ArrayList arrayList, View view, Fragment fragment, Fragment fragment2, boolean z10, ArrayList arrayList2, Object obj2, Rect rect) {
            this.f2351f = a0Var;
            this.f2352g = aVar;
            this.f2353h = obj;
            this.f2354i = hVar;
            this.f2355j = arrayList;
            this.f2356k = view;
            this.f2357l = fragment;
            this.f2358m = fragment2;
            this.f2359n = z10;
            this.f2360o = arrayList2;
            this.f2361p = obj2;
            this.f2362q = rect;
        }

        @Override // java.lang.Runnable
        public void run() {
            s.a<String, View> h10 = y.h(this.f2351f, this.f2352g, this.f2353h, this.f2354i);
            if (h10 != null) {
                this.f2355j.addAll(h10.values());
                this.f2355j.add(this.f2356k);
            }
            y.f(this.f2357l, this.f2358m, this.f2359n, h10, false);
            Object obj = this.f2353h;
            if (obj != null) {
                this.f2351f.A(obj, this.f2360o, this.f2355j);
                View s10 = y.s(h10, this.f2354i, this.f2361p, this.f2359n);
                if (s10 != null) {
                    this.f2351f.k(s10, this.f2362q);
                }
            }
        }
    }

    /* compiled from: FragmentTransition.java */
    /* loaded from: classes.dex */
    public interface g {
        void a(Fragment fragment, m0.c cVar);

        void b(Fragment fragment, m0.c cVar);
    }

    /* compiled from: FragmentTransition.java */
    /* loaded from: classes.dex */
    public static class h {

        /* renamed from: a, reason: collision with root package name */
        public Fragment f2363a;

        /* renamed from: b, reason: collision with root package name */
        public boolean f2364b;

        /* renamed from: c, reason: collision with root package name */
        public androidx.fragment.app.a f2365c;

        /* renamed from: d, reason: collision with root package name */
        public Fragment f2366d;

        /* renamed from: e, reason: collision with root package name */
        public boolean f2367e;

        /* renamed from: f, reason: collision with root package name */
        public androidx.fragment.app.a f2368f;
    }

    static {
        f2327b = Build.VERSION.SDK_INT >= 21 ? new z() : null;
        f2328c = w();
    }

    public static void A(ArrayList<View> arrayList, int i10) {
        if (arrayList == null) {
            return;
        }
        for (int size = arrayList.size() - 1; size >= 0; size--) {
            arrayList.get(size).setVisibility(i10);
        }
    }

    public static void B(Context context, androidx.fragment.app.g gVar, ArrayList<androidx.fragment.app.a> arrayList, ArrayList<Boolean> arrayList2, int i10, int i11, boolean z10, g gVar2) {
        ViewGroup viewGroup;
        SparseArray sparseArray = new SparseArray();
        for (int i12 = i10; i12 < i11; i12++) {
            androidx.fragment.app.a aVar = arrayList.get(i12);
            if (arrayList2.get(i12).booleanValue()) {
                e(aVar, sparseArray, z10);
            } else {
                c(aVar, sparseArray, z10);
            }
        }
        if (sparseArray.size() != 0) {
            View view = new View(context);
            int size = sparseArray.size();
            for (int i13 = 0; i13 < size; i13++) {
                int keyAt = sparseArray.keyAt(i13);
                s.a<String, String> d10 = d(keyAt, arrayList, arrayList2, i10, i11);
                h hVar = (h) sparseArray.valueAt(i13);
                if (gVar.d() && (viewGroup = (ViewGroup) gVar.c(keyAt)) != null) {
                    if (z10) {
                        o(viewGroup, hVar, view, d10, gVar2);
                    } else {
                        n(viewGroup, hVar, view, d10, gVar2);
                    }
                }
            }
        }
    }

    public static void a(ArrayList<View> arrayList, s.a<String, View> aVar, Collection<String> collection) {
        for (int size = aVar.size() - 1; size >= 0; size--) {
            View m10 = aVar.m(size);
            if (collection.contains(q0.b0.O(m10))) {
                arrayList.add(m10);
            }
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:59:0x0039, code lost:
    
        if (r0.mAdded != false) goto L70;
     */
    /* JADX WARN: Code restructure failed: missing block: B:60:0x008c, code lost:
    
        r9 = true;
     */
    /* JADX WARN: Code restructure failed: missing block: B:71:0x006e, code lost:
    
        r9 = true;
     */
    /* JADX WARN: Code restructure failed: missing block: B:96:0x008a, code lost:
    
        if (r0.mHidden == false) goto L70;
     */
    /* JADX WARN: Removed duplicated region for block: B:26:0x009a  */
    /* JADX WARN: Removed duplicated region for block: B:29:0x00a7 A[ADDED_TO_REGION] */
    /* JADX WARN: Removed duplicated region for block: B:36:0x00b5  */
    /* JADX WARN: Removed duplicated region for block: B:38:0x00c7 A[ADDED_TO_REGION] */
    /* JADX WARN: Removed duplicated region for block: B:43:0x00d9 A[ADDED_TO_REGION] */
    /* JADX WARN: Removed duplicated region for block: B:52:? A[ADDED_TO_REGION, RETURN, SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static void b(androidx.fragment.app.a aVar, x.a aVar2, SparseArray<h> sparseArray, boolean z10, boolean z11) {
        int i10;
        boolean z12;
        boolean z13;
        boolean z14;
        h hVar;
        Fragment fragment = aVar2.f2319b;
        if (fragment == null || (i10 = fragment.mContainerId) == 0) {
            return;
        }
        int i11 = z10 ? f2326a[aVar2.f2318a] : aVar2.f2318a;
        boolean z15 = false;
        boolean z16 = true;
        if (i11 != 1) {
            if (i11 != 3) {
                if (i11 == 4) {
                    boolean z17 = !z11 ? false : false;
                    z14 = z17;
                    z13 = true;
                    z16 = false;
                    hVar = sparseArray.get(i10);
                    if (z15) {
                    }
                    if (!z11) {
                    }
                    if (z14) {
                    }
                    if (z11) {
                    }
                } else if (i11 != 5) {
                    if (i11 != 6) {
                        if (i11 != 7) {
                            z13 = false;
                            z16 = false;
                            z14 = false;
                            hVar = sparseArray.get(i10);
                            if (z15) {
                                hVar = p(hVar, sparseArray, i10);
                                hVar.f2363a = fragment;
                                hVar.f2364b = z10;
                                hVar.f2365c = aVar;
                            }
                            if (!z11 && z16) {
                                if (hVar != null && hVar.f2366d == fragment) {
                                    hVar.f2366d = null;
                                }
                                if (!aVar.f2316r) {
                                    FragmentManager fragmentManager = aVar.f2110t;
                                    fragmentManager.s0().p(fragmentManager.w(fragment));
                                    fragmentManager.S0(fragment);
                                }
                            }
                            if (z14 && (hVar == null || hVar.f2366d == null)) {
                                hVar = p(hVar, sparseArray, i10);
                                hVar.f2366d = fragment;
                                hVar.f2367e = z10;
                                hVar.f2368f = aVar;
                            }
                            if (z11 || !z13 || hVar == null || hVar.f2363a != fragment) {
                                return;
                            }
                            hVar.f2363a = null;
                            return;
                        }
                    }
                } else {
                    if (z11) {
                        if (fragment.mHiddenChanged) {
                            if (!fragment.mHidden) {
                            }
                        }
                        z12 = false;
                        z15 = z12;
                        z13 = false;
                        z14 = false;
                        hVar = sparseArray.get(i10);
                        if (z15) {
                        }
                        if (!z11) {
                            if (hVar != null) {
                                hVar.f2366d = null;
                            }
                            if (!aVar.f2316r) {
                            }
                        }
                        if (z14) {
                            hVar = p(hVar, sparseArray, i10);
                            hVar.f2366d = fragment;
                            hVar.f2367e = z10;
                            hVar.f2368f = aVar;
                        }
                        if (z11) {
                            return;
                        } else {
                            return;
                        }
                    }
                    z12 = fragment.mHidden;
                    z15 = z12;
                    z13 = false;
                    z14 = false;
                    hVar = sparseArray.get(i10);
                    if (z15) {
                    }
                    if (!z11) {
                    }
                    if (z14) {
                    }
                    if (z11) {
                    }
                }
            }
            if (!z11) {
            }
            z14 = z17;
            z13 = true;
            z16 = false;
            hVar = sparseArray.get(i10);
            if (z15) {
            }
            if (!z11) {
            }
            if (z14) {
            }
            if (z11) {
            }
        }
        if (z11) {
            z12 = fragment.mIsNewlyAdded;
            z15 = z12;
            z13 = false;
            z14 = false;
            hVar = sparseArray.get(i10);
            if (z15) {
            }
            if (!z11) {
            }
            if (z14) {
            }
            if (z11) {
            }
        } else {
            if (!fragment.mAdded) {
            }
            z12 = false;
            z15 = z12;
            z13 = false;
            z14 = false;
            hVar = sparseArray.get(i10);
            if (z15) {
            }
            if (!z11) {
            }
            if (z14) {
            }
            if (z11) {
            }
        }
    }

    public static void c(androidx.fragment.app.a aVar, SparseArray<h> sparseArray, boolean z10) {
        int size = aVar.f2301c.size();
        for (int i10 = 0; i10 < size; i10++) {
            b(aVar, aVar.f2301c.get(i10), sparseArray, false, z10);
        }
    }

    public static s.a<String, String> d(int i10, ArrayList<androidx.fragment.app.a> arrayList, ArrayList<Boolean> arrayList2, int i11, int i12) {
        ArrayList<String> arrayList3;
        ArrayList<String> arrayList4;
        s.a<String, String> aVar = new s.a<>();
        for (int i13 = i12 - 1; i13 >= i11; i13--) {
            androidx.fragment.app.a aVar2 = arrayList.get(i13);
            if (aVar2.D(i10)) {
                boolean booleanValue = arrayList2.get(i13).booleanValue();
                ArrayList<String> arrayList5 = aVar2.f2314p;
                if (arrayList5 != null) {
                    int size = arrayList5.size();
                    if (booleanValue) {
                        arrayList3 = aVar2.f2314p;
                        arrayList4 = aVar2.f2315q;
                    } else {
                        ArrayList<String> arrayList6 = aVar2.f2314p;
                        arrayList3 = aVar2.f2315q;
                        arrayList4 = arrayList6;
                    }
                    for (int i14 = 0; i14 < size; i14++) {
                        String str = arrayList4.get(i14);
                        String str2 = arrayList3.get(i14);
                        String remove = aVar.remove(str2);
                        if (remove != null) {
                            aVar.put(str, remove);
                        } else {
                            aVar.put(str, str2);
                        }
                    }
                }
            }
        }
        return aVar;
    }

    public static void e(androidx.fragment.app.a aVar, SparseArray<h> sparseArray, boolean z10) {
        if (aVar.f2110t.o0().d()) {
            for (int size = aVar.f2301c.size() - 1; size >= 0; size--) {
                b(aVar, aVar.f2301c.get(size), sparseArray, true, z10);
            }
        }
    }

    public static void f(Fragment fragment, Fragment fragment2, boolean z10, s.a<String, View> aVar, boolean z11) {
        if (z10) {
            fragment2.getEnterTransitionCallback();
        } else {
            fragment.getEnterTransitionCallback();
        }
    }

    public static boolean g(a0 a0Var, List<Object> list) {
        int size = list.size();
        for (int i10 = 0; i10 < size; i10++) {
            if (!a0Var.e(list.get(i10))) {
                return false;
            }
        }
        return true;
    }

    public static s.a<String, View> h(a0 a0Var, s.a<String, String> aVar, Object obj, h hVar) {
        ArrayList<String> arrayList;
        Fragment fragment = hVar.f2363a;
        View view = fragment.getView();
        if (!aVar.isEmpty() && obj != null && view != null) {
            s.a<String, View> aVar2 = new s.a<>();
            a0Var.j(aVar2, view);
            androidx.fragment.app.a aVar3 = hVar.f2365c;
            if (hVar.f2364b) {
                fragment.getExitTransitionCallback();
                arrayList = aVar3.f2314p;
            } else {
                fragment.getEnterTransitionCallback();
                arrayList = aVar3.f2315q;
            }
            if (arrayList != null) {
                aVar2.o(arrayList);
                aVar2.o(aVar.values());
            }
            x(aVar, aVar2);
            return aVar2;
        }
        aVar.clear();
        return null;
    }

    public static s.a<String, View> i(a0 a0Var, s.a<String, String> aVar, Object obj, h hVar) {
        ArrayList<String> arrayList;
        if (!aVar.isEmpty() && obj != null) {
            Fragment fragment = hVar.f2366d;
            s.a<String, View> aVar2 = new s.a<>();
            a0Var.j(aVar2, fragment.requireView());
            androidx.fragment.app.a aVar3 = hVar.f2368f;
            if (hVar.f2367e) {
                fragment.getEnterTransitionCallback();
                arrayList = aVar3.f2315q;
            } else {
                fragment.getExitTransitionCallback();
                arrayList = aVar3.f2314p;
            }
            if (arrayList != null) {
                aVar2.o(arrayList);
            }
            aVar.o(aVar2.keySet());
            return aVar2;
        }
        aVar.clear();
        return null;
    }

    public static a0 j(Fragment fragment, Fragment fragment2) {
        ArrayList arrayList = new ArrayList();
        if (fragment != null) {
            Object exitTransition = fragment.getExitTransition();
            if (exitTransition != null) {
                arrayList.add(exitTransition);
            }
            Object returnTransition = fragment.getReturnTransition();
            if (returnTransition != null) {
                arrayList.add(returnTransition);
            }
            Object sharedElementReturnTransition = fragment.getSharedElementReturnTransition();
            if (sharedElementReturnTransition != null) {
                arrayList.add(sharedElementReturnTransition);
            }
        }
        if (fragment2 != null) {
            Object enterTransition = fragment2.getEnterTransition();
            if (enterTransition != null) {
                arrayList.add(enterTransition);
            }
            Object reenterTransition = fragment2.getReenterTransition();
            if (reenterTransition != null) {
                arrayList.add(reenterTransition);
            }
            Object sharedElementEnterTransition = fragment2.getSharedElementEnterTransition();
            if (sharedElementEnterTransition != null) {
                arrayList.add(sharedElementEnterTransition);
            }
        }
        if (arrayList.isEmpty()) {
            return null;
        }
        a0 a0Var = f2327b;
        if (a0Var != null && g(a0Var, arrayList)) {
            return a0Var;
        }
        a0 a0Var2 = f2328c;
        if (a0Var2 != null && g(a0Var2, arrayList)) {
            return a0Var2;
        }
        if (a0Var == null && a0Var2 == null) {
            return null;
        }
        throw new IllegalArgumentException("Invalid Transition types");
    }

    public static ArrayList<View> k(a0 a0Var, Object obj, Fragment fragment, ArrayList<View> arrayList, View view) {
        if (obj == null) {
            return null;
        }
        ArrayList<View> arrayList2 = new ArrayList<>();
        View view2 = fragment.getView();
        if (view2 != null) {
            a0Var.f(arrayList2, view2);
        }
        if (arrayList != null) {
            arrayList2.removeAll(arrayList);
        }
        if (arrayList2.isEmpty()) {
            return arrayList2;
        }
        arrayList2.add(view);
        a0Var.b(obj, arrayList2);
        return arrayList2;
    }

    public static Object l(a0 a0Var, ViewGroup viewGroup, View view, s.a<String, String> aVar, h hVar, ArrayList<View> arrayList, ArrayList<View> arrayList2, Object obj, Object obj2) {
        Object t10;
        s.a<String, String> aVar2;
        Object obj3;
        Rect rect;
        Fragment fragment = hVar.f2363a;
        Fragment fragment2 = hVar.f2366d;
        if (fragment == null || fragment2 == null) {
            return null;
        }
        boolean z10 = hVar.f2364b;
        if (aVar.isEmpty()) {
            aVar2 = aVar;
            t10 = null;
        } else {
            t10 = t(a0Var, fragment, fragment2, z10);
            aVar2 = aVar;
        }
        s.a<String, View> i10 = i(a0Var, aVar2, t10, hVar);
        if (aVar.isEmpty()) {
            obj3 = null;
        } else {
            arrayList.addAll(i10.values());
            obj3 = t10;
        }
        if (obj == null && obj2 == null && obj3 == null) {
            return null;
        }
        f(fragment, fragment2, z10, i10, true);
        if (obj3 != null) {
            rect = new Rect();
            a0Var.z(obj3, view, arrayList);
            z(a0Var, obj3, obj2, i10, hVar.f2367e, hVar.f2368f);
            if (obj != null) {
                a0Var.u(obj, rect);
            }
        } else {
            rect = null;
        }
        q0.x.a(viewGroup, new f(a0Var, aVar, obj3, hVar, arrayList2, view, fragment, fragment2, z10, arrayList, obj, rect));
        return obj3;
    }

    public static Object m(a0 a0Var, ViewGroup viewGroup, View view, s.a<String, String> aVar, h hVar, ArrayList<View> arrayList, ArrayList<View> arrayList2, Object obj, Object obj2) {
        Object obj3;
        View view2;
        Rect rect;
        Fragment fragment = hVar.f2363a;
        Fragment fragment2 = hVar.f2366d;
        if (fragment != null) {
            fragment.requireView().setVisibility(0);
        }
        if (fragment == null || fragment2 == null) {
            return null;
        }
        boolean z10 = hVar.f2364b;
        Object t10 = aVar.isEmpty() ? null : t(a0Var, fragment, fragment2, z10);
        s.a<String, View> i10 = i(a0Var, aVar, t10, hVar);
        s.a<String, View> h10 = h(a0Var, aVar, t10, hVar);
        if (aVar.isEmpty()) {
            if (i10 != null) {
                i10.clear();
            }
            if (h10 != null) {
                h10.clear();
            }
            obj3 = null;
        } else {
            a(arrayList, i10, aVar.keySet());
            a(arrayList2, h10, aVar.values());
            obj3 = t10;
        }
        if (obj == null && obj2 == null && obj3 == null) {
            return null;
        }
        f(fragment, fragment2, z10, i10, true);
        if (obj3 != null) {
            arrayList2.add(view);
            a0Var.z(obj3, view, arrayList);
            z(a0Var, obj3, obj2, i10, hVar.f2367e, hVar.f2368f);
            Rect rect2 = new Rect();
            View s10 = s(h10, hVar, obj, z10);
            if (s10 != null) {
                a0Var.u(obj, rect2);
            }
            rect = rect2;
            view2 = s10;
        } else {
            view2 = null;
            rect = null;
        }
        q0.x.a(viewGroup, new e(fragment, fragment2, z10, h10, view2, a0Var, rect));
        return obj3;
    }

    public static void n(ViewGroup viewGroup, h hVar, View view, s.a<String, String> aVar, g gVar) {
        Object obj;
        Fragment fragment = hVar.f2363a;
        Fragment fragment2 = hVar.f2366d;
        a0 j10 = j(fragment2, fragment);
        if (j10 == null) {
            return;
        }
        boolean z10 = hVar.f2364b;
        boolean z11 = hVar.f2367e;
        Object q10 = q(j10, fragment, z10);
        Object r10 = r(j10, fragment2, z11);
        ArrayList arrayList = new ArrayList();
        ArrayList<View> arrayList2 = new ArrayList<>();
        Object l10 = l(j10, viewGroup, view, aVar, hVar, arrayList, arrayList2, q10, r10);
        if (q10 == null && l10 == null) {
            obj = r10;
            if (obj == null) {
                return;
            }
        } else {
            obj = r10;
        }
        ArrayList<View> k10 = k(j10, obj, fragment2, arrayList, view);
        if (k10 == null || k10.isEmpty()) {
            obj = null;
        }
        Object obj2 = obj;
        j10.a(q10, view);
        Object u10 = u(j10, q10, obj2, l10, fragment, hVar.f2364b);
        if (fragment2 != null && k10 != null && (k10.size() > 0 || arrayList.size() > 0)) {
            m0.c cVar = new m0.c();
            gVar.a(fragment2, cVar);
            j10.w(fragment2, u10, cVar, new c(gVar, fragment2, cVar));
        }
        if (u10 != null) {
            ArrayList<View> arrayList3 = new ArrayList<>();
            j10.t(u10, q10, arrayList3, obj2, k10, l10, arrayList2);
            y(j10, viewGroup, fragment, view, arrayList2, q10, arrayList3, obj2, k10);
            j10.x(viewGroup, arrayList2, aVar);
            j10.c(viewGroup, u10);
            j10.s(viewGroup, arrayList2, aVar);
        }
    }

    public static void o(ViewGroup viewGroup, h hVar, View view, s.a<String, String> aVar, g gVar) {
        Object obj;
        Fragment fragment = hVar.f2363a;
        Fragment fragment2 = hVar.f2366d;
        a0 j10 = j(fragment2, fragment);
        if (j10 == null) {
            return;
        }
        boolean z10 = hVar.f2364b;
        boolean z11 = hVar.f2367e;
        ArrayList<View> arrayList = new ArrayList<>();
        ArrayList<View> arrayList2 = new ArrayList<>();
        Object q10 = q(j10, fragment, z10);
        Object r10 = r(j10, fragment2, z11);
        Object m10 = m(j10, viewGroup, view, aVar, hVar, arrayList2, arrayList, q10, r10);
        if (q10 == null && m10 == null) {
            obj = r10;
            if (obj == null) {
                return;
            }
        } else {
            obj = r10;
        }
        ArrayList<View> k10 = k(j10, obj, fragment2, arrayList2, view);
        ArrayList<View> k11 = k(j10, q10, fragment, arrayList, view);
        A(k11, 4);
        Object u10 = u(j10, q10, obj, m10, fragment, z10);
        if (fragment2 != null && k10 != null && (k10.size() > 0 || arrayList2.size() > 0)) {
            m0.c cVar = new m0.c();
            gVar.a(fragment2, cVar);
            j10.w(fragment2, u10, cVar, new a(gVar, fragment2, cVar));
        }
        if (u10 != null) {
            v(j10, obj, fragment2, k10);
            ArrayList<String> o10 = j10.o(arrayList);
            j10.t(u10, q10, k11, obj, k10, m10, arrayList);
            j10.c(viewGroup, u10);
            j10.y(viewGroup, arrayList2, arrayList, o10, aVar);
            A(k11, 0);
            j10.A(m10, arrayList2, arrayList);
        }
    }

    public static h p(h hVar, SparseArray<h> sparseArray, int i10) {
        if (hVar != null) {
            return hVar;
        }
        h hVar2 = new h();
        sparseArray.put(i10, hVar2);
        return hVar2;
    }

    public static Object q(a0 a0Var, Fragment fragment, boolean z10) {
        Object enterTransition;
        if (fragment == null) {
            return null;
        }
        if (z10) {
            enterTransition = fragment.getReenterTransition();
        } else {
            enterTransition = fragment.getEnterTransition();
        }
        return a0Var.g(enterTransition);
    }

    public static Object r(a0 a0Var, Fragment fragment, boolean z10) {
        Object exitTransition;
        if (fragment == null) {
            return null;
        }
        if (z10) {
            exitTransition = fragment.getReturnTransition();
        } else {
            exitTransition = fragment.getExitTransition();
        }
        return a0Var.g(exitTransition);
    }

    public static View s(s.a<String, View> aVar, h hVar, Object obj, boolean z10) {
        ArrayList<String> arrayList;
        String str;
        androidx.fragment.app.a aVar2 = hVar.f2365c;
        if (obj == null || aVar == null || (arrayList = aVar2.f2314p) == null || arrayList.isEmpty()) {
            return null;
        }
        if (z10) {
            str = aVar2.f2314p.get(0);
        } else {
            str = aVar2.f2315q.get(0);
        }
        return aVar.get(str);
    }

    public static Object t(a0 a0Var, Fragment fragment, Fragment fragment2, boolean z10) {
        Object sharedElementEnterTransition;
        if (fragment == null || fragment2 == null) {
            return null;
        }
        if (z10) {
            sharedElementEnterTransition = fragment2.getSharedElementReturnTransition();
        } else {
            sharedElementEnterTransition = fragment.getSharedElementEnterTransition();
        }
        return a0Var.B(a0Var.g(sharedElementEnterTransition));
    }

    public static Object u(a0 a0Var, Object obj, Object obj2, Object obj3, Fragment fragment, boolean z10) {
        boolean z11;
        if (obj == null || obj2 == null || fragment == null) {
            z11 = true;
        } else if (z10) {
            z11 = fragment.getAllowReturnTransitionOverlap();
        } else {
            z11 = fragment.getAllowEnterTransitionOverlap();
        }
        if (z11) {
            return a0Var.n(obj2, obj, obj3);
        }
        return a0Var.m(obj2, obj, obj3);
    }

    public static void v(a0 a0Var, Object obj, Fragment fragment, ArrayList<View> arrayList) {
        if (fragment != null && obj != null && fragment.mAdded && fragment.mHidden && fragment.mHiddenChanged) {
            fragment.setHideReplaced(true);
            a0Var.r(obj, fragment.getView(), arrayList);
            q0.x.a(fragment.mContainer, new b(arrayList));
        }
    }

    public static a0 w() {
        try {
            return (a0) x1.e.class.getDeclaredConstructor(new Class[0]).newInstance(new Object[0]);
        } catch (Exception unused) {
            return null;
        }
    }

    public static void x(s.a<String, String> aVar, s.a<String, View> aVar2) {
        for (int size = aVar.size() - 1; size >= 0; size--) {
            if (!aVar2.containsKey(aVar.m(size))) {
                aVar.k(size);
            }
        }
    }

    public static void y(a0 a0Var, ViewGroup viewGroup, Fragment fragment, View view, ArrayList<View> arrayList, Object obj, ArrayList<View> arrayList2, Object obj2, ArrayList<View> arrayList3) {
        q0.x.a(viewGroup, new d(obj, a0Var, view, fragment, arrayList, arrayList2, arrayList3, obj2));
    }

    public static void z(a0 a0Var, Object obj, Object obj2, s.a<String, View> aVar, boolean z10, androidx.fragment.app.a aVar2) {
        String str;
        ArrayList<String> arrayList = aVar2.f2314p;
        if (arrayList == null || arrayList.isEmpty()) {
            return;
        }
        if (z10) {
            str = aVar2.f2315q.get(0);
        } else {
            str = aVar2.f2314p.get(0);
        }
        View view = aVar.get(str);
        a0Var.v(obj, view);
        if (obj2 != null) {
            a0Var.v(obj2, view);
        }
    }
}
