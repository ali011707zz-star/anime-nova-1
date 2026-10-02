package com.google.firebase.iid.internal;

import com.google.android.gms.common.annotation.KeepForSdk;
import com.google.android.gms.tasks.Task;

/* compiled from: com.google.firebase:firebase-iid-interop@@17.1.0 */
@KeepForSdk
/* loaded from: classes.dex */
public interface FirebaseInstanceIdInternal {

    /* compiled from: com.google.firebase:firebase-iid-interop@@17.1.0 */
    @KeepForSdk
    /* loaded from: classes.dex */
    public interface NewTokenListener {
    }

    @KeepForSdk
    void addNewTokenListener(NewTokenListener newTokenListener);

    @KeepForSdk
    String getToken();

    @KeepForSdk
    Task<String> getTokenTask();
}
