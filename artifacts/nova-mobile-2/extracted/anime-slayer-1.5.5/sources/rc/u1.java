package rc;

import java.util.concurrent.Executor;

/* compiled from: Executors.kt */
/* loaded from: classes2.dex */
public final class u1 {
    public static final Executor a(l0 l0Var) {
        s1 s1Var = l0Var instanceof s1 ? (s1) l0Var : null;
        return s1Var == null ? new f1(l0Var) : s1Var.K0();
    }

    public static final l0 b(Executor executor) {
        f1 f1Var = executor instanceof f1 ? (f1) executor : null;
        return f1Var == null ? new t1(executor) : f1Var.f13255f;
    }
}
