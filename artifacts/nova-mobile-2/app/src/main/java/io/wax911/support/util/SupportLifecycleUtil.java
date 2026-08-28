package io.wax911.support.util;

import android.content.Context;
import androidx.fragment.app.e;
import androidx.lifecycle.a0;
import androidx.lifecycle.k;
import androidx.lifecycle.p;
import jc.l;

/* compiled from: SupportLifecycleUtil.kt */
/* loaded from: classes.dex */
public final class SupportLifecycleUtil implements p {
    private LifecycleCallback lifecycleCallback;

    /* compiled from: SupportLifecycleUtil.kt */
    /* loaded from: classes.dex */
    public interface LifecycleCallback {
        void onParentStopped();
    }

    public SupportLifecycleUtil(Context context, LifecycleCallback lifecycleCallback) {
        l.f(context, "context");
        l.f(lifecycleCallback, "callback");
        if (context instanceof e) {
            ((e) context).getLifecycle().a(this);
        }
        this.lifecycleCallback = lifecycleCallback;
    }

    @a0(k.b.ON_STOP)
    private final void onFragmentActivityStopped() {
        toString();
        LifecycleCallback lifecycleCallback = this.lifecycleCallback;
        if (lifecycleCallback != null) {
            lifecycleCallback.onParentStopped();
        }
        this.lifecycleCallback = null;
    }

    public final void removeLifecycleObserver(k kVar) {
        if (kVar == null) {
            return;
        }
        kVar.c(this);
    }
}
