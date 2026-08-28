package q9;

import android.app.job.JobInfo;
import com.google.auto.value.AutoValue;
import java.util.Arrays;
import java.util.Collections;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Map;
import java.util.Set;
import q9.d;

/* compiled from: SchedulerConfig.java */
@AutoValue
/* loaded from: classes.dex */
public abstract class g {

    /* compiled from: SchedulerConfig.java */
    /* loaded from: classes.dex */
    public static class a {

        /* renamed from: a, reason: collision with root package name */
        public t9.a f12567a;

        /* renamed from: b, reason: collision with root package name */
        public Map<h9.d, b> f12568b = new HashMap();

        public a a(h9.d dVar, b bVar) {
            this.f12568b.put(dVar, bVar);
            return this;
        }

        public g b() {
            if (this.f12567a != null) {
                if (this.f12568b.keySet().size() >= h9.d.values().length) {
                    Map<h9.d, b> map = this.f12568b;
                    this.f12568b = new HashMap();
                    return g.d(this.f12567a, map);
                }
                throw new IllegalStateException("Not all priorities have been configured");
            }
            throw new NullPointerException("missing required property: clock");
        }

        public a c(t9.a aVar) {
            this.f12567a = aVar;
            return this;
        }
    }

    /* compiled from: SchedulerConfig.java */
    @AutoValue
    /* loaded from: classes.dex */
    public static abstract class b {

        /* compiled from: SchedulerConfig.java */
        @AutoValue.Builder
        /* loaded from: classes.dex */
        public static abstract class a {
            public abstract b a();

            public abstract a b(long j10);

            public abstract a c(Set<c> set);

            public abstract a d(long j10);
        }

        public static a a() {
            return new d.b().c(Collections.emptySet());
        }

        public abstract long b();

        public abstract Set<c> c();

        public abstract long d();
    }

    /* compiled from: SchedulerConfig.java */
    /* loaded from: classes.dex */
    public enum c {
        NETWORK_UNMETERED,
        DEVICE_IDLE,
        DEVICE_CHARGING
    }

    public static a b() {
        return new a();
    }

    public static g d(t9.a aVar, Map<h9.d, b> map) {
        return new q9.c(aVar, map);
    }

    public static g f(t9.a aVar) {
        return b().a(h9.d.DEFAULT, b.a().b(30000L).d(86400000L).a()).a(h9.d.HIGHEST, b.a().b(1000L).d(86400000L).a()).a(h9.d.VERY_LOW, b.a().b(86400000L).d(86400000L).c(i(c.NETWORK_UNMETERED, c.DEVICE_IDLE)).a()).c(aVar).b();
    }

    public static <T> Set<T> i(T... tArr) {
        return Collections.unmodifiableSet(new HashSet(Arrays.asList(tArr)));
    }

    public final long a(int i10, long j10) {
        int i11 = i10 - 1;
        double max = Math.max(1.0d, Math.log(10000.0d) / Math.log((j10 > 1 ? j10 : 2L) * i11));
        double pow = Math.pow(3.0d, i11);
        double d10 = j10;
        Double.isNaN(d10);
        return (long) (pow * d10 * max);
    }

    public JobInfo.Builder c(JobInfo.Builder builder, h9.d dVar, long j10, int i10) {
        builder.setMinimumLatency(g(dVar, j10, i10));
        j(builder, h().get(dVar).c());
        return builder;
    }

    public abstract t9.a e();

    public long g(h9.d dVar, long j10, int i10) {
        long a10 = j10 - e().a();
        b bVar = h().get(dVar);
        return Math.min(Math.max(a(i10, bVar.b()), a10), bVar.d());
    }

    public abstract Map<h9.d, b> h();

    public final void j(JobInfo.Builder builder, Set<c> set) {
        if (set.contains(c.NETWORK_UNMETERED)) {
            builder.setRequiredNetworkType(2);
        } else {
            builder.setRequiredNetworkType(1);
        }
        if (set.contains(c.DEVICE_CHARGING)) {
            builder.setRequiresCharging(true);
        }
        if (set.contains(c.DEVICE_IDLE)) {
            builder.setRequiresDeviceIdle(true);
        }
    }
}
