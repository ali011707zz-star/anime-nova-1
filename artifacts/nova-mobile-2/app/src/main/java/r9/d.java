package r9;

import com.google.auto.value.AutoValue;
import org.apache.http.HttpStatus;
import r9.a;

/* compiled from: EventStoreConfig.java */
@AutoValue
/* loaded from: classes.dex */
public abstract class d {

    /* renamed from: a, reason: collision with root package name */
    public static final d f13113a = a().f(10485760).d(HttpStatus.SC_OK).b(10000).c(604800000).e(81920).a();

    /* compiled from: EventStoreConfig.java */
    @AutoValue.Builder
    /* loaded from: classes.dex */
    public static abstract class a {
        public abstract d a();

        public abstract a b(int i10);

        public abstract a c(long j10);

        public abstract a d(int i10);

        public abstract a e(int i10);

        public abstract a f(long j10);
    }

    public static a a() {
        return new a.b();
    }

    public abstract int b();

    public abstract long c();

    public abstract int d();

    public abstract int e();

    public abstract long f();
}
