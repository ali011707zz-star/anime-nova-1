package s3;

/* compiled from: Objects.java */
/* loaded from: classes.dex */
public final class e {
    public static boolean a(Object obj, Object obj2) {
        return obj == obj2 || (obj != null && obj.equals(obj2));
    }

    public static int b(Object obj) {
        if (obj != null) {
            return obj.hashCode();
        }
        return 0;
    }

    public static <T> T c(T t10) {
        t10.getClass();
        return t10;
    }
}
