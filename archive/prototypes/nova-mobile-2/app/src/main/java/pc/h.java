package pc;

import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import jc.l;

/* compiled from: _Sequences.kt */
/* loaded from: classes2.dex */
public class h extends g {

    /* JADX INFO: Add missing generic type declarations: [T] */
    /* compiled from: Iterables.kt */
    /* loaded from: classes2.dex */
    public static final class a<T> implements Iterable<T> {

        /* renamed from: f, reason: collision with root package name */
        public final /* synthetic */ c f12226f;

        public a(c cVar) {
            this.f12226f = cVar;
        }

        @Override // java.lang.Iterable
        public Iterator<T> iterator() {
            return this.f12226f.iterator();
        }
    }

    public static final <T> Iterable<T> d(c<? extends T> cVar) {
        l.f(cVar, "<this>");
        return new a(cVar);
    }

    public static final <T, R> c<R> e(c<? extends T> cVar, ic.l<? super T, ? extends R> lVar) {
        l.f(cVar, "<this>");
        l.f(lVar, "transform");
        return new i(cVar, lVar);
    }

    public static final <T, C extends Collection<? super T>> C f(c<? extends T> cVar, C c10) {
        l.f(cVar, "<this>");
        l.f(c10, "destination");
        Iterator<? extends T> it2 = cVar.iterator();
        while (it2.hasNext()) {
            c10.add(it2.next());
        }
        return c10;
    }

    public static final <T> List<T> g(c<? extends T> cVar) {
        l.f(cVar, "<this>");
        return wb.l.n(h(cVar));
    }

    public static final <T> List<T> h(c<? extends T> cVar) {
        l.f(cVar, "<this>");
        return (List) f(cVar, new ArrayList());
    }
}
