package androidx.fragment.app;

import android.annotation.SuppressLint;
import android.content.Context;
import android.content.Intent;
import android.content.IntentSender;
import android.content.res.Configuration;
import android.os.Bundle;
import android.os.Parcelable;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.view.Menu;
import android.view.MenuItem;
import android.view.View;
import android.view.Window;
import androidx.activity.ComponentActivity;
import androidx.activity.OnBackPressedDispatcher;
import androidx.activity.result.ActivityResultRegistry;
import androidx.lifecycle.k;
import androidx.lifecycle.m0;
import androidx.lifecycle.n0;
import androidx.savedstate.SavedStateRegistry;
import e0.a;
import java.io.FileDescriptor;
import java.io.PrintWriter;

/* compiled from: FragmentActivity.java */
/* loaded from: classes.dex */
public class e extends ComponentActivity implements a.c, a.e {
    public static final String FRAGMENTS_TAG = "android:support:fragments";
    public boolean mCreated;
    public final androidx.lifecycle.s mFragmentLifecycleRegistry;
    public final h mFragments;
    public boolean mResumed;
    public boolean mStopped;

    /* compiled from: FragmentActivity.java */
    /* loaded from: classes.dex */
    public class a implements SavedStateRegistry.b {
        public a() {
        }

        @Override // androidx.savedstate.SavedStateRegistry.b
        public Bundle a() {
            Bundle bundle = new Bundle();
            e.this.markFragmentsCreated();
            e.this.mFragmentLifecycleRegistry.h(k.b.ON_STOP);
            Parcelable x10 = e.this.mFragments.x();
            if (x10 != null) {
                bundle.putParcelable(e.FRAGMENTS_TAG, x10);
            }
            return bundle;
        }
    }

    /* compiled from: FragmentActivity.java */
    /* loaded from: classes.dex */
    public class b implements b.b {
        public b() {
        }

        @Override // b.b
        public void a(Context context) {
            e.this.mFragments.a(null);
            Bundle a10 = e.this.getSavedStateRegistry().a(e.FRAGMENTS_TAG);
            if (a10 != null) {
                e.this.mFragments.w(a10.getParcelable(e.FRAGMENTS_TAG));
            }
        }
    }

    /* compiled from: FragmentActivity.java */
    /* loaded from: classes.dex */
    public class c extends j<e> implements n0, androidx.activity.c, androidx.activity.result.d, r {
        public c() {
            super(e.this);
        }

        @Override // androidx.fragment.app.r
        public void a(FragmentManager fragmentManager, Fragment fragment) {
            e.this.onAttachFragment(fragment);
        }

        @Override // androidx.fragment.app.j, androidx.fragment.app.g
        public View c(int i10) {
            return e.this.findViewById(i10);
        }

        @Override // androidx.fragment.app.j, androidx.fragment.app.g
        public boolean d() {
            Window window = e.this.getWindow();
            return (window == null || window.peekDecorView() == null) ? false : true;
        }

        @Override // androidx.activity.result.d
        public ActivityResultRegistry getActivityResultRegistry() {
            return e.this.getActivityResultRegistry();
        }

        @Override // androidx.lifecycle.q
        public androidx.lifecycle.k getLifecycle() {
            return e.this.mFragmentLifecycleRegistry;
        }

        @Override // androidx.activity.c
        public OnBackPressedDispatcher getOnBackPressedDispatcher() {
            return e.this.getOnBackPressedDispatcher();
        }

        @Override // androidx.lifecycle.n0
        public m0 getViewModelStore() {
            return e.this.getViewModelStore();
        }

        @Override // androidx.fragment.app.j
        public void h(String str, FileDescriptor fileDescriptor, PrintWriter printWriter, String[] strArr) {
            e.this.dump(str, fileDescriptor, printWriter, strArr);
        }

        @Override // androidx.fragment.app.j
        public LayoutInflater j() {
            return e.this.getLayoutInflater().cloneInContext(e.this);
        }

        @Override // androidx.fragment.app.j
        public boolean l(Fragment fragment) {
            return !e.this.isFinishing();
        }

        @Override // androidx.fragment.app.j
        public boolean m(String str) {
            return e0.a.w(e.this, str);
        }

        @Override // androidx.fragment.app.j
        public void p() {
            e.this.supportInvalidateOptionsMenu();
        }

        @Override // androidx.fragment.app.j
        /* renamed from: q, reason: merged with bridge method [inline-methods] */
        public e i() {
            return e.this;
        }
    }

    public e() {
        this.mFragments = h.b(new c());
        this.mFragmentLifecycleRegistry = new androidx.lifecycle.s(this);
        this.mStopped = true;
        init();
    }

    private void init() {
        getSavedStateRegistry().d(FRAGMENTS_TAG, new a());
        addOnContextAvailableListener(new b());
    }

