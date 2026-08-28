package r1;

/* compiled from: SimpleSQLiteQuery.java */
/* loaded from: classes.dex */
public final class a implements j {

    /* renamed from: f, reason: collision with root package name */
    public final String f12791f;

    /* renamed from: g, reason: collision with root package name */
    public final Object[] f12792g;

    public a(String str, Object[] objArr) {
        this.f12791f = str;
        this.f12792g = objArr;
    }

    public static void a(i iVar, int i10, Object obj) {
        if (obj == null) {
            iVar.H(i10);
            return;
        }
        if (obj instanceof byte[]) {
            iVar.n0(i10, (byte[]) obj);
            return;
        }
        if (obj instanceof Float) {
            iVar.J(i10, ((Float) obj).floatValue());
            return;
        }
        if (obj instanceof Double) {
            iVar.J(i10, ((Double) obj).doubleValue());
            return;
        }
        if (obj instanceof Long) {
            iVar.f0(i10, ((Long) obj).longValue());
            return;
        }
        if (obj instanceof Integer) {
            iVar.f0(i10, ((Integer) obj).intValue());
            return;
        }
        if (obj instanceof Short) {
            iVar.f0(i10, ((Short) obj).shortValue());
            return;
        }
        if (obj instanceof Byte) {
            iVar.f0(i10, ((Byte) obj).byteValue());
            return;
        }
        if (obj instanceof String) {
            iVar.u(i10, (String) obj);
            return;
        }
        if (obj instanceof Boolean) {
            iVar.f0(i10, ((Boolean) obj).booleanValue() ? 1L : 0L);
            return;
        }
        throw new IllegalArgumentException("Cannot bind " + obj + " at index " + i10 + " Supported types: null, byte[], float, double, long, int, short, byte, string");
    }

    public static void c(i iVar, Object[] objArr) {
        if (objArr == null) {
            return;
        }
        int length = objArr.length;
        int i10 = 0;
        while (i10 < length) {
            Object obj = objArr[i10];
            i10++;
            a(iVar, i10, obj);
        }
    }

    @Override // r1.j
    public String b() {
        return this.f12791f;
    }

    @Override // r1.j
    public void d(i iVar) {
        c(iVar, this.f12792g);
    }

    public a(String str) {
        this(str, null);
    }
}
