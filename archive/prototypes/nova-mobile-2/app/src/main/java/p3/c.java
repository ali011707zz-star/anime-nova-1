package p3;

import cd.f;
import cd.g;
import cd.h;
import cd.i;
import cd.s;
import java.io.Closeable;
import java.io.IOException;
import java.util.Arrays;

/* compiled from: JsonReader.java */
/* loaded from: classes.dex */
public abstract class c implements Closeable {

    /* renamed from: l, reason: collision with root package name */
    public static final String[] f12003l = new String[128];

    /* renamed from: f, reason: collision with root package name */
    public int f12004f;

    /* renamed from: g, reason: collision with root package name */
    public int[] f12005g = new int[32];

    /* renamed from: h, reason: collision with root package name */
    public String[] f12006h = new String[32];

    /* renamed from: i, reason: collision with root package name */
    public int[] f12007i = new int[32];

    /* renamed from: j, reason: collision with root package name */
    public boolean f12008j;

    /* renamed from: k, reason: collision with root package name */
    public boolean f12009k;

    /* compiled from: JsonReader.java */
    /* loaded from: classes.dex */
    public static final class a {

        /* renamed from: a, reason: collision with root package name */
        public final String[] f12010a;

        /* renamed from: b, reason: collision with root package name */
        public final s f12011b;

        public a(String[] strArr, s sVar) {
            this.f12010a = strArr;
            this.f12011b = sVar;
        }

        public static a a(String... strArr) {
            try {
                i[] iVarArr = new i[strArr.length];
                f fVar = new f();
                for (int i10 = 0; i10 < strArr.length; i10++) {
                    c.w0(fVar, strArr[i10]);
                    fVar.readByte();
                    iVarArr[i10] = fVar.w0();
                }
                return new a((String[]) strArr.clone(), s.h(iVarArr));
            } catch (IOException e10) {
                throw new AssertionError(e10);
            }
        }
    }

    /* compiled from: JsonReader.java */
    /* loaded from: classes.dex */
    public enum b {
        BEGIN_ARRAY,
        END_ARRAY,
        BEGIN_OBJECT,
        END_OBJECT,
        NAME,
        STRING,
        NUMBER,
        BOOLEAN,
        NULL,
        END_DOCUMENT
    }

    static {
        for (int i10 = 0; i10 <= 31; i10++) {
            f12003l[i10] = String.format("\\u%04x", Integer.valueOf(i10));
        }
        String[] strArr = f12003l;
        strArr[34] = "\\\"";
        strArr[92] = "\\\\";
        strArr[9] = "\\t";
        strArr[8] = "\\b";
        strArr[10] = "\\n";
        strArr[13] = "\\r";
        strArr[12] = "\\f";
    }

    public static c U(h hVar) {
        return new e(hVar);
    }

    /* JADX WARN: Removed duplicated region for block: B:8:0x002b  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static void w0(g gVar, String str) throws IOException {
        int i10;
        String str2;
        String[] strArr = f12003l;
        gVar.O(34);
        int length = str.length();
        int i11 = 0;
        while (i10 < length) {
            char charAt = str.charAt(i10);
            if (charAt < 128) {
                str2 = strArr[charAt];
                i10 = str2 == null ? i10 + 1 : 0;
                if (i11 < i10) {
                    gVar.m(str, i11, i10);
                }
                gVar.t0(str2);
                i11 = i10 + 1;
            } else {
                if (charAt == 8232) {
                    str2 = "\\u2028";
                } else if (charAt == 8233) {
                    str2 = "\\u2029";
                }
                if (i11 < i10) {
                }
                gVar.t0(str2);
                i11 = i10 + 1;
            }
        }
        if (i11 < length) {
            gVar.m(str, i11, length);
        }
        gVar.O(34);
    }

    public final p3.b B0(String str) throws p3.b {
        throw new p3.b(str + " at path " + getPath());
    }

    public abstract boolean F() throws IOException;

    public abstract double G() throws IOException;

    public abstract int L() throws IOException;

    public abstract String N() throws IOException;

    public abstract String R() throws IOException;

    public abstract b V() throws IOException;

    public final void a0(int i10) {
        int i11 = this.f12004f;
        int[] iArr = this.f12005g;
        if (i11 == iArr.length) {
            if (i11 != 256) {
                this.f12005g = Arrays.copyOf(iArr, iArr.length * 2);
                String[] strArr = this.f12006h;
                this.f12006h = (String[]) Arrays.copyOf(strArr, strArr.length * 2);
                int[] iArr2 = this.f12007i;
                this.f12007i = Arrays.copyOf(iArr2, iArr2.length * 2);
            } else {
                throw new p3.a("Nesting too deep at " + getPath());
            }
        }
        int[] iArr3 = this.f12005g;
        int i12 = this.f12004f;
        this.f12004f = i12 + 1;
        iArr3[i12] = i10;
    }

    public abstract int c0(a aVar) throws IOException;

    public abstract void d() throws IOException;

    public final String getPath() {
        return d.a(this.f12004f, this.f12005g, this.f12006h, this.f12007i);
    }

    public abstract void h() throws IOException;

    public abstract void h0() throws IOException;

    public abstract void k() throws IOException;

    public abstract void k0() throws IOException;

    public abstract void x() throws IOException;

    public abstract boolean z() throws IOException;
}
