package e;

import android.app.Dialog;
import android.content.Context;
import android.content.DialogInterface;
import android.os.Bundle;
import android.util.TypedValue;
import android.view.KeyEvent;
import android.view.View;
import android.view.ViewGroup;
import j.b;
import q0.f;

/* compiled from: AppCompatDialog.java */
/* loaded from: classes.dex */
public class b extends Dialog implements e.a {
    private androidx.appcompat.app.f mDelegate;
    private final f.a mKeyDispatcher;

    /* compiled from: AppCompatDialog.java */
    /* loaded from: classes.dex */
    public class a implements f.a {
        public a() {
        }

        @Override // q0.f.a
        public boolean superDispatchKeyEvent(KeyEvent keyEvent) {
            return b.this.superDispatchKeyEvent(keyEvent);
        }
    }

    public b(Context context) {
        this(context, 0);
    }

    private static int getThemeResId(Context context, int i10) {
        if (i10 != 0) {
            return i10;
        }
        TypedValue typedValue = new TypedValue();
        context.getTheme().resolveAttribute(d.a.A, typedValue, true);
        return typedValue.resourceId;
    }

    @Override // android.app.Dialog
    public void addContentView(View view, ViewGroup.LayoutParams layoutParams) {
        getDelegate().b(view, layoutParams);
    }

    @Override // android.app.Dialog, android.content.DialogInterface
    public void dismiss() {
        super.dismiss();
        getDelegate().q();
    }

    @Override // android.app.Dialog, android.view.Window.Callback
    public boolean dispatchKeyEvent(KeyEvent keyEvent) {
        return q0.f.e(this.mKeyDispatcher, getWindow().getDecorView(), this, keyEvent);
    }

    @Override // android.app.Dialog
    public <T extends View> T findViewById(int i10) {
        return (T) getDelegate().g(i10);
    }

    public androidx.appcompat.app.f getDelegate() {
        if (this.mDelegate == null) {
            this.mDelegate = androidx.appcompat.app.f.f(this, this);
        }
        return this.mDelegate;
    }

    public androidx.appcompat.app.a getSupportActionBar() {
        return getDelegate().l();
    }

    @Override // android.app.Dialog
    public void invalidateOptionsMenu() {
        getDelegate().n();
    }

    @Override // android.app.Dialog
    public void onCreate(Bundle bundle) {
        getDelegate().m();
        super.onCreate(bundle);
        getDelegate().p(bundle);
    }

    @Override // android.app.Dialog
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

    @Override // e.a
    public j.b onWindowStartingSupportActionMode(b.a aVar) {
        return null;
    }

    @Override // android.app.Dialog
    public void setContentView(int i10) {
        getDelegate().A(i10);
    }

    @Override // android.app.Dialog
    public void setTitle(CharSequence charSequence) {
        super.setTitle(charSequence);
        getDelegate().F(charSequence);
    }

    public boolean superDispatchKeyEvent(KeyEvent keyEvent) {
        return super.dispatchKeyEvent(keyEvent);
    }

    public boolean supportRequestWindowFeature(int i10) {
        return getDelegate().y(i10);
    }

    public b(Context context, int i10) {
        super(context, getThemeResId(context, i10));
        this.mKeyDispatcher = new a();
        androidx.appcompat.app.f delegate = getDelegate();
        delegate.E(getThemeResId(context, i10));
        delegate.p(null);
    }

    @Override // android.app.Dialog
    public void setContentView(View view) {
        getDelegate().B(view);
    }

    @Override // android.app.Dialog
    public void setContentView(View view, ViewGroup.LayoutParams layoutParams) {
        getDelegate().C(view, layoutParams);
    }

    @Override // android.app.Dialog
    public void setTitle(int i10) {
        super.setTitle(i10);
        getDelegate().F(getContext().getString(i10));
    }

    public b(Context context, boolean z10, DialogInterface.OnCancelListener onCancelListener) {
        super(context, z10, onCancelListener);
        this.mKeyDispatcher = new a();
    }
}
