package lb;

import android.view.View;
import androidx.fragment.app.Fragment;
import com.zhuinden.fragmentviewbindingdelegatekt.FragmentViewBindingDelegate;
import ic.l;

/* compiled from: FragmentViewBindingDelegate.kt */
/* loaded from: classes.dex */
public final class a {
    public static final <T extends a2.a> FragmentViewBindingDelegate<T> a(Fragment fragment, l<? super View, ? extends T> lVar) {
        jc.l.f(fragment, "$this$viewBinding");
        jc.l.f(lVar, "viewBindingFactory");
        return new FragmentViewBindingDelegate<>(fragment, lVar);
    }
}
