package wc;

import kotlinx.coroutines.internal.UndeliveredElementException;
import rc.n0;

/* compiled from: OnUndeliveredElement.kt */
/* loaded from: classes2.dex */
public final class v {

    /* compiled from: OnUndeliveredElement.kt */
    /* loaded from: classes2.dex */
    public static final class a extends jc.m implements ic.l<Throwable, vb.p> {

        /* renamed from: f, reason: collision with root package name */
        public final /* synthetic */ ic.l<E, vb.p> f15540f;

        /* renamed from: g, reason: collision with root package name */
        public final /* synthetic */ E f15541g;

        /* renamed from: h, reason: collision with root package name */
        public final /* synthetic */ ac.g f15542h;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        /* JADX WARN: Multi-variable type inference failed */
        public a(ic.l<? super E, vb.p> lVar, E e10, ac.g gVar) {
            super(1);
            this.f15540f = lVar;
            this.f15541g = e10;
            this.f15542h = gVar;
        }

        @Override // ic.l
        public /* bridge */ /* synthetic */ vb.p invoke(Throwable th) {
            invoke2(th);
            return vb.p.f15031a;
        }

        /* renamed from: invoke, reason: avoid collision after fix types in other method */
        public final void invoke2(Throwable th) {
            v.b(this.f15540f, this.f15541g, this.f15542h);
        }
    }

    public static final <E> ic.l<Throwable, vb.p> a(ic.l<? super E, vb.p> lVar, E e10, ac.g gVar) {
        return new a(lVar, e10, gVar);
    }

    public static final <E> void b(ic.l<? super E, vb.p> lVar, E e10, ac.g gVar) {
        UndeliveredElementException c10 = c(lVar, e10, null);
        if (c10 == null) {
            return;
        }
        n0.a(gVar, c10);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static final <E> UndeliveredElementException c(ic.l<? super E, vb.p> lVar, E e10, UndeliveredElementException undeliveredElementException) {
        try {
            lVar.invoke(e10);
        } catch (Throwable th) {
            if (undeliveredElementException != null && undeliveredElementException.getCause() != th) {
                vb.a.a(undeliveredElementException, th);
            } else {
                return new UndeliveredElementException(jc.l.m("Exception in undelivered element handler for ", e10), th);
            }
        }
        return undeliveredElementException;
    }

    public static /* synthetic */ UndeliveredElementException d(ic.l lVar, Object obj, UndeliveredElementException undeliveredElementException, int i10, Object obj2) {
        if ((i10 & 2) != 0) {
            undeliveredElementException = null;
        }
        return c(lVar, obj, undeliveredElementException);
    }
}
