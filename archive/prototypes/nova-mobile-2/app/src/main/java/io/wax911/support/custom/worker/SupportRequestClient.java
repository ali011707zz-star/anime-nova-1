package io.wax911.support.custom.worker;

import io.wax911.support.model.ModelWrapper;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import rc.y0;
import rd.b;

/* compiled from: SupportRequestClient.kt */
/* loaded from: classes.dex */
public abstract class SupportRequestClient {
    private final List<b<?>> callList = new ArrayList();

    public final void cancel() {
        try {
            Iterator<T> it2 = this.callList.iterator();
            while (it2.hasNext()) {
                ((b) it2.next()).cancel();
            }
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }

    public abstract <T> y0<ModelWrapper<T>> executeUsing(b<T> bVar);

    public final List<b<?>> getCallList() {
        return this.callList;
    }
}
