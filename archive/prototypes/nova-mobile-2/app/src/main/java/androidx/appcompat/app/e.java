package androidx.appcompat.app;

import android.content.Context;
import android.content.Intent;
import android.content.res.Configuration;
import android.content.res.Resources;
import android.os.Build;
import android.os.Bundle;
import android.view.KeyEvent;
import android.view.Menu;
import android.view.MenuInflater;
import android.view.MenuItem;
import android.view.View;
import android.view.ViewGroup;
import android.view.Window;
import androidx.appcompat.app.b;
import androidx.appcompat.widget.Toolbar;
import androidx.appcompat.widget.b1;
import androidx.lifecycle.o0;
import androidx.lifecycle.p0;
import androidx.savedstate.SavedStateRegistry;
import e0.p;
import j.b;

/* compiled from: AppCompatActivity.java */
/* loaded from: classes.dex */
public class e extends androidx.fragment.app.e implements e.a, p.a, b.c {
    private static final String DELEGATE_TAG = "androidx:appcompat";
    private f mDelegate;
    private Resources mResources;

    /* compiled from: AppCompatActivity.java */
    /* loaded from: classes.dex */
    public class a implements SavedStateRegistry.b {
        public a() {
        }

        @Override // androidx.savedstate.SavedStateRegistry.b
        public Bundle a() {
            Bundle bundle = new Bundle();
            e.this.getDelegate().t(bundle);
            return bundle;
        }
    }

    /* compiled from: AppCompatActivity.java */
    /* loaded from: classes.dex */
    public class b implements b.b {
        public b() {
        }

        @Override // b.b
        public void a(Context context) {
            f delegate = e.this.getDelegate();
            delegate.m();
            delegate.p(e.this.getSavedStateRegistry().a(e.DELEGATE_TAG));
        }
    }

    public e() {
        initDelegate();
    }

    private void initDelegate() {
        getSavedStateRegistry().d(DELEGATE_TAG, new a());
        addOnContextAvailableListener(new b());
    }

    private void initViewTreeOwners() {
        o0.a(getWindow().getDecorView(), this);
        p0.a(getWindow().getDecorView(), this);
        androidx.savedstate.d.a(getWindow().getDecorView(), this);
    }

    private boolean performMenuItemShortcut(KeyEvent keyEvent) {
        Window window;
        return (Build.VERSION.SDK_INT >= 26 || keyEvent.isCtrlPressed() || KeyEvent.metaStateHasNoModifiers(keyEvent.getMetaState()) || keyEvent.getRepeatCount() != 0 || KeyEvent.isModifierKey(keyEvent.getKeyCode()) || (window = getWindow()) == null || window.getDecorView() == null || !window.getDecorView().dispatchKeyShortcutEvent(keyEvent)) ? false : true;
    }

    @Override // androidx.activity.ComponentActivity, android.app.Activity
    public void addContentView(View view, ViewGroup.LayoutParams layoutParams) {
        initViewTreeOwners();
        getDelegate().b(view, layoutParams);
    }

    @Override // android.app.Activity, android.view.ContextThemeWrapper, android.content.ContextWrapper
    public void attachBaseContext(Context context) {
        super.attachBaseContext(getDelegate().d(context));
    }

    @Override // android.app.Activity
    public void closeOptionsMenu() {
        androidx.appcompat.app.a supportActionBar = getSupportActionBar();
        if (getWindow().hasFeature(0)) {
            if (supportActionBar == null || !supportActionBar.g()) {
                super.closeOptionsMenu();
            }
        }
    }

    @Override // e0.g, android.app.Activity, android.view.Window.Callback
    public boolean dispatchKeyEvent(KeyEvent keyEvent) {
        int keyCode = keyEvent.getKeyCode();
        androidx.appcompat.app.a supportActionBar = getSupportActionBar();
        if (keyCode == 82 && supportActionBar != null && supportActionBar.p(keyEvent)) {
            return true;
        }
        return super.dispatchKeyEvent(keyEvent);
    }

    @Override // android.app.Activity
    public <T extends View> T findViewById(int i10) {
        return (T) getDelegate().g(i10);
    }

    public f getDelegate() {
        if (this.mDelegate == null) {
            this.mDelegate = f.e(this, this);
        }
        return this.mDelegate;
    }

    @Override // androidx.appcompat.app.b.c
    public b.InterfaceC0026b getDrawerToggleDelegate() {
        return getDelegate().i();
    }

    @Override // android.app.Activity
    public MenuInflater getMenuInflater() {
        return getDelegate().k();
    }

    @Override // android.view.ContextThemeWrapper, android.content.ContextWrapper, android.content.Context
    public Resources getResources() {
        if (this.mResources == null && b1.d()) {
            this.mResources = new b1(this, super.getResources());
        }
        Resources resources = this.mResources;
        return resources == null ? super.getResources() : resources;
    }

    public androidx.appcompat.app.a getSupportActionBar() {
        return getDelegate().l();
    }

    @Override // e0.p.a
    public Intent getSupportParentActivityIntent() {
        return e0.h.a(this);
    }

    @Override // android.app.Activity
    public void invalidateOptionsMenu() {
        getDelegate().n();
    }

    @Override // androidx.fragment.app.e, android.app.Activity, android.content.ComponentCallbacks
    public void onConfigurationChanged(Configuration configuration) {
        super.onConfigurationChanged(configuration);
        if (this.mResources != null) {
            this.mResources.updateConfiguration(configuration, super.getResources().getDisplayMetrics());
        }
        getDelegate().o(configuration);
    }

    @Override // android.app.Activity, android.view.Window.Callback
    public void onContentChanged() {
        onSupportContentChanged();
    }

