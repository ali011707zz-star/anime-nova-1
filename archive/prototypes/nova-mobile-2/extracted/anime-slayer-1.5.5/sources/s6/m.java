package s6;

import android.os.Bundle;
import androidx.lifecycle.i0;
import androidx.lifecycle.l0;
import androidx.lifecycle.z;
import io.wax911.support.custom.viewmodel.SupportViewModel;
import java.util.List;

/* compiled from: RecommendationViewModel.kt */
/* loaded from: classes.dex */
public final class m extends SupportViewModel<List<? extends u4.a>, Bundle> {

    /* compiled from: RecommendationViewModel.kt */
    /* loaded from: classes.dex */
    public static final class a extends l0.d {

        /* renamed from: b, reason: collision with root package name */
        public final androidx.fragment.app.e f13778b;

        /* renamed from: c, reason: collision with root package name */
        public final z<List<u4.a>> f13779c;

        public a(androidx.fragment.app.e eVar, z<List<u4.a>> zVar) {
            jc.l.f(eVar, "context");
            jc.l.f(zVar, "observer");
            this.f13778b = eVar;
            this.f13779c = zVar;
        }

        @Override // androidx.lifecycle.l0.d, androidx.lifecycle.l0.b
        public <T extends i0> T a(Class<T> cls) {
            jc.l.f(cls, "modelClass");
            return new m(this.f13778b, this.f13779c);
        }
    }

    public m(androidx.fragment.app.e eVar, z<List<u4.a>> zVar) {
        jc.l.f(eVar, "context");
        jc.l.f(zVar, "observer");
        l newInstance = l.f13769b.newInstance();
        newInstance.registerObserver(eVar, zVar);
        setRepository(newInstance);
    }
}
