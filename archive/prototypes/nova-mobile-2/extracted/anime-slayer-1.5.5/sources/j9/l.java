package j9;

import com.google.auto.value.AutoValue;
import j9.f;

/* compiled from: LogEvent.java */
@AutoValue
/* loaded from: classes.dex */
public abstract class l {

    /* compiled from: LogEvent.java */
    @AutoValue.Builder
    /* loaded from: classes.dex */
    public static abstract class a {
        public abstract l a();

        public abstract a b(Integer num);

        public abstract a c(long j10);

        public abstract a d(long j10);

        public abstract a e(o oVar);

        public abstract a f(byte[] bArr);

        public abstract a g(String str);

        public abstract a h(long j10);
    }

    public static a a() {
        return new f.b();
    }

    public static a i(String str) {
        return a().g(str);
    }

    public static a j(byte[] bArr) {
        return a().f(bArr);
    }

    public abstract Integer b();

    public abstract long c();

    public abstract long d();

    public abstract o e();

    public abstract byte[] f();

    public abstract String g();

    public abstract long h();
}
