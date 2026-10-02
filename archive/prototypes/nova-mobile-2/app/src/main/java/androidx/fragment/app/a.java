package androidx.fragment.app;

import androidx.fragment.app.Fragment;
import androidx.fragment.app.FragmentManager;
import androidx.fragment.app.x;
import androidx.lifecycle.k;
import java.io.PrintWriter;
import java.util.ArrayList;

/* compiled from: BackStackRecord.java */
/* loaded from: classes.dex */
public final class a extends x implements FragmentManager.p {

    /* renamed from: t, reason: collision with root package name */
    public final FragmentManager f2110t;

    /* renamed from: u, reason: collision with root package name */
    public boolean f2111u;

    /* renamed from: v, reason: collision with root package name */
    public int f2112v;

    public a(FragmentManager fragmentManager) {
        super(fragmentManager.r0(), fragmentManager.u0() != null ? fragmentManager.u0().f().getClassLoader() : null);
        this.f2112v = -1;
        this.f2110t = fragmentManager;
    }

    public static boolean F(x.a aVar) {
        Fragment fragment = aVar.f2319b;
        return (fragment == null || !fragment.mAdded || fragment.mView == null || fragment.mDetached || fragment.mHidden || !fragment.isPostponed()) ? false : true;
    }

    public void A(boolean z10) {
        for (int size = this.f2301c.size() - 1; size >= 0; size--) {
            x.a aVar = this.f2301c.get(size);
            Fragment fragment = aVar.f2319b;
            if (fragment != null) {
                fragment.setPopDirection(true);
                fragment.setNextTransition(FragmentManager.j1(this.f2306h));
                fragment.setSharedElementNames(this.f2315q, this.f2314p);
            }
            switch (aVar.f2318a) {
                case 1:
                    fragment.setAnimations(aVar.f2320c, aVar.f2321d, aVar.f2322e, aVar.f2323f);
                    this.f2110t.n1(fragment, true);
                    this.f2110t.e1(fragment);
                    break;
                case 2:
                default:
                    throw new IllegalArgumentException("Unknown cmd: " + aVar.f2318a);
                case 3:
                    fragment.setAnimations(aVar.f2320c, aVar.f2321d, aVar.f2322e, aVar.f2323f);
                    this.f2110t.g(fragment);
                    break;
                case 4:
                    fragment.setAnimations(aVar.f2320c, aVar.f2321d, aVar.f2322e, aVar.f2323f);
                    this.f2110t.t1(fragment);
                    break;
                case 5:
                    fragment.setAnimations(aVar.f2320c, aVar.f2321d, aVar.f2322e, aVar.f2323f);
                    this.f2110t.n1(fragment, true);
                    this.f2110t.D0(fragment);
                    break;
                case 6:
                    fragment.setAnimations(aVar.f2320c, aVar.f2321d, aVar.f2322e, aVar.f2323f);
                    this.f2110t.l(fragment);
                    break;
                case 7:
                    fragment.setAnimations(aVar.f2320c, aVar.f2321d, aVar.f2322e, aVar.f2323f);
                    this.f2110t.n1(fragment, true);
                    this.f2110t.y(fragment);
                    break;
                case 8:
                    this.f2110t.r1(null);
                    break;
                case 9:
                    this.f2110t.r1(fragment);
                    break;
                case 10:
                    this.f2110t.q1(fragment, aVar.f2324g);
                    break;
            }
            if (!this.f2316r && aVar.f2318a != 3 && fragment != null && !FragmentManager.P) {
                this.f2110t.Q0(fragment);
            }
        }
        if (this.f2316r || !z10 || FragmentManager.P) {
            return;
        }
        FragmentManager fragmentManager = this.f2110t;
        fragmentManager.R0(fragmentManager.f2070q, true);
    }

