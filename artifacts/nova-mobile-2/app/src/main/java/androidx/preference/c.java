package androidx.preference;

import android.R;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.os.Bundle;
import android.os.Handler;
import android.os.Message;
import android.util.TypedValue;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import androidx.fragment.app.Fragment;
import androidx.fragment.app.FragmentManager;
import androidx.preference.DialogPreference;
import androidx.preference.e;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import m1.g;
import m1.j;
import m1.k;
import m1.m;
import m1.n;

/* compiled from: PreferenceFragmentCompat.java */
/* loaded from: classes.dex */
public abstract class c extends Fragment implements e.c, e.a, e.b, DialogPreference.a {

    /* renamed from: g, reason: collision with root package name */
    public androidx.preference.e f2637g;

    /* renamed from: h, reason: collision with root package name */
    public RecyclerView f2638h;

    /* renamed from: i, reason: collision with root package name */
    public boolean f2639i;

    /* renamed from: j, reason: collision with root package name */
    public boolean f2640j;

    /* renamed from: l, reason: collision with root package name */
    public Runnable f2642l;

    /* renamed from: f, reason: collision with root package name */
    public final C0043c f2636f = new C0043c();

    /* renamed from: k, reason: collision with root package name */
    public int f2641k = k.f10703c;

    /* renamed from: m, reason: collision with root package name */
    public Handler f2643m = new a();

    /* renamed from: n, reason: collision with root package name */
    public final Runnable f2644n = new b();

    /* compiled from: PreferenceFragmentCompat.java */
    /* loaded from: classes.dex */
    public class a extends Handler {
        public a() {
        }

        @Override // android.os.Handler
        public void handleMessage(Message message) {
            if (message.what != 1) {
                return;
            }
            c.this.E();
        }
    }

    /* compiled from: PreferenceFragmentCompat.java */
    /* loaded from: classes.dex */
    public class b implements Runnable {
        public b() {
        }

        @Override // java.lang.Runnable
        public void run() {
            RecyclerView recyclerView = c.this.f2638h;
            recyclerView.focusableViewAvailable(recyclerView);
        }
    }

    /* compiled from: PreferenceFragmentCompat.java */
    /* renamed from: androidx.preference.c$c, reason: collision with other inner class name */
    /* loaded from: classes.dex */
    public class C0043c extends RecyclerView.o {

        /* renamed from: a, reason: collision with root package name */
        public Drawable f2647a;

        /* renamed from: b, reason: collision with root package name */
        public int f2648b;

        /* renamed from: c, reason: collision with root package name */
        public boolean f2649c = true;

        public C0043c() {
        }

        public void d(boolean z10) {
            this.f2649c = z10;
        }

        public void e(Drawable drawable) {
            if (drawable != null) {
                this.f2648b = drawable.getIntrinsicHeight();
            } else {
                this.f2648b = 0;
            }
            this.f2647a = drawable;
            c.this.f2638h.invalidateItemDecorations();
        }

        public void f(int i10) {
            this.f2648b = i10;
            c.this.f2638h.invalidateItemDecorations();
        }

        public final boolean g(View view, RecyclerView recyclerView) {
            RecyclerView.e0 childViewHolder = recyclerView.getChildViewHolder(view);
            boolean z10 = false;
            if (!((childViewHolder instanceof m1.f) && ((m1.f) childViewHolder).c())) {
                return false;
            }
            boolean z11 = this.f2649c;
            int indexOfChild = recyclerView.indexOfChild(view);
            if (indexOfChild >= recyclerView.getChildCount() - 1) {
                return z11;
            }
            RecyclerView.e0 childViewHolder2 = recyclerView.getChildViewHolder(recyclerView.getChildAt(indexOfChild + 1));
            if ((childViewHolder2 instanceof m1.f) && ((m1.f) childViewHolder2).b()) {
                z10 = true;
            }
            return z10;
        }

        @Override // androidx.recyclerview.widget.RecyclerView.o
        public void getItemOffsets(Rect rect, View view, RecyclerView recyclerView, RecyclerView.b0 b0Var) {
            if (g(view, recyclerView)) {
                rect.bottom = this.f2648b;
            }
        }

        @Override // androidx.recyclerview.widget.RecyclerView.o
        public void onDrawOver(Canvas canvas, RecyclerView recyclerView, RecyclerView.b0 b0Var) {
            if (this.f2647a == null) {
                return;
            }
            int childCount = recyclerView.getChildCount();
            int width = recyclerView.getWidth();
            for (int i10 = 0; i10 < childCount; i10++) {
                View childAt = recyclerView.getChildAt(i10);
                if (g(childAt, recyclerView)) {
                    int y10 = ((int) childAt.getY()) + childAt.getHeight();
                    this.f2647a.setBounds(0, y10, width, this.f2648b + y10);
                    this.f2647a.draw(canvas);
                }
            }
        }
    }

