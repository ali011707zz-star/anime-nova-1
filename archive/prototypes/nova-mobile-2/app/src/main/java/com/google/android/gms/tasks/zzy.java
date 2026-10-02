package com.google.android.gms.tasks;

import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;

/* compiled from: com.google.android.gms:play-services-tasks@@17.2.1 */
/* loaded from: classes.dex */
final class zzy implements Continuation<Void, List> {
    public final /* synthetic */ Collection zza;

    public zzy(Collection collection) {
        this.zza = collection;
    }

    @Override // com.google.android.gms.tasks.Continuation
    public final /* bridge */ /* synthetic */ List then(Task<Void> task) throws Exception {
        ArrayList arrayList = new ArrayList();
        Iterator it2 = this.zza.iterator();
        while (it2.hasNext()) {
            arrayList.add(((Task) it2.next()).getResult());
        }
        return arrayList;
    }
}
