package androidx.core.os;

import p0.d;

/* loaded from: classes.dex */
public class OperationCanceledException extends RuntimeException {
    public OperationCanceledException() {
        this(null);
    }

    public OperationCanceledException(String str) {
        super(d.d(str, "The operation has been canceled."));
    }
}
