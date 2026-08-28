package io.wax911.support.base.dao;

import ic.l;
import jc.m;
import rc.k;
import rc.v1;
import vb.p;

/* compiled from: SupportRepository.kt */
/* loaded from: classes.dex */
public final class SupportRepository$requestFromNetwork$1$2 extends m implements l<Throwable, p> {
    public final /* synthetic */ SupportRepository<K, V> this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public SupportRepository$requestFromNetwork$1$2(SupportRepository<K, V> supportRepository) {
        super(1);
        this.this$0 = supportRepository;
    }

    @Override // ic.l
    public /* bridge */ /* synthetic */ p invoke(Throwable th) {
        invoke2(th);
        return p.f15031a;
    }

    /* renamed from: invoke, reason: avoid collision after fix types in other method */
    public final void invoke2(Throwable th) {
        if (th == null) {
            return;
        }
        SupportRepository<K, V> supportRepository = this.this$0;
        th.printStackTrace();
        try {
            k.d(v1.f13343f, null, null, new SupportRepository$requestFromNetwork$1$2$1$1(supportRepository, null), 3, null);
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }
}
