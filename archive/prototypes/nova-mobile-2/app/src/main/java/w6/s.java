package w6;

import java.util.ArrayList;
import o4.a;

/* compiled from: FilterUtil.kt */
/* loaded from: classes.dex */
public class s extends a.d<String> {

    /* renamed from: a, reason: collision with root package name */
    public final vb.i<String, String>[] f15333a;

    /* JADX WARN: Illegal instructions before constructor call */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public s(String str, vb.i<String, String>[] iVarArr) {
        super(str, r4, 0, 4, null);
        jc.l.f(str, "displayName");
        jc.l.f(iVarArr, "vals");
        ArrayList arrayList = new ArrayList(iVarArr.length);
        for (vb.i<String, String> iVar : iVarArr) {
            arrayList.add(iVar.c());
        }
        Object[] array = arrayList.toArray(new String[0]);
        jc.l.d(array, "null cannot be cast to non-null type kotlin.Array<T of kotlin.collections.ArraysKt__ArraysJVMKt.toTypedArray>");
        this.f15333a = iVarArr;
    }

    public final String e() {
        return this.f15333a[b().intValue()].d();
    }
}
