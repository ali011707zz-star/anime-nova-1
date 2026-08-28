package androidx.fragment.app;

import android.view.View;
import android.view.ViewGroup;
import java.io.FileDescriptor;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;

/* compiled from: FragmentStore.java */
/* loaded from: classes.dex */
public class w {

    /* renamed from: a, reason: collision with root package name */
    public final ArrayList<Fragment> f2296a = new ArrayList<>();

    /* renamed from: b, reason: collision with root package name */
    public final HashMap<String, u> f2297b = new HashMap<>();

    /* renamed from: c, reason: collision with root package name */
    public q f2298c;

    public void a(Fragment fragment) {
        if (!this.f2296a.contains(fragment)) {
            synchronized (this.f2296a) {
                this.f2296a.add(fragment);
            }
            fragment.mAdded = true;
            return;
        }
        throw new IllegalStateException("Fragment already added: " + fragment);
    }

    public void b() {
        this.f2297b.values().removeAll(Collections.singleton(null));
    }

    public boolean c(String str) {
        return this.f2297b.get(str) != null;
    }

    public void d(int i10) {
        for (u uVar : this.f2297b.values()) {
            if (uVar != null) {
                uVar.u(i10);
            }
        }
    }

    public void e(String str, FileDescriptor fileDescriptor, PrintWriter printWriter, String[] strArr) {
        String str2 = str + "    ";
        if (!this.f2297b.isEmpty()) {
            printWriter.print(str);
            printWriter.println("Active Fragments:");
            for (u uVar : this.f2297b.values()) {
                printWriter.print(str);
                if (uVar != null) {
                    Fragment k10 = uVar.k();
                    printWriter.println(k10);
                    k10.dump(str2, fileDescriptor, printWriter, strArr);
                } else {
                    printWriter.println("null");
                }
            }
        }
        int size = this.f2296a.size();
        if (size > 0) {
            printWriter.print(str);
            printWriter.println("Added Fragments:");
            for (int i10 = 0; i10 < size; i10++) {
                Fragment fragment = this.f2296a.get(i10);
                printWriter.print(str);
                printWriter.print("  #");
                printWriter.print(i10);
                printWriter.print(": ");
                printWriter.println(fragment.toString());
            }
        }
    }

    public Fragment f(String str) {
        u uVar = this.f2297b.get(str);
        if (uVar != null) {
            return uVar.k();
        }
        return null;
    }

    public Fragment g(int i10) {
        for (int size = this.f2296a.size() - 1; size >= 0; size--) {
            Fragment fragment = this.f2296a.get(size);
            if (fragment != null && fragment.mFragmentId == i10) {
                return fragment;
            }
        }
        for (u uVar : this.f2297b.values()) {
            if (uVar != null) {
                Fragment k10 = uVar.k();
                if (k10.mFragmentId == i10) {
                    return k10;
                }
            }
        }
        return null;
    }

    public Fragment h(String str) {
        if (str != null) {
            for (int size = this.f2296a.size() - 1; size >= 0; size--) {
                Fragment fragment = this.f2296a.get(size);
                if (fragment != null && str.equals(fragment.mTag)) {
                    return fragment;
                }
            }
        }
        if (str == null) {
            return null;
        }
        for (u uVar : this.f2297b.values()) {
            if (uVar != null) {
                Fragment k10 = uVar.k();
                if (str.equals(k10.mTag)) {
                    return k10;
                }
            }
        }
        return null;
    }

    public Fragment i(String str) {
        Fragment findFragmentByWho;
        for (u uVar : this.f2297b.values()) {
            if (uVar != null && (findFragmentByWho = uVar.k().findFragmentByWho(str)) != null) {
                return findFragmentByWho;
            }
        }
        return null;
    }

    public int j(Fragment fragment) {
        View view;
        View view2;
        ViewGroup viewGroup = fragment.mContainer;
        if (viewGroup == null) {
            return -1;
        }
        int indexOf = this.f2296a.indexOf(fragment);
        for (int i10 = indexOf - 1; i10 >= 0; i10--) {
            Fragment fragment2 = this.f2296a.get(i10);
            if (fragment2.mContainer == viewGroup && (view2 = fragment2.mView) != null) {
                return viewGroup.indexOfChild(view2) + 1;
            }
        }
        while (true) {
            indexOf++;
            if (indexOf >= this.f2296a.size()) {
                return -1;
            }
            Fragment fragment3 = this.f2296a.get(indexOf);
            if (fragment3.mContainer == viewGroup && (view = fragment3.mView) != null) {
                return viewGroup.indexOfChild(view);
            }
        }
    }

