package la;

/* compiled from: JavaVersion.java */
/* loaded from: classes.dex */
public final class d {

    /* renamed from: a, reason: collision with root package name */
    public static final int f10594a = a();

    public static int a() {
        return d(System.getProperty("java.version"));
    }

    public static int b(String str) {
        try {
            StringBuilder sb2 = new StringBuilder();
            for (int i10 = 0; i10 < str.length(); i10++) {
                char charAt = str.charAt(i10);
                if (!Character.isDigit(charAt)) {
                    break;
                }
                sb2.append(charAt);
            }
            return Integer.parseInt(sb2.toString());
        } catch (NumberFormatException unused) {
            return -1;
        }
    }

    public static int c() {
        return f10594a;
    }

    public static int d(String str) {
        int f10 = f(str);
        if (f10 == -1) {
            f10 = b(str);
        }
        if (f10 == -1) {
            return 6;
        }
        return f10;
    }

    public static boolean e() {
        return f10594a >= 9;
    }

    public static int f(String str) {
        try {
            String[] split = str.split("[._]");
            int parseInt = Integer.parseInt(split[0]);
            return (parseInt != 1 || split.length <= 1) ? parseInt : Integer.parseInt(split[1]);
        } catch (NumberFormatException unused) {
            return -1;
        }
    }
}
