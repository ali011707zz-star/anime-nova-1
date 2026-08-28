package vc;

import ac.g;
import rc.c2;
import wc.y;

/* compiled from: SafeCollector.common.kt */
/* loaded from: classes2.dex */
public final class r {

    /* compiled from: SafeCollector.common.kt */
    /* loaded from: classes2.dex */
    public static final class a extends jc.m implements ic.p<Integer, g.b, Integer> {

        /* renamed from: f, reason: collision with root package name */
        public final /* synthetic */ p<?> f15094f;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public a(p<?> pVar) {
            super(2);
            this.f15094f = pVar;
        }

        public final Integer a(int i10, g.b bVar) {
            g.c<?> key = bVar.getKey();
            g.b bVar2 = this.f15094f.f15087g.get(key);
            if (key != c2.f13236c) {
                return Integer.valueOf(bVar != bVar2 ? Integer.MIN_VALUE : i10 + 1);
            }
            c2 c2Var = (c2) bVar2;
            c2 b10 = r.b((c2) bVar, c2Var);
            if (b10 == c2Var) {
                if (c2Var != null) {
                    i10++;
                }
                return Integer.valueOf(i10);
            }
            throw new IllegalStateException(("Flow invariant is violated:\n\t\tEmission from another coroutine is detected.\n\t\tChild of " + b10 + ", expected child of " + c2Var + ".\n\t\tFlowCollector is not thread-safe and concurrent emissions are prohibited.\n\t\tTo mitigate this restriction please use 'channelFlow' builder instead of 'flow'").toString());
        }

        @Override // ic.p
        public /* bridge */ /* synthetic */ Integer invoke(Integer num, g.b bVar) {
            return a(num.intValue(), bVar);
        }
    }

    public static final void a(p<?> pVar, ac.g gVar) {
        if (((Number) gVar.fold(0, new a(pVar))).intValue() == pVar.f15088h) {
            return;
        }
        throw new IllegalStateException(("Flow invariant is violated:\n\t\tFlow was collected in " + pVar.f15087g + ",\n\t\tbut emission happened in " + gVar + ".\n\t\tPlease refer to 'flow' documentation or use 'flowOn' instead").toString());
    }

    public static final c2 b(c2 c2Var, c2 c2Var2) {
        while (c2Var != null) {
            if (c2Var == c2Var2 || !(c2Var instanceof y)) {
                return c2Var;
            }
            c2Var = ((y) c2Var).R0();
        }
        return null;
    }
}
