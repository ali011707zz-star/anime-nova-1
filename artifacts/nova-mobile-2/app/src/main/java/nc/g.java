package nc;

import jc.l;

/* compiled from: _Ranges.kt */
/* loaded from: classes2.dex */
public class g extends f {
    public static final int a(int i10, int i11) {
        return i10 < i11 ? i11 : i10;
    }

    public static final long b(long j10, long j11) {
        return j10 < j11 ? j11 : j10;
    }

    public static final int c(int i10, int i11) {
        return i10 > i11 ? i11 : i10;
    }

    public static final long d(long j10, long j11) {
        return j10 > j11 ? j11 : j10;
    }

    public static final int e(int i10, int i11, int i12) {
        if (i11 <= i12) {
            return i10 < i11 ? i11 : i10 > i12 ? i12 : i10;
        }
        throw new IllegalArgumentException("Cannot coerce value to an empty range: maximum " + i12 + " is less than minimum " + i11 + '.');
    }

    public static final int f(int i10, b<Integer> bVar) {
        l.f(bVar, "range");
        if (bVar instanceof a) {
            return ((Number) g(Integer.valueOf(i10), (a) bVar)).intValue();
        }
        if (!bVar.isEmpty()) {
            return i10 < bVar.b().intValue() ? bVar.b().intValue() : i10 > bVar.c().intValue() ? bVar.c().intValue() : i10;
        }
        throw new IllegalArgumentException("Cannot coerce value to an empty range: " + bVar + '.');
    }

    public static final <T extends Comparable<? super T>> T g(T t10, a<T> aVar) {
        l.f(t10, "<this>");
        l.f(aVar, "range");
        if (!aVar.isEmpty()) {
            return (!aVar.a(t10, aVar.b()) || aVar.a(aVar.b(), t10)) ? (!aVar.a(aVar.c(), t10) || aVar.a(t10, aVar.c())) ? t10 : aVar.c() : aVar.b();
        }
        throw new IllegalArgumentException("Cannot coerce value to an empty range: " + aVar + '.');
    }

    public static final c h(int i10, int i11) {
        return c.f11388i.a(i10, i11, -1);
    }

    public static final e i(int i10, int i11) {
        if (i11 <= Integer.MIN_VALUE) {
            return e.f11396j.a();
        }
        return new e(i10, i11 - 1);
    }
}
