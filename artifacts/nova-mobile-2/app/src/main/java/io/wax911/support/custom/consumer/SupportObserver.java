package io.wax911.support.custom.consumer;

import android.os.Bundle;
import vb.e;
import vb.f;

/* compiled from: SupportObserver.kt */
/* loaded from: classes.dex */
public final class SupportObserver {
    private final e bundle$delegate = f.a(SupportObserver$bundle$2.INSTANCE);

    public final Bundle getBundle() {
        return (Bundle) this.bundle$delegate.getValue();
    }
}
