package com.google.android.gms.common.api.internal;

import androidx.annotation.RecentlyNonNull;
import com.google.android.gms.common.api.Api;
import com.google.android.gms.common.api.Api.ApiOptions;
import com.google.android.gms.common.internal.Objects;

/* compiled from: com.google.android.gms:play-services-base@@17.6.0 */
/* loaded from: classes.dex */
public final class ApiKey<O extends Api.ApiOptions> {
    private final int zaa;
    private final Api<O> zab;
    private final O zac;
    private final String zad;

    private ApiKey(Api<O> api, O o10, String str) {
        this.zab = api;
        this.zac = o10;
        this.zad = str;
        this.zaa = Objects.hashCode(api, o10, str);
    }

    @RecentlyNonNull
    public static <O extends Api.ApiOptions> ApiKey<O> zaa(@RecentlyNonNull Api<O> api, O o10, String str) {
        return new ApiKey<>(api, o10, str);
    }

    public final boolean equals(Object obj) {
        if (obj == null) {
            return false;
        }
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof ApiKey)) {
            return false;
        }
        ApiKey apiKey = (ApiKey) obj;
        return Objects.equal(this.zab, apiKey.zab) && Objects.equal(this.zac, apiKey.zac) && Objects.equal(this.zad, apiKey.zad);
    }

    public final int hashCode() {
        return this.zaa;
    }

    @RecentlyNonNull
    public final String zab() {
        return this.zab.zad();
    }
}
