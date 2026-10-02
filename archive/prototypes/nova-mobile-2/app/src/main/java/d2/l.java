package d2;

/* compiled from: Logger.java */
/* loaded from: classes.dex */
public abstract class l {

    /* renamed from: a, reason: collision with root package name */
    public static l f5576a = null;

    /* renamed from: b, reason: collision with root package name */
    public static final int f5577b = 20;

    /* compiled from: Logger.java */
    /* loaded from: classes.dex */
    public static class a extends l {

        /* renamed from: c, reason: collision with root package name */
        public int f5578c;

        public a(int i10) {
            super(i10);
            this.f5578c = i10;
        }

        @Override // d2.l
        public void a(String str, String str2, Throwable... thArr) {
            if (this.f5578c > 3 || thArr == null || thArr.length < 1) {
                return;
            }
            Throwable th = thArr[0];
        }

        @Override // d2.l
        public void b(String str, String str2, Throwable... thArr) {
            if (this.f5578c > 6 || thArr == null || thArr.length < 1) {
                return;
            }
            Throwable th = thArr[0];
        }

        @Override // d2.l
        public void d(String str, String str2, Throwable... thArr) {
            if (this.f5578c > 4 || thArr == null || thArr.length < 1) {
                return;
            }
            Throwable th = thArr[0];
        }

        @Override // d2.l
        public void g(String str, String str2, Throwable... thArr) {
            if (this.f5578c > 2 || thArr == null || thArr.length < 1) {
                return;
            }
            Throwable th = thArr[0];
        }

        @Override // d2.l
        public void h(String str, String str2, Throwable... thArr) {
            if (this.f5578c > 5 || thArr == null || thArr.length < 1) {
                return;
            }
            Throwable th = thArr[0];
        }
    }

    public l(int i10) {
    }

    public static synchronized l c() {
        l lVar;
        synchronized (l.class) {
            if (f5576a == null) {
                f5576a = new a(3);
            }
            lVar = f5576a;
        }
        return lVar;
    }

    public static synchronized void e(l lVar) {
        synchronized (l.class) {
            f5576a = lVar;
        }
    }

    public static String f(String str) {
        int length = str.length();
        StringBuilder sb2 = new StringBuilder(23);
        sb2.append("WM-");
        int i10 = f5577b;
        if (length >= i10) {
            sb2.append(str.substring(0, i10));
        } else {
            sb2.append(str);
        }
        return sb2.toString();
    }

    public abstract void a(String str, String str2, Throwable... thArr);

    public abstract void b(String str, String str2, Throwable... thArr);

    public abstract void d(String str, String str2, Throwable... thArr);

    public abstract void g(String str, String str2, Throwable... thArr);

    public abstract void h(String str, String str2, Throwable... thArr);
}
