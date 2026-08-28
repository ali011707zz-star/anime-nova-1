package k5;

import android.os.Bundle;
import androidx.lifecycle.i0;
import androidx.lifecycle.l0;
import androidx.lifecycle.z;
import io.wax911.support.custom.viewmodel.SupportViewModel;

/* compiled from: UserViewModel.kt */
/* loaded from: classes.dex */
public final class o extends SupportViewModel<w4.e, Bundle> {

    /* compiled from: UserViewModel.kt */
    /* loaded from: classes.dex */
    public static final class a extends l0.d {

        /* renamed from: b, reason: collision with root package name */
        public final androidx.fragment.app.e f10009b;

        /* renamed from: c, reason: collision with root package name */
        public final z<w4.e> f10010c;

        public a(androidx.fragment.app.e eVar, z<w4.e> zVar) {
            jc.l.f(eVar, "context");
            jc.l.f(zVar, "observer");
            this.f10009b = eVar;
            this.f10010c = zVar;
        }

        @Override // androidx.lifecycle.l0.d, androidx.lifecycle.l0.b
        public <T extends i0> T a(Class<T> cls) {
            jc.l.f(cls, "modelClass");
            return new o(this.f10009b, this.f10010c);
        }
    }

    public o(androidx.fragment.app.e eVar, z<w4.e> zVar) {
        jc.l.f(eVar, "context");
        jc.l.f(zVar, "observer");
        n newInstance = n.f9987c.newInstance();
        newInstance.registerObserver(eVar, zVar);
        setRepository(newInstance);
    }
}
