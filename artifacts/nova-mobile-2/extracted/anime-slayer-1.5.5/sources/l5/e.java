package l5;

import android.os.Bundle;
import androidx.lifecycle.i0;
import androidx.lifecycle.l0;
import androidx.lifecycle.z;
import io.wax911.support.custom.viewmodel.SupportViewModel;
import jc.l;

/* compiled from: LoginViewModel.kt */
/* loaded from: classes.dex */
public final class e extends SupportViewModel<t4.a, Bundle> {

    /* compiled from: LoginViewModel.kt */
    /* loaded from: classes.dex */
    public static final class a extends l0.d {

        /* renamed from: b, reason: collision with root package name */
        public final androidx.fragment.app.e f10452b;

        /* renamed from: c, reason: collision with root package name */
        public final z<t4.a> f10453c;

        public a(androidx.fragment.app.e eVar, z<t4.a> zVar) {
            l.f(eVar, "context");
            l.f(zVar, "observer");
            this.f10452b = eVar;
            this.f10453c = zVar;
        }

        @Override // androidx.lifecycle.l0.d, androidx.lifecycle.l0.b
        public <T extends i0> T a(Class<T> cls) {
            l.f(cls, "modelClass");
            return new e(this.f10452b, this.f10453c);
        }
    }

    public e(androidx.fragment.app.e eVar, z<t4.a> zVar) {
        l.f(eVar, "context");
        l.f(zVar, "observer");
        d newInstance = d.f10435b.newInstance();
        newInstance.registerObserver(eVar, zVar);
        setRepository(newInstance);
    }
}
