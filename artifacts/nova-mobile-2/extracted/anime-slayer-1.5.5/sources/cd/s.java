package cd;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
import java.util.RandomAccess;

/* compiled from: Options.kt */
/* loaded from: classes2.dex */
public final class s extends wb.b<i> implements RandomAccess {

    /* renamed from: i, reason: collision with root package name */
    public static final a f3935i = new a(null);

    /* renamed from: g, reason: collision with root package name */
    public final i[] f3936g;

    /* renamed from: h, reason: collision with root package name */
    public final int[] f3937h;

    /* compiled from: Options.kt */
    /* loaded from: classes2.dex */
    public static final class a {
        public a() {
        }

        public static /* synthetic */ void b(a aVar, long j10, f fVar, int i10, List list, int i11, int i12, List list2, int i13, Object obj) {
            aVar.a((i13 & 1) != 0 ? 0L : j10, fVar, (i13 & 4) != 0 ? 0 : i10, list, (i13 & 16) != 0 ? 0 : i11, (i13 & 32) != 0 ? list.size() : i12, list2);
        }

        public final void a(long j10, f fVar, int i10, List<? extends i> list, int i11, int i12, List<Integer> list2) {
            int i13;
            int i14;
            int i15;
            int i16;
            f fVar2;
            int i17 = i10;
            if (i11 < i12) {
                for (int i18 = i11; i18 < i12; i18++) {
                    if (!(list.get(i18).y() >= i17)) {
                        throw new IllegalArgumentException("Failed requirement.".toString());
                    }
                }
                i iVar = list.get(i11);
                i iVar2 = list.get(i12 - 1);
                if (i17 == iVar.y()) {
                    int intValue = list2.get(i11).intValue();
                    int i19 = i11 + 1;
                    i iVar3 = list.get(i19);
                    i13 = i19;
                    i14 = intValue;
                    iVar = iVar3;
                } else {
                    i13 = i11;
                    i14 = -1;
                }
                if (iVar.h(i17) != iVar2.h(i17)) {
                    int i20 = 1;
                    for (int i21 = i13 + 1; i21 < i12; i21++) {
                        if (list.get(i21 - 1).h(i17) != list.get(i21).h(i17)) {
                            i20++;
                        }
                    }
                    long c10 = j10 + c(fVar) + 2 + (i20 * 2);
                    fVar.D(i20);
                    fVar.D(i14);
                    for (int i22 = i13; i22 < i12; i22++) {
                        byte h10 = list.get(i22).h(i17);
                        if (i22 == i13 || h10 != list.get(i22 - 1).h(i17)) {
                            fVar.D(h10 & 255);
                        }
                    }
                    f fVar3 = new f();
                    while (i13 < i12) {
                        byte h11 = list.get(i13).h(i17);
                        int i23 = i13 + 1;
                        int i24 = i23;
                        while (true) {
                            if (i24 >= i12) {
                                i15 = i12;
                                break;
                            } else {
                                if (h11 != list.get(i24).h(i17)) {
                                    i15 = i24;
                                    break;
                                }
                                i24++;
                            }
                        }
                        if (i23 == i15 && i17 + 1 == list.get(i13).y()) {
                            fVar.D(list2.get(i13).intValue());
                            i16 = i15;
                            fVar2 = fVar3;
                        } else {
                            fVar.D(((int) (c10 + c(fVar3))) * (-1));
                            i16 = i15;
                            fVar2 = fVar3;
                            a(c10, fVar3, i17 + 1, list, i13, i15, list2);
                        }
                        fVar3 = fVar2;
                        i13 = i16;
                    }
                    fVar.Z(fVar3);
                    return;
                }
                int min = Math.min(iVar.y(), iVar2.y());
                int i25 = 0;
                for (int i26 = i17; i26 < min && iVar.h(i26) == iVar2.h(i26); i26++) {
                    i25++;
                }
                long c11 = j10 + c(fVar) + 2 + i25 + 1;
                fVar.D(-i25);
                fVar.D(i14);
                int i27 = i17 + i25;
                while (i17 < i27) {
                    fVar.D(iVar.h(i17) & 255);
                    i17++;
                }
                if (i13 + 1 == i12) {
                    if (i27 == list.get(i13).y()) {
                        fVar.D(list2.get(i13).intValue());
                        return;
                    }
                    throw new IllegalStateException("Check failed.".toString());
                }
                f fVar4 = new f();
                fVar.D(((int) (c(fVar4) + c11)) * (-1));
                a(c11, fVar4, i27, list, i13, i12, list2);
                fVar.Z(fVar4);
                return;
            }
            throw new IllegalArgumentException("Failed requirement.".toString());
        }

