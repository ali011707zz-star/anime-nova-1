package j9;

import com.google.auto.value.AutoValue;
import j9.e;

/* compiled from: ClientInfo.java */
@AutoValue
/* loaded from: classes.dex */
public abstract class k {

    /* compiled from: ClientInfo.java */
    @AutoValue.Builder
    /* loaded from: classes.dex */
    public static abstract class a {
        public abstract k a();

        public abstract a b(j9.a aVar);

        public abstract a c(b bVar);
    }

    /* compiled from: ClientInfo.java */
    /* loaded from: classes.dex */
    public enum b {
        UNKNOWN(0),
        ANDROID_FIREBASE(23);


        /* renamed from: f, reason: collision with root package name */
        public final int f9035f;

        b(int i10) {
            this.f9035f = i10;
        }
    }

    public static a a() {
        return new e.b();
    }

    public abstract j9.a b();

    public abstract b c();
}
