package r7;

/* compiled from: CallbackException.java */
/* loaded from: classes.dex */
public final class b extends RuntimeException {
    public b(Throwable th) {
        super("Unexpected exception thrown by non-Glide code", th);
    }
}
