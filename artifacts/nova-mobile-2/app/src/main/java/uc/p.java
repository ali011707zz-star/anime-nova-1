package uc;

import rc.c2;
import rc.u0;

/* compiled from: Errors.kt */
/* loaded from: classes2.dex */
public final /* synthetic */ class p {

    /* Flow wrapper used by catch(...). */
    public static final class a<T> implements f<T> {
        private final f<? extends T> upstream;
        private final ic.q<? super g<? super T>, ? super Throwable,
                ? super ac.d<? super vb.p>, ? extends Object> handler;

        public a(
                f<? extends T> upstream,
                ic.q<? super g<? super T>, ? super Throwable,
                        ? super ac.d<? super vb.p>, ? extends Object> handler) {
            this.upstream = upstream;
            this.handler = handler;
        }

        @Override
        public Object b(g<? super T> collector, ac.d<? super vb.p> continuation) {
            Object result = h.e(upstream, collector, continuation);
            Object suspended = bc.c.d();
            if (result == suspended) {
                return suspended;
            }
            if (result instanceof Throwable) {
                Object handled = handler.i(collector, (Throwable) result, continuation);
                if (handled == suspended) {
                    return suspended;
                }
            }
            return vb.p.f15031a;
        }
    }

    /* Collector used by catchImpl to distinguish downstream failures. */
    public static final class b<T> implements g<T> {
        private final g<? super T> downstream;
        private final jc.x<Throwable> downstreamFailure;

        public b(g<? super T> downstream, jc.x<Throwable> downstreamFailure) {
            this.downstream = downstream;
            this.downstreamFailure = downstreamFailure;
        }

        @Override
        public Object a(T value, ac.d<? super vb.p> continuation) {
            try {
                Object result = downstream.a(value, continuation);
                if (result == bc.c.d()) {
                    return result;
                }
                return vb.p.f15031a;
            } catch (Throwable throwable) {
                downstreamFailure.f9194f = throwable;
                throw throwable;
            }
        }
    }

    public static final <T> f<T> a(
            f<? extends T> upstream,
            ic.q<? super g<? super T>, ? super Throwable,
                    ? super ac.d<? super vb.p>, ? extends Object> handler) {
        return new a<>(upstream, handler);
    }

    public static final <T> Object b(
            f<? extends T> upstream,
            g<? super T> collector,
            ac.d<? super Throwable> continuation) {
        jc.x<Throwable> downstreamFailure = new jc.x<>();
        try {
            Object result = upstream.b(new b<T>(collector, downstreamFailure), continuation);
            if (result == bc.c.d()) {
                return result;
            }
        } catch (Throwable throwable) {
            Throwable downstream = downstreamFailure.f9194f;
            if (!d(throwable, downstream) && !c(throwable, continuation.getContext())) {
                throw throwable;
            }
            return throwable;
        }
        return downstreamFailure.f9194f;
    }

    public static final boolean c(Throwable throwable, ac.g context) {
        c2 job = (c2) context.get(c2.f13236c);
        if (job == null || !job.isCancelled()) {
            return false;
        }
        return d(throwable, job.a0());
    }

    public static final boolean d(Throwable first, Throwable second) {
        if (second != null) {
            if (u0.d()) {
                second = wc.z.n(second);
            }
            if (u0.d()) {
                first = wc.z.n(first);
            }
            return jc.l.a(second, first);
        }
        return false;
    }
}