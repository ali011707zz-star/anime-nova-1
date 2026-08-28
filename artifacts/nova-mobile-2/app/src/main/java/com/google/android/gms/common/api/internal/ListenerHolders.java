package com.google.android.gms.common.api.internal;

import android.os.Looper;
import androidx.annotation.RecentlyNonNull;
import com.google.android.gms.common.annotation.KeepForSdk;
import com.google.android.gms.common.api.internal.ListenerHolder;
import com.google.android.gms.common.internal.Preconditions;
import java.util.Collections;
import java.util.Iterator;
import java.util.Set;
import java.util.WeakHashMap;

/* compiled from: com.google.android.gms:play-services-base@@17.6.0 */
@KeepForSdk
/* loaded from: classes.dex */
public class ListenerHolders {
    private final Set<ListenerHolder<?>> zaa = Collections.newSetFromMap(new WeakHashMap());

    @RecentlyNonNull
    @KeepForSdk
    public static <L> ListenerHolder<L> createListenerHolder(@RecentlyNonNull L l10, @RecentlyNonNull Looper looper, @RecentlyNonNull String str) {
        Preconditions.checkNotNull(l10, "Listener must not be null");
        Preconditions.checkNotNull(looper, "Looper must not be null");
        Preconditions.checkNotNull(str, "Listener type must not be null");
        return new ListenerHolder<>(looper, l10, str);
    }

    @RecentlyNonNull
    @KeepForSdk
    public static <L> ListenerHolder.ListenerKey<L> createListenerKey(@RecentlyNonNull L l10, @RecentlyNonNull String str) {
        Preconditions.checkNotNull(l10, "Listener must not be null");
        Preconditions.checkNotNull(str, "Listener type must not be null");
        Preconditions.checkNotEmpty(str, "Listener type must not be empty");
        return new ListenerHolder.ListenerKey<>(l10, str);
    }

    @RecentlyNonNull
    public final <L> ListenerHolder<L> zaa(@RecentlyNonNull L l10, @RecentlyNonNull Looper looper, @RecentlyNonNull String str) {
        ListenerHolder<L> createListenerHolder = createListenerHolder(l10, looper, "NO_TYPE");
        this.zaa.add(createListenerHolder);
        return createListenerHolder;
    }

    public final void zab() {
        Iterator<ListenerHolder<?>> it2 = this.zaa.iterator();
        while (it2.hasNext()) {
            it2.next().clear();
        }
        this.zaa.clear();
    }
}
