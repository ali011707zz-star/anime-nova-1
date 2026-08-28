package androidx.lifecycle;

import android.content.Context;
import java.util.Collections;
import java.util.List;

/* loaded from: classes.dex */
public final class ProcessLifecycleInitializer implements t1.b<q> {
    @Override // t1.b
    public List<Class<? extends t1.b<?>>> a() {
        return Collections.emptyList();
    }

    @Override // t1.b
    /* renamed from: c, reason: merged with bridge method [inline-methods] */
    public q b(Context context) {
        m.a(context);
        d0.i(context);
        return d0.h();
    }
}