    public List<u> k() {
        ArrayList arrayList = new ArrayList();
        for (u uVar : this.f2297b.values()) {
            if (uVar != null) {
                arrayList.add(uVar);
            }
        }
        return arrayList;
    }

    public List<Fragment> l() {
        ArrayList arrayList = new ArrayList();
        for (u uVar : this.f2297b.values()) {
            if (uVar != null) {
                arrayList.add(uVar.k());
            } else {
                arrayList.add(null);
            }
        }
        return arrayList;
    }

    public u m(String str) {
        return this.f2297b.get(str);
    }

    public List<Fragment> n() {
        ArrayList arrayList;
        if (this.f2296a.isEmpty()) {
            return Collections.emptyList();
        }
        synchronized (this.f2296a) {
            arrayList = new ArrayList(this.f2296a);
        }
        return arrayList;
    }

    public q o() {
        return this.f2298c;
    }

    public void p(u uVar) {
        Fragment k10 = uVar.k();
        if (c(k10.mWho)) {
            return;
        }
        this.f2297b.put(k10.mWho, uVar);
        if (k10.mRetainInstanceChangedWhileDetached) {
            if (k10.mRetainInstance) {
                this.f2298c.a(k10);
            } else {
                this.f2298c.i(k10);
            }
            k10.mRetainInstanceChangedWhileDetached = false;
        }
        if (FragmentManager.G0(2)) {
            StringBuilder sb2 = new StringBuilder();
            sb2.append("Added fragment to active set ");
            sb2.append(k10);
        }
    }

    public void q(u uVar) {
        Fragment k10 = uVar.k();
        if (k10.mRetainInstance) {
            this.f2298c.i(k10);
        }
        if (this.f2297b.put(k10.mWho, null) != null && FragmentManager.G0(2)) {
            StringBuilder sb2 = new StringBuilder();
            sb2.append("Removed fragment from active set ");
            sb2.append(k10);
        }
    }

    public void r() {
        Iterator<Fragment> it2 = this.f2296a.iterator();
        while (it2.hasNext()) {
            u uVar = this.f2297b.get(it2.next().mWho);
            if (uVar != null) {
                uVar.m();
            }
        }
        for (u uVar2 : this.f2297b.values()) {
            if (uVar2 != null) {
                uVar2.m();
                Fragment k10 = uVar2.k();
                if (k10.mRemoving && !k10.isInBackStack()) {
                    q(uVar2);
                }
            }
        }
    }

    public void s(Fragment fragment) {
        synchronized (this.f2296a) {
            this.f2296a.remove(fragment);
        }
        fragment.mAdded = false;
    }

    public void t() {
        this.f2297b.clear();
    }

    public void u(List<String> list) {
        this.f2296a.clear();
        if (list != null) {
            for (String str : list) {
                Fragment f10 = f(str);
                if (f10 != null) {
                    if (FragmentManager.G0(2)) {
                        StringBuilder sb2 = new StringBuilder();
                        sb2.append("restoreSaveState: added (");
                        sb2.append(str);
                        sb2.append("): ");
                        sb2.append(f10);
                    }
                    a(f10);
                } else {
                    throw new IllegalStateException("No instantiated fragment for (" + str + ")");
                }
            }
        }
    }

    public ArrayList<t> v() {
        ArrayList<t> arrayList = new ArrayList<>(this.f2297b.size());
        for (u uVar : this.f2297b.values()) {
            if (uVar != null) {
                Fragment k10 = uVar.k();
                t s10 = uVar.s();
                arrayList.add(s10);
                if (FragmentManager.G0(2)) {
                    StringBuilder sb2 = new StringBuilder();
                    sb2.append("Saved state of ");
                    sb2.append(k10);
                    sb2.append(": ");
                    sb2.append(s10.f2287r);
                }
            }
        }
        return arrayList;
    }

    public ArrayList<String> w() {
        synchronized (this.f2296a) {
            if (this.f2296a.isEmpty()) {
                return null;
            }
            ArrayList<String> arrayList = new ArrayList<>(this.f2296a.size());
            Iterator<Fragment> it2 = this.f2296a.iterator();
            while (it2.hasNext()) {
                Fragment next = it2.next();
                arrayList.add(next.mWho);
                if (FragmentManager.G0(2)) {
                    StringBuilder sb2 = new StringBuilder();
                    sb2.append("saveAllState: adding fragment (");
                    sb2.append(next.mWho);
                    sb2.append("): ");
                    sb2.append(next);
                }
            }
            return arrayList;
        }
    }

    public void x(q qVar) {
        this.f2298c = qVar;
    }
}
