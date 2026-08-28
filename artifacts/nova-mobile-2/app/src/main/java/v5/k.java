package v5;

import android.os.Bundle;
import androidx.lifecycle.i0;
import androidx.lifecycle.l0;
import androidx.lifecycle.z;
import io.wax911.support.custom.viewmodel.SupportViewModel;
import java.util.List;
import jc.l;

/* compiled from: NotificationViewModel.kt */
/* loaded from: classes.dex */
public final class k extends SupportViewModel<List<? extends w4.b>, Bundle> {

    /* compiled from: NotificationViewModel.kt */
    /* loaded from: classes.dex */
    public static final class a extends l0.d {

        /* renamed from: b, reason: collision with root package name */
        public final androidx.fragment.app.e f14840b;

        /* renamed from: c, reason: collision with root package name */
        public final z<List<w4.b>> f14841c;

        public a(androidx.fragment.app.e eVar, z<List<w4.b>> zVar) {
            l.f(eVar, "context");
            l.f(zVar, "observer");
            this.f14840b = eVar;
            this.f14841c = zVar;
        }

        @Override // androidx.lifecycle.l0.d, androidx.lifecycle.l0.b
        public <T extends i0> T a(Class<T> cls) {
            l.f(cls, "modelClass");
            return new k(this.f14840b, this.f14841c);
        }
    }

    public k(androidx.fragment.app.e eVar, z<List<w4.b>> zVar) {
        l.f(eVar, "context");
        l.f(zVar, "observer");
        j newInstance = j.f14831b.newInstance();
        newInstance.registerObserver(eVar, zVar);
        setRepository(newInstance);
    }
}
