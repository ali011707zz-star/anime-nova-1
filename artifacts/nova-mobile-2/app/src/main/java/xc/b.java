package xc;

import ac.d;
import ac.g;
import bc.c;
import cc.e;
import cc.h;
import ic.l;
import ic.p;
import jc.b0;
import kotlinx.coroutines.TimeoutCancellationException;
import rc.f0;
import rc.k2;
import rc.u0;
import vb.j;
import vb.k;
import wc.e0;
import wc.y;
import wc.z;

/* compiled from: Undispatched.kt */
/* loaded from: classes2.dex */
public final class b {
    public static final <R, T> void a(p<? super R, ? super d<? super T>, ? extends Object> pVar, R r10, d<? super T> dVar) {
        d a10 = h.a(dVar);
        try {
            g context = dVar.getContext();
            Object c10 = e0.c(context, null);
            try {
                if (pVar != null) {
                    Object invoke = ((p) b0.a(pVar, 2)).invoke(r10, a10);
                    if (invoke != c.d()) {
                        j.a aVar = j.f15020f;
                        a10.resumeWith(j.a(invoke));
                        return;
                    }
                    return;
                }
                throw new NullPointerException("null cannot be cast to non-null type (R, kotlin.coroutines.Continuation<T>) -> kotlin.Any?");
            } finally {
                e0.a(context, c10);
            }
        } catch (Throwable th) {
            j.a aVar2 = j.f15020f;
            a10.resumeWith(j.a(k.a(th)));
        }
    }

    public static final <T> void b(l<? super d<? super T>, ? extends Object> lVar, d<? super T> dVar) {
        d a10 = h.a(dVar);
        try {
            if (lVar != null) {
                Object invoke = ((l) b0.a(lVar, 1)).invoke(a10);
                if (invoke != c.d()) {
                    j.a aVar = j.f15020f;
                    a10.resumeWith(j.a(invoke));
                    return;
                }
                return;
            }
            throw new NullPointerException("null cannot be cast to non-null type (kotlin.coroutines.Continuation<T>) -> kotlin.Any?");
        } catch (Throwable th) {
            j.a aVar2 = j.f15020f;
            a10.resumeWith(j.a(k.a(th)));
        }
    }

    public static final <R, T> void c(p<? super R, ? super d<? super T>, ? extends Object> pVar, R r10, d<? super T> dVar) {
        d a10 = h.a(dVar);
        try {
            if (pVar != null) {
                Object invoke = ((p) b0.a(pVar, 2)).invoke(r10, a10);
                if (invoke != c.d()) {
                    j.a aVar = j.f15020f;
                    a10.resumeWith(j.a(invoke));
                    return;
                }
                return;
            }
            throw new NullPointerException("null cannot be cast to non-null type (R, kotlin.coroutines.Continuation<T>) -> kotlin.Any?");
        } catch (Throwable th) {
            j.a aVar2 = j.f15020f;
            a10.resumeWith(j.a(k.a(th)));
        }
    }

    public static final <T, R> Object d(y<? super T> yVar, R r10, p<? super R, ? super d<? super T>, ? extends Object> pVar) {
        Object f0Var;
        Object o02;
        Throwable j10;
        try {
        } catch (Throwable th) {
            f0Var = new f0(th, false, 2, null);
        }
        if (pVar == null) {
            throw new NullPointerException("null cannot be cast to non-null type (R, kotlin.coroutines.Continuation<T>) -> kotlin.Any?");
        }
        f0Var = ((p) b0.a(pVar, 2)).invoke(r10, yVar);
        if (f0Var != c.d() && (o02 = yVar.o0(f0Var)) != k2.f13286b) {
            if (o02 instanceof f0) {
                Throwable th2 = ((f0) o02).f13254a;
                d<? super T> dVar = yVar.f15544h;
                if (!u0.d() || !(dVar instanceof e)) {
                    throw th2;
                }
                j10 = z.j(th2, (e) dVar);
                throw j10;
            }
            return k2.h(o02);
        }
        return c.d();
    }

    public static final <T, R> Object e(y<? super T> yVar, R r10, p<? super R, ? super d<? super T>, ? extends Object> pVar) {
        Object f0Var;
        Object o02;
        Throwable j10;
        Throwable j11;
        try {
        } catch (Throwable th) {
            f0Var = new f0(th, false, 2, null);
        }
        if (pVar == null) {
            throw new NullPointerException("null cannot be cast to non-null type (R, kotlin.coroutines.Continuation<T>) -> kotlin.Any?");
        }
        f0Var = ((p) b0.a(pVar, 2)).invoke(r10, yVar);
        if (f0Var != c.d() && (o02 = yVar.o0(f0Var)) != k2.f13286b) {
            if (o02 instanceof f0) {
                Throwable th2 = ((f0) o02).f13254a;
                if (((th2 instanceof TimeoutCancellationException) && ((TimeoutCancellationException) th2).f10177f == yVar) ? false : true) {
                    d<? super T> dVar = yVar.f15544h;
                    if (!u0.d() || !(dVar instanceof e)) {
                        throw th2;
                    }
                    j11 = z.j(th2, (e) dVar);
                    throw j11;
                }
                if (f0Var instanceof f0) {
                    Throwable th3 = ((f0) f0Var).f13254a;
                    d<? super T> dVar2 = yVar.f15544h;
                    if (!u0.d() || !(dVar2 instanceof e)) {
                        throw th3;
                    }
                    j10 = z.j(th3, (e) dVar2);
                    throw j10;
                }
            } else {
                f0Var = k2.h(o02);
            }
            return f0Var;
        }
        return c.d();
    }
}
