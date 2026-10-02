package a5;

import android.os.Bundle;
import androidx.fragment.app.e;
import androidx.lifecycle.i0;
import androidx.lifecycle.l0;
import androidx.lifecycle.z;
import io.wax911.support.custom.viewmodel.SupportViewModel;
import java.util.List;
import jc.l;

/* compiled from: ActorAnimeCharacterBrowseViewModel.kt */
/* loaded from: classes.dex */
public final class d extends SupportViewModel<List<? extends p4.c>, Bundle> {

    /* compiled from: ActorAnimeCharacterBrowseViewModel.kt */
    /* loaded from: classes.dex */
    public static final class a extends l0.d {

        /* renamed from: b, reason: collision with root package name */
        public final e f404b;

        /* renamed from: c, reason: collision with root package name */
        public final z<List<p4.c>> f405c;

        public a(e eVar, z<List<p4.c>> zVar) {
            l.f(eVar, "context");
            l.f(zVar, "observer");
            this.f404b = eVar;
            this.f405c = zVar;
        }

        @Override // androidx.lifecycle.l0.d, androidx.lifecycle.l0.b
        public <T extends i0> T a(Class<T> cls) {
            l.f(cls, "modelClass");
            return new d(this.f404b, this.f405c);
        }
    }

    public d(e eVar, z<List<p4.c>> zVar) {
        l.f(eVar, "context");
        l.f(zVar, "observer");
        c newInstance = c.f396a.newInstance();
        newInstance.registerObserver(eVar, zVar);
        setRepository(newInstance);
    }
}
