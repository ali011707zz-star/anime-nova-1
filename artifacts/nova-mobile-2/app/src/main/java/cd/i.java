package cd;

import java.io.Serializable;
import java.nio.charset.Charset;
import java.security.MessageDigest;
import java.util.Arrays;

/* compiled from: ByteString.kt */
/* loaded from: classes2.dex */
public class i implements Serializable, Comparable<i> {

    /* renamed from: f, reason: collision with root package name */
    public transient int f3919f;

    /* renamed from: g, reason: collision with root package name */
    public transient String f3920g;

    /* renamed from: h, reason: collision with root package name */
    public final byte[] f3921h;

    /* renamed from: j, reason: collision with root package name */
    public static final a f3918j = new a(null);

    /* renamed from: i, reason: collision with root package name */
    public static final i f3917i = new i(new byte[0]);

    /* compiled from: ByteString.kt */
    /* loaded from: classes2.dex */
    public static final class a {
        public a() {
        }

        public final i a(String str) {
            jc.l.f(str, "$this$decodeBase64");
            byte[] a10 = cd.a.a(str);
            if (a10 != null) {
                return new i(a10);
            }
            return null;
        }

        public final i b(String str) {
            int e10;
            int e11;
            jc.l.f(str, "$this$decodeHex");
            if (str.length() % 2 == 0) {
                int length = str.length() / 2;
                byte[] bArr = new byte[length];
                for (int i10 = 0; i10 < length; i10++) {
                    int i11 = i10 * 2;
                    e10 = dd.b.e(str.charAt(i11));
                    e11 = dd.b.e(str.charAt(i11 + 1));
                    bArr[i10] = (byte) ((e10 << 4) + e11);
                }
                return new i(bArr);
            }
            throw new IllegalArgumentException(("Unexpected hex string: " + str).toString());
        }

        public final i c(String str, Charset charset) {
            jc.l.f(str, "$this$encode");
            jc.l.f(charset, "charset");
            byte[] bytes = str.getBytes(charset);
            jc.l.e(bytes, "(this as java.lang.String).getBytes(charset)");
            return new i(bytes);
        }

        public final i d(String str) {
            jc.l.f(str, "$this$encodeUtf8");
            i iVar = new i(b.a(str));
            iVar.v(str);
            return iVar;
        }

        public final i e(byte... bArr) {
            jc.l.f(bArr, "data");
            byte[] copyOf = Arrays.copyOf(bArr, bArr.length);
            jc.l.e(copyOf, "java.util.Arrays.copyOf(this, size)");
            return new i(copyOf);
        }

        public final i f(byte[] bArr, int i10, int i11) {
            jc.l.f(bArr, "$this$toByteString");
            c.b(bArr.length, i10, i11);
            return new i(wb.h.g(bArr, i10, i11 + i10));
        }

        public /* synthetic */ a(jc.g gVar) {
            this();
        }
    }

    public i(byte[] bArr) {
        jc.l.f(bArr, "data");
        this.f3921h = bArr;
    }

    public static final i c(String str) {
        return f3918j.a(str);
    }

    public static final i d(String str) {
        return f3918j.b(str);
    }

    public static final i f(String str, Charset charset) {
        return f3918j.c(str, charset);
    }

    public static final i g(String str) {
        return f3918j.d(str);
    }

    public static final i q(byte... bArr) {
        return f3918j.e(bArr);
    }

    public static final i r(byte[] bArr, int i10, int i11) {
        return f3918j.f(bArr, i10, i11);
    }

    public i A() {
        byte b10;
        for (int i10 = 0; i10 < i().length; i10++) {
            byte b11 = i()[i10];
            byte b12 = (byte) 65;
            if (b11 >= b12 && b11 <= (b10 = (byte) 90)) {
                byte[] i11 = i();
                byte[] copyOf = Arrays.copyOf(i11, i11.length);
                jc.l.e(copyOf, "java.util.Arrays.copyOf(this, size)");
                copyOf[i10] = (byte) (b11 + 32);
                for (int i12 = i10 + 1; i12 < copyOf.length; i12++) {
                    byte b13 = copyOf[i12];
                    if (b13 >= b12 && b13 <= b10) {
                        copyOf[i12] = (byte) (b13 + 32);
                    }
                }
                return new i(copyOf);
            }
        }
        return this;
    }

    public byte[] B() {
        byte[] i10 = i();
        byte[] copyOf = Arrays.copyOf(i10, i10.length);
        jc.l.e(copyOf, "java.util.Arrays.copyOf(this, size)");
        return copyOf;
    }

    public String C() {
        String l10 = l();
        if (l10 != null) {
            return l10;
        }
        String b10 = b.b(n());
        v(b10);
        return b10;
    }