    public Fragment B(ArrayList<Fragment> arrayList, Fragment fragment) {
        Fragment fragment2 = fragment;
        int i10 = 0;
        while (i10 < this.f2301c.size()) {
            x.a aVar = this.f2301c.get(i10);
            int i11 = aVar.f2318a;
            if (i11 != 1) {
                if (i11 == 2) {
                    Fragment fragment3 = aVar.f2319b;
                    int i12 = fragment3.mContainerId;
                    boolean z10 = false;
                    for (int size = arrayList.size() - 1; size >= 0; size--) {
                        Fragment fragment4 = arrayList.get(size);
                        if (fragment4.mContainerId == i12) {
                            if (fragment4 == fragment3) {
                                z10 = true;
                            } else {
                                if (fragment4 == fragment2) {
                                    this.f2301c.add(i10, new x.a(9, fragment4));
                                    i10++;
                                    fragment2 = null;
                                }
                                x.a aVar2 = new x.a(3, fragment4);
                                aVar2.f2320c = aVar.f2320c;
                                aVar2.f2322e = aVar.f2322e;
                                aVar2.f2321d = aVar.f2321d;
                                aVar2.f2323f = aVar.f2323f;
                                this.f2301c.add(i10, aVar2);
                                arrayList.remove(fragment4);
                                i10++;
                            }
                        }
                    }
                    if (z10) {
                        this.f2301c.remove(i10);
                        i10--;
                    } else {
                        aVar.f2318a = 1;
                        arrayList.add(fragment3);
                    }
                } else if (i11 == 3 || i11 == 6) {
                    arrayList.remove(aVar.f2319b);
                    Fragment fragment5 = aVar.f2319b;
                    if (fragment5 == fragment2) {
                        this.f2301c.add(i10, new x.a(9, fragment5));
                        i10++;
                        fragment2 = null;
                    }
                } else if (i11 != 7) {
                    if (i11 == 8) {
                        this.f2301c.add(i10, new x.a(9, fragment2));
                        i10++;
                        fragment2 = aVar.f2319b;
                    }
                }
                i10++;
            }
            arrayList.add(aVar.f2319b);
            i10++;
        }
        return fragment2;
    }

    public String C() {
        return this.f2309k;
    }

    public boolean D(int i10) {
        int size = this.f2301c.size();
        for (int i11 = 0; i11 < size; i11++) {
            Fragment fragment = this.f2301c.get(i11).f2319b;
            int i12 = fragment != null ? fragment.mContainerId : 0;
            if (i12 != 0 && i12 == i10) {
                return true;
            }
        }
        return false;
    }

    public boolean E(ArrayList<a> arrayList, int i10, int i11) {
        if (i11 == i10) {
            return false;
        }
        int size = this.f2301c.size();
        int i12 = -1;
        for (int i13 = 0; i13 < size; i13++) {
            Fragment fragment = this.f2301c.get(i13).f2319b;
            int i14 = fragment != null ? fragment.mContainerId : 0;
            if (i14 != 0 && i14 != i12) {
                for (int i15 = i10; i15 < i11; i15++) {
                    a aVar = arrayList.get(i15);
                    int size2 = aVar.f2301c.size();
                    for (int i16 = 0; i16 < size2; i16++) {
                        Fragment fragment2 = aVar.f2301c.get(i16).f2319b;
                        if ((fragment2 != null ? fragment2.mContainerId : 0) == i14) {
                            return true;
                        }
                    }
                }
                i12 = i14;
            }
        }
        return false;
    }

    public boolean G() {
        for (int i10 = 0; i10 < this.f2301c.size(); i10++) {
            if (F(this.f2301c.get(i10))) {
                return true;
            }
        }
        return false;
    }

    public void H() {
        if (this.f2317s != null) {
            for (int i10 = 0; i10 < this.f2317s.size(); i10++) {
                this.f2317s.get(i10).run();
            }
            this.f2317s = null;
        }
    }

