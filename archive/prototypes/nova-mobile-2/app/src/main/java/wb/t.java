package wb;

import java.util.ArrayList;
import java.util.Collection;
import java.util.Comparator;
import java.util.Iterator;
import java.util.LinkedHashSet;
import java.util.List;
import java.util.NoSuchElementException;
import java.util.Set;

/* compiled from: _Collections.kt */
/* loaded from: classes2.dex */
public class t extends s {

    /* compiled from: Sequences.kt */
    /* loaded from: classes2.dex */
    public static final class a<T> implements pc.c<T> {

        /* renamed from: a */
        public final /* synthetic */ Iterable f15462a;

        public a(Iterable iterable) {
            this.f15462a = iterable;
        }

        @Override // pc.c
        public Iterator<T> iterator() {
            return this.f15462a.iterator();
        }
    }

    public static final <T> T A(List<? extends T> list) {
        jc.l.f(list, "<this>");
        if (!list.isEmpty()) {
            return list.get(0);
        }
        throw new NoSuchElementException("List is empty.");
    }

    public static final <T> T B(List<? extends T> list) {
        jc.l.f(list, "<this>");
        if (list.isEmpty()) {
            return null;
        }
        return list.get(0);
    }

    public static final <T> int C(Iterable<? extends T> iterable, T t10) {
        jc.l.f(iterable, "<this>");
        if (iterable instanceof List) {
            return ((List) iterable).indexOf(t10);
        }
        int i10 = 0;
        for (T t11 : iterable) {
            if (i10 < 0) {
                l.p();
            }
            if (jc.l.a(t10, t11)) {
                return i10;
            }
            i10++;
        }
        return -1;
    }

    public static final <T, A extends Appendable> A D(Iterable<? extends T> iterable, A a10, CharSequence charSequence, CharSequence charSequence2, CharSequence charSequence3, int i10, CharSequence charSequence4, ic.l<? super T, ? extends CharSequence> lVar) {
        jc.l.f(iterable, "<this>");
        jc.l.f(a10, "buffer");
        jc.l.f(charSequence, "separator");
        jc.l.f(charSequence2, "prefix");
        jc.l.f(charSequence3, "postfix");
        jc.l.f(charSequence4, "truncated");
        a10.append(charSequence2);
        int i11 = 0;
        for (T t10 : iterable) {
            i11++;
            if (i11 > 1) {
                a10.append(charSequence);
            }
            if (i10 >= 0 && i11 > i10) {
                break;
            }
            qc.l.a(a10, t10, lVar);
        }
        if (i10 >= 0 && i11 > i10) {
            a10.append(charSequence4);
        }
        a10.append(charSequence3);
        return a10;
    }

    public static final <T> String F(Iterable<? extends T> iterable, CharSequence charSequence, CharSequence charSequence2, CharSequence charSequence3, int i10, CharSequence charSequence4, ic.l<? super T, ? extends CharSequence> lVar) {
        jc.l.f(iterable, "<this>");
        jc.l.f(charSequence, "separator");
        jc.l.f(charSequence2, "prefix");
        jc.l.f(charSequence3, "postfix");
        jc.l.f(charSequence4, "truncated");
        String sb2 = ((StringBuilder) D(iterable, new StringBuilder(), charSequence, charSequence2, charSequence3, i10, charSequence4, lVar)).toString();
        jc.l.e(sb2, "joinTo(StringBuilder(), …ed, transform).toString()");
        return sb2;
    }

    public static /* synthetic */ String G(Iterable iterable, CharSequence charSequence, CharSequence charSequence2, CharSequence charSequence3, int i10, CharSequence charSequence4, ic.l lVar, int i11, Object obj) {
        if ((i11 & 1) != 0) {
            charSequence = ", ";
        }
        CharSequence charSequence5 = (i11 & 2) != 0 ? "" : charSequence2;
        CharSequence charSequence6 = (i11 & 4) == 0 ? charSequence3 : "";
        int i12 = (i11 & 8) != 0 ? -1 : i10;
        if ((i11 & 16) != 0) {
            charSequence4 = "...";
        }
        CharSequence charSequence7 = charSequence4;
        if ((i11 & 32) != 0) {
            lVar = null;
        }
        return F(iterable, charSequence, charSequence5, charSequence6, i12, charSequence7, lVar);
    }

    public static final <T> T H(List<? extends T> list) {
        jc.l.f(list, "<this>");
        if (!list.isEmpty()) {
            return list.get(l.k(list));
        }
        throw new NoSuchElementException("List is empty.");
    }

    public static final <T extends Comparable<? super T>> T I(Iterable<? extends T> iterable) {
        jc.l.f(iterable, "<this>");
        Iterator<? extends T> it2 = iterable.iterator();
        if (!it2.hasNext()) {
            return null;
        }
        T next = it2.next();
        while (it2.hasNext()) {
            T next2 = it2.next();
            if (next.compareTo(next2) > 0) {
                next = next2;
            }
        }
        return next;
    }

    public static final <T> T J(Iterable<? extends T> iterable) {
        jc.l.f(iterable, "<this>");
        if (iterable instanceof List) {
            return (T) K((List) iterable);
        }
        Iterator<? extends T> it2 = iterable.iterator();
        if (it2.hasNext()) {
            T next = it2.next();
            if (it2.hasNext()) {
                throw new IllegalArgumentException("Collection has more than one element.");
            }
            return next;
        }
        throw new NoSuchElementException("Collection is empty.");
    }

