package h0;

import android.graphics.Path;
import com.google.android.material.internal.StaticLayoutBuilderCompat;
import com.google.android.material.shadow.ShadowDrawableWrapper;
import java.util.ArrayList;

/* compiled from: PathParser.java */
/* loaded from: classes.dex */
public class g {

    /* compiled from: PathParser.java */
    /* loaded from: classes.dex */
    public static class a {

        /* renamed from: a, reason: collision with root package name */
        public int f7157a;

        /* renamed from: b, reason: collision with root package name */
        public boolean f7158b;
    }

    public static void a(ArrayList<b> arrayList, char c10, float[] fArr) {
        arrayList.add(new b(c10, fArr));
    }

    public static boolean b(b[] bVarArr, b[] bVarArr2) {
        if (bVarArr == null || bVarArr2 == null || bVarArr.length != bVarArr2.length) {
            return false;
        }
        for (int i10 = 0; i10 < bVarArr.length; i10++) {
            if (bVarArr[i10].f7159a != bVarArr2[i10].f7159a || bVarArr[i10].f7160b.length != bVarArr2[i10].f7160b.length) {
                return false;
            }
        }
        return true;
    }

    public static float[] c(float[] fArr, int i10, int i11) {
        if (i10 <= i11) {
            int length = fArr.length;
            if (i10 >= 0 && i10 <= length) {
                int i12 = i11 - i10;
                int min = Math.min(i12, length - i10);
                float[] fArr2 = new float[i12];
                System.arraycopy(fArr, i10, fArr2, 0, min);
                return fArr2;
            }
            throw new ArrayIndexOutOfBoundsException();
        }
        throw new IllegalArgumentException();
    }

    public static b[] d(String str) {
        if (str == null) {
            return null;
        }
        ArrayList arrayList = new ArrayList();
        int i10 = 1;
        int i11 = 0;
        while (i10 < str.length()) {
            int i12 = i(str, i10);
            String trim = str.substring(i11, i12).trim();
            if (trim.length() > 0) {
                a(arrayList, trim.charAt(0), h(trim));
            }
            i11 = i12;
            i10 = i12 + 1;
        }
        if (i10 - i11 == 1 && i11 < str.length()) {
            a(arrayList, str.charAt(i11), new float[0]);
        }
        return (b[]) arrayList.toArray(new b[arrayList.size()]);
    }

    public static Path e(String str) {
        Path path = new Path();
        b[] d10 = d(str);
        if (d10 == null) {
            return null;
        }
        try {
            b.e(d10, path);
            return path;
        } catch (RuntimeException e10) {
            throw new RuntimeException("Error in parsing " + str, e10);
        }
    }

