package c5;

import android.os.Bundle;
import androidx.lifecycle.i0;
import androidx.lifecycle.l0;
import androidx.lifecycle.z;
import io.wax911.support.custom.viewmodel.SupportViewModel;

/* compiled from: CharactersViewModel.kt */
/* loaded from: classes.dex */
public final class k extends SupportViewModel<p4.d, Bundle> {

    /* compiled from: CharactersViewModel.kt */
    /* loaded from: classes.dex */
    public static final class a extends l0.d {

        /* renamed from: b, reason: collision with root package name */
        public final androidx.fragment.app.e f3706b;

        /* renamed from: c, reason: collision with root package name */
        public final z<p4.d> f3707c;

        public a(androidx.fragment.app.e eVar, z<p4.d> zVar) {
            jc.l.f(eVar, "context");
            jc.l.f(zVar, "observer");
            this.f3706b = eVar;
            this.f3707c = zVar;
        }

        @Override // androidx.lifecycle.l0.d, androidx.lifecycle.l0.b
        public <T extends i0> T a(Class<T> cls) {
            jc.l.f(cls, "modelClass");
            return new k(this.f3706b, this.f3707c);
        }
    }

    public k(androidx.fragment.app.e eVar, z<p4.d> zVar) {
        jc.l.f(eVar, "context");
        jc.l.f(zVar, "observer");
        j newInstance = j.f3697b.newInstance();
        newInstance.registerObserver(eVar, zVar);
        setRepository(newInstance);
    }
}