    private static boolean markState(FragmentManager fragmentManager, k.c cVar) {
        boolean z10 = false;
        for (Fragment fragment : fragmentManager.t0()) {
            if (fragment != null) {
                if (fragment.getHost() != null) {
                    z10 |= markState(fragment.getChildFragmentManager(), cVar);
                }
                b0 b0Var = fragment.mViewLifecycleOwner;
                if (b0Var != null && b0Var.getLifecycle().b().a(k.c.STARTED)) {
                    fragment.mViewLifecycleOwner.f(cVar);
                    z10 = true;
                }
                if (fragment.mLifecycleRegistry.b().a(k.c.STARTED)) {
                    fragment.mLifecycleRegistry.o(cVar);
                    z10 = true;
                }
            }
        }
        return z10;
    }

    public final View dispatchFragmentsOnCreateView(View view, String str, Context context, AttributeSet attributeSet) {
        return this.mFragments.v(view, str, context, attributeSet);
    }

    @Override // android.app.Activity
    public void dump(String str, FileDescriptor fileDescriptor, PrintWriter printWriter, String[] strArr) {
        super.dump(str, fileDescriptor, printWriter, strArr);
        printWriter.print(str);
        printWriter.print("Local FragmentActivity ");
        printWriter.print(Integer.toHexString(System.identityHashCode(this)));
        printWriter.println(" State:");
        String str2 = str + "  ";
        printWriter.print(str2);
        printWriter.print("mCreated=");
        printWriter.print(this.mCreated);
        printWriter.print(" mResumed=");
        printWriter.print(this.mResumed);
        printWriter.print(" mStopped=");
        printWriter.print(this.mStopped);
        if (getApplication() != null) {
            h1.a.b(this).a(str2, fileDescriptor, printWriter, strArr);
        }
        this.mFragments.t().X(str, fileDescriptor, printWriter, strArr);
    }

    public FragmentManager getSupportFragmentManager() {
        return this.mFragments.t();
    }

    @Deprecated
    public h1.a getSupportLoaderManager() {
        return h1.a.b(this);
    }

    public void markFragmentsCreated() {
        do {
        } while (markState(getSupportFragmentManager(), k.c.CREATED));
    }

    @Override // androidx.activity.ComponentActivity, android.app.Activity
    public void onActivityResult(int i10, int i11, Intent intent) {
        this.mFragments.u();
        super.onActivityResult(i10, i11, intent);
    }

    @Deprecated
    public void onAttachFragment(Fragment fragment) {
    }

    @Override // android.app.Activity, android.content.ComponentCallbacks
    public void onConfigurationChanged(Configuration configuration) {
        this.mFragments.u();
        super.onConfigurationChanged(configuration);
        this.mFragments.d(configuration);
    }

