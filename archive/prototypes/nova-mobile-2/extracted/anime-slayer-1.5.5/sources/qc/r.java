package qc;

/* compiled from: StringNumberConversionsJVM.kt */
/* loaded from: classes2.dex */
public class r extends q {
    public static final Float i(String str) {
        jc.l.f(str, "<this>");
        try {
            if (k.f12704b.b(str)) {
                return Float.valueOf(Float.parseFloat(str));
            }
            return null;
        } catch (NumberFormatException unused) {
            return null;
        }
    }
}
