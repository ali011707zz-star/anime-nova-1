package e8;

import android.annotation.SuppressLint;
import android.content.Context;
import androidx.fragment.app.Fragment;
import androidx.fragment.app.FragmentManager;
import java.util.Collections;
import java.util.HashSet;
import java.util.Set;

/* compiled from: SupportRequestManagerFragment.java */
/* loaded from: classes.dex */
public class o extends Fragment {

    /* renamed from: f, reason: collision with root package name */
    public final e8.a f6225f;

    /* renamed from: g, reason: collision with root package name */
    public final m f6226g;

    /* renamed from: h, reason: collision with root package name */
    public final Set<o> f6227h;

    /* renamed from: i, reason: collision with root package name */
    public o f6228i;

    /* renamed from: j, reason: collision with root package name */
    public com.bumptech.glide.j f6229j;

    /* renamed from: k, reason: collision with root package name */
    public Fragment f6230k;

    /* compiled from: SupportRequestManagerFragment.java */
    /* loaded from: classes.dex */
    public class a implements m {
        public a() {
        }

        @Override // e8.m
        public Set<com.bumptech.glide.j> a() {
            Set<o> F = o.this.F();
            HashSet hashSet = new HashSet(F.size());
            for (o oVar : F) {
                if (oVar.I() != null) {
                    hashSet.add(oVar.I());
                }
            }
            return hashSet;
        }

        public String toString() {
            return super.toString() + "{fragment=" + o.this + "}";
        }
    }

    public o() {
        this(new e8.a());
    }

    public static FragmentManager K(Fragment fragment) {
        while (fragment.getParentFragment() != null) {
            fragment = fragment.getParentFragment();
        }
        return fragment.getFragmentManager();
    }

    public final void E(o oVar) {
        this.f6227h.add(oVar);
    }

    public Set<o> F() {
        o oVar = this.f6228i;
        if (oVar == null) {
            return Collections.emptySet();
        }
        if (equals(oVar)) {
            return Collections.unmodifiableSet(this.f6227h);
        }
        HashSet hashSet = new HashSet();
        for (o oVar2 : this.f6228i.F()) {
            if (L(oVar2.H())) {
                hashSet.add(oVar2);
            }
        }
        return Collections.unmodifiableSet(hashSet);
    }

    public e8.a G() {
        return this.f6225f;
    }

    public final Fragment H() {
        Fragment parentFragment = getParentFragment();
        return parentFragment != null ? parentFragment : this.f6230k;
    }

    public com.bumptech.glide.j I() {
        return this.f6229j;
    }

    public m J() {
        return this.f6226g;
    }

    public final boolean L(Fragment fragment) {
        Fragment H = H();
        while (true) {
            Fragment parentFragment = fragment.getParentFragment();
            if (parentFragment == null) {
                return false;
            }
            if (parentFragment.equals(H)) {
                return true;
            }
            fragment = fragment.getParentFragment();
        }
    }

    public final void M(Context context, FragmentManager fragmentManager) {
        Q();
        o r10 = com.bumptech.glide.c.c(context).k().r(context, fragmentManager);
        this.f6228i = r10;
        if (equals(r10)) {
            return;
        }
        this.f6228i.E(this);
    }

    public final void N(o oVar) {
        this.f6227h.remove(oVar);
    }

    public void O(Fragment fragment) {
        FragmentManager K;
        this.f6230k = fragment;
        if (fragment == null || fragment.getContext() == null || (K = K(fragment)) == null) {
            return;
        }
        M(fragment.getContext(), K);
    }

    public void P(com.bumptech.glide.j jVar) {
        this.f6229j = jVar;
    }

    public final void Q() {
        o oVar = this.f6228i;
        if (oVar != null) {
            oVar.N(this);
            this.f6228i = null;
        }
    }

    @Override // androidx.fragment.app.Fragment
    public void onAttach(Context context) {
        super.onAttach(context);
        FragmentManager K = K(this);
        if (K == null) {
            return;
        }
        try {
            M(getContext(), K);
        } catch (IllegalStateException unused) {
        }
    }

    @Override // androidx.fragment.app.Fragment
    public void onDestroy() {
        super.onDestroy();
        this.f6225f.c();
        Q();
    }

    @Override // androidx.fragment.app.Fragment
    public void onDetach() {
        super.onDetach();
        this.f6230k = null;
        Q();
    }

    @Override // androidx.fragment.app.Fragment
    public void onStart() {
        super.onStart();
        this.f6225f.d();
    }

    @Override // androidx.fragment.app.Fragment
    public void onStop() {
        super.onStop();
        this.f6225f.e();
    }

    @Override // androidx.fragment.app.Fragment
    public String toString() {
        return super.toString() + "{parent=" + H() + "}";
    }

    @SuppressLint({"ValidFragment"})
    public o(e8.a aVar) {
        this.f6226g = new a();
        this.f6227h = new HashSet();
        this.f6225f = aVar;
    }
}
