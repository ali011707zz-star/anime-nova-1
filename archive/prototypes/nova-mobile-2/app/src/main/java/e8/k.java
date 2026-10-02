package e8;

import android.annotation.SuppressLint;
import android.annotation.TargetApi;
import android.app.Activity;
import android.app.Fragment;
import android.os.Build;
import java.util.Collections;
import java.util.HashSet;
import java.util.Set;

/* compiled from: RequestManagerFragment.java */
@Deprecated
/* loaded from: classes.dex */
public class k extends Fragment {

    /* renamed from: f, reason: collision with root package name */
    public final e8.a f6206f;

    /* renamed from: g, reason: collision with root package name */
    public final m f6207g;

    /* renamed from: h, reason: collision with root package name */
    public final Set<k> f6208h;

    /* renamed from: i, reason: collision with root package name */
    public com.bumptech.glide.j f6209i;

    /* renamed from: j, reason: collision with root package name */
    public k f6210j;

    /* renamed from: k, reason: collision with root package name */
    public Fragment f6211k;

    /* compiled from: RequestManagerFragment.java */
    /* loaded from: classes.dex */
    public class a implements m {
        public a() {
        }

        @Override // e8.m
        public Set<com.bumptech.glide.j> a() {
            Set<k> b10 = k.this.b();
            HashSet hashSet = new HashSet(b10.size());
            for (k kVar : b10) {
                if (kVar.e() != null) {
                    hashSet.add(kVar.e());
                }
            }
            return hashSet;
        }

        public String toString() {
            return super.toString() + "{fragment=" + k.this + "}";
        }
    }

    public k() {
        this(new e8.a());
    }

    public final void a(k kVar) {
        this.f6208h.add(kVar);
    }

    @TargetApi(17)
    public Set<k> b() {
        if (equals(this.f6210j)) {
            return Collections.unmodifiableSet(this.f6208h);
        }
        if (this.f6210j != null && Build.VERSION.SDK_INT >= 17) {
            HashSet hashSet = new HashSet();
            for (k kVar : this.f6210j.b()) {
                if (g(kVar.getParentFragment())) {
                    hashSet.add(kVar);
                }
            }
            return Collections.unmodifiableSet(hashSet);
        }
        return Collections.emptySet();
    }

    public e8.a c() {
        return this.f6206f;
    }

    @TargetApi(17)
    public final Fragment d() {
        Fragment parentFragment = Build.VERSION.SDK_INT >= 17 ? getParentFragment() : null;
        return parentFragment != null ? parentFragment : this.f6211k;
    }

    public com.bumptech.glide.j e() {
        return this.f6209i;
    }

    public m f() {
        return this.f6207g;
    }

    @TargetApi(17)
    public final boolean g(Fragment fragment) {
        Fragment parentFragment = getParentFragment();
        while (true) {
            Fragment parentFragment2 = fragment.getParentFragment();
            if (parentFragment2 == null) {
                return false;
            }
            if (parentFragment2.equals(parentFragment)) {
                return true;
            }
            fragment = fragment.getParentFragment();
        }
    }

    public final void h(Activity activity) {
        l();
        k p10 = com.bumptech.glide.c.c(activity).k().p(activity);
        this.f6210j = p10;
        if (equals(p10)) {
            return;
        }
        this.f6210j.a(this);
    }

    public final void i(k kVar) {
        this.f6208h.remove(kVar);
    }

    public void j(Fragment fragment) {
        this.f6211k = fragment;
        if (fragment == null || fragment.getActivity() == null) {
            return;
        }
        h(fragment.getActivity());
    }

    public void k(com.bumptech.glide.j jVar) {
        this.f6209i = jVar;
    }

    public final void l() {
        k kVar = this.f6210j;
        if (kVar != null) {
            kVar.i(this);
            this.f6210j = null;
        }
    }

    @Override // android.app.Fragment
    public void onAttach(Activity activity) {
        super.onAttach(activity);
        try {
            h(activity);
        } catch (IllegalStateException unused) {
        }
    }

    @Override // android.app.Fragment
    public void onDestroy() {
        super.onDestroy();
        this.f6206f.c();
        l();
    }

    @Override // android.app.Fragment
    public void onDetach() {
        super.onDetach();
        l();
    }

    @Override // android.app.Fragment
    public void onStart() {
        super.onStart();
        this.f6206f.d();
    }

    @Override // android.app.Fragment
    public void onStop() {
        super.onStop();
        this.f6206f.e();
    }

    @Override // android.app.Fragment
    public String toString() {
        return super.toString() + "{parent=" + d() + "}";
    }

    @SuppressLint({"ValidFragment"})
    public k(e8.a aVar) {
        this.f6207g = new a();
        this.f6208h = new HashSet();
        this.f6206f = aVar;
    }
}