    @Override // androidx.activity.ComponentActivity, e0.g, android.app.Activity
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        this.mFragmentLifecycleRegistry.h(k.b.ON_CREATE);
        this.mFragments.f();
    }

    @Override // android.app.Activity, android.view.Window.Callback
    public boolean onCreatePanelMenu(int i10, Menu menu) {
        if (i10 == 0) {
            return super.onCreatePanelMenu(i10, menu) | this.mFragments.g(menu, getMenuInflater());
        }
        return super.onCreatePanelMenu(i10, menu);
    }

    @Override // android.app.Activity, android.view.LayoutInflater.Factory2
    public View onCreateView(View view, String str, Context context, AttributeSet attributeSet) {
        View dispatchFragmentsOnCreateView = dispatchFragmentsOnCreateView(view, str, context, attributeSet);
        return dispatchFragmentsOnCreateView == null ? super.onCreateView(view, str, context, attributeSet) : dispatchFragmentsOnCreateView;
    }

    @Override // android.app.Activity
    public void onDestroy() {
        super.onDestroy();
        this.mFragments.h();
        this.mFragmentLifecycleRegistry.h(k.b.ON_DESTROY);
    }

    @Override // android.app.Activity, android.content.ComponentCallbacks
    public void onLowMemory() {
        super.onLowMemory();
        this.mFragments.i();
    }

    @Override // android.app.Activity, android.view.Window.Callback
    public boolean onMenuItemSelected(int i10, MenuItem menuItem) {
        if (super.onMenuItemSelected(i10, menuItem)) {
            return true;
        }
        if (i10 == 0) {
            return this.mFragments.k(menuItem);
        }
        if (i10 != 6) {
            return false;
        }
        return this.mFragments.e(menuItem);
    }

    @Override // android.app.Activity
    public void onMultiWindowModeChanged(boolean z10) {
        this.mFragments.j(z10);
    }

    @Override // android.app.Activity
    public void onNewIntent(@SuppressLint({"UnknownNullness"}) Intent intent) {
        this.mFragments.u();
        super.onNewIntent(intent);
    }

    @Override // android.app.Activity, android.view.Window.Callback
    public void onPanelClosed(int i10, Menu menu) {
        if (i10 == 0) {
            this.mFragments.l(menu);
        }
        super.onPanelClosed(i10, menu);
    }

    @Override // android.app.Activity
    public void onPause() {
        super.onPause();
        this.mResumed = false;
        this.mFragments.m();
        this.mFragmentLifecycleRegistry.h(k.b.ON_PAUSE);
    }

    @Override // android.app.Activity
    public void onPictureInPictureModeChanged(boolean z10) {
        this.mFragments.n(z10);
    }

    @Override // android.app.Activity
    public void onPostResume() {
        super.onPostResume();
        onResumeFragments();
    }

    @Deprecated
    public boolean onPrepareOptionsPanel(View view, Menu menu) {
        return super.onPreparePanel(0, view, menu);
    }

    @Override // android.app.Activity, android.view.Window.Callback
    public boolean onPreparePanel(int i10, View view, Menu menu) {
        if (i10 == 0) {
            return onPrepareOptionsPanel(view, menu) | this.mFragments.o(menu);
        }
        return super.onPreparePanel(i10, view, menu);
    }

    @Override // androidx.activity.ComponentActivity, android.app.Activity
    public void onRequestPermissionsResult(int i10, String[] strArr, int[] iArr) {
        this.mFragments.u();
        super.onRequestPermissionsResult(i10, strArr, iArr);
    }

    @Override // android.app.Activity
    public void onResume() {
        this.mFragments.u();
        super.onResume();
        this.mResumed = true;
        this.mFragments.s();
    }

    public void onResumeFragments() {
        this.mFragmentLifecycleRegistry.h(k.b.ON_RESUME);
        this.mFragments.p();
    }

    @Override // android.app.Activity
    public void onStart() {
        this.mFragments.u();
        super.onStart();
        this.mStopped = false;
        if (!this.mCreated) {
            this.mCreated = true;
            this.mFragments.c();
        }
        this.mFragments.s();
        this.mFragmentLifecycleRegistry.h(k.b.ON_START);
        this.mFragments.q();
    }

    @Override // android.app.Activity
    public void onStateNotSaved() {
        this.mFragments.u();
    }

    @Override // android.app.Activity
    public void onStop() {
        super.onStop();
        this.mStopped = true;
        markFragmentsCreated();
        this.mFragments.r();
        this.mFragmentLifecycleRegistry.h(k.b.ON_STOP);
    }

    public void setEnterSharedElementCallback(e0.o oVar) {
        e0.a.u(this, oVar);
    }

    public void setExitSharedElementCallback(e0.o oVar) {
        e0.a.v(this, oVar);
    }

    public void startActivityFromFragment(Fragment fragment, @SuppressLint({"UnknownNullness"}) Intent intent, int i10) {
        startActivityFromFragment(fragment, intent, i10, (Bundle) null);
    }

    @Deprecated
    public void startIntentSenderFromFragment(Fragment fragment, @SuppressLint({"UnknownNullness"}) IntentSender intentSender, int i10, Intent intent, int i11, int i12, int i13, Bundle bundle) throws IntentSender.SendIntentException {
        if (i10 == -1) {
            e0.a.y(this, intentSender, i10, intent, i11, i12, i13, bundle);
        } else {
            fragment.startIntentSenderForResult(intentSender, i10, intent, i11, i12, i13, bundle);
        }
    }

    public void supportFinishAfterTransition() {
        e0.a.q(this);
    }

    @Deprecated
    public void supportInvalidateOptionsMenu() {
        invalidateOptionsMenu();
    }

    public void supportPostponeEnterTransition() {
        e0.a.r(this);
    }

    public void supportStartPostponedEnterTransition() {
        e0.a.z(this);
    }

    @Override // e0.a.e
    @Deprecated
    public final void validateRequestPermissionsRequestCode(int i10) {
    }

    public void startActivityFromFragment(Fragment fragment, @SuppressLint({"UnknownNullness"}) Intent intent, int i10, Bundle bundle) {
        if (i10 == -1) {
            e0.a.x(this, intent, -1, bundle);
        } else {
            fragment.startActivityForResult(intent, i10, bundle);
        }
    }

    @Override // android.app.Activity, android.view.LayoutInflater.Factory
    public View onCreateView(String str, Context context, AttributeSet attributeSet) {
        View dispatchFragmentsOnCreateView = dispatchFragmentsOnCreateView(null, str, context, attributeSet);
        return dispatchFragmentsOnCreateView == null ? super.onCreateView(str, context, attributeSet) : dispatchFragmentsOnCreateView;
    }

    public e(int i10) {
        super(i10);
        this.mFragments = h.b(new c());
        this.mFragmentLifecycleRegistry = new androidx.lifecycle.s(this);
        this.mStopped = true;
        init();
    }
}
