package l9;

import com.google.auto.value.AutoValue;
import l9.a;

/* compiled from: BackendRequest.java */
@AutoValue
/* loaded from: classes.dex */
public abstract class f {

    /* compiled from: BackendRequest.java */
    @AutoValue.Builder
    /* loaded from: classes.dex */
    public static abstract class a {
        public abstract f a();

        public abstract a b(Iterable<k9.h> iterable);

        public abstract a c(byte[] bArr);
    }

    public static a a() {
        return new a.b();
    }

    public abstract Iterable<k9.h> b();

    public abstract byte[] c();
}
