package f5;

import android.os.Bundle;
import androidx.lifecycle.i0;
import androidx.lifecycle.l0;
import androidx.lifecycle.z;
import io.wax911.support.custom.viewmodel.SupportViewModel;
import java.util.List;
import jc.l;
import p4.e;

/* compiled from: CharactersBrowseViewModel.kt */
/* loaded from: classes.dex */
public final class c extends SupportViewModel<List<? extends e>, Bundle> {

    /* compiled from: CharactersBrowseViewModel.kt */
    /* loaded from: classes.dex */
    public static final class a extends l0.d {

        /* renamed from: b, reason: collision with root package name */
        public final androidx.fragment.app.e f6449b;

        /* renamed from: c, reason: collision with root package name */
        public final z<List<e>> f6450c;

        public a(androidx.fragment.app.e eVar, z<List<e>> zVar) {
            l.f(eVar, "context");
            l.f(zVar, "observer");
            this.f6449b = eVar;
            this.f6450c = zVar;
        }

        @Override // androidx.lifecycle.l0.d, androidx.lifecycle.l0.b
        public <T extends i0> T a(Class<T> cls) {
            l.f(cls, "modelClass");
            return new c(this.f6449b, this.f6450c);
        }
    }

    public c(androidx.fragment.app.e eVar, z<List<e>> zVar) {
        l.f(eVar, "context");
        l.f(zVar, "observer");
        b newInstance = b.f6440a.newInstance();
        newInstance.registerObserver(eVar, zVar);
        setRepository(newInstance);
    }
}
