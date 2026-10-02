package com.google.android.gms.common.api.internal;

import android.os.RemoteException;
import androidx.annotation.RecentlyNonNull;
import com.google.android.gms.common.Feature;
import com.google.android.gms.common.annotation.KeepForSdk;
import com.google.android.gms.common.api.Api;
import com.google.android.gms.common.api.Api.AnyClient;
import com.google.android.gms.common.api.internal.ListenerHolder;
import com.google.android.gms.common.api.internal.RegistrationMethods;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.common.util.BiConsumer;
import com.google.android.gms.tasks.TaskCompletionSource;

/* compiled from: com.google.android.gms:play-services-base@@17.6.0 */
@KeepForSdk
/* loaded from: classes.dex */
public class RegistrationMethods<A extends Api.AnyClient, L> {

    @RecentlyNonNull
    @KeepForSdk
    public final RegisterListenerMethod<A, L> register;

    @RecentlyNonNull
    public final UnregisterListenerMethod<A, L> zaa;

    @RecentlyNonNull
    public final Runnable zab;

    /* compiled from: com.google.android.gms:play-services-base@@17.6.0 */
    @KeepForSdk
    /* loaded from: classes.dex */
    public static class Builder<A extends Api.AnyClient, L> {
        private RemoteCall<A, TaskCompletionSource<Void>> zaa;
        private RemoteCall<A, TaskCompletionSource<Boolean>> zab;
        private ListenerHolder<L> zad;
        private Feature[] zae;
        private int zag;
        private Runnable zac = zace.zaa;
        private boolean zaf = true;

        private Builder() {
        }

        public /* synthetic */ Builder(zacd zacdVar) {
        }

        @RecentlyNonNull
        @KeepForSdk
        public RegistrationMethods<A, L> build() {
            Preconditions.checkArgument(this.zaa != null, "Must set register function");
            Preconditions.checkArgument(this.zab != null, "Must set unregister function");
            Preconditions.checkArgument(this.zad != null, "Must set holder");
            return new RegistrationMethods<>(new zach(this, this.zad, this.zae, this.zaf, this.zag), new zaci(this, (ListenerHolder.ListenerKey) Preconditions.checkNotNull(this.zad.getListenerKey(), "Key must not be null")), this.zac, null);
        }

        @RecentlyNonNull
        @KeepForSdk
        public Builder<A, L> onConnectionSuspended(@RecentlyNonNull Runnable runnable) {
            this.zac = runnable;
            return this;
        }

        @RecentlyNonNull
        @KeepForSdk
        public Builder<A, L> register(@RecentlyNonNull RemoteCall<A, TaskCompletionSource<Void>> remoteCall) {
            this.zaa = remoteCall;
            return this;
        }

        @RecentlyNonNull
        @KeepForSdk
        @Deprecated
        public Builder<A, L> register(@RecentlyNonNull final BiConsumer<A, TaskCompletionSource<Void>> biConsumer) {
            this.zaa = new RemoteCall(biConsumer) { // from class: com.google.android.gms.common.api.internal.zacf
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
        public Builder<A, L> setAutoResolveMissingFeatures(boolean z10) {
            this.zaf = z10;
            return this;
        }

        @RecentlyNonNull
        @KeepForSdk
        public Builder<A, L> setFeatures(@RecentlyNonNull Feature... featureArr) {
            this.zae = featureArr;
            return this;
        }

        @RecentlyNonNull
        @KeepForSdk
        public Builder<A, L> setMethodKey(int i10) {
            this.zag = i10;
            return this;
        }

        @RecentlyNonNull
        @KeepForSdk
        public Builder<A, L> unregister(@RecentlyNonNull RemoteCall<A, TaskCompletionSource<Boolean>> remoteCall) {
            this.zab = remoteCall;
            return this;
        }

        @RecentlyNonNull
        @KeepForSdk
        @Deprecated
        public Builder<A, L> unregister(@RecentlyNonNull BiConsumer<A, TaskCompletionSource<Boolean>> biConsumer) {
            this.zaa = new RemoteCall(this) { // from class: com.google.android.gms.common.api.internal.zacg
                private final RegistrationMethods.Builder zaa;

                {
                    this.zaa = this;
                }

                @Override // com.google.android.gms.common.api.internal.RemoteCall
                public final void accept(Object obj, Object obj2) {
                    this.zaa.zaa((Api.AnyClient) obj, (TaskCompletionSource) obj2);
                }
            };
            return this;
        }

        @RecentlyNonNull
        @KeepForSdk
        public Builder<A, L> withHolder(@RecentlyNonNull ListenerHolder<L> listenerHolder) {
            this.zad = listenerHolder;
            return this;
        }

        public final /* synthetic */ void zaa(Api.AnyClient anyClient, TaskCompletionSource taskCompletionSource) throws RemoteException {
            this.zaa.accept(anyClient, taskCompletionSource);
        }
    }

    public /* synthetic */ RegistrationMethods(RegisterListenerMethod registerListenerMethod, UnregisterListenerMethod unregisterListenerMethod, Runnable runnable, zacd zacdVar) {
        this.register = registerListenerMethod;
        this.zaa = unregisterListenerMethod;
        this.zab = runnable;
    }

    @RecentlyNonNull
    @KeepForSdk
    public static <A extends Api.AnyClient, L> Builder<A, L> builder() {
        return new Builder<>(null);
    }
}
