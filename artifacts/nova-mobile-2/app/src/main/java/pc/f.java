package pc;

import ic.l;
import java.util.Iterator;
import jc.m;

/* compiled from: Sequences.kt */
/* loaded from: classes2.dex */
public class f extends e {

    /* JADX INFO: Add missing generic type declarations: [T] */
    /* compiled from: Sequences.kt */
    /* loaded from: classes2.dex */
    public static final class a<T> implements c<T> {

        /* renamed from: a, reason: collision with root package name */
        public final /* synthetic */ Iterator f12224a;

        public a(Iterator it2) {
            this.f12224a = it2;
        }

        @Override // pc.c
        public Iterator<T> iterator() {
            return this.f12224a;
        }
    }

    /* JADX INFO: Add missing generic type declarations: [T] */
    /* compiled from: Sequences.kt */
    /* loaded from: classes2.dex */
    public static final class b<T> extends m implements l<T, T> {

        /* renamed from: f, reason: collision with root package name */
        public final /* synthetic */ ic.a<T> f12225f;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        /* JADX WARN: Multi-variable type inference failed */
        public b(ic.a<? extends T> aVar) {
            super(1);
            this.f12225f = aVar;
        }

        @Override // ic.l
        public final T invoke(T t10) {
            jc.l.f(t10, "it");
            return this.f12225f.invoke();
        }
    }

    public static final <T> c<T> a(Iterator<? extends T> it2) {
        jc.l.f(it2, "<this>");
        return b(new a(it2));
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static final <T> c<T> b(c<? extends T> cVar) {
        jc.l.f(cVar, "<this>");
        return cVar instanceof pc.a ? cVar : new pc.a(cVar);
    }

    public static final <T> c<T> c(ic.a<? extends T> aVar) {
        jc.l.f(aVar, "nextFunction");
        return b(new pc.b(aVar, new b(aVar)));
    }
}