    /* compiled from: PreferenceFragmentCompat.java */
    /* loaded from: classes.dex */
    public interface d {
        boolean a(c cVar, Preference preference);
    }

    /* compiled from: PreferenceFragmentCompat.java */
    /* loaded from: classes.dex */
    public interface e {
        boolean a(c cVar, Preference preference);
    }

    /* compiled from: PreferenceFragmentCompat.java */
    /* loaded from: classes.dex */
    public interface f {
        boolean a(c cVar, PreferenceScreen preferenceScreen);
    }

    public void E() {
        PreferenceScreen I = I();
        if (I != null) {
            G().setAdapter(K(I));
            I.M();
        }
        J();
    }

    public Fragment F() {
        return null;
    }

    public final RecyclerView G() {
        return this.f2638h;
    }

    public androidx.preference.e H() {
        return this.f2637g;
    }

    public PreferenceScreen I() {
        return this.f2637g.l();
    }

    public void J() {
    }

    public RecyclerView.h K(PreferenceScreen preferenceScreen) {
        return new androidx.preference.d(preferenceScreen);
    }

    public RecyclerView.p L() {
        return new LinearLayoutManager(getContext());
    }

    public abstract void M(Bundle bundle, String str);

    public RecyclerView N(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        RecyclerView recyclerView;
        if (getContext().getPackageManager().hasSystemFeature("android.hardware.type.automotive") && (recyclerView = (RecyclerView) viewGroup.findViewById(j.f10696b)) != null) {
            return recyclerView;
        }
        RecyclerView recyclerView2 = (RecyclerView) layoutInflater.inflate(k.f10704d, viewGroup, false);
        recyclerView2.setLayoutManager(L());
        recyclerView2.setAccessibilityDelegateCompat(new m1.e(recyclerView2));
        return recyclerView2;
    }

    public void O() {
    }

    public final void P() {
        if (this.f2643m.hasMessages(1)) {
            return;
        }
        this.f2643m.obtainMessage(1).sendToTarget();
    }

    public void Q(Drawable drawable) {
        this.f2636f.e(drawable);
    }

    public void R(int i10) {
        this.f2636f.f(i10);
    }

    public void S(PreferenceScreen preferenceScreen) {
        if (!this.f2637g.q(preferenceScreen) || preferenceScreen == null) {
            return;
        }
        O();
        this.f2639i = true;
        if (this.f2640j) {
            P();
        }
    }

    public final void T() {
        G().setAdapter(null);
        PreferenceScreen I = I();
        if (I != null) {
            I.S();
        }
        O();
    }

    @Override // androidx.preference.DialogPreference.a
    public <T extends Preference> T i(CharSequence charSequence) {
        androidx.preference.e eVar = this.f2637g;
        if (eVar == null) {
            return null;
        }
        return (T) eVar.b(charSequence);
    }

    @Override // androidx.preference.e.a
    public void n(Preference preference) {
        androidx.fragment.app.d M;
        boolean a10 = F() instanceof d ? ((d) F()).a(this, preference) : false;
        if (!a10 && (getActivity() instanceof d)) {
            a10 = ((d) getActivity()).a(this, preference);
        }
        if (!a10 && getParentFragmentManager().i0("androidx.preference.PreferenceFragment.DIALOG") == null) {
            if (preference instanceof EditTextPreference) {
                M = androidx.preference.a.M(preference.o());
            } else if (preference instanceof ListPreference) {
                M = m1.b.M(preference.o());
            } else if (preference instanceof MultiSelectListPreference) {
                M = m1.c.M(preference.o());
            } else {
                throw new IllegalArgumentException("Cannot display dialog for an unknown Preference type: " + preference.getClass().getSimpleName() + ". Make sure to implement onPreferenceDisplayDialog() to handle displaying a custom dialog for this Preference.");
            }
            M.setTargetFragment(this, 0);
            M.show(getParentFragmentManager(), "androidx.preference.PreferenceFragment.DIALOG");
        }
    }

