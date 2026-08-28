package androidx.fragment.app;

import android.app.Activity;
import android.content.res.Resources;
import android.os.Bundle;
import android.os.Parcelable;
import android.util.SparseArray;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewParent;
import androidx.fragment.app.Fragment;
import androidx.fragment.app.e0;
import androidx.lifecycle.k;
import androidx.lifecycle.n0;
import com.google.android.material.internal.StaticLayoutBuilderCompat;

/* compiled from: FragmentStateManager.java */
/* loaded from: classes.dex */
public class u {

    /* renamed from: a, reason: collision with root package name */
    public final n f2288a;

    /* renamed from: b, reason: collision with root package name */
    public final w f2289b;

    /* renamed from: c, reason: collision with root package name */
    public final Fragment f2290c;

    /* renamed from: d, reason: collision with root package name */
    public boolean f2291d = false;

    /* renamed from: e, reason: collision with root package name */
    public int f2292e = -1;

    /* compiled from: FragmentStateManager.java */
    /* loaded from: classes.dex */
    public class a implements View.OnAttachStateChangeListener {

        /* renamed from: f, reason: collision with root package name */
        public final /* synthetic */ View f2293f;

        public a(View view) {
            this.f2293f = view;
        }

        @Override // android.view.View.OnAttachStateChangeListener
        public void onViewAttachedToWindow(View view) {
            this.f2293f.removeOnAttachStateChangeListener(this);
            q0.b0.q0(this.f2293f);
        }

        @Override // android.view.View.OnAttachStateChangeListener
        public void onViewDetachedFromWindow(View view) {
        }
    }

