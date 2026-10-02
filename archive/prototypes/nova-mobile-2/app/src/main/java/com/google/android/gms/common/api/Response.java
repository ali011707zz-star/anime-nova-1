package com.google.android.gms.common.api;

import androidx.annotation.RecentlyNonNull;
import com.google.android.gms.common.api.Result;

/* compiled from: com.google.android.gms:play-services-basement@@17.6.0 */
/* loaded from: classes.dex */
public class Response<T extends Result> {
    private T zza;

    public Response() {
    }

    public Response(@RecentlyNonNull T t10) {
        this.zza = t10;
    }

    public T getResult() {
        return this.zza;
    }

    public void setResult(@RecentlyNonNull T t10) {
        this.zza = t10;
    }
}
