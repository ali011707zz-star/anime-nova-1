package androidx.fragment.app;

import android.annotation.SuppressLint;
import android.graphics.Rect;
import android.graphics.RectF;
import android.view.View;
import android.view.ViewGroup;
import com.google.android.material.internal.StaticLayoutBuilderCompat;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;

/* compiled from: FragmentTransitionImpl.java */
@SuppressLint({"UnknownNullness"})
/* loaded from: classes.dex */
public abstract class a0 {

    /* compiled from: FragmentTransitionImpl.java */
    /* loaded from: classes.dex */
    public class a implements Runnable {

        /* renamed from: f, reason: collision with root package name */
        public final /* synthetic */ int f2113f;

        /* renamed from: g, reason: collision with root package name */
        public final /* synthetic */ ArrayList f2114g;

        /* renamed from: h, reason: collision with root package name */
        public final /* synthetic */ ArrayList f2115h;

        /* renamed from: i, reason: collision with root package name */
        public final /* synthetic */ ArrayList f2116i;

        /* renamed from: j, reason: collision with root package name */
        public final /* synthetic */ ArrayList f2117j;

        public a(int i10, ArrayList arrayList, ArrayList arrayList2, ArrayList arrayList3, ArrayList arrayList4) {
            this.f2113f = i10;
            this.f2114g = arrayList;
            this.f2115h = arrayList2;
            this.f2116i = arrayList3;
            this.f2117j = arrayList4;
        }

        @Override // java.lang.Runnable
        public void run() {
            for (int i10 = 0; i10 < this.f2113f; i10++) {
                q0.b0.O0((View) this.f2114g.get(i10), (String) this.f2115h.get(i10));
                q0.b0.O0((View) this.f2116i.get(i10), (String) this.f2117j.get(i10));
            }
        }
    }

    /* compiled from: FragmentTransitionImpl.java */
    /* loaded from: classes.dex */
    public class b implements Runnable {

        /* renamed from: f, reason: collision with root package name */
        public final /* synthetic */ ArrayList f2119f;

        /* renamed from: g, reason: collision with root package name */
        public final /* synthetic */ Map f2120g;

        public b(ArrayList arrayList, Map map) {
            this.f2119f = arrayList;
            this.f2120g = map;
        }

        @Override // java.lang.Runnable
        public void run() {
            int size = this.f2119f.size();
            for (int i10 = 0; i10 < size; i10++) {
                View view = (View) this.f2119f.get(i10);
                String O = q0.b0.O(view);
                if (O != null) {
                    q0.b0.O0(view, a0.i(this.f2120g, O));
                }
            }
        }
    }

    /* compiled from: FragmentTransitionImpl.java */
    /* loaded from: classes.dex */
    public class c implements Runnable {

        /* renamed from: f, reason: collision with root package name */
        public final /* synthetic */ ArrayList f2122f;

        /* renamed from: g, reason: collision with root package name */
        public final /* synthetic */ Map f2123g;

        public c(ArrayList arrayList, Map map) {
            this.f2122f = arrayList;
            this.f2123g = map;
        }

        @Override // java.lang.Runnable
        public void run() {
            int size = this.f2122f.size();
            for (int i10 = 0; i10 < size; i10++) {
                View view = (View) this.f2122f.get(i10);
                q0.b0.O0(view, (String) this.f2123g.get(q0.b0.O(view)));
            }
        }
    }

    public static void d(List<View> list, View view) {
        int size = list.size();
        if (h(list, view, size)) {
            return;
        }
        if (q0.b0.O(view) != null) {
            list.add(view);
        }
        for (int i10 = size; i10 < list.size(); i10++) {
            View view2 = list.get(i10);
            if (view2 instanceof ViewGroup) {
                ViewGroup viewGroup = (ViewGroup) view2;
                int childCount = viewGroup.getChildCount();
                for (int i11 = 0; i11 < childCount; i11++) {
                    View childAt = viewGroup.getChildAt(i11);
                    if (!h(list, childAt, size) && q0.b0.O(childAt) != null) {
                        list.add(childAt);
                    }
                }
            }
        }
    }

    public static boolean h(List<View> list, View view, int i10) {
        for (int i11 = 0; i11 < i10; i11++) {
            if (list.get(i11) == view) {
                return true;
            }
        }
        return false;
    }

    public static String i(Map<String, String> map, String str) {
        for (Map.Entry<String, String> entry : map.entrySet()) {
            if (str.equals(entry.getValue())) {
                return entry.getKey();
            }
        }
        return null;
    }

    public static boolean l(List list) {
        return list == null || list.isEmpty();
    }

    public abstract void A(Object obj, ArrayList<View> arrayList, ArrayList<View> arrayList2);

    public abstract Object B(Object obj);

