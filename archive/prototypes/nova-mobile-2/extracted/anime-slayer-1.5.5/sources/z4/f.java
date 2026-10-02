package z4;

import android.os.Bundle;
import androidx.lifecycle.i0;
import androidx.lifecycle.l0;
import androidx.lifecycle.z;
import io.wax911.support.custom.viewmodel.SupportViewModel;
import jc.l;

/* compiled from: ActorDetailsViewModel.kt */
/* loaded from: classes.dex */
public final class f extends SupportViewModel<p4.b, Bundle> {

    /* compiled from: ActorDetailsViewModel.kt */
    /* loaded from: classes.dex */
    public static final class a extends l0.d {

        /* renamed from: b, reason: collision with root package name */
        public final androidx.fragment.app.e f17319b;

        /* renamed from: c, reason: collision with root package name */
        public final z<p4.b> f17320c;

        public a(androidx.fragment.app.e eVar, z<p4.b> zVar) {
            l.f(eVar, "context");
            l.f(zVar, "observer");
            this.f17319b = eVar;
            this.f17320c = zVar;
        }

        @Override // androidx.lifecycle.l0.d, androidx.lifecycle.l0.b
        public <T extends i0> T a(Class<T> cls) {
            l.f(cls, "modelClass");
            return new f(this.f17319b, this.f17320c);
        }
    }

    public f(androidx.fragment.app.e eVar, z<p4.b> zVar) {
        l.f(eVar, "context");
        l.f(zVar, "observer");
        e newInstance = e.f17311a.newInstance();
        newInstance.registerObserver(eVar, zVar);
        setRepository(newInstance);
    }
}