    /* compiled from: FragmentStateManager.java */
    /* loaded from: classes.dex */
    public static /* synthetic */ class b {

        /* renamed from: a, reason: collision with root package name */
        public static final /* synthetic */ int[] f2295a;

        static {
            int[] iArr = new int[k.c.values().length];
            f2295a = iArr;
            try {
                iArr[k.c.RESUMED.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f2295a[k.c.STARTED.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f2295a[k.c.CREATED.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                f2295a[k.c.INITIALIZED.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
        }
    }

    public u(n nVar, w wVar, Fragment fragment) {
        this.f2288a = nVar;
        this.f2289b = wVar;
        this.f2290c = fragment;
    }

    public void a() {
        if (FragmentManager.G0(3)) {
            StringBuilder sb2 = new StringBuilder();
            sb2.append("moveto ACTIVITY_CREATED: ");
            sb2.append(this.f2290c);
        }
        Fragment fragment = this.f2290c;
        fragment.performActivityCreated(fragment.mSavedFragmentState);
        n nVar = this.f2288a;
        Fragment fragment2 = this.f2290c;
        nVar.a(fragment2, fragment2.mSavedFragmentState, false);
    }

    public void b() {
        int j10 = this.f2289b.j(this.f2290c);
        Fragment fragment = this.f2290c;
        fragment.mContainer.addView(fragment.mView, j10);
    }

    public void c() {
        if (FragmentManager.G0(3)) {
            StringBuilder sb2 = new StringBuilder();
            sb2.append("moveto ATTACHED: ");
            sb2.append(this.f2290c);
        }
        Fragment fragment = this.f2290c;
        Fragment fragment2 = fragment.mTarget;
        u uVar = null;
        if (fragment2 != null) {
            u m10 = this.f2289b.m(fragment2.mWho);
            if (m10 != null) {
                Fragment fragment3 = this.f2290c;
                fragment3.mTargetWho = fragment3.mTarget.mWho;
                fragment3.mTarget = null;
                uVar = m10;
            } else {
                throw new IllegalStateException("Fragment " + this.f2290c + " declared target fragment " + this.f2290c.mTarget + " that does not belong to this FragmentManager!");
            }
        } else {
            String str = fragment.mTargetWho;
            if (str != null && (uVar = this.f2289b.m(str)) == null) {
                throw new IllegalStateException("Fragment " + this.f2290c + " declared target fragment " + this.f2290c.mTargetWho + " that does not belong to this FragmentManager!");
            }
        }
        if (uVar != null && (FragmentManager.P || uVar.k().mState < 1)) {
            uVar.m();
        }
        Fragment fragment4 = this.f2290c;
        fragment4.mHost = fragment4.mFragmentManager.u0();
        Fragment fragment5 = this.f2290c;
        fragment5.mParentFragment = fragment5.mFragmentManager.x0();
        this.f2288a.g(this.f2290c, false);
        this.f2290c.performAttach();
        this.f2288a.b(this.f2290c, false);
    }

    public int d() {
        Fragment fragment;
        ViewGroup viewGroup;
        Fragment fragment2 = this.f2290c;
        if (fragment2.mFragmentManager == null) {
            return fragment2.mState;
        }
        int i10 = this.f2292e;
        int i11 = b.f2295a[fragment2.mMaxState.ordinal()];
        if (i11 != 1) {
            if (i11 == 2) {
                i10 = Math.min(i10, 5);
            } else if (i11 == 3) {
                i10 = Math.min(i10, 1);
            } else if (i11 != 4) {
                i10 = Math.min(i10, -1);
            } else {
                i10 = Math.min(i10, 0);
            }
        }
        Fragment fragment3 = this.f2290c;
        if (fragment3.mFromLayout) {
            if (fragment3.mInLayout) {
                i10 = Math.max(this.f2292e, 2);
                View view = this.f2290c.mView;
                if (view != null && view.getParent() == null) {
                    i10 = Math.min(i10, 2);
                }
            } else {
                i10 = this.f2292e < 4 ? Math.min(i10, fragment3.mState) : Math.min(i10, 1);
            }
        }
        if (!this.f2290c.mAdded) {
            i10 = Math.min(i10, 1);
        }
        e0.e.b bVar = null;
        if (FragmentManager.P && (viewGroup = (fragment = this.f2290c).mContainer) != null) {
            bVar = e0.n(viewGroup, fragment.getParentFragmentManager()).l(this);
        }
        if (bVar == e0.e.b.ADDING) {
            i10 = Math.min(i10, 6);
        } else if (bVar == e0.e.b.REMOVING) {
            i10 = Math.max(i10, 3);
        } else {
            Fragment fragment4 = this.f2290c;
            if (fragment4.mRemoving) {
                if (fragment4.isInBackStack()) {
                    i10 = Math.min(i10, 1);
                } else {
                    i10 = Math.min(i10, -1);
                }
            }
        }
        Fragment fragment5 = this.f2290c;
        if (fragment5.mDeferStart && fragment5.mState < 5) {
            i10 = Math.min(i10, 4);
        }
        if (FragmentManager.G0(2)) {
            StringBuilder sb2 = new StringBuilder();
            sb2.append("computeExpectedState() of ");
            sb2.append(i10);
            sb2.append(" for ");
            sb2.append(this.f2290c);
        }
        return i10;
    }

    public void e() {
        if (FragmentManager.G0(3)) {
            StringBuilder sb2 = new StringBuilder();
            sb2.append("moveto CREATED: ");
            sb2.append(this.f2290c);
        }
        Fragment fragment = this.f2290c;
        if (!fragment.mIsCreated) {
            this.f2288a.h(fragment, fragment.mSavedFragmentState, false);
            Fragment fragment2 = this.f2290c;
            fragment2.performCreate(fragment2.mSavedFragmentState);
            n nVar = this.f2288a;
            Fragment fragment3 = this.f2290c;
            nVar.c(fragment3, fragment3.mSavedFragmentState, false);
            return;
        }
        fragment.restoreChildFragmentState(fragment.mSavedFragmentState);
        this.f2290c.mState = 1;
    }

    public void f() {
        String str;
        if (this.f2290c.mFromLayout) {
            return;
        }
        if (FragmentManager.G0(3)) {
            StringBuilder sb2 = new StringBuilder();
            sb2.append("moveto CREATE_VIEW: ");
            sb2.append(this.f2290c);
        }
        Fragment fragment = this.f2290c;
        LayoutInflater performGetLayoutInflater = fragment.performGetLayoutInflater(fragment.mSavedFragmentState);
        ViewGroup viewGroup = null;
        Fragment fragment2 = this.f2290c;
        ViewGroup viewGroup2 = fragment2.mContainer;
        if (viewGroup2 != null) {
            viewGroup = viewGroup2;
        } else {
            int i10 = fragment2.mContainerId;
            if (i10 != 0) {
                if (i10 != -1) {
                    viewGroup = (ViewGroup) fragment2.mFragmentManager.o0().c(this.f2290c.mContainerId);
                    if (viewGroup == null) {
                        Fragment fragment3 = this.f2290c;
                        if (!fragment3.mRestored) {
                            try {
                                str = fragment3.getResources().getResourceName(this.f2290c.mContainerId);
                            } catch (Resources.NotFoundException unused) {
                                str = "unknown";
                            }
                            throw new IllegalArgumentException("No view found for id 0x" + Integer.toHexString(this.f2290c.mContainerId) + " (" + str + ") for fragment " + this.f2290c);
                        }
                    }
                } else {
                    throw new IllegalArgumentException("Cannot create fragment " + this.f2290c + " for a container view with no id");
                }
            }
        }
        Fragment fragment4 = this.f2290c;
        fragment4.mContainer = viewGroup;
        fragment4.performCreateView(performGetLayoutInflater, viewGroup, fragment4.mSavedFragmentState);
        View view = this.f2290c.mView;
        if (view != null) {
            boolean z10 = false;
            view.setSaveFromParentEnabled(false);
            Fragment fragment5 = this.f2290c;
            fragment5.mView.setTag(c1.b.f3634a, fragment5);
            if (viewGroup != null) {
                b();
            }
            Fragment fragment6 = this.f2290c;
            if (fragment6.mHidden) {
                fragment6.mView.setVisibility(8);
            }
            if (q0.b0.W(this.f2290c.mView)) {
                q0.b0.q0(this.f2290c.mView);
            } else {
                View view2 = this.f2290c.mView;
                view2.addOnAttachStateChangeListener(new a(view2));
            }
            this.f2290c.performViewCreated();
            n nVar = this.f2288a;
            Fragment fragment7 = this.f2290c;
            nVar.m(fragment7, fragment7.mView, fragment7.mSavedFragmentState, false);
            int visibility = this.f2290c.mView.getVisibility();
            float alpha = this.f2290c.mView.getAlpha();
            if (FragmentManager.P) {
                this.f2290c.setPostOnViewCreatedAlpha(alpha);
                Fragment fragment8 = this.f2290c;
                if (fragment8.mContainer != null && visibility == 0) {
                    View findFocus = fragment8.mView.findFocus();
                    if (findFocus != null) {
                        this.f2290c.setFocusedView(findFocus);
                        if (FragmentManager.G0(2)) {
                            StringBuilder sb3 = new StringBuilder();
                            sb3.append("requestFocus: Saved focused view ");
                            sb3.append(findFocus);
                            sb3.append(" for Fragment ");
                            sb3.append(this.f2290c);
                        }
                    }
                    this.f2290c.mView.setAlpha(StaticLayoutBuilderCompat.DEFAULT_LINE_SPACING_ADD);
                }
            } else {
                Fragment fragment9 = this.f2290c;
                if (visibility == 0 && fragment9.mContainer != null) {
                    z10 = true;
                }
                fragment9.mIsNewlyAdded = z10;
            }
        }
        this.f2290c.mState = 2;
    }

    public void g() {
        Fragment f10;
        if (FragmentManager.G0(3)) {
            StringBuilder sb2 = new StringBuilder();
            sb2.append("movefrom CREATED: ");
            sb2.append(this.f2290c);
        }
        Fragment fragment = this.f2290c;
        boolean z10 = true;
        boolean z11 = fragment.mRemoving && !fragment.isInBackStack();
        if (z11 || this.f2289b.o().k(this.f2290c)) {
            j<?> jVar = this.f2290c.mHost;
            if (jVar instanceof n0) {
                z10 = this.f2289b.o().h();
            } else if (jVar.f() instanceof Activity) {
                z10 = true ^ ((Activity) jVar.f()).isChangingConfigurations();
            }
            if (z11 || z10) {
                this.f2289b.o().b(this.f2290c);
            }
            this.f2290c.performDestroy();
            this.f2288a.d(this.f2290c, false);
            for (u uVar : this.f2289b.k()) {
                if (uVar != null) {
                    Fragment k10 = uVar.k();
                    if (this.f2290c.mWho.equals(k10.mTargetWho)) {
                        k10.mTarget = this.f2290c;
                        k10.mTargetWho = null;
                    }
                }
            }
            Fragment fragment2 = this.f2290c;
            String str = fragment2.mTargetWho;
            if (str != null) {
                fragment2.mTarget = this.f2289b.f(str);
            }
            this.f2289b.q(this);
            return;
        }
        String str2 = this.f2290c.mTargetWho;
        if (str2 != null && (f10 = this.f2289b.f(str2)) != null && f10.mRetainInstance) {
            this.f2290c.mTarget = f10;
        }
        this.f2290c.mState = 0;
    }

    public void h() {
        View view;
        if (FragmentManager.G0(3)) {
            StringBuilder sb2 = new StringBuilder();
            sb2.append("movefrom CREATE_VIEW: ");
            sb2.append(this.f2290c);
        }
        Fragment fragment = this.f2290c;
        ViewGroup viewGroup = fragment.mContainer;
        if (viewGroup != null && (view = fragment.mView) != null) {
            viewGroup.removeView(view);
        }
        this.f2290c.performDestroyView();
        this.f2288a.n(this.f2290c, false);
        Fragment fragment2 = this.f2290c;
        fragment2.mContainer = null;
        fragment2.mView = null;
        fragment2.mViewLifecycleOwner = null;
        fragment2.mViewLifecycleOwnerLiveData.o(null);
        this.f2290c.mInLayout = false;
    }

    public void i() {
        if (FragmentManager.G0(3)) {
            StringBuilder sb2 = new StringBuilder();
            sb2.append("movefrom ATTACHED: ");
            sb2.append(this.f2290c);
        }
        this.f2290c.performDetach();
        boolean z10 = false;
        this.f2288a.e(this.f2290c, false);
        Fragment fragment = this.f2290c;
        fragment.mState = -1;
        fragment.mHost = null;
        fragment.mParentFragment = null;
        fragment.mFragmentManager = null;
        if (fragment.mRemoving && !fragment.isInBackStack()) {
            z10 = true;
        }
        if (z10 || this.f2289b.o().k(this.f2290c)) {
            if (FragmentManager.G0(3)) {
                StringBuilder sb3 = new StringBuilder();
                sb3.append("initState called for fragment: ");
                sb3.append(this.f2290c);
            }
            this.f2290c.initState();
        }
    }

    public void j() {
        Fragment fragment = this.f2290c;
        if (fragment.mFromLayout && fragment.mInLayout && !fragment.mPerformedCreateView) {
            if (FragmentManager.G0(3)) {
                StringBuilder sb2 = new StringBuilder();
                sb2.append("moveto CREATE_VIEW: ");
                sb2.append(this.f2290c);
            }
            Fragment fragment2 = this.f2290c;
            fragment2.performCreateView(fragment2.performGetLayoutInflater(fragment2.mSavedFragmentState), null, this.f2290c.mSavedFragmentState);
            View view = this.f2290c.mView;
            if (view != null) {
                view.setSaveFromParentEnabled(false);
                Fragment fragment3 = this.f2290c;
                fragment3.mView.setTag(c1.b.f3634a, fragment3);
                Fragment fragment4 = this.f2290c;
                if (fragment4.mHidden) {
                    fragment4.mView.setVisibility(8);
                }
                this.f2290c.performViewCreated();
                n nVar = this.f2288a;
                Fragment fragment5 = this.f2290c;
                nVar.m(fragment5, fragment5.mView, fragment5.mSavedFragmentState, false);
                this.f2290c.mState = 2;
            }
        }
    }

    public Fragment k() {
        return this.f2290c;
    }

    public final boolean l(View view) {
        if (view == this.f2290c.mView) {
            return true;
        }
        for (ViewParent parent = view.getParent(); parent != null; parent = parent.getParent()) {
            if (parent == this.f2290c.mView) {
                return true;
            }
        }
        return false;
    }

    public void m() {
        ViewGroup viewGroup;
        ViewGroup viewGroup2;
        ViewGroup viewGroup3;
        if (this.f2291d) {
            if (FragmentManager.G0(2)) {
                StringBuilder sb2 = new StringBuilder();
                sb2.append("Ignoring re-entrant call to moveToExpectedState() for ");
                sb2.append(k());
                return;
            }
            return;
        }
        try {
            this.f2291d = true;
            while (true) {
                int d10 = d();
                Fragment fragment = this.f2290c;
                int i10 = fragment.mState;
                if (d10 == i10) {
                    if (FragmentManager.P && fragment.mHiddenChanged) {
                        if (fragment.mView != null && (viewGroup = fragment.mContainer) != null) {
                            e0 n10 = e0.n(viewGroup, fragment.getParentFragmentManager());
                            if (this.f2290c.mHidden) {
                                n10.c(this);
                            } else {
                                n10.e(this);
                            }
                        }
                        Fragment fragment2 = this.f2290c;
                        FragmentManager fragmentManager = fragment2.mFragmentManager;
                        if (fragmentManager != null) {
                            fragmentManager.E0(fragment2);
                        }
                        Fragment fragment3 = this.f2290c;
                        fragment3.mHiddenChanged = false;
                        fragment3.onHiddenChanged(fragment3.mHidden);
                    }
                    return;
                }
                if (d10 > i10) {
                    switch (i10 + 1) {
                        case 0:
                            c();
                            break;
                        case 1:
                            e();
                            break;
                        case 2:
                            j();
                            f();
                            break;
                        case 3:
                            a();
                            break;
                        case 4:
                            if (fragment.mView != null && (viewGroup2 = fragment.mContainer) != null) {
                                e0.n(viewGroup2, fragment.getParentFragmentManager()).b(e0.e.c.b(this.f2290c.mView.getVisibility()), this);
                            }
                            this.f2290c.mState = 4;
                            break;
                        case 5:
                            v();
                            break;
                        case 6:
                            fragment.mState = 6;
                            break;
                        case 7:
                            p();
                            break;
                    }
                } else {
                    switch (i10 - 1) {
                        case -1:
                            i();
                            break;
                        case 0:
                            g();
                            break;
                        case 1:
                            h();
                            this.f2290c.mState = 1;
                            break;
                        case 2:
                            fragment.mInLayout = false;
                            fragment.mState = 2;
                            break;
                        case 3:
                            if (FragmentManager.G0(3)) {
                                StringBuilder sb3 = new StringBuilder();
                                sb3.append("movefrom ACTIVITY_CREATED: ");
                                sb3.append(this.f2290c);
                            }
                            Fragment fragment4 = this.f2290c;
                            if (fragment4.mView != null && fragment4.mSavedViewState == null) {
                                t();
                            }
                            Fragment fragment5 = this.f2290c;
                            if (fragment5.mView != null && (viewGroup3 = fragment5.mContainer) != null) {
                                e0.n(viewGroup3, fragment5.getParentFragmentManager()).d(this);
                            }
                            this.f2290c.mState = 3;
                            break;
                        case 4:
                            w();
                            break;
                        case 5:
                            fragment.mState = 5;
                            break;
                        case 6:
                            n();
                            break;
                    }
                }
            }
        } finally {
            this.f2291d = false;
        }
    }

    public void n() {
        if (FragmentManager.G0(3)) {
            StringBuilder sb2 = new StringBuilder();
            sb2.append("movefrom RESUMED: ");
            sb2.append(this.f2290c);
        }
        this.f2290c.performPause();
        this.f2288a.f(this.f2290c, false);
    }

    public void o(ClassLoader classLoader) {
        Bundle bundle = this.f2290c.mSavedFragmentState;
        if (bundle == null) {
            return;
        }
        bundle.setClassLoader(classLoader);
        Fragment fragment = this.f2290c;
        fragment.mSavedViewState = fragment.mSavedFragmentState.getSparseParcelableArray("android:view_state");
        Fragment fragment2 = this.f2290c;
        fragment2.mSavedViewRegistryState = fragment2.mSavedFragmentState.getBundle("android:view_registry_state");
        Fragment fragment3 = this.f2290c;
        fragment3.mTargetWho = fragment3.mSavedFragmentState.getString("android:target_state");
        Fragment fragment4 = this.f2290c;
        if (fragment4.mTargetWho != null) {
            fragment4.mTargetRequestCode = fragment4.mSavedFragmentState.getInt("android:target_req_state", 0);
        }
        Fragment fragment5 = this.f2290c;
        Boolean bool = fragment5.mSavedUserVisibleHint;
        if (bool != null) {
            fragment5.mUserVisibleHint = bool.booleanValue();
            this.f2290c.mSavedUserVisibleHint = null;
        } else {
            fragment5.mUserVisibleHint = fragment5.mSavedFragmentState.getBoolean("android:user_visible_hint", true);
        }
        Fragment fragment6 = this.f2290c;
        if (fragment6.mUserVisibleHint) {
            return;
        }
        fragment6.mDeferStart = true;
    }

    public void p() {
        if (FragmentManager.G0(3)) {
            StringBuilder sb2 = new StringBuilder();
            sb2.append("moveto RESUMED: ");
            sb2.append(this.f2290c);
        }
        View focusedView = this.f2290c.getFocusedView();
        if (focusedView != null && l(focusedView)) {
            boolean requestFocus = focusedView.requestFocus();
            if (FragmentManager.G0(2)) {
                StringBuilder sb3 = new StringBuilder();
                sb3.append("requestFocus: Restoring focused view ");
                sb3.append(focusedView);
                sb3.append(" ");
                sb3.append(requestFocus ? "succeeded" : "failed");
                sb3.append(" on Fragment ");
                sb3.append(this.f2290c);
                sb3.append(" resulting in focused view ");
                sb3.append(this.f2290c.mView.findFocus());
            }
        }
        this.f2290c.setFocusedView(null);
        this.f2290c.performResume();
        this.f2288a.i(this.f2290c, false);
        Fragment fragment = this.f2290c;
        fragment.mSavedFragmentState = null;
        fragment.mSavedViewState = null;
        fragment.mSavedViewRegistryState = null;
    }

    public final Bundle q() {
        Bundle bundle = new Bundle();
        this.f2290c.performSaveInstanceState(bundle);
        this.f2288a.j(this.f2290c, bundle, false);
        if (bundle.isEmpty()) {
            bundle = null;
        }
        if (this.f2290c.mView != null) {
            t();
        }
        if (this.f2290c.mSavedViewState != null) {
            if (bundle == null) {
                bundle = new Bundle();
            }
            bundle.putSparseParcelableArray("android:view_state", this.f2290c.mSavedViewState);
        }
        if (this.f2290c.mSavedViewRegistryState != null) {
            if (bundle == null) {
                bundle = new Bundle();
            }
            bundle.putBundle("android:view_registry_state", this.f2290c.mSavedViewRegistryState);
        }
        if (!this.f2290c.mUserVisibleHint) {
            if (bundle == null) {
                bundle = new Bundle();
            }
            bundle.putBoolean("android:user_visible_hint", this.f2290c.mUserVisibleHint);
        }
        return bundle;
    }

    public Fragment.l r() {
        Bundle q10;
        if (this.f2290c.mState <= -1 || (q10 = q()) == null) {
            return null;
        }
        return new Fragment.l(q10);
    }

    public t s() {
        t tVar = new t(this.f2290c);
        Fragment fragment = this.f2290c;
        if (fragment.mState > -1 && tVar.f2287r == null) {
            Bundle q10 = q();
            tVar.f2287r = q10;
            if (this.f2290c.mTargetWho != null) {
                if (q10 == null) {
                    tVar.f2287r = new Bundle();
                }
                tVar.f2287r.putString("android:target_state", this.f2290c.mTargetWho);
                int i10 = this.f2290c.mTargetRequestCode;
                if (i10 != 0) {
                    tVar.f2287r.putInt("android:target_req_state", i10);
                }
            }
        } else {
            tVar.f2287r = fragment.mSavedFragmentState;
        }
        return tVar;
    }

    public void t() {
        if (this.f2290c.mView == null) {
            return;
        }
        SparseArray<Parcelable> sparseArray = new SparseArray<>();
        this.f2290c.mView.saveHierarchyState(sparseArray);
        if (sparseArray.size() > 0) {
            this.f2290c.mSavedViewState = sparseArray;
        }
        Bundle bundle = new Bundle();
        this.f2290c.mViewLifecycleOwner.e(bundle);
        if (bundle.isEmpty()) {
            return;
        }
        this.f2290c.mSavedViewRegistryState = bundle;
    }

    public void u(int i10) {
        this.f2292e = i10;
    }

    public void v() {
        if (FragmentManager.G0(3)) {
            StringBuilder sb2 = new StringBuilder();
            sb2.append("moveto STARTED: ");
            sb2.append(this.f2290c);
        }
        this.f2290c.performStart();
        this.f2288a.k(this.f2290c, false);
    }

    public void w() {
        if (FragmentManager.G0(3)) {
            StringBuilder sb2 = new StringBuilder();
            sb2.append("movefrom STARTED: ");
            sb2.append(this.f2290c);
        }
        this.f2290c.performStop();
        this.f2288a.l(this.f2290c, false);
    }

    public u(n nVar, w wVar, ClassLoader classLoader, i iVar, t tVar) {
        this.f2288a = nVar;
        this.f2289b = wVar;
        Fragment a10 = iVar.a(classLoader, tVar.f2275f);
        this.f2290c = a10;
        Bundle bundle = tVar.f2284o;
        if (bundle != null) {
            bundle.setClassLoader(classLoader);
        }
        a10.setArguments(tVar.f2284o);
        a10.mWho = tVar.f2276g;
        a10.mFromLayout = tVar.f2277h;
        a10.mRestored = true;
        a10.mFragmentId = tVar.f2278i;
        a10.mContainerId = tVar.f2279j;
        a10.mTag = tVar.f2280k;
        a10.mRetainInstance = tVar.f2281l;
        a10.mRemoving = tVar.f2282m;
        a10.mDetached = tVar.f2283n;
        a10.mHidden = tVar.f2285p;
        a10.mMaxState = k.c.values()[tVar.f2286q];
        Bundle bundle2 = tVar.f2287r;
        if (bundle2 != null) {
            a10.mSavedFragmentState = bundle2;
        } else {
            a10.mSavedFragmentState = new Bundle();
        }
        if (FragmentManager.G0(2)) {
            StringBuilder sb2 = new StringBuilder();
            sb2.append("Instantiated fragment ");
            sb2.append(a10);
        }
    }

    public u(n nVar, w wVar, Fragment fragment, t tVar) {
        this.f2288a = nVar;
        this.f2289b = wVar;
        this.f2290c = fragment;
        fragment.mSavedViewState = null;
        fragment.mSavedViewRegistryState = null;
        fragment.mBackStackNesting = 0;
        fragment.mInLayout = false;
        fragment.mAdded = false;
        Fragment fragment2 = fragment.mTarget;
        fragment.mTargetWho = fragment2 != null ? fragment2.mWho : null;
        fragment.mTarget = null;
        Bundle bundle = tVar.f2287r;
        if (bundle != null) {
            fragment.mSavedFragmentState = bundle;
        } else {
            fragment.mSavedFragmentState = new Bundle();
        }
    }
}
