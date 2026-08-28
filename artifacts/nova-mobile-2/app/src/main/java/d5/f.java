package d5;

import android.os.Bundle;
import androidx.lifecycle.i0;
import androidx.lifecycle.l0;
import androidx.lifecycle.z;
import io.wax911.support.custom.viewmodel.SupportViewModel;

/* compiled from: CharacterDetailsViewModel.kt */
/* loaded from: classes.dex */
public final class f extends SupportViewModel<p4.f, Bundle> {

    /* compiled from: CharacterDetailsViewModel.kt */
    /* loaded from: classes.dex */
    public static final class a extends l0.d {

        /* renamed from: b, reason: collision with root package name */
        public final androidx.fragment.app.e f5652b;

        /* renamed from: c, reason: collision with root package name */
        public final z<p4.f> f5653c;

        public a(androidx.fragment.app.e eVar, z<p4.f> zVar) {
            jc.l.f(eVar, "context");
            jc.l.f(zVar, "observer");
            this.f5652b = eVar;
            this.f5653c = zVar;
        }

        @Override // androidx.lifecycle.l0.d, androidx.lifecycle.l0.b
        public <T extends i0> T a(Class<T> cls) {
            jc.l.f(cls, "modelClass");
            return new f(this.f5652b, this.f5653c);
        }
    }

    public f(androidx.fragment.app.e eVar, z<p4.f> zVar) {
        jc.l.f(eVar, "context");
        jc.l.f(zVar, "observer");
        e newInstance = e.f5644a.newInstance();
        newInstance.registerObserver(eVar, zVar);
        setRepository(newInstance);
    }
}