    public abstract void a(Object obj, View view);

    public abstract void b(Object obj, ArrayList<View> arrayList);

    public abstract void c(ViewGroup viewGroup, Object obj);

    public abstract boolean e(Object obj);

    public void f(ArrayList<View> arrayList, View view) {
        if (view.getVisibility() == 0) {
            if (view instanceof ViewGroup) {
                ViewGroup viewGroup = (ViewGroup) view;
                if (q0.e0.a(viewGroup)) {
                    arrayList.add(viewGroup);
                    return;
                }
                int childCount = viewGroup.getChildCount();
                for (int i10 = 0; i10 < childCount; i10++) {
                    f(arrayList, viewGroup.getChildAt(i10));
                }
                return;
            }
            arrayList.add(view);
        }
    }

    public abstract Object g(Object obj);

    public void j(Map<String, View> map, View view) {
        if (view.getVisibility() == 0) {
            String O = q0.b0.O(view);
            if (O != null) {
                map.put(O, view);
            }
            if (view instanceof ViewGroup) {
                ViewGroup viewGroup = (ViewGroup) view;
                int childCount = viewGroup.getChildCount();
                for (int i10 = 0; i10 < childCount; i10++) {
                    j(map, viewGroup.getChildAt(i10));
                }
            }
        }
    }

    public void k(View view, Rect rect) {
        if (q0.b0.W(view)) {
            RectF rectF = new RectF();
            rectF.set(StaticLayoutBuilderCompat.DEFAULT_LINE_SPACING_ADD, StaticLayoutBuilderCompat.DEFAULT_LINE_SPACING_ADD, view.getWidth(), view.getHeight());
            view.getMatrix().mapRect(rectF);
            rectF.offset(view.getLeft(), view.getTop());
            Object parent = view.getParent();
            while (parent instanceof View) {
                View view2 = (View) parent;
                rectF.offset(-view2.getScrollX(), -view2.getScrollY());
                view2.getMatrix().mapRect(rectF);
                rectF.offset(view2.getLeft(), view2.getTop());
                parent = view2.getParent();
            }
            view.getRootView().getLocationOnScreen(new int[2]);
            rectF.offset(r1[0], r1[1]);
            rect.set(Math.round(rectF.left), Math.round(rectF.top), Math.round(rectF.right), Math.round(rectF.bottom));
        }
    }

    public abstract Object m(Object obj, Object obj2, Object obj3);

    public abstract Object n(Object obj, Object obj2, Object obj3);

    public ArrayList<String> o(ArrayList<View> arrayList) {
        ArrayList<String> arrayList2 = new ArrayList<>();
        int size = arrayList.size();
        for (int i10 = 0; i10 < size; i10++) {
            View view = arrayList.get(i10);
            arrayList2.add(q0.b0.O(view));
            q0.b0.O0(view, null);
        }
        return arrayList2;
    }

    public abstract void p(Object obj, View view);

    public abstract void q(Object obj, ArrayList<View> arrayList, ArrayList<View> arrayList2);

    public abstract void r(Object obj, View view, ArrayList<View> arrayList);

    public void s(ViewGroup viewGroup, ArrayList<View> arrayList, Map<String, String> map) {
        q0.x.a(viewGroup, new c(arrayList, map));
    }

    public abstract void t(Object obj, Object obj2, ArrayList<View> arrayList, Object obj3, ArrayList<View> arrayList2, Object obj4, ArrayList<View> arrayList3);

    public abstract void u(Object obj, Rect rect);

    public abstract void v(Object obj, View view);

    public void w(Fragment fragment, Object obj, m0.c cVar, Runnable runnable) {
        runnable.run();
    }

    public void x(View view, ArrayList<View> arrayList, Map<String, String> map) {
        q0.x.a(view, new b(arrayList, map));
    }

    public void y(View view, ArrayList<View> arrayList, ArrayList<View> arrayList2, ArrayList<String> arrayList3, Map<String, String> map) {
        int size = arrayList2.size();
        ArrayList arrayList4 = new ArrayList();
        for (int i10 = 0; i10 < size; i10++) {
            View view2 = arrayList.get(i10);
            String O = q0.b0.O(view2);
            arrayList4.add(O);
            if (O != null) {
                q0.b0.O0(view2, null);
                String str = map.get(O);
                int i11 = 0;
                while (true) {
                    if (i11 >= size) {
                        break;
                    }
                    if (str.equals(arrayList3.get(i11))) {
                        q0.b0.O0(arrayList2.get(i11), O);
                        break;
                    }
                    i11++;
                }
            }
        }
        q0.x.a(view, new a(size, arrayList2, arrayList3, arrayList, arrayList4));
    }

    public abstract void z(Object obj, View view, ArrayList<View> arrayList);
}
