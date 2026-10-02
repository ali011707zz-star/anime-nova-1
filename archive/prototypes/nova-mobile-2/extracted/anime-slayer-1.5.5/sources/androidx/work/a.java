package androidx.work;

import d2.l;
import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.io.ObjectOutputStream;
import java.util.Arrays;
import java.util.Collections;
import java.util.HashMap;
import java.util.Map;
import java.util.Set;

/* compiled from: Data.java */
/* loaded from: classes.dex */
public final class a {

    /* renamed from: b, reason: collision with root package name */
    public static final String f3305b = l.f("Data");

    /* renamed from: c, reason: collision with root package name */
    public static final a f3306c = new C0058a().a();

    /* renamed from: a, reason: collision with root package name */
    public Map<String, Object> f3307a;

    /* compiled from: Data.java */
    /* renamed from: androidx.work.a$a, reason: collision with other inner class name */
    /* loaded from: classes.dex */
    public static final class C0058a {

        /* renamed from: a, reason: collision with root package name */
        public Map<String, Object> f3308a = new HashMap();

        public a a() {
            a aVar = new a((Map<String, ?>) this.f3308a);
            a.m(aVar);
            return aVar;
        }

        public C0058a b(String str, Object obj) {
            if (obj == null) {
                this.f3308a.put(str, null);
            } else {
                Class<?> cls = obj.getClass();
                if (cls != Boolean.class && cls != Byte.class && cls != Integer.class && cls != Long.class && cls != Float.class && cls != Double.class && cls != String.class && cls != Boolean[].class && cls != Byte[].class && cls != Integer[].class && cls != Long[].class && cls != Float[].class && cls != Double[].class && cls != String[].class) {
                    if (cls == boolean[].class) {
                        this.f3308a.put(str, a.a((boolean[]) obj));
                    } else if (cls == byte[].class) {
                        this.f3308a.put(str, a.b((byte[]) obj));
                    } else if (cls == int[].class) {
                        this.f3308a.put(str, a.e((int[]) obj));
                    } else if (cls == long[].class) {
                        this.f3308a.put(str, a.f((long[]) obj));
                    } else if (cls == float[].class) {
                        this.f3308a.put(str, a.d((float[]) obj));
                    } else if (cls == double[].class) {
                        this.f3308a.put(str, a.c((double[]) obj));
                    } else {
                        throw new IllegalArgumentException(String.format("Key %s has invalid type %s", str, cls));
                    }
                } else {
                    this.f3308a.put(str, obj);
                }
            }
            return this;
        }

        public C0058a c(a aVar) {
            d(aVar.f3307a);
            return this;
        }

        public C0058a d(Map<String, Object> map) {
            for (Map.Entry<String, Object> entry : map.entrySet()) {
                b(entry.getKey(), entry.getValue());
            }
            return this;
        }

        public C0058a e(String str, int i10) {
            this.f3308a.put(str, Integer.valueOf(i10));
            return this;
        }

        public C0058a f(String str, long j10) {
            this.f3308a.put(str, Long.valueOf(j10));
            return this;
        }

        public C0058a g(String str, String str2) {
            this.f3308a.put(str, str2);
            return this;
        }
    }

    public a() {
    }

    public static Boolean[] a(boolean[] zArr) {
        Boolean[] boolArr = new Boolean[zArr.length];
        for (int i10 = 0; i10 < zArr.length; i10++) {
            boolArr[i10] = Boolean.valueOf(zArr[i10]);
        }
        return boolArr;
    }

    public static Byte[] b(byte[] bArr) {
        Byte[] bArr2 = new Byte[bArr.length];
        for (int i10 = 0; i10 < bArr.length; i10++) {
            bArr2[i10] = Byte.valueOf(bArr[i10]);
        }
        return bArr2;
    }

    public static Double[] c(double[] dArr) {
        Double[] dArr2 = new Double[dArr.length];
        for (int i10 = 0; i10 < dArr.length; i10++) {
            dArr2[i10] = Double.valueOf(dArr[i10]);
        }
        return dArr2;
    }

