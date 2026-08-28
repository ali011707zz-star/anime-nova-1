package cd;

/* compiled from: -Platform.kt */
/* loaded from: classes2.dex */
public final class b {
    public static final byte[] a(String str) {
        jc.l.f(str, "$this$asUtf8ToByteArray");
        byte[] bytes = str.getBytes(qc.c.f12678b);
        jc.l.e(bytes, "(this as java.lang.String).getBytes(charset)");
        return bytes;
    }

    public static final String b(byte[] bArr) {
        jc.l.f(bArr, "$this$toUtf8String");
        return new String(bArr, qc.c.f12678b);
    }
}