    public void I(Fragment.k kVar) {
        for (int i10 = 0; i10 < this.f2301c.size(); i10++) {
            x.a aVar = this.f2301c.get(i10);
            if (F(aVar)) {
                aVar.f2319b.setOnStartEnterTransitionListener(kVar);
            }
        }
    }

    public Fragment J(ArrayList<Fragment> arrayList, Fragment fragment) {
        for (int size = this.f2301c.size() - 1; size >= 0; size--) {
            x.a aVar = this.f2301c.get(size);
            int i10 = aVar.f2318a;
            if (i10 != 1) {
                if (i10 != 3) {
                    switch (i10) {
                        case 8:
                            fragment = null;
                            break;
                        case 9:
                            fragment = aVar.f2319b;
                            break;
                        case 10:
                            aVar.f2325h = aVar.f2324g;
                            break;
                    }
                }
                arrayList.add(aVar.f2319b);
            }
            arrayList.remove(aVar.f2319b);
        }
        return fragment;
    }

    @Override // androidx.fragment.app.FragmentManager.p
    public boolean a(ArrayList<a> arrayList, ArrayList<Boolean> arrayList2) {
        if (FragmentManager.G0(2)) {
            StringBuilder sb2 = new StringBuilder();
            sb2.append("Run: ");
            sb2.append(this);
        }
        arrayList.add(this);
        arrayList2.add(Boolean.FALSE);
        if (!this.f2307i) {
            return true;
        }
        this.f2110t.e(this);
        return true;
    }

    @Override // androidx.fragment.app.x
    public int i() {
        return w(false);
    }

    @Override // androidx.fragment.app.x
    public int j() {
        return w(true);
    }

    @Override // androidx.fragment.app.x
    public void k() {
        n();
        this.f2110t.c0(this, false);
    }

    @Override // androidx.fragment.app.x
    public void l() {
        n();
        this.f2110t.c0(this, true);
    }

    @Override // androidx.fragment.app.x
    public void o(int i10, Fragment fragment, String str, int i11) {
        super.o(i10, fragment, str, i11);
        fragment.mFragmentManager = this.f2110t;
    }

    @Override // androidx.fragment.app.x
    public x p(Fragment fragment) {
        FragmentManager fragmentManager = fragment.mFragmentManager;
        if (fragmentManager != null && fragmentManager != this.f2110t) {
            throw new IllegalStateException("Cannot remove Fragment attached to a different FragmentManager. Fragment " + fragment.toString() + " is already attached to a FragmentManager.");
        }
        return super.p(fragment);
    }

    @Override // androidx.fragment.app.x
    public x t(Fragment fragment, k.c cVar) {
        if (fragment.mFragmentManager == this.f2110t) {
            if (cVar == k.c.INITIALIZED && fragment.mState > -1) {
                throw new IllegalArgumentException("Cannot set maximum Lifecycle to " + cVar + " after the Fragment has been created");
            }
            if (cVar != k.c.DESTROYED) {
                return super.t(fragment, cVar);
            }
            throw new IllegalArgumentException("Cannot set maximum Lifecycle to " + cVar + ". Use remove() to remove the fragment from the FragmentManager and trigger its destruction.");
        }
        throw new IllegalArgumentException("Cannot setMaxLifecycle for Fragment not attached to FragmentManager " + this.f2110t);
    }

    public String toString() {
        StringBuilder sb2 = new StringBuilder(128);
        sb2.append("BackStackEntry{");
        sb2.append(Integer.toHexString(System.identityHashCode(this)));
        if (this.f2112v >= 0) {
            sb2.append(" #");
            sb2.append(this.f2112v);
        }
        if (this.f2309k != null) {
            sb2.append(" ");
            sb2.append(this.f2309k);
        }
        sb2.append("}");
        return sb2.toString();
    }

