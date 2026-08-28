package k1;

/* compiled from: NullPaddedListDiffHelper.kt */
/* loaded from: classes.dex */
public final class l {

    /* renamed from: a, reason: collision with root package name */
    public static final l f9657a = new l();

    public final void a(androidx.recyclerview.widget.p pVar, int i10, int i11, int i12, int i13, Object obj) {
        int i14 = i10 - i12;
        if (i14 > 0) {
            pVar.d(i12, i14, obj);
        }
        int i15 = i13 - i11;
        if (i15 > 0) {
            pVar.d(i11, i15, obj);
        }
    }

    public final <T> void b(androidx.recyclerview.widget.p pVar, c0<T> c0Var, c0<T> c0Var2) {
        jc.l.f(pVar, "callback");
        jc.l.f(c0Var, "oldList");
        jc.l.f(c0Var2, "newList");
        int max = Math.max(c0Var.c(), c0Var2.c());
        int min = Math.min(c0Var.c() + c0Var.b(), c0Var2.c() + c0Var2.b());
        int i10 = min - max;
        if (i10 > 0) {
            pVar.a(max, i10);
            pVar.b(max, i10);
        }
        int min2 = Math.min(max, min);
        int max2 = Math.max(max, min);
        a(pVar, min2, max2, nc.g.c(c0Var.c(), c0Var2.a()), nc.g.c(c0Var.c() + c0Var.b(), c0Var2.a()), k.ITEM_TO_PLACEHOLDER);
        a(pVar, min2, max2, nc.g.c(c0Var2.c(), c0Var.a()), nc.g.c(c0Var2.c() + c0Var2.b(), c0Var.a()), k.PLACEHOLDER_TO_ITEM);
        int a10 = c0Var2.a() - c0Var.a();
        if (a10 > 0) {
            pVar.b(c0Var.a(), a10);
        } else if (a10 < 0) {
            pVar.a(c0Var.a() + a10, -a10);
        }
    }
}
