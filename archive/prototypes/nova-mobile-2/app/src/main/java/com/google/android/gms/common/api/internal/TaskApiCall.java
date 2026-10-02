package com.google.android.gms.common.api.internal;

import android.os.RemoteException;
import androidx.annotation.RecentlyNonNull;
import androidx.annotation.RecentlyNullable;
import com.google.android.gms.common.Feature;
import com.google.android.gms.common.annotation.KeepForSdk;
import com.google.android.gms.common.api.Api;
import com.google.android.gms.common.api.Api.AnyClient;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.common.util.BiConsumer;
import com.google.android.gms.tasks.TaskCompletionSource;

/* compiled from: com.google.android.gms:play-services-base@@17.6.0 */
@KeepForSdk
/* loaded from: classes.dex */
public abstract class TaskApiCall<A extends Api.AnyClient, ResultT> {
    private final Feature[] zaa;
    private final boolean zab;
    private final int zac;

    /* compiled from: com.google.android.gms:play-services-base@@17.6.0 */
    @KeepForSdk
    /* loaded from: classes.dex */
    public static class Builder<A extends Api.AnyClient, ResultT> {
        private RemoteCall<A, TaskCompletionSource<ResultT>> zaa;
        private Feature[] zac;
        private boolean zab = true;
        private int zad = 0;

        private Builder() {
        }

        public /* synthetic */ Builder(zacp zacpVar) {
        }

        @RecentlyNonNull
        @KeepForSdk
        public TaskApiCall<A, ResultT> build() {
            Preconditions.checkArgument(this.zaa != null, "execute parameter required");
            return new zacr(this, this.zac, this.zab, this.zad);
        }

        @RecentlyNonNull
        @KeepForSdk
        @Deprecated
        public Builder<A, ResultT> execute(@RecentlyNonNull final BiConsumer<A, TaskCompletionSource<ResultT>> biConsumer) {
            this.zaa = new RemoteCall(biConsumer) { // from class: com.google.android.gms.common.api.internal.zacq
                private final BiConsumer zaa;

                {
                    this.zaa = biConsumer;
                }

                @Override // com.google.android.gms.common.api.internal.RemoteCall
                public final void accept(Object obj, Object obj2) {
                    this.zaa.accept((Api.AnyClient) obj, (TaskCompletionSource) obj2);
                }
            };
            return this;
        }

        @RecentlyNonNull
        @KeepForSdk
        public Builder<A, ResultT> run(@RecentlyNonNull RemoteCall<A, TaskCompletionSource<ResultT>> remoteCall) {
            this.zaa = remoteCall;
            return this;
        }

        @RecentlyNonNull
        @KeepForSdk
        public Builder<A, ResultT> setAutoResolveMissingFeatures(boolean z10) {
            this.zab = z10;
            return this;
        }

        @RecentlyNonNull
        @KeepForSdk
        public Builder<A, ResultT> setFeatures(@RecentlyNonNull Feature... featureArr) {
            this.zac = featureArr;
            return this;
        }

        @RecentlyNonNull
        @KeepForSdk
        public Builder<A, ResultT> setMethodKey(int i10) {
            this.zad = i10;
            return this;
        }
    }

    @KeepForSdk
    @Deprecated
    public TaskApiCall() {
        this.zaa = null;
        this.zab = false;
        this.zac = 0;
    }

    @KeepForSdk
    public TaskApiCall(Feature[] featureArr, boolean z10, int i10) {
        this.zaa = featureArr;
        boolean z11 = false;
        if (featureArr != null && z10) {
            z11 = true;
        }
        this.zab = z11;
        this.zac = i10;
    }

    @RecentlyNonNull
    @KeepForSdk
    public static <A extends Api.AnyClient, ResultT> Builder<A, ResultT> builder() {
        return new Builder<>(null);
    }

    @KeepForSdk
    public abstract void doExecute(@RecentlyNonNull A a10, @RecentlyNonNull TaskCompletionSource<ResultT> taskCompletionSource) throws RemoteException;

    @KeepForSdk
    public boolean shouldAutoResolveMissingFeatures() {
        return this.zab;
    }

    @RecentlyNullable
    public final Feature[] zaa() {
        return this.zaa;
    }

    public final int zab() {
        return this.zac;
    }
}
