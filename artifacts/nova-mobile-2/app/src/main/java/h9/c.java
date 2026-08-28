package h9;

import com.google.auto.value.AutoValue;

/* compiled from: Event.java */
@AutoValue
/* loaded from: classes.dex */
public abstract class c<T> {
    public static <T> c<T> d(T t10) {
        return new a(null, t10, d.VERY_LOW);
    }

    public static <T> c<T> e(T t10) {
        return new a(null, t10, d.HIGHEST);
    }

    public abstract Integer a();

    public abstract T b();

    public abstract d c();
}
