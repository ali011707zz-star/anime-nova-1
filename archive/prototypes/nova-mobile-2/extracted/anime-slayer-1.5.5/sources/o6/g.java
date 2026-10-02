package o6;

import android.os.Bundle;
import androidx.lifecycle.i0;
import androidx.lifecycle.l0;
import androidx.lifecycle.z;
import io.wax911.support.custom.viewmodel.SupportViewModel;
import java.util.List;
import jc.l;

/* compiled from: BlockedUsersViewModel.kt */
/* loaded from: classes.dex */
public final class g extends SupportViewModel<List<? extends w4.a>, Bundle> {

    /* compiled from: BlockedUsersViewModel.kt */
    /* loaded from: classes.dex */
    public static final class a extends l0.d {

        /* renamed from: b, reason: collision with root package name */
        public final androidx.fragment.app.e f11791b;

        /* renamed from: c, reason: collision with root package name */
        public final z<List<w4.a>> f11792c;

        public a(androidx.fragment.app.e eVar, z<List<w4.a>> zVar) {
            l.f(eVar, "context");
            l.f(zVar, "observer");
            this.f11791b = eVar;
            this.f11792c = zVar;
        }

        @Override // androidx.lifecycle.l0.d, androidx.lifecycle.l0.b
        public <T extends i0> T a(Class<T> cls) {
            l.f(cls, "modelClass");
            return new g(this.f11791b, this.f11792c);
        }
    }

    public g(androidx.fragment.app.e eVar, z<List<w4.a>> zVar) {
        l.f(eVar, "context");
        l.f(zVar, "observer");
        f newInstance = f.f11782b.newInstance();
        newInstance.registerObserver(eVar, zVar);
        setRepository(newInstance);
    }
}
