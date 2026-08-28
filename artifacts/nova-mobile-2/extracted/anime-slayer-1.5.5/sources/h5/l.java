package h5;

import android.os.Bundle;
import androidx.lifecycle.i0;
import androidx.lifecycle.l0;
import androidx.lifecycle.z;
import io.wax911.support.custom.viewmodel.SupportViewModel;
import java.util.List;

/* compiled from: EpisodeViewModel.kt */
/* loaded from: classes.dex */
public final class l extends SupportViewModel<List<? extends p4.k>, Bundle> {

    /* compiled from: EpisodeViewModel.kt */
    /* loaded from: classes.dex */
    public static final class a extends l0.d {

        /* renamed from: b, reason: collision with root package name */
        public final androidx.fragment.app.e f7340b;

        /* renamed from: c, reason: collision with root package name */
        public final z<List<p4.k>> f7341c;

        public a(androidx.fragment.app.e eVar, z<List<p4.k>> zVar) {
            jc.l.f(eVar, "context");
            jc.l.f(zVar, "observer");
            this.f7340b = eVar;
            this.f7341c = zVar;
        }

        @Override // androidx.lifecycle.l0.d, androidx.lifecycle.l0.b
        public <T extends i0> T a(Class<T> cls) {
            jc.l.f(cls, "modelClass");
            return new l(this.f7340b, this.f7341c);
        }
    }

    public l(androidx.fragment.app.e eVar, z<List<p4.k>> zVar) {
        jc.l.f(eVar, "context");
        jc.l.f(zVar, "observer");
        k newInstance = k.f7326b.newInstance();
        newInstance.registerObserver(eVar, zVar);
        setRepository(newInstance);
    }
}
