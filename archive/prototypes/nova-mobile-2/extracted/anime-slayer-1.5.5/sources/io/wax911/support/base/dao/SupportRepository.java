package io.wax911.support.base.dao;

import ac.d;
import android.content.Context;
import androidx.lifecycle.q;
import androidx.lifecycle.y;
import androidx.lifecycle.z;
import bc.c;
import io.wax911.support.custom.worker.SupportRequestClient;
import jc.l;
import rc.c2;
import rc.g1;
import rc.i;
import rc.i1;
import rc.k;
import rc.v1;
import rc.y0;
import vb.p;

/* compiled from: SupportRepository.kt */
/* loaded from: classes.dex */
public abstract class SupportRepository<K, V> {
    private i1 disposableHandle;
    private final y<V> liveData = new y<>();
    private c2 repositoryJob;

    public abstract y0<p> createNetworkClientRequest(K k10, Context context);

    public V find() {
        return null;
    }

    public V find(K k10) {
        return null;
    }

    public y<V> getLiveData() {
        return this.liveData;
    }

    public abstract SupportRequestClient getNetworkClient();

    public final c2 getRepositoryJob() {
        return this.repositoryJob;
    }

    public void onCleared() {
        getNetworkClient().cancel();
        c2 c2Var = this.repositoryJob;
        if (c2Var != null) {
            c2.a.a(c2Var, null, 1, null);
        }
        i1 i1Var = this.disposableHandle;
        if (i1Var == null) {
            return;
        }
        i1Var.e();
    }

    public final Object publishResult(V v10, d<? super p> dVar) {
        Object g10 = i.g(g1.c(), new SupportRepository$publishResult$2(this, v10, null), dVar);
        return g10 == c.d() ? g10 : p.f15031a;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final void registerObserver(q qVar, z<V> zVar) {
        l.f(qVar, "context");
        l.f(zVar, "observer");
        if (getLiveData().h()) {
            toString();
        } else {
            getLiveData().i(qVar, zVar);
        }
    }

    public abstract y0<p> requestFromCache(K k10, Context context);

    public void requestFromNetwork(K k10, Context context) {
        y0 b10;
        if (context == null) {
            return;
        }
        b10 = k.b(v1.f13343f, g1.b(), null, new SupportRepository$requestFromNetwork$1$1(context, this, k10, null), 2, null);
        setRepositoryJob(b10);
        c2 repositoryJob = getRepositoryJob();
        this.disposableHandle = repositoryJob != null ? repositoryJob.h0(new SupportRepository$requestFromNetwork$1$2(this)) : null;
    }

    public final void setRepositoryJob(c2 c2Var) {
        this.repositoryJob = c2Var;
    }
}
