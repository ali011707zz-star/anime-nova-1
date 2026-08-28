package za;

import android.annotation.SuppressLint;
import java.util.Arrays;
import jc.a0;
import jc.l;

/* compiled from: TimeUtilities.kt */
/* loaded from: classes.dex */
public final class c {

    /* renamed from: a, reason: collision with root package name */
    public static final c f17454a = new c();

    @SuppressLint({"DefaultLocale"})
    public static final String a(float f10) {
        float f11 = 60;
        int i10 = (int) (f10 / f11);
        int i11 = (int) (f10 % f11);
        a0 a0Var = a0.f9170a;
        String format = String.format("%d:%02d", Arrays.copyOf(new Object[]{Integer.valueOf(i10), Integer.valueOf(i11)}, 2));
        l.e(format, "format(format, *args)");
        return format;
    }
}
