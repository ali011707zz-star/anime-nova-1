package bd;

/* compiled from: LogPriority.kt */
/* loaded from: classes.dex */
public enum c {
    VERBOSE(2),
    DEBUG(3),
    INFO(4),
    WARN(5),
    ERROR(6),
    ASSERT(7);


    /* renamed from: f, reason: collision with root package name */
    public final int f3615f;

    c(int i10) {
        this.f3615f = i10;
    }

    public final int b() {
        return this.f3615f;
    }
}
