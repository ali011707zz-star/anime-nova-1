package wc;

/* compiled from: SystemProps.kt */
/* loaded from: classes2.dex */
public final /* synthetic */ class c0 {

    /* renamed from: a, reason: collision with root package name */
    public static final int f15476a = Runtime.getRuntime().availableProcessors();

    public static final int a() {
        return f15476a;
    }

    public static final String b(String str) {
        try {
            return System.getProperty(str);
        } catch (SecurityException unused) {
            return null;
        }
    }
}
