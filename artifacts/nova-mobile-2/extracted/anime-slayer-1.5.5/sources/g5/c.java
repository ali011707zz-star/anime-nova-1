package g5;

import android.os.Bundle;
import androidx.fragment.app.e;
import androidx.lifecycle.i0;
import androidx.lifecycle.l0;
import androidx.lifecycle.z;
import io.wax911.support.custom.viewmodel.SupportViewModel;
import java.util.List;
import jc.l;
import p4.q;

/* compiled from: BrowseStaffViewModel.kt */
/* loaded from: classes.dex */
public final class c extends SupportViewModel<List<? extends q>, Bundle> {

    /* compiled from: BrowseStaffViewModel.kt */
    /* loaded from: classes.dex */
    public static final class a extends l0.d {

        /* renamed from: b, reason: collision with root package name */
        public final e f6928b;

        /* renamed from: c, reason: collision with root package name */
        public final z<List<q>> f6929c;

        public a(e eVar, z<List<q>> zVar) {
            l.f(eVar, "context");
            l.f(zVar, "observer");
            this.f6928b = eVar;
            this.f6929c = zVar;
        }

        @Override // androidx.lifecycle.l0.d, androidx.lifecycle.l0.b
        public <T extends i0> T a(Class<T> cls) {
            l.f(cls, "modelClass");
            return new c(this.f6928b, this.f6929c);
        }
    }

    public c(e eVar, z<List<q>> zVar) {
        l.f(eVar, "context");
        l.f(zVar, "observer");
        b newInstance = b.f6920a.newInstance();
        newInstance.registerObserver(eVar, zVar);
        setRepository(newInstance);
    }
}
