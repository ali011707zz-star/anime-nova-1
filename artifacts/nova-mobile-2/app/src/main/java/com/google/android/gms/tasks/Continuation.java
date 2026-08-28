package com.google.android.gms.tasks;

import androidx.annotation.RecentlyNonNull;

/* compiled from: com.google.android.gms:play-services-tasks@@17.2.1 */
/* loaded from: classes.dex */
public interface Continuation<TResult, TContinuationResult> {
    @RecentlyNonNull
    TContinuationResult then(@RecentlyNonNull Task<TResult> task) throws Exception;
}