        public final long c(f fVar) {
            return fVar.N0() / 4;
        }

        /* JADX WARN: Code restructure failed: missing block: B:48:0x00ee, code lost:
        
            continue;
         */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
        */
        public final s d(i... iVarArr) {
            jc.l.f(iVarArr, "byteStrings");
            int i10 = 0;
            jc.g gVar = null;
            if (iVarArr.length == 0) {
                return new s(new i[0], new int[]{0, -1}, gVar);
            }
            List A = wb.i.A(iVarArr);
            wb.p.r(A);
            ArrayList arrayList = new ArrayList(iVarArr.length);
            for (i iVar : iVarArr) {
                arrayList.add(-1);
            }
            Object[] array = arrayList.toArray(new Integer[0]);
            if (array != null) {
                Integer[] numArr = (Integer[]) array;
                List m10 = wb.l.m((Integer[]) Arrays.copyOf(numArr, numArr.length));
                int length = iVarArr.length;
                int i11 = 0;
                int i12 = 0;
                while (i11 < length) {
                    m10.set(wb.l.h(A, iVarArr[i11], 0, 0, 6, null), Integer.valueOf(i12));
                    i11++;
                    i12++;
                }
                if (((i) A.get(0)).y() > 0) {
                    int i13 = 0;
                    while (i13 < A.size()) {
                        i iVar2 = (i) A.get(i13);
                        int i14 = i13 + 1;
                        int i15 = i14;
                        while (i15 < A.size()) {
                            i iVar3 = (i) A.get(i15);
                            if (!iVar3.z(iVar2)) {
                                break;
                            }
                            if (!(iVar3.y() != iVar2.y())) {
                                throw new IllegalArgumentException(("duplicate option: " + iVar3).toString());
                            }
                            if (((Number) m10.get(i15)).intValue() > ((Number) m10.get(i13)).intValue()) {
                                A.remove(i15);
                                m10.remove(i15);
                            } else {
                                i15++;
                            }
                        }
                        i13 = i14;
                    }
                    f fVar = new f();
                    b(this, 0L, fVar, 0, A, 0, 0, m10, 53, null);
                    int[] iArr = new int[(int) c(fVar)];
                    while (!fVar.M()) {
                        iArr[i10] = fVar.readInt();
                        i10++;
                    }
                    Object[] copyOf = Arrays.copyOf(iVarArr, iVarArr.length);
                    jc.l.e(copyOf, "java.util.Arrays.copyOf(this, size)");
                    return new s((i[]) copyOf, iArr, gVar);
                }
                throw new IllegalArgumentException("the empty byte string is not a supported option".toString());
            }
            throw new NullPointerException("null cannot be cast to non-null type kotlin.Array<T>");
        }

        public /* synthetic */ a(jc.g gVar) {
            this();
        }
    }

    public /* synthetic */ s(i[] iVarArr, int[] iArr, jc.g gVar) {
        this(iVarArr, iArr);
    }

    public static final s h(i... iVarArr) {
        return f3935i.d(iVarArr);
    }

    @Override // wb.a
    public int a() {
        return this.f3936g.length;
    }

    public /* bridge */ boolean b(i iVar) {
        return super.contains(iVar);
    }

    @Override // wb.b, java.util.List
    /* renamed from: c, reason: merged with bridge method [inline-methods] */
    public i get(int i10) {
        return this.f3936g[i10];
    }

    @Override // wb.a, java.util.Collection, java.util.List
    public final /* bridge */ boolean contains(Object obj) {
        if (obj instanceof i) {
            return b((i) obj);
        }
        return false;
    }

    public final i[] d() {
        return this.f3936g;
    }

    public final int[] e() {
        return this.f3937h;
    }

    public /* bridge */ int f(i iVar) {
        return super.indexOf(iVar);
    }

    public /* bridge */ int g(i iVar) {
        return super.lastIndexOf(iVar);
    }

    @Override // wb.b, java.util.List
    public final /* bridge */ int indexOf(Object obj) {
        if (obj instanceof i) {
            return f((i) obj);
        }
        return -1;
    }

    @Override // wb.b, java.util.List
    public final /* bridge */ int lastIndexOf(Object obj) {
        if (obj instanceof i) {
            return g((i) obj);
        }
        return -1;
    }

    public s(i[] iVarArr, int[] iArr) {
        this.f3936g = iVarArr;
        this.f3937h = iArr;
    }
}
