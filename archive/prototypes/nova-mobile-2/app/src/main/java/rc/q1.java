package rc;

import androidx.recyclerview.widget.RecyclerView;

/* compiled from: EventLoop.common.kt */
/* loaded from: classes2.dex */
public final class q1 {

    /* renamed from: a, reason: collision with root package name */
    public static final wc.a0 f13322a = new wc.a0("REMOVED_TASK");

    /* renamed from: b, reason: collision with root package name */
    public static final wc.a0 f13323b = new wc.a0("CLOSED_EMPTY");

    public static final long c(long j10) {
        if (j10 <= 0) {
            return 0L;
        }
        return j10 >= 9223372036854L ? RecyclerView.FOREVER_NS : 1000000 * j10;
    }
}