    public void v(int i10) {
        if (this.f2307i) {
            if (FragmentManager.G0(2)) {
                StringBuilder sb2 = new StringBuilder();
                sb2.append("Bump nesting in ");
                sb2.append(this);
                sb2.append(" by ");
                sb2.append(i10);
            }
            int size = this.f2301c.size();
            for (int i11 = 0; i11 < size; i11++) {
                x.a aVar = this.f2301c.get(i11);
                Fragment fragment = aVar.f2319b;
                if (fragment != null) {
                    fragment.mBackStackNesting += i10;
                    if (FragmentManager.G0(2)) {
                        StringBuilder sb3 = new StringBuilder();
                        sb3.append("Bump nesting of ");
                        sb3.append(aVar.f2319b);
                        sb3.append(" to ");
                        sb3.append(aVar.f2319b.mBackStackNesting);
                    }
                }
            }
        }
    }

    public int w(boolean z10) {
        if (!this.f2111u) {
            if (FragmentManager.G0(2)) {
                StringBuilder sb2 = new StringBuilder();
                sb2.append("Commit: ");
                sb2.append(this);
                PrintWriter printWriter = new PrintWriter(new d0("FragmentManager"));
                x("  ", printWriter);
                printWriter.close();
            }
            this.f2111u = true;
            if (this.f2307i) {
                this.f2112v = this.f2110t.j();
            } else {
                this.f2112v = -1;
            }
            this.f2110t.Z(this, z10);
            return this.f2112v;
        }
        throw new IllegalStateException("commit already called");
    }

    public void x(String str, PrintWriter printWriter) {
        y(str, printWriter, true);
    }

    public void y(String str, PrintWriter printWriter, boolean z10) {
        String str2;
        if (z10) {
            printWriter.print(str);
            printWriter.print("mName=");
            printWriter.print(this.f2309k);
            printWriter.print(" mIndex=");
            printWriter.print(this.f2112v);
            printWriter.print(" mCommitted=");
            printWriter.println(this.f2111u);
            if (this.f2306h != 0) {
                printWriter.print(str);
                printWriter.print("mTransition=#");
                printWriter.print(Integer.toHexString(this.f2306h));
            }
            if (this.f2302d != 0 || this.f2303e != 0) {
                printWriter.print(str);
                printWriter.print("mEnterAnim=#");
                printWriter.print(Integer.toHexString(this.f2302d));
                printWriter.print(" mExitAnim=#");
                printWriter.println(Integer.toHexString(this.f2303e));
            }
            if (this.f2304f != 0 || this.f2305g != 0) {
                printWriter.print(str);
                printWriter.print("mPopEnterAnim=#");
                printWriter.print(Integer.toHexString(this.f2304f));
                printWriter.print(" mPopExitAnim=#");
                printWriter.println(Integer.toHexString(this.f2305g));
            }
            if (this.f2310l != 0 || this.f2311m != null) {
                printWriter.print(str);
                printWriter.print("mBreadCrumbTitleRes=#");
                printWriter.print(Integer.toHexString(this.f2310l));
                printWriter.print(" mBreadCrumbTitleText=");
                printWriter.println(this.f2311m);
            }
            if (this.f2312n != 0 || this.f2313o != null) {
                printWriter.print(str);
                printWriter.print("mBreadCrumbShortTitleRes=#");
                printWriter.print(Integer.toHexString(this.f2312n));
                printWriter.print(" mBreadCrumbShortTitleText=");
                printWriter.println(this.f2313o);
            }
        }
        if (this.f2301c.isEmpty()) {
            return;
        }
        printWriter.print(str);
        printWriter.println("Operations:");
        int size = this.f2301c.size();
        for (int i10 = 0; i10 < size; i10++) {
            x.a aVar = this.f2301c.get(i10);
            switch (aVar.f2318a) {
                case 0:
                    str2 = "NULL";
                    break;
                case 1:
                    str2 = "ADD";
                    break;
                case 2:
                    str2 = "REPLACE";
                    break;
                case 3:
                    str2 = "REMOVE";
                    break;
                case 4:
                    str2 = "HIDE";
                    break;
                case 5:
                    str2 = "SHOW";
                    break;
                case 6:
                    str2 = "DETACH";
                    break;
                case 7:
                    str2 = "ATTACH";
                    break;
                case 8:
                    str2 = "SET_PRIMARY_NAV";
                    break;
                case 9:
                    str2 = "UNSET_PRIMARY_NAV";
                    break;
                case 10:
                    str2 = "OP_SET_MAX_LIFECYCLE";
                    break;
                default:
                    str2 = "cmd=" + aVar.f2318a;
                    break;
            }
            printWriter.print(str);
            printWriter.print("  Op #");
            printWriter.print(i10);
            printWriter.print(": ");
            printWriter.print(str2);
            printWriter.print(" ");
            printWriter.println(aVar.f2319b);
            if (z10) {
                if (aVar.f2320c != 0 || aVar.f2321d != 0) {
                    printWriter.print(str);
                    printWriter.print("enterAnim=#");
                    printWriter.print(Integer.toHexString(aVar.f2320c));
                    printWriter.print(" exitAnim=#");
                    printWriter.println(Integer.toHexString(aVar.f2321d));
                }
                if (aVar.f2322e != 0 || aVar.f2323f != 0) {
                    printWriter.print(str);
                    printWriter.print("popEnterAnim=#");
                    printWriter.print(Integer.toHexString(aVar.f2322e));
                    printWriter.print(" popExitAnim=#");
                    printWriter.println(Integer.toHexString(aVar.f2323f));
                }
            }
        }
    }

