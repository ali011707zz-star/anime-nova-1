package xd;

import android.content.Context;
import android.os.Build;

/* compiled from: ScrollerProxy.java */
/* loaded from: classes2.dex */
public abstract class d {
    public static d f(Context context) {
        int i10 = Build.VERSION.SDK_INT;
        if (i10 < 9) {
            return new c(context);
        }
        if (i10 < 14) {
            return new a(context);
        }
        return new b(context);
    }

    public abstract boolean a();

    public abstract void b(int i10, int i11, int i12, int i13, int i14, int i15, int i16, int i17, int i18, int i19);

    public abstract void c(boolean z10);

    public abstract int d();

    public abstract int e();

    public abstract boolean g();
}
