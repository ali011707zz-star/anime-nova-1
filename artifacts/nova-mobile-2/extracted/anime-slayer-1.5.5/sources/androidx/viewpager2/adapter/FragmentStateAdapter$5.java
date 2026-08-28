package androidx.viewpager2.adapter;

import android.os.Handler;
import androidx.lifecycle.k;
import androidx.lifecycle.n;
import androidx.lifecycle.q;

/* loaded from: classes.dex */
class FragmentStateAdapter$5 implements n {

    /* renamed from: f, reason: collision with root package name */
    public final /* synthetic */ Handler f3275f;

    /* renamed from: g, reason: collision with root package name */
    public final /* synthetic */ Runnable f3276g;

    @Override // androidx.lifecycle.n
    public void e(q qVar, k.b bVar) {
        if (bVar == k.b.ON_DESTROY) {
            this.f3275f.removeCallbacks(this.f3276g);
            qVar.getLifecycle().c(this);
        }
    }
}
