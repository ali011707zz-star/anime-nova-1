package k9;

import android.util.Base64;
import com.google.auto.value.AutoValue;
import k9.c;

/* compiled from: TransportContext.java */
@AutoValue
/* loaded from: classes.dex */
public abstract class m {

    /* compiled from: TransportContext.java */
    @AutoValue.Builder
    /* loaded from: classes.dex */
    public static abstract class a {
        public abstract m a();

        public abstract a b(String str);

        public abstract a c(byte[] bArr);

        public abstract a d(h9.d dVar);
    }

    public static a a() {
        return new c.b().d(h9.d.DEFAULT);
    }

    public abstract String b();

    public abstract byte[] c();

    public abstract h9.d d();

    public m e(h9.d dVar) {
        return a().b(b()).d(dVar).c(c()).a();
    }

    public final String toString() {
        Object[] objArr = new Object[3];
        objArr[0] = b();
        objArr[1] = d();
        objArr[2] = c() == null ? "" : Base64.encodeToString(c(), 2);
        return String.format("TransportContext(%s, %s, %s)", objArr);
    }
}
