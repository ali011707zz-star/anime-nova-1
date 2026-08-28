package androidx.fragment.app;

import android.os.Bundle;
import com.google.android.gms.common.internal.ServiceSpecificExtraArgs;

/* compiled from: Fragment.kt */
/* loaded from: classes.dex */
public final class l {
    public static final void a(Fragment fragment, String str, Bundle bundle) {
        jc.l.f(fragment, "$this$setFragmentResult");
        jc.l.f(str, "requestKey");
        jc.l.f(bundle, "result");
        fragment.getParentFragmentManager().o1(str, bundle);
    }

    public static final void b(Fragment fragment, String str, ic.p<? super String, ? super Bundle, vb.p> pVar) {
        jc.l.f(fragment, "$this$setFragmentResultListener");
        jc.l.f(str, "requestKey");
        jc.l.f(pVar, ServiceSpecificExtraArgs.CastExtraArgs.LISTENER);
        fragment.getParentFragmentManager().p1(str, fragment, new k(pVar));
    }
}
