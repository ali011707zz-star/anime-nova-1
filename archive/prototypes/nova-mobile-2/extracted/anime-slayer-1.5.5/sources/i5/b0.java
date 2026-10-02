package i5;

import android.os.Bundle;
import androidx.lifecycle.l0;
import io.wax911.support.custom.viewmodel.SupportViewModel;

/* compiled from: SeriesViewModel.kt */
/* loaded from: classes.dex */
public final class b0 extends SupportViewModel<p4.p, Bundle> {

    /* compiled from: SeriesViewModel.kt */
    /* loaded from: classes.dex */
    public static final class a extends l0.d {

        /* renamed from: b, reason: collision with root package name */
        public final androidx.fragment.app.e f7597b;

        /* renamed from: c, reason: collision with root package name */
        public final androidx.lifecycle.z<p4.p> f7598c;

        public a(androidx.fragment.app.e eVar, androidx.lifecycle.z<p4.p> zVar) {
            jc.l.f(eVar, "context");
            jc.l.f(zVar, "observer");
            this.f7597b = eVar;
            this.f7598c = zVar;
        }

        @Override // androidx.lifecycle.l0.d, androidx.lifecycle.l0.b
        public <T extends androidx.lifecycle.i0> T a(Class<T> cls) {
            jc.l.f(cls, "modelClass");
            return new b0(this.f7597b, this.f7598c);
        }
    }

    public b0(androidx.fragment.app.e eVar, androidx.lifecycle.z<p4.p> zVar) {
        jc.l.f(eVar, "context");
        jc.l.f(zVar, "observer");
        a0 newInstance = a0.f7572e.newInstance();
        newInstance.registerObserver(eVar, zVar);
        setRepository(newInstance);
    }
}
