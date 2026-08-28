package k9;

import com.google.auto.value.AutoValue;
import k9.b;

/* compiled from: SendRequest.java */
@AutoValue
/* loaded from: classes.dex */
public abstract class l {

    /* compiled from: SendRequest.java */
    @AutoValue.Builder
    /* loaded from: classes.dex */
    public static abstract class a {
        public abstract l a();

        public abstract a b(h9.b bVar);

        public abstract a c(h9.c<?> cVar);

        public abstract a d(h9.e<?, byte[]> eVar);

        public abstract a e(m mVar);

        public abstract a f(String str);
    }

    public static a a() {
        return new b.C0215b();
    }

    public abstract h9.b b();

    public abstract h9.c<?> c();

    public byte[] d() {
        return e().apply(c().b());
    }

    public abstract h9.e<?, byte[]> e();

    public abstract m f();

    public abstract String g();
}