    public static b[] f(b[] bVarArr) {
        if (bVarArr == null) {
            return null;
        }
        b[] bVarArr2 = new b[bVarArr.length];
        for (int i10 = 0; i10 < bVarArr.length; i10++) {
            bVarArr2[i10] = new b(bVarArr[i10]);
        }
        return bVarArr2;
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Failed to find 'out' block for switch in B:10:0x001e. Please report as an issue. */
    /* JADX WARN: Removed duplicated region for block: B:14:0x003a A[LOOP:0: B:2:0x0007->B:14:0x003a, LOOP_END] */
    /* JADX WARN: Removed duplicated region for block: B:15:0x003d A[SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static void g(String str, int i10, a aVar) {
        aVar.f7158b = false;
        boolean z10 = false;
        boolean z11 = false;
        boolean z12 = false;
        for (int i11 = i10; i11 < str.length(); i11++) {
            char charAt = str.charAt(i11);
            if (charAt != ' ') {
                if (charAt != 'E' && charAt != 'e') {
                    switch (charAt) {
                        case ',':
                            break;
                        case '-':
                            if (i11 != i10 && !z10) {
                                aVar.f7158b = true;
                                break;
                            }
                            z10 = false;
                            break;
                        case '.':
                            if (z11) {
                                aVar.f7158b = true;
                                break;
                            } else {
                                z10 = false;
                                z11 = true;
                                break;
                            }
                        default:
                            z10 = false;
                            break;
                    }
                } else {
                    z10 = true;
                }
                if (!z12) {
                    aVar.f7157a = i11;
                }
            }
            z10 = false;
            z12 = true;
            if (!z12) {
            }
        }
        aVar.f7157a = i11;
    }

    public static float[] h(String str) {
        if (str.charAt(0) == 'z' || str.charAt(0) == 'Z') {
            return new float[0];
        }
        try {
            float[] fArr = new float[str.length()];
            a aVar = new a();
            int length = str.length();
            int i10 = 1;
            int i11 = 0;
            while (i10 < length) {
                g(str, i10, aVar);
                int i12 = aVar.f7157a;
                if (i10 < i12) {
                    fArr[i11] = Float.parseFloat(str.substring(i10, i12));
                    i11++;
                }
                i10 = aVar.f7158b ? i12 : i12 + 1;
            }
            return c(fArr, 0, i11);
        } catch (NumberFormatException e10) {
            throw new RuntimeException("error in parsing \"" + str + "\"", e10);
        }
    }

    public static int i(String str, int i10) {
        while (i10 < str.length()) {
            char charAt = str.charAt(i10);
            if (((charAt - 'A') * (charAt - 'Z') <= 0 || (charAt - 'a') * (charAt - 'z') <= 0) && charAt != 'e' && charAt != 'E') {
                return i10;
            }
            i10++;
        }
        return i10;
    }

    public static void j(b[] bVarArr, b[] bVarArr2) {
        for (int i10 = 0; i10 < bVarArr2.length; i10++) {
            bVarArr[i10].f7159a = bVarArr2[i10].f7159a;
            for (int i11 = 0; i11 < bVarArr2[i10].f7160b.length; i11++) {
                bVarArr[i10].f7160b[i11] = bVarArr2[i10].f7160b[i11];
            }
        }
    }

    /* compiled from: PathParser.java */
    /* loaded from: classes.dex */
    public static class b {

        /* renamed from: a, reason: collision with root package name */
        public char f7159a;

        /* renamed from: b, reason: collision with root package name */
        public float[] f7160b;

        public b(char c10, float[] fArr) {
            this.f7159a = c10;
            this.f7160b = fArr;
        }

        /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
        public static void a(Path path, float[] fArr, char c10, char c11, float[] fArr2) {
            int i10;
            int i11;
            float f10;
            float f11;
            float f12;
            float f13;
            float f14;
            float f15;
            float f16;
            float f17;
            char c12 = c11;
            float f18 = fArr[0];
            float f19 = fArr[1];
            float f20 = fArr[2];
            float f21 = fArr[3];
            float f22 = fArr[4];
            float f23 = fArr[5];
            switch (c12) {
                case 'A':
                case 'a':
                    i10 = 7;
                    break;
                case 'C':
                case 'c':
                    i10 = 6;
                    break;
                case 'H':
                case 'V':
                case 'h':
                case 'v':
                    i10 = 1;
                    break;
                case 'L':
                case 'M':
                case 'T':
                case 'l':
                case 'm':
                case 't':
                default:
                    i10 = 2;
                    break;
                case 'Q':
                case 'S':
                case 'q':
                case 's':
                    i10 = 4;
                    break;
                case 'Z':
                case 'z':
                    path.close();
                    path.moveTo(f22, f23);
                    f18 = f22;
                    f20 = f18;
                    f19 = f23;
                    f21 = f19;
                    i10 = 2;
                    break;
            }
            float f24 = f18;
            float f25 = f19;
            float f26 = f22;
            float f27 = f23;
            int i12 = 0;
            char c13 = c10;
            while (i12 < fArr2.length) {
                if (c12 != 'A') {
                    if (c12 == 'C') {
                        i11 = i12;
                        int i13 = i11 + 2;
                        int i14 = i11 + 3;
                        int i15 = i11 + 4;
                        int i16 = i11 + 5;
                        path.cubicTo(fArr2[i11 + 0], fArr2[i11 + 1], fArr2[i13], fArr2[i14], fArr2[i15], fArr2[i16]);
                        f24 = fArr2[i15];
                        float f28 = fArr2[i16];
                        float f29 = fArr2[i13];
                        float f30 = fArr2[i14];
                        f25 = f28;
                        f21 = f30;
                        f20 = f29;
                    } else if (c12 == 'H') {
                        i11 = i12;
                        int i17 = i11 + 0;
                        path.lineTo(fArr2[i17], f25);
                        f24 = fArr2[i17];
                    } else if (c12 == 'Q') {
                        i11 = i12;
                        int i18 = i11 + 0;
                        int i19 = i11 + 1;
                        int i20 = i11 + 2;
                        int i21 = i11 + 3;
                        path.quadTo(fArr2[i18], fArr2[i19], fArr2[i20], fArr2[i21]);
                        float f31 = fArr2[i18];
                        float f32 = fArr2[i19];
                        f24 = fArr2[i20];
                        f25 = fArr2[i21];
                        f20 = f31;
                        f21 = f32;
                    } else if (c12 == 'V') {
                        i11 = i12;
                        int i22 = i11 + 0;
                        path.lineTo(f24, fArr2[i22]);
                        f25 = fArr2[i22];
                    } else if (c12 != 'a') {
                        if (c12 != 'c') {
                            if (c12 == 'h') {
                                int i23 = i12 + 0;
                                path.rLineTo(fArr2[i23], StaticLayoutBuilderCompat.DEFAULT_LINE_SPACING_ADD);
                                f24 += fArr2[i23];
                            } else if (c12 != 'q') {
                                if (c12 == 'v') {
                                    int i24 = i12 + 0;
                                    path.rLineTo(StaticLayoutBuilderCompat.DEFAULT_LINE_SPACING_ADD, fArr2[i24]);
                                    f13 = fArr2[i24];
                                } else if (c12 == 'L') {
                                    int i25 = i12 + 0;
                                    int i26 = i12 + 1;
                                    path.lineTo(fArr2[i25], fArr2[i26]);
                                    f24 = fArr2[i25];
                                    f25 = fArr2[i26];
                                } else if (c12 == 'M') {
                                    int i27 = i12 + 0;
                                    f24 = fArr2[i27];
                                    int i28 = i12 + 1;
                                    f25 = fArr2[i28];
                                    if (i12 > 0) {
                                        path.lineTo(fArr2[i27], fArr2[i28]);
                                    } else {
                                        path.moveTo(fArr2[i27], fArr2[i28]);
                                        i11 = i12;
                                        f27 = f25;
                                        f26 = f24;
                                    }
                                } else if (c12 == 'S') {
                                    if (c13 == 'c' || c13 == 's' || c13 == 'C' || c13 == 'S') {
                                        f24 = (f24 * 2.0f) - f20;
                                        f25 = (f25 * 2.0f) - f21;
                                    }
                                    float f33 = f25;
                                    int i29 = i12 + 0;
                                    int i30 = i12 + 1;
                                    int i31 = i12 + 2;
                                    int i32 = i12 + 3;
                                    path.cubicTo(f24, f33, fArr2[i29], fArr2[i30], fArr2[i31], fArr2[i32]);
                                    f10 = fArr2[i29];
                                    f11 = fArr2[i30];
                                    f24 = fArr2[i31];
                                    f25 = fArr2[i32];
                                    f20 = f10;
                                    f21 = f11;
                                } else if (c12 == 'T') {
                                    if (c13 == 'q' || c13 == 't' || c13 == 'Q' || c13 == 'T') {
                                        f24 = (f24 * 2.0f) - f20;
                                        f25 = (f25 * 2.0f) - f21;
                                    }
                                    int i33 = i12 + 0;
                                    int i34 = i12 + 1;
                                    path.quadTo(f24, f25, fArr2[i33], fArr2[i34]);
                                    float f34 = fArr2[i33];
                                    float f35 = fArr2[i34];
                                    i11 = i12;
                                    f21 = f25;
                                    f20 = f24;
                                    f24 = f34;
                                    f25 = f35;
                                } else if (c12 == 'l') {
                                    int i35 = i12 + 0;
                                    int i36 = i12 + 1;
                                    path.rLineTo(fArr2[i35], fArr2[i36]);
                                    f24 += fArr2[i35];
                                    f13 = fArr2[i36];
                                } else if (c12 == 'm') {
                                    int i37 = i12 + 0;
                                    f24 += fArr2[i37];
                                    int i38 = i12 + 1;
                                    f25 += fArr2[i38];
                                    if (i12 > 0) {
                                        path.rLineTo(fArr2[i37], fArr2[i38]);
                                    } else {
                                        path.rMoveTo(fArr2[i37], fArr2[i38]);
                                        i11 = i12;
                                        f27 = f25;
                                        f26 = f24;
                                    }
                                } else if (c12 == 's') {
                                    if (c13 == 'c' || c13 == 's' || c13 == 'C' || c13 == 'S') {
                                        float f36 = f24 - f20;
                                        f14 = f25 - f21;
                                        f15 = f36;
                                    } else {
                                        f15 = StaticLayoutBuilderCompat.DEFAULT_LINE_SPACING_ADD;
                                        f14 = StaticLayoutBuilderCompat.DEFAULT_LINE_SPACING_ADD;
                                    }
                                    int i39 = i12 + 0;
                                    int i40 = i12 + 1;
                                    int i41 = i12 + 2;
                                    int i42 = i12 + 3;
                                    path.rCubicTo(f15, f14, fArr2[i39], fArr2[i40], fArr2[i41], fArr2[i42]);
                                    f10 = fArr2[i39] + f24;
                                    f11 = fArr2[i40] + f25;
                                    f24 += fArr2[i41];
                                    f12 = fArr2[i42];
                                } else if (c12 == 't') {
                                    if (c13 == 'q' || c13 == 't' || c13 == 'Q' || c13 == 'T') {
                                        f16 = f24 - f20;
                                        f17 = f25 - f21;
                                    } else {
                                        f17 = StaticLayoutBuilderCompat.DEFAULT_LINE_SPACING_ADD;
                                        f16 = StaticLayoutBuilderCompat.DEFAULT_LINE_SPACING_ADD;
                                    }
                                    int i43 = i12 + 0;
                                    int i44 = i12 + 1;
                                    path.rQuadTo(f16, f17, fArr2[i43], fArr2[i44]);
                                    float f37 = f16 + f24;
                                    float f38 = f17 + f25;
                                    f24 += fArr2[i43];
                                    f25 += fArr2[i44];
                                    f21 = f38;
                                    f20 = f37;
                                }
                                f25 += f13;
                            } else {
                                int i45 = i12 + 0;
                                int i46 = i12 + 1;
                                int i47 = i12 + 2;
                                int i48 = i12 + 3;
                                path.rQuadTo(fArr2[i45], fArr2[i46], fArr2[i47], fArr2[i48]);
                                f10 = fArr2[i45] + f24;
                                f11 = fArr2[i46] + f25;
                                f24 += fArr2[i47];
                                f12 = fArr2[i48];
                            }
                            i11 = i12;
                        } else {
                            int i49 = i12 + 2;
                            int i50 = i12 + 3;
                            int i51 = i12 + 4;
                            int i52 = i12 + 5;
                            path.rCubicTo(fArr2[i12 + 0], fArr2[i12 + 1], fArr2[i49], fArr2[i50], fArr2[i51], fArr2[i52]);
                            f10 = fArr2[i49] + f24;
                            f11 = fArr2[i50] + f25;
                            f24 += fArr2[i51];
                            f12 = fArr2[i52];
                        }
                        f25 += f12;
                        f20 = f10;
                        f21 = f11;
                        i11 = i12;
                    } else {
                        int i53 = i12 + 5;
                        int i54 = i12 + 6;
                        i11 = i12;
                        c(path, f24, f25, fArr2[i53] + f24, fArr2[i54] + f25, fArr2[i12 + 0], fArr2[i12 + 1], fArr2[i12 + 2], fArr2[i12 + 3] != StaticLayoutBuilderCompat.DEFAULT_LINE_SPACING_ADD, fArr2[i12 + 4] != StaticLayoutBuilderCompat.DEFAULT_LINE_SPACING_ADD);
                        f24 += fArr2[i53];
                        f25 += fArr2[i54];
                    }
                    i12 = i11 + i10;
                    c13 = c11;
                    c12 = c13;
                } else {
                    i11 = i12;
                    int i55 = i11 + 5;
                    int i56 = i11 + 6;
                    c(path, f24, f25, fArr2[i55], fArr2[i56], fArr2[i11 + 0], fArr2[i11 + 1], fArr2[i11 + 2], fArr2[i11 + 3] != StaticLayoutBuilderCompat.DEFAULT_LINE_SPACING_ADD, fArr2[i11 + 4] != StaticLayoutBuilderCompat.DEFAULT_LINE_SPACING_ADD);
                    f24 = fArr2[i55];
                    f25 = fArr2[i56];
                }
                f21 = f25;
                f20 = f24;
                i12 = i11 + i10;
                c13 = c11;
                c12 = c13;
            }
            fArr[0] = f24;
            fArr[1] = f25;
            fArr[2] = f20;
            fArr[3] = f21;
            fArr[4] = f26;
            fArr[5] = f27;
        }

        public static void b(Path path, double d10, double d11, double d12, double d13, double d14, double d15, double d16, double d17, double d18) {
            double d19 = d12;
            int ceil = (int) Math.ceil(Math.abs((d18 * 4.0d) / 3.141592653589793d));
            double cos = Math.cos(d16);
            double sin = Math.sin(d16);
            double cos2 = Math.cos(d17);
            double sin2 = Math.sin(d17);
            double d20 = -d19;
            double d21 = d20 * cos;
            double d22 = d13 * sin;
            double d23 = (d21 * sin2) - (d22 * cos2);
            double d24 = d20 * sin;
            double d25 = d13 * cos;
            double d26 = (sin2 * d24) + (cos2 * d25);
            double d27 = ceil;
            Double.isNaN(d27);
            double d28 = d18 / d27;
            double d29 = d17;
            double d30 = d26;
            double d31 = d23;
            int i10 = 0;
            double d32 = d14;
            double d33 = d15;
            while (i10 < ceil) {
                double d34 = d29 + d28;
                double sin3 = Math.sin(d34);
                double cos3 = Math.cos(d34);
                double d35 = (d10 + ((d19 * cos) * cos3)) - (d22 * sin3);
                double d36 = d11 + (d19 * sin * cos3) + (d25 * sin3);
                double d37 = (d21 * sin3) - (d22 * cos3);
                double d38 = (sin3 * d24) + (cos3 * d25);
                double d39 = d34 - d29;
                double tan = Math.tan(d39 / 2.0d);
                double sin4 = (Math.sin(d39) * (Math.sqrt(((tan * 3.0d) * tan) + 4.0d) - 1.0d)) / 3.0d;
                double d40 = d32 + (d31 * sin4);
                path.rLineTo(StaticLayoutBuilderCompat.DEFAULT_LINE_SPACING_ADD, StaticLayoutBuilderCompat.DEFAULT_LINE_SPACING_ADD);
                path.cubicTo((float) d40, (float) (d33 + (d30 * sin4)), (float) (d35 - (sin4 * d37)), (float) (d36 - (sin4 * d38)), (float) d35, (float) d36);
                i10++;
                d28 = d28;
                sin = sin;
                d32 = d35;
                d24 = d24;
                cos = cos;
                d29 = d34;
                d30 = d38;
                d31 = d37;
                ceil = ceil;
                d33 = d36;
                d19 = d12;
            }
        }

        public static void c(Path path, float f10, float f11, float f12, float f13, float f14, float f15, float f16, boolean z10, boolean z11) {
            double d10;
            double d11;
            double radians = Math.toRadians(f16);
            double cos = Math.cos(radians);
            double sin = Math.sin(radians);
            double d12 = f10;
            Double.isNaN(d12);
            double d13 = d12 * cos;
            double d14 = f11;
            Double.isNaN(d14);
            double d15 = f14;
            Double.isNaN(d15);
            double d16 = (d13 + (d14 * sin)) / d15;
            double d17 = -f10;
            Double.isNaN(d17);
            Double.isNaN(d14);
            double d18 = (d17 * sin) + (d14 * cos);
            double d19 = f15;
            Double.isNaN(d19);
            double d20 = d18 / d19;
            double d21 = f12;
            Double.isNaN(d21);
            double d22 = f13;
            Double.isNaN(d22);
            Double.isNaN(d15);
            double d23 = ((d21 * cos) + (d22 * sin)) / d15;
            double d24 = -f12;
            Double.isNaN(d24);
            Double.isNaN(d22);
            Double.isNaN(d19);
            double d25 = ((d24 * sin) + (d22 * cos)) / d19;
            double d26 = d16 - d23;
            double d27 = d20 - d25;
            double d28 = (d16 + d23) / 2.0d;
            double d29 = (d20 + d25) / 2.0d;
            double d30 = (d26 * d26) + (d27 * d27);
            if (d30 == ShadowDrawableWrapper.COS_45) {
                return;
            }
            double d31 = (1.0d / d30) - 0.25d;
            if (d31 < ShadowDrawableWrapper.COS_45) {
                StringBuilder sb2 = new StringBuilder();
                sb2.append("Points are too far apart ");
                sb2.append(d30);
                float sqrt = (float) (Math.sqrt(d30) / 1.99999d);
                c(path, f10, f11, f12, f13, f14 * sqrt, f15 * sqrt, f16, z10, z11);
                return;
            }
            double sqrt2 = Math.sqrt(d31);
            double d32 = d26 * sqrt2;
            double d33 = sqrt2 * d27;
            if (z10 == z11) {
                d10 = d28 - d33;
                d11 = d29 + d32;
            } else {
                d10 = d28 + d33;
                d11 = d29 - d32;
            }
            double atan2 = Math.atan2(d20 - d11, d16 - d10);
            double atan22 = Math.atan2(d25 - d11, d23 - d10) - atan2;
            if (z11 != (atan22 >= ShadowDrawableWrapper.COS_45)) {
                atan22 = atan22 > ShadowDrawableWrapper.COS_45 ? atan22 - 6.283185307179586d : atan22 + 6.283185307179586d;
            }
            Double.isNaN(d15);
            double d34 = d10 * d15;
            Double.isNaN(d19);
            double d35 = d11 * d19;
            b(path, (d34 * cos) - (d35 * sin), (d34 * sin) + (d35 * cos), d15, d19, d12, d14, radians, atan2, atan22);
        }

        public static void e(b[] bVarArr, Path path) {
            float[] fArr = new float[6];
            char c10 = 'm';
            for (int i10 = 0; i10 < bVarArr.length; i10++) {
                a(path, fArr, c10, bVarArr[i10].f7159a, bVarArr[i10].f7160b);
                c10 = bVarArr[i10].f7159a;
            }
        }

        public void d(b bVar, b bVar2, float f10) {
            this.f7159a = bVar.f7159a;
            int i10 = 0;
            while (true) {
                float[] fArr = bVar.f7160b;
                if (i10 >= fArr.length) {
                    return;
                }
                this.f7160b[i10] = (fArr[i10] * (1.0f - f10)) + (bVar2.f7160b[i10] * f10);
                i10++;
            }
        }

        public b(b bVar) {
            this.f7159a = bVar.f7159a;
            float[] fArr = bVar.f7160b;
            this.f7160b = g.c(fArr, 0, fArr.length);
        }
    }
}
