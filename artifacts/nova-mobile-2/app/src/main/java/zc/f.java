package zc;

import java.util.concurrent.atomic.AtomicLongFieldUpdater;

/* compiled from: Select.kt */
/* loaded from: classes2.dex */
public final class f {

    /* renamed from: a, reason: collision with root package name */
    public static final /* synthetic */ AtomicLongFieldUpdater f17472a = AtomicLongFieldUpdater.newUpdater(f.class, "number");
    private volatile /* synthetic */ long number = 1;

    public final long a() {
        return f17472a.incrementAndGet(this);
    }
}
