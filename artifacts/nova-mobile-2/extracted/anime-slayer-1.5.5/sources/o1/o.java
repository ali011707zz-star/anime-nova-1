package o1;

import java.util.Map;
import java.util.concurrent.Executor;
import rc.u1;

/* compiled from: CoroutinesRoom.kt */
/* loaded from: classes.dex */
public final class o {
    public static final rc.l0 a(p0 p0Var) {
        jc.l.f(p0Var, "<this>");
        Map<String, Object> k10 = p0Var.k();
        jc.l.e(k10, "backingFieldMap");
        Object obj = k10.get("QueryDispatcher");
        if (obj == null) {
            Executor o10 = p0Var.o();
            jc.l.e(o10, "queryExecutor");
            obj = u1.b(o10);
            k10.put("QueryDispatcher", obj);
        }
        jc.l.d(obj, "null cannot be cast to non-null type kotlinx.coroutines.CoroutineDispatcher");
        return (rc.l0) obj;
    }

    public static final rc.l0 b(p0 p0Var) {
        jc.l.f(p0Var, "<this>");
        Map<String, Object> k10 = p0Var.k();
        jc.l.e(k10, "backingFieldMap");
        Object obj = k10.get("TransactionDispatcher");
        if (obj == null) {
            Executor r10 = p0Var.r();
            jc.l.e(r10, "transactionExecutor");
            obj = u1.b(r10);
            k10.put("TransactionDispatcher", obj);
        }
        jc.l.d(obj, "null cannot be cast to non-null type kotlinx.coroutines.CoroutineDispatcher");
        return (rc.l0) obj;
    }
}