    @Override // androidx.fragment.app.Fragment
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        TypedValue typedValue = new TypedValue();
        getActivity().getTheme().resolveAttribute(g.f10689j, typedValue, true);
        int i10 = typedValue.resourceId;
        if (i10 == 0) {
            i10 = m.f10710a;
        }
        getActivity().getTheme().applyStyle(i10, false);
        androidx.preference.e eVar = new androidx.preference.e(getContext());
        this.f2637g = eVar;
        eVar.o(this);
        M(bundle, getArguments() != null ? getArguments().getString("androidx.preference.PreferenceFragmentCompat.PREFERENCE_ROOT") : null);
    }

    @Override // androidx.fragment.app.Fragment
    public View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        TypedArray obtainStyledAttributes = getContext().obtainStyledAttributes(null, n.f10729e1, g.f10686g, 0);
        this.f2641k = obtainStyledAttributes.getResourceId(n.f10733f1, this.f2641k);
        Drawable drawable = obtainStyledAttributes.getDrawable(n.f10736g1);
        int dimensionPixelSize = obtainStyledAttributes.getDimensionPixelSize(n.f10739h1, -1);
        boolean z10 = obtainStyledAttributes.getBoolean(n.f10742i1, true);
        obtainStyledAttributes.recycle();
        LayoutInflater cloneInContext = layoutInflater.cloneInContext(getContext());
        View inflate = cloneInContext.inflate(this.f2641k, viewGroup, false);
        View findViewById = inflate.findViewById(R.id.list_container);
        if (findViewById instanceof ViewGroup) {
            ViewGroup viewGroup2 = (ViewGroup) findViewById;
            RecyclerView N = N(cloneInContext, viewGroup2, bundle);
            if (N != null) {
                this.f2638h = N;
                N.addItemDecoration(this.f2636f);
                Q(drawable);
                if (dimensionPixelSize != -1) {
                    R(dimensionPixelSize);
                }
                this.f2636f.d(z10);
                if (this.f2638h.getParent() == null) {
                    viewGroup2.addView(this.f2638h);
                }
                this.f2643m.post(this.f2644n);
                return inflate;
            }
            throw new RuntimeException("Could not create RecyclerView");
        }
        throw new IllegalStateException("Content has view with id attribute 'android.R.id.list_container' that is not a ViewGroup class");
    }

    @Override // androidx.fragment.app.Fragment
    public void onDestroyView() {
        this.f2643m.removeCallbacks(this.f2644n);
        this.f2643m.removeMessages(1);
        if (this.f2639i) {
            T();
        }
        this.f2638h = null;
        super.onDestroyView();
    }

    @Override // androidx.fragment.app.Fragment
    public void onSaveInstanceState(Bundle bundle) {
        super.onSaveInstanceState(bundle);
        PreferenceScreen I = I();
        if (I != null) {
            Bundle bundle2 = new Bundle();
            I.k0(bundle2);
            bundle.putBundle("android:preferences", bundle2);
        }
    }

    @Override // androidx.fragment.app.Fragment
    public void onStart() {
        super.onStart();
        this.f2637g.p(this);
        this.f2637g.n(this);
    }

    @Override // androidx.fragment.app.Fragment
    public void onStop() {
        super.onStop();
        this.f2637g.p(null);
        this.f2637g.n(null);
    }

    @Override // androidx.fragment.app.Fragment
    public void onViewCreated(View view, Bundle bundle) {
        Bundle bundle2;
        PreferenceScreen I;
        super.onViewCreated(view, bundle);
        if (bundle != null && (bundle2 = bundle.getBundle("android:preferences")) != null && (I = I()) != null) {
            I.j0(bundle2);
        }
        if (this.f2639i) {
            E();
            Runnable runnable = this.f2642l;
            if (runnable != null) {
                runnable.run();
                this.f2642l = null;
            }
        }
        this.f2640j = true;
    }

    @Override // androidx.preference.e.b
    public void t(PreferenceScreen preferenceScreen) {
        if ((F() instanceof f ? ((f) F()).a(this, preferenceScreen) : false) || !(getActivity() instanceof f)) {
            return;
        }
        ((f) getActivity()).a(this, preferenceScreen);
    }

    @Override // androidx.preference.e.c
    public boolean x(Preference preference) {
        if (preference.l() == null) {
            return false;
        }
        boolean a10 = F() instanceof e ? ((e) F()).a(this, preference) : false;
        if (!a10 && (getActivity() instanceof e)) {
            a10 = ((e) getActivity()).a(this, preference);
        }
        if (a10) {
            return true;
        }
        FragmentManager supportFragmentManager = requireActivity().getSupportFragmentManager();
        Bundle j10 = preference.j();
        Fragment a11 = supportFragmentManager.r0().a(requireActivity().getClassLoader(), preference.l());
        a11.setArguments(j10);
        a11.setTargetFragment(this, 0);
        supportFragmentManager.m().q(((View) getView().getParent()).getId(), a11).h(null).i();
        return true;
    }
}