    public void D(f fVar, int i10, int i11) {
        jc.l.f(fVar, "buffer");
        dd.b.d(this, fVar, i10, i11);
    }

    public String a() {
        return cd.a.c(i(), null, 1, null);
    }

    /* JADX WARN: Removed duplicated region for block: B:11:0x0030 A[RETURN, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:9:0x0032 A[ORIG_RETURN, RETURN] */
    @Override // java.lang.Comparable
    /* renamed from: b, reason: merged with bridge method [inline-methods] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public int compareTo(i iVar) {
        jc.l.f(iVar, "other");
        int y10 = y();
        int y11 = iVar.y();
        int min = Math.min(y10, y11);
        for (int i10 = 0; i10 < min; i10++) {
            int h10 = h(i10) & 255;
            int h11 = iVar.h(i10) & 255;
            if (h10 != h11) {
                return h10 < h11 ? -1 : 1;
            }
        }
        if (y10 == y11) {
            return 0;
        }
        if (y10 < y11) {
        }
    }

    public i e(String str) {
        jc.l.f(str, "algorithm");
        MessageDigest messageDigest = MessageDigest.getInstance(str);
        messageDigest.update(this.f3921h, 0, y());
        byte[] digest = messageDigest.digest();
        jc.l.e(digest, "digestBytes");
        return new i(digest);
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj instanceof i) {
            i iVar = (i) obj;
            if (iVar.y() == i().length && iVar.t(0, i(), 0, i().length)) {
                return true;
            }
        }
        return false;
    }

    public final byte h(int i10) {
        return o(i10);
    }

    public int hashCode() {
        int j10 = j();
        if (j10 != 0) {
            return j10;
        }
        int hashCode = Arrays.hashCode(i());
        u(hashCode);
        return hashCode;
    }

    public final byte[] i() {
        return this.f3921h;
    }

    public final int j() {
        return this.f3919f;
    }

    public int k() {
        return i().length;
    }

    public final String l() {
        return this.f3920g;
    }

    public String m() {
        char[] cArr = new char[i().length * 2];
        int i10 = 0;
        for (byte b10 : i()) {
            int i11 = i10 + 1;
            cArr[i10] = dd.b.f()[(b10 >> 4) & 15];
            i10 = i11 + 1;
            cArr[i11] = dd.b.f()[b10 & 15];
        }
        return new String(cArr);
    }

    public byte[] n() {
        return i();
    }

    public byte o(int i10) {
        return i()[i10];
    }

    public final i p() {
        return e("MD5");
    }

    public boolean s(int i10, i iVar, int i11, int i12) {
        jc.l.f(iVar, "other");
        return iVar.t(i11, i(), i10, i12);
    }

    public boolean t(int i10, byte[] bArr, int i11, int i12) {
        jc.l.f(bArr, "other");
        return i10 >= 0 && i10 <= i().length - i12 && i11 >= 0 && i11 <= bArr.length - i12 && c.a(i(), i10, bArr, i11, i12);
    }

    public String toString() {
        int c10;
        if (i().length == 0) {
            return "[size=0]";
        }
        c10 = dd.b.c(i(), 64);
        if (c10 == -1) {
            if (i().length <= 64) {
                return "[hex=" + m() + ']';
            }
            StringBuilder sb2 = new StringBuilder();
            sb2.append("[size=");
            sb2.append(i().length);
            sb2.append(" hex=");
            if (64 <= i().length) {
                sb2.append((64 == i().length ? this : new i(wb.h.g(i(), 0, 64))).m());
                sb2.append("…]");
                return sb2.toString();
            }
            throw new IllegalArgumentException(("endIndex > length(" + i().length + ')').toString());
        }
        String C = C();
        if (C != null) {
            String substring = C.substring(0, c10);
            jc.l.e(substring, "(this as java.lang.Strin…ing(startIndex, endIndex)");
            String v10 = qc.t.v(qc.t.v(qc.t.v(substring, "\\", "\\\\", false, 4, null), "\n", "\\n", false, 4, null), "\r", "\\r", false, 4, null);
            if (c10 < C.length()) {
                return "[size=" + i().length + " text=" + v10 + "…]";
            }
            return "[text=" + v10 + ']';
        }
        throw new NullPointerException("null cannot be cast to non-null type java.lang.String");
    }

    public final void u(int i10) {
        this.f3919f = i10;
    }

    public final void v(String str) {
        this.f3920g = str;
    }

    public final i w() {
        return e("SHA-1");
    }

    public final i x() {
        return e("SHA-256");
    }

    public final int y() {
        return k();
    }

    public final boolean z(i iVar) {
        jc.l.f(iVar, "prefix");
        return s(0, iVar, 0, iVar.y());
    }
}