    public void onCreateSupportNavigateUpTaskStack(p pVar) {
        pVar.b(this);
    }

    @Override // androidx.fragment.app.e, android.app.Activity
    public void onDestroy() {
        super.onDestroy();
        getDelegate().q();
    }

    @Override // android.app.Activity, android.view.KeyEvent.Callback
    public boolean onKeyDown(int i10, KeyEvent keyEvent) {
        if (performMenuItemShortcut(keyEvent)) {
            return true;
        }
        return super.onKeyDown(i10, keyEvent);
    }

    @Override // androidx.fragment.app.e, android.app.Activity, android.view.Window.Callback
    public final boolean onMenuItemSelected(int i10, MenuItem menuItem) {
        if (super.onMenuItemSelected(i10, menuItem)) {
            return true;
        }
        androidx.appcompat.app.a supportActionBar = getSupportActionBar();
        if (menuItem.getItemId() != 16908332 || supportActionBar == null || (supportActionBar.j() & 4) == 0) {
            return false;
        }
        return onSupportNavigateUp();
    }

    @Override // android.app.Activity, android.view.Window.Callback
    public boolean onMenuOpened(int i10, Menu menu) {
        return super.onMenuOpened(i10, menu);
    }

    public void onNightModeChanged(int i10) {
    }

    @Override // androidx.fragment.app.e, android.app.Activity, android.view.Window.Callback
    public void onPanelClosed(int i10, Menu menu) {
        super.onPanelClosed(i10, menu);
    }

    @Override // android.app.Activity
    public void onPostCreate(Bundle bundle) {
        super.onPostCreate(bundle);
        getDelegate().r(bundle);
    }

    @Override // androidx.fragment.app.e, android.app.Activity
    public void onPostResume() {
        super.onPostResume();
        getDelegate().s();
    }

    public void onPrepareSupportNavigateUpTaskStack(p pVar) {
    }

    @Override // androidx.fragment.app.e, android.app.Activity
    public void onStart() {
        super.onStart();
        getDelegate().u();
    }

    @Override // androidx.fragment.app.e, android.app.Activity
    public void onStop() {
        super.onStop();
        getDelegate().v();
    }

    @Override // e.a
    public void onSupportActionModeFinished(j.b bVar) {
    }

    @Override // e.a
    public void onSupportActionModeStarted(j.b bVar) {
    }

    @Deprecated
    public void onSupportContentChanged() {
    }

    public boolean onSupportNavigateUp() {
        Intent supportParentActivityIntent = getSupportParentActivityIntent();
        if (supportParentActivityIntent == null) {
            return false;
        }
        if (supportShouldUpRecreateTask(supportParentActivityIntent)) {
            p d10 = p.d(this);
            onCreateSupportNavigateUpTaskStack(d10);
            onPrepareSupportNavigateUpTaskStack(d10);
            d10.e();
            try {
                e0.a.p(this);
                return true;
            } catch (IllegalStateException unused) {
                finish();
                return true;
            }
        }
        supportNavigateUpTo(supportParentActivityIntent);
        return true;
    }

    @Override // android.app.Activity
    public void onTitleChanged(CharSequence charSequence, int i10) {
        super.onTitleChanged(charSequence, i10);
        getDelegate().F(charSequence);
    }

    @Override // e.a
    public j.b onWindowStartingSupportActionMode(b.a aVar) {
        return null;
    }

    @Override // android.app.Activity
    public void openOptionsMenu() {
        androidx.appcompat.app.a supportActionBar = getSupportActionBar();
        if (getWindow().hasFeature(0)) {
            if (supportActionBar == null || !supportActionBar.q()) {
                super.openOptionsMenu();
            }
        }
    }

    @Override // androidx.activity.ComponentActivity, android.app.Activity
    public void setContentView(int i10) {
        initViewTreeOwners();
        getDelegate().A(i10);
    }

    public void setSupportActionBar(Toolbar toolbar) {
        getDelegate().D(toolbar);
    }

    @Deprecated
    public void setSupportProgress(int i10) {
    }

    @Deprecated
    public void setSupportProgressBarIndeterminate(boolean z10) {
    }

    @Deprecated
    public void setSupportProgressBarIndeterminateVisibility(boolean z10) {
    }

    @Deprecated
    public void setSupportProgressBarVisibility(boolean z10) {
    }

    @Override // android.app.Activity, android.view.ContextThemeWrapper, android.content.ContextWrapper, android.content.Context
    public void setTheme(int i10) {
        super.setTheme(i10);
        getDelegate().E(i10);
    }

    public j.b startSupportActionMode(b.a aVar) {
        return getDelegate().G(aVar);
    }

    @Override // androidx.fragment.app.e
    public void supportInvalidateOptionsMenu() {
        getDelegate().n();
    }

    public void supportNavigateUpTo(Intent intent) {
        e0.h.e(this, intent);
    }

    public boolean supportRequestWindowFeature(int i10) {
        return getDelegate().y(i10);
    }

    public boolean supportShouldUpRecreateTask(Intent intent) {
        return e0.h.f(this, intent);
    }

    public e(int i10) {
        super(i10);
        initDelegate();
    }

    @Override // androidx.activity.ComponentActivity, android.app.Activity
    public void setContentView(View view) {
        initViewTreeOwners();
        getDelegate().B(view);
    }

    @Override // androidx.activity.ComponentActivity, android.app.Activity
    public void setContentView(View view, ViewGroup.LayoutParams layoutParams) {
        initViewTreeOwners();
        getDelegate().C(view, layoutParams);
    }
}
