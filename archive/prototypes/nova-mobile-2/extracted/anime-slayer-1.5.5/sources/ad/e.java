package ad;

import wc.a0;

/* compiled from: Mutex.kt */
/* loaded from: classes2.dex */
public final class e {

    /* renamed from: a, reason: collision with root package name */
    public static final a0 f557a = new a0("LOCK_FAIL");

    /* renamed from: b, reason: collision with root package name */
    public static final a0 f558b = new a0("UNLOCK_FAIL");

    /* renamed from: c, reason: collision with root package name */
    public static final a0 f559c;

    /* renamed from: d, reason: collision with root package name */
    public static final a0 f560d;

    /* renamed from: e, reason: collision with root package name */
    public static final a f561e;

    /* renamed from: f, reason: collision with root package name */
    public static final a f562f;

    static {
        a0 a0Var = new a0("LOCKED");
        f559c = a0Var;
        a0 a0Var2 = new a0("UNLOCKED");
        f560d = a0Var2;
        f561e = new a(a0Var);
        f562f = new a(a0Var2);
    }

    public static final b a(boolean z10) {
        return new d(z10);
    }

    public static /* synthetic */ b b(boolean z10, int i10, Object obj) {
        if ((i10 & 1) != 0) {
            z10 = false;
        }
        return a(z10);
    }
}
