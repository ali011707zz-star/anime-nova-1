package io.wax911.support.custom.viewmodel;

import android.content.Context;
import androidx.lifecycle.i0;
import io.wax911.support.base.dao.SupportRepository;
import jc.l;

/* compiled from: SupportViewModel.kt */
/* loaded from: classes.dex */
public abstract class SupportViewModel<M, K> extends i0 {
    public SupportRepository<K, M> repository;

    public final M getModelData() {
        return getRepository().getLiveData().f();
    }

    public final SupportRepository<K, M> getRepository() {
        SupportRepository<K, M> supportRepository = this.repository;
        if (supportRepository != null) {
            return supportRepository;
        }
        l.v("repository");
        return null;
    }

    public final boolean hasModelData() {
        return getRepository().getLiveData().f() != null;
    }

    @Override // androidx.lifecycle.i0
    public void onCleared() {
        getRepository().onCleared();
        super.onCleared();
    }

    public final void queryFor(K k10, Context context) {
        getRepository().requestFromNetwork(k10, context);
    }

    public final void setModelData(M m10) {
        getRepository().getLiveData().o(m10);
    }

    public final void setRepository(SupportRepository<K, M> supportRepository) {
        l.f(supportRepository, "<set-?>");
        this.repository = supportRepository;
    }
}