    public static final <T> T K(List<? extends T> list) {
        jc.l.f(list, "<this>");
        int size = list.size();
        if (size == 0) {
            throw new NoSuchElementException("List is empty.");
        }
        if (size == 1) {
            return list.get(0);
        }
        throw new IllegalArgumentException("List has more than one element.");
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static final <T> List<T> L(Iterable<? extends T> iterable, Comparator<? super T> comparator) {
        jc.l.f(iterable, "<this>");
        jc.l.f(comparator, "comparator");
        if (iterable instanceof Collection) {
            Collection collection = (Collection) iterable;
            if (collection.size() <= 1) {
                return P(iterable);
            }
            Object[] array = collection.toArray(new Object[0]);
            jc.l.d(array, "null cannot be cast to non-null type kotlin.Array<T of kotlin.collections.ArraysKt__ArraysJVMKt.toTypedArray>");
            jc.l.d(array, "null cannot be cast to non-null type kotlin.Array<T of kotlin.collections.CollectionsKt___CollectionsKt.sortedWith>");
            h.m(array, comparator);
            return h.b(array);
        }
        List<T> Q = Q(iterable);
        p.s(Q, comparator);
        return Q;
    }

    public static final <T> List<T> M(Iterable<? extends T> iterable, int i10) {
        jc.l.f(iterable, "<this>");
        int i11 = 0;
        if (!(i10 >= 0)) {
            throw new IllegalArgumentException(("Requested element count " + i10 + " is less than zero.").toString());
        }
        if (i10 == 0) {
            return l.i();
        }
        if (iterable instanceof Collection) {
            if (i10 >= ((Collection) iterable).size()) {
                return P(iterable);
            }
            if (i10 == 1) {
                return k.d(z(iterable));
            }
        }
        ArrayList arrayList = new ArrayList(i10);
        Iterator<? extends T> it2 = iterable.iterator();
        while (it2.hasNext()) {
            arrayList.add(it2.next());
            i11++;
            if (i11 == i10) {
                break;
            }
        }
        return l.n(arrayList);
    }

    public static final <T, C extends Collection<? super T>> C N(Iterable<? extends T> iterable, C c10) {
        jc.l.f(iterable, "<this>");
        jc.l.f(c10, "destination");
        Iterator<? extends T> it2 = iterable.iterator();
        while (it2.hasNext()) {
            c10.add(it2.next());
        }
        return c10;
    }

    public static final int[] O(Collection<Integer> collection) {
        jc.l.f(collection, "<this>");
        int[] iArr = new int[collection.size()];
        Iterator<Integer> it2 = collection.iterator();
        int i10 = 0;
        while (it2.hasNext()) {
            iArr[i10] = it2.next().intValue();
            i10++;
        }
        return iArr;
    }

    public static final <T> List<T> P(Iterable<? extends T> iterable) {
        jc.l.f(iterable, "<this>");
        if (iterable instanceof Collection) {
            Collection collection = (Collection) iterable;
            int size = collection.size();
            if (size == 0) {
                return l.i();
            }
            if (size != 1) {
                return R(collection);
            }
            return k.d(iterable instanceof List ? ((List) iterable).get(0) : iterable.iterator().next());
        }
        return l.n(Q(iterable));
    }

    public static final <T> List<T> Q(Iterable<? extends T> iterable) {
        jc.l.f(iterable, "<this>");
        if (iterable instanceof Collection) {
            return R((Collection) iterable);
        }
        return (List) N(iterable, new ArrayList());
    }

    public static final <T> List<T> R(Collection<? extends T> collection) {
        jc.l.f(collection, "<this>");
        return new ArrayList(collection);
    }

    public static final <T> Set<T> S(Iterable<? extends T> iterable) {
        jc.l.f(iterable, "<this>");
        return iterable instanceof Collection ? new LinkedHashSet((Collection) iterable) : (Set) N(iterable, new LinkedHashSet());
    }

    public static final <T> Set<T> T(Iterable<? extends T> iterable) {
        jc.l.f(iterable, "<this>");
        if (iterable instanceof Collection) {
            Collection collection = (Collection) iterable;
            int size = collection.size();
            if (size == 0) {
                return e0.b();
            }
            if (size != 1) {
                return (Set) N(iterable, new LinkedHashSet(b0.a(collection.size())));
            }
            return d0.a(iterable instanceof List ? ((List) iterable).get(0) : iterable.iterator().next());
        }
        return e0.c((Set) N(iterable, new LinkedHashSet()));
    }

    public static final <T> pc.c<T> w(Iterable<? extends T> iterable) {
        jc.l.f(iterable, "<this>");
        return new a(iterable);
    }

    public static final <T> boolean x(Iterable<? extends T> iterable, T t10) {
        jc.l.f(iterable, "<this>");
        if (iterable instanceof Collection) {
            return ((Collection) iterable).contains(t10);
        }
        return C(iterable, t10) >= 0;
    }

    public static final <T> List<T> y(Iterable<? extends T> iterable) {
        jc.l.f(iterable, "<this>");
        return P(S(iterable));
    }

    public static final <T> T z(Iterable<? extends T> iterable) {
        jc.l.f(iterable, "<this>");
        if (iterable instanceof List) {
            return (T) A((List) iterable);
        }
        Iterator<? extends T> it2 = iterable.iterator();
        if (it2.hasNext()) {
            return it2.next();
        }
        throw new NoSuchElementException("Collection is empty.");
    }
}