    public void z() {
        int size = this.f2301c.size();
        for (int i10 = 0; i10 < size; i10++) {
            x.a aVar = this.f2301c.get(i10);
            Fragment fragment = aVar.f2319b;
            if (fragment != null) {
                fragment.setPopDirection(false);
                fragment.setNextTransition(this.f2306h);
                fragment.setSharedElementNames(this.f2314p, this.f2315q);
            }
            switch (aVar.f2318a) {
                case 1:
                    fragment.setAnimations(aVar.f2320c, aVar.f2321d, aVar.f2322e, aVar.f2323f);
                    this.f2110t.n1(fragment, false);
                    this.f2110t.g(fragment);
                    break;
                case 2:
                default:
                    throw new IllegalArgumentException("Unknown cmd: " + aVar.f2318a);
                case 3:
                    fragment.setAnimations(aVar.f2320c, aVar.f2321d, aVar.f2322e, aVar.f2323f);
                    this.f2110t.e1(fragment);
                    break;
                case 4:
                    fragment.setAnimations(aVar.f2320c, aVar.f2321d, aVar.f2322e, aVar.f2323f);
                    this.f2110t.D0(fragment);
                    break;
                case 5:
                    fragment.setAnimations(aVar.f2320c, aVar.f2321d, aVar.f2322e, aVar.f2323f);
                    this.f2110t.n1(fragment, false);
                    this.f2110t.t1(fragment);
                    break;
                case 6:
                    fragment.setAnimations(aVar.f2320c, aVar.f2321d, aVar.f2322e, aVar.f2323f);
                    this.f2110t.y(fragment);
                    break;
                case 7:
                    fragment.setAnimations(aVar.f2320c, aVar.f2321d, aVar.f2322e, aVar.f2323f);
                    this.f2110t.n1(fragment, false);
                    this.f2110t.l(fragment);
                    break;
                case 8:
                    this.f2110t.r1(fragment);
                    break;
                case 9:
                    this.f2110t.r1(null);
                    break;
                case 10:
                    this.f2110t.q1(fragment, aVar.f2325h);
                    break;
            }
            if (!this.f2316r && aVar.f2318a != 1 && fragment != null && !FragmentManager.P) {
                this.f2110t.Q0(fragment);
            }
        }
        if (this.f2316r || FragmentManager.P) {
            return;
        }
        FragmentManager fragmentManager = this.f2110t;
        fragmentManager.R0(fragmentManager.f2070q, true);
    }
}
