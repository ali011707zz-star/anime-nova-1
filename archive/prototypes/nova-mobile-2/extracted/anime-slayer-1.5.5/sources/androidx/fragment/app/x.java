package androidx.fragment.app;

import android.os.Bundle;
import android.view.ViewGroup;
import androidx.lifecycle.k;
import java.lang.reflect.Modifier;
import java.util.ArrayList;

/* compiled from: FragmentTransaction.java */
/* loaded from: classes.dex */
public abstract class x {

    /* renamed from: a, reason: collision with root package name */
    public final i f2299a;

    /* renamed from: b, reason: collision with root package name */
    public final ClassLoader f2300b;

    /* renamed from: d, reason: collision with root package name */
    public int f2302d;

    /* renamed from: e, reason: collision with root package name */
    public int f2303e;

    /* renamed from: f, reason: collision with root package name */
    public int f2304f;

    /* renamed from: g, reason: collision with root package name */
    public int f2305g;

    /* renamed from: h, reason: collision with root package name */
    public int f2306h;

    /* renamed from: i, reason: collision with root package name */
    public boolean f2307i;

    /* renamed from: k, reason: collision with root package name */
    public String f2309k;

    /* renamed from: l, reason: collision with root package name */
    public int f2310l;

    /* renamed from: m, reason: collision with root package name */
    public CharSequence f2311m;

    /* renamed from: n, reason: collision with root package name */
    public int f2312n;

    /* renamed from: o, reason: collision with root package name */
    public CharSequence f2313o;

    /* renamed from: p, reason: collision with root package name */
    public ArrayList<String> f2314p;

    /* renamed from: q, reason: collision with root package name */
    public ArrayList<String> f2315q;

    /* renamed from: s, reason: collision with root package name */
    public ArrayList<Runnable> f2317s;

    /* renamed from: c, reason: collision with root package name */
    public ArrayList<a> f2301c = new ArrayList<>();

    /* renamed from: j, reason: collision with root package name */
    public boolean f2308j = true;

    /* renamed from: r, reason: collision with root package name */
    public boolean f2316r = false;

    /* compiled from: FragmentTransaction.java */
    /* loaded from: classes.dex */
    public static final class a {

        /* renamed from: a, reason: collision with root package name */
        public int f2318a;

        /* renamed from: b, reason: collision with root package name */
        public Fragment f2319b;

        /* renamed from: c, reason: collision with root package name */
        public int f2320c;

        /* renamed from: d, reason: collision with root package name */
        public int f2321d;

        /* renamed from: e, reason: collision with root package name */
        public int f2322e;

        /* renamed from: f, reason: collision with root package name */
        public int f2323f;

        /* renamed from: g, reason: collision with root package name */
        public k.c f2324g;

        /* renamed from: h, reason: collision with root package name */
        public k.c f2325h;

        public a() {
        }

        public a(int i10, Fragment fragment) {
            this.f2318a = i10;
            this.f2319b = fragment;
            k.c cVar = k.c.RESUMED;
            this.f2324g = cVar;
            this.f2325h = cVar;
        }

        public a(int i10, Fragment fragment, k.c cVar) {
            this.f2318a = i10;
            this.f2319b = fragment;
            this.f2324g = fragment.mMaxState;
            this.f2325h = cVar;
        }
    }

    public x(i iVar, ClassLoader classLoader) {
        this.f2299a = iVar;
        this.f2300b = classLoader;
    }

    public x b(int i10, Fragment fragment) {
        o(i10, fragment, null, 1);
        return this;
    }

    public x c(int i10, Fragment fragment, String str) {
        o(i10, fragment, str, 1);
        return this;
    }

    public final x d(int i10, Class<? extends Fragment> cls, Bundle bundle, String str) {
        return c(i10, m(cls, bundle), str);
    }

    public x e(ViewGroup viewGroup, Fragment fragment, String str) {
        fragment.mContainer = viewGroup;
        return c(viewGroup.getId(), fragment, str);
    }

    public x f(Fragment fragment, String str) {
        o(0, fragment, str, 1);
        return this;
    }

    public void g(a aVar) {
        this.f2301c.add(aVar);
        aVar.f2320c = this.f2302d;
        aVar.f2321d = this.f2303e;
        aVar.f2322e = this.f2304f;
        aVar.f2323f = this.f2305g;
    }

    public x h(String str) {
        if (this.f2308j) {
            this.f2307i = true;
            this.f2309k = str;
            return this;
        }
        throw new IllegalStateException("This FragmentTransaction is not allowed to be added to the back stack.");
    }

    public abstract int i();

    public abstract int j();

    public abstract void k();

    public abstract void l();

    public final Fragment m(Class<? extends Fragment> cls, Bundle bundle) {
        i iVar = this.f2299a;
        if (iVar != null) {
            ClassLoader classLoader = this.f2300b;
            if (classLoader != null) {
                Fragment a10 = iVar.a(classLoader, cls.getName());
                if (bundle != null) {
                    a10.setArguments(bundle);
                }
                return a10;
            }
            throw new IllegalStateException("The FragmentManager must be attached to itshost to create a Fragment");
        }
        throw new IllegalStateException("Creating a Fragment requires that this FragmentTransaction was built with FragmentManager.beginTransaction()");
    }

    public x n() {
        if (!this.f2307i) {
            this.f2308j = false;
            return this;
        }
        throw new IllegalStateException("This transaction is already being added to the back stack");
    }

    public void o(int i10, Fragment fragment, String str, int i11) {
        Class<?> cls = fragment.getClass();
        int modifiers = cls.getModifiers();
        if (!cls.isAnonymousClass() && Modifier.isPublic(modifiers) && (!cls.isMemberClass() || Modifier.isStatic(modifiers))) {
            if (str != null) {
                String str2 = fragment.mTag;
                if (str2 != null && !str.equals(str2)) {
                    throw new IllegalStateException("Can't change tag of fragment " + fragment + ": was " + fragment.mTag + " now " + str);
                }
                fragment.mTag = str;
            }
            if (i10 != 0) {
                if (i10 != -1) {
                    int i12 = fragment.mFragmentId;
                    if (i12 != 0 && i12 != i10) {
                        throw new IllegalStateException("Can't change container ID of fragment " + fragment + ": was " + fragment.mFragmentId + " now " + i10);
                    }
                    fragment.mFragmentId = i10;
                    fragment.mContainerId = i10;
                } else {
                    throw new IllegalArgumentException("Can't add fragment " + fragment + " with tag " + str + " to container view with no id");
                }
            }
            g(new a(i11, fragment));
            return;
        }
        throw new IllegalStateException("Fragment " + cls.getCanonicalName() + " must be a public static class to be  properly recreated from instance state.");
    }

    public x p(Fragment fragment) {
        g(new a(3, fragment));
        return this;
    }

    public x q(int i10, Fragment fragment) {
        return r(i10, fragment, null);
    }

    public x r(int i10, Fragment fragment, String str) {
        if (i10 != 0) {
            o(i10, fragment, str, 2);
            return this;
        }
        throw new IllegalArgumentException("Must use non-zero containerViewId");
    }

    public final x s(int i10, Class<? extends Fragment> cls, Bundle bundle, String str) {
        return r(i10, m(cls, bundle), str);
    }

    public x t(Fragment fragment, k.c cVar) {
        g(new a(10, fragment, cVar));
        return this;
    }

    public x u(boolean z10) {
        this.f2316r = z10;
        return this;
    }
}
