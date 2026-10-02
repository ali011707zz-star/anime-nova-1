package androidx.lifecycle;

import rc.g1;
import rc.q0;
import rc.z2;

/* compiled from: ViewModel.kt */
/* loaded from: classes.dex */
public final class j0 {
    public static final q0 a(i0 i0Var) {
        jc.l.f(i0Var, "$this$viewModelScope");
        q0 q0Var = (q0) i0Var.getTag("androidx.lifecycle.ViewModelCoroutineScope.JOB_KEY");
        if (q0Var != null) {
            return q0Var;
        }
        Object tagIfAbsent = i0Var.setTagIfAbsent("androidx.lifecycle.ViewModelCoroutineScope.JOB_KEY", new d(z2.b(null, 1, null).plus(g1.c().K0())));
        jc.l.e(tagIfAbsent, "setTagIfAbsent(\n        …Main.immediate)\n        )");
        return (q0) tagIfAbsent;
    }
}