    public static Float[] d(float[] fArr) {
        Float[] fArr2 = new Float[fArr.length];
        for (int i10 = 0; i10 < fArr.length; i10++) {
            fArr2[i10] = Float.valueOf(fArr[i10]);
        }
        return fArr2;
    }

    public static Integer[] e(int[] iArr) {
        Integer[] numArr = new Integer[iArr.length];
        for (int i10 = 0; i10 < iArr.length; i10++) {
            numArr[i10] = Integer.valueOf(iArr[i10]);
        }
        return numArr;
    }

    public static Long[] f(long[] jArr) {
        Long[] lArr = new Long[jArr.length];
        for (int i10 = 0; i10 < jArr.length; i10++) {
            lArr[i10] = Long.valueOf(jArr[i10]);
        }
        return lArr;
    }

    /*  JADX ERROR: JadxRuntimeException in pass: RegionMakerVisitor
        jadx.core.utils.exceptions.JadxRuntimeException: Can't find top splitter block for handler:B:18:0x002c
        	at jadx.core.utils.BlockUtils.getTopSplitterForHandler(BlockUtils.java:1166)
        	at jadx.core.dex.visitors.regions.RegionMaker.processTryCatchBlocks(RegionMaker.java:1022)
        	at jadx.core.dex.visitors.regions.RegionMakerVisitor.visit(RegionMakerVisitor.java:55)
        */
    public static androidx.work.a g(byte[] r5) {
        /*
            int r0 = r5.length
            r1 = 10240(0x2800, float:1.4349E-41)
            if (r0 > r1) goto L4c
            java.util.HashMap r0 = new java.util.HashMap
            r0.<init>()
            java.io.ByteArrayInputStream r1 = new java.io.ByteArrayInputStream
            r1.<init>(r5)
            r5 = 0
            java.io.ObjectInputStream r2 = new java.io.ObjectInputStream     // Catch: java.lang.Throwable -> L34 java.lang.Throwable -> L40
            r2.<init>(r1)     // Catch: java.lang.Throwable -> L34 java.lang.Throwable -> L40
            int r5 = r2.readInt()     // Catch: java.lang.Throwable -> L30 java.lang.Throwable -> L32
        L19:
            if (r5 <= 0) goto L29
            java.lang.String r3 = r2.readUTF()     // Catch: java.lang.Throwable -> L30 java.lang.Throwable -> L32
            java.lang.Object r4 = r2.readObject()     // Catch: java.lang.Throwable -> L30 java.lang.Throwable -> L32
            r0.put(r3, r4)     // Catch: java.lang.Throwable -> L30 java.lang.Throwable -> L32
            int r5 = r5 + (-1)
            goto L19
        L29:
            r2.close()     // Catch: java.io.IOException -> L2c
        L2c:
            r1.close()     // Catch: java.io.IOException -> L46
            goto L46
        L30:
            r5 = move-exception
            goto L37
        L32:
            r5 = r2
            goto L40
        L34:
            r0 = move-exception
            r2 = r5
            r5 = r0
        L37:
            if (r2 == 0) goto L3c
            r2.close()     // Catch: java.io.IOException -> L3c
        L3c:
            r1.close()     // Catch: java.io.IOException -> L3f
        L3f:
            throw r5
        L40:
            if (r5 == 0) goto L2c
            r5.close()     // Catch: java.io.IOException -> L2c
            goto L2c
        L46:
            androidx.work.a r5 = new androidx.work.a
            r5.<init>(r0)
            return r5
        L4c:
            java.lang.IllegalStateException r5 = new java.lang.IllegalStateException
            java.lang.String r0 = "Data cannot occupy more than 10240 bytes when serialized"
            r5.<init>(r0)
            goto L55
        L54:
            throw r5
        L55:
            goto L54
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.work.a.g(byte[]):androidx.work.a");
    }

    public static byte[] m(a aVar) {
        ObjectOutputStream objectOutputStream;
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        ObjectOutputStream objectOutputStream2 = null;
        try {
            try {
                objectOutputStream = new ObjectOutputStream(byteArrayOutputStream);
            } catch (Throwable th) {
                th = th;
            }
        } catch (IOException unused) {
        }
        try {
            objectOutputStream.writeInt(aVar.l());
            for (Map.Entry<String, Object> entry : aVar.f3307a.entrySet()) {
                objectOutputStream.writeUTF(entry.getKey());
                objectOutputStream.writeObject(entry.getValue());
            }
            try {
                objectOutputStream.close();
            } catch (IOException unused2) {
            }
            try {
                byteArrayOutputStream.close();
            } catch (IOException unused3) {
            }
            if (byteArrayOutputStream.size() <= 10240) {
                return byteArrayOutputStream.toByteArray();
            }
            throw new IllegalStateException("Data cannot occupy more than 10240 bytes when serialized");
        } catch (IOException unused4) {
            objectOutputStream2 = objectOutputStream;
            byte[] byteArray = byteArrayOutputStream.toByteArray();
            if (objectOutputStream2 != null) {
                try {
                    objectOutputStream2.close();
                } catch (IOException unused5) {
                }
            }
            try {
                byteArrayOutputStream.close();
            } catch (IOException unused6) {
            }
            return byteArray;
        } catch (Throwable th2) {
            th = th2;
            objectOutputStream2 = objectOutputStream;
            if (objectOutputStream2 != null) {
                try {
                    objectOutputStream2.close();
                } catch (IOException unused7) {
                }
            }
            try {
                byteArrayOutputStream.close();
            } catch (IOException unused8) {
            }
            throw th;
        }
    }

    public boolean equals(Object obj) {
        boolean z10;
        if (this == obj) {
            return true;
        }
        if (obj == null || a.class != obj.getClass()) {
            return false;
        }
        a aVar = (a) obj;
        Set<String> keySet = this.f3307a.keySet();
        if (!keySet.equals(aVar.f3307a.keySet())) {
            return false;
        }
        for (String str : keySet) {
            Object obj2 = this.f3307a.get(str);
            Object obj3 = aVar.f3307a.get(str);
            if (obj2 == null || obj3 == null) {
                z10 = obj2 == obj3;
            } else if ((obj2 instanceof Object[]) && (obj3 instanceof Object[])) {
                z10 = Arrays.deepEquals((Object[]) obj2, (Object[]) obj3);
            } else {
                z10 = obj2.equals(obj3);
            }
            if (!z10) {
                return false;
            }
        }
        return true;
    }

    public int h(String str, int i10) {
        Object obj = this.f3307a.get(str);
        return obj instanceof Integer ? ((Integer) obj).intValue() : i10;
    }

    public int hashCode() {
        return this.f3307a.hashCode() * 31;
    }

    public Map<String, Object> i() {
        return Collections.unmodifiableMap(this.f3307a);
    }

    public long j(String str, long j10) {
        Object obj = this.f3307a.get(str);
        return obj instanceof Long ? ((Long) obj).longValue() : j10;
    }

    public String k(String str) {
        Object obj = this.f3307a.get(str);
        if (obj instanceof String) {
            return (String) obj;
        }
        return null;
    }

    public int l() {
        return this.f3307a.size();
    }

    public String toString() {
        StringBuilder sb2 = new StringBuilder("Data {");
        if (!this.f3307a.isEmpty()) {
            for (String str : this.f3307a.keySet()) {
                sb2.append(str);
                sb2.append(" : ");
                Object obj = this.f3307a.get(str);
                if (obj instanceof Object[]) {
                    sb2.append(Arrays.toString((Object[]) obj));
                } else {
                    sb2.append(obj);
                }
                sb2.append(", ");
            }
        }
        sb2.append("}");
        return sb2.toString();
    }

    public a(a aVar) {
        this.f3307a = new HashMap(aVar.f3307a);
    }

    public a(Map<String, ?> map) {
        this.f3307a = new HashMap(map);
    }
}
