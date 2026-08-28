package cc;

/* compiled from: ContinuationImpl.kt */
/* loaded from: classes2.dex */
public final class c implements ac.d<Object> {

    /* renamed from: f, reason: collision with root package name */
    public static final c f3892f = new c();

    @Override // ac.d
    public ac.g getContext() {
        throw new IllegalStateException("This continuation is already complete".toString());
    }

    @Override // ac.d
    public void resumeWith(Object obj) {
        throw new IllegalStateException("This continuation is already complete".toString());
    }

    public String toString() {
        return "This continuation is already complete";
    }
}
