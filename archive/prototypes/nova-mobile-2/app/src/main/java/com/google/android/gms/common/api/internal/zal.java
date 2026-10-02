package com.google.android.gms.common.api.internal;

import com.google.android.gms.common.ConnectionResult;
import com.google.android.gms.common.api.AvailabilityException;
import com.google.android.gms.common.api.HasApiKey;
import com.google.android.gms.tasks.Task;
import com.google.android.gms.tasks.TaskCompletionSource;
import java.util.Iterator;
import java.util.Map;
import java.util.Set;
import s.a;

/* compiled from: com.google.android.gms:play-services-base@@17.6.0 */
/* loaded from: classes.dex */
public final class zal {
    private int zad;
    private final a<ApiKey<?>, String> zab = new a<>();
    private final TaskCompletionSource<Map<ApiKey<?>, String>> zac = new TaskCompletionSource<>();
    private boolean zae = false;
    private final a<ApiKey<?>, ConnectionResult> zaa = new a<>();

    public zal(Iterable<? extends HasApiKey<?>> iterable) {
        Iterator<? extends HasApiKey<?>> it2 = iterable.iterator();
        while (it2.hasNext()) {
            this.zaa.put(it2.next().getApiKey(), null);
        }
        this.zad = this.zaa.keySet().size();
    }

    public final Set<ApiKey<?>> zaa() {
        return this.zaa.keySet();
    }

    public final Task<Map<ApiKey<?>, String>> zab() {
        return this.zac.getTask();
    }

    public final void zac(ApiKey<?> apiKey, ConnectionResult connectionResult, String str) {
        this.zaa.put(apiKey, connectionResult);
        this.zab.put(apiKey, str);
        this.zad--;
        if (!connectionResult.isSuccess()) {
            this.zae = true;
        }
        if (this.zad == 0) {
            if (this.zae) {
                this.zac.setException(new AvailabilityException(this.zaa));
            } else {
                this.zac.setResult(this.zab);
            }
        }
    }
}
