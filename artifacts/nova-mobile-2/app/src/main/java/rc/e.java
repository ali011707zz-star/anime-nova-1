package rc;

/* compiled from: Await.kt */
/* loaded from: classes2.dex */
public final class e {

    /* compiled from: Await.kt */
    @cc.f(c = "kotlinx.coroutines.AwaitKt", f = "Await.kt", l = {54}, m = "joinAll")
    /* loaded from: classes2.dex */
    public static final class a extends cc.d {

        /* renamed from: f, reason: collision with root package name */
        public Object f13241f;

        /* renamed from: g, reason: collision with root package name */
        public int f13242g;

        /* renamed from: h, reason: collision with root package name */
        public int f13243h;

        /* renamed from: i, reason: collision with root package name */
        public /* synthetic */ Object f13244i;

        /* renamed from: j, reason: collision with root package name */
        public int f13245j;

        public a(ac.d<? super a> dVar) {
            super(dVar);
        }

        @Override // cc.a
        public final Object invokeSuspend(Object obj) {
            this.f13244i = obj;
            this.f13245j |= Integer.MIN_VALUE;
            return e.a(null, this);
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:12:0x0044  */
    /* JADX WARN: Removed duplicated region for block: B:16:0x0057  */
    /* JADX WARN: Removed duplicated region for block: B:20:0x003a  */
    /* JADX WARN: Removed duplicated region for block: B:8:0x0023  */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:13:0x0052 -> B:10:0x0055). Please report as a decompilation issue!!! */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static final Object a(c2[] c2VarArr, ac.d<? super vb.p> dVar) {
        a aVar;
        int i10;
        int length;
        c2[] c2VarArr2;
        int i11;
        if (dVar instanceof a) {
            aVar = (a) dVar;
            int i12 = aVar.f13245j;
            if ((i12 & Integer.MIN_VALUE) != 0) {
                aVar.f13245j = i12 - Integer.MIN_VALUE;
                Object obj = aVar.f13244i;
                Object d10 = bc.c.d();
                i10 = aVar.f13245j;
                if (i10 != 0) {
                    vb.k.b(obj);
                    length = c2VarArr.length;
                    c2VarArr2 = c2VarArr;
                    i11 = 0;
                    if (i11 < length) {
                    }
                } else {
                    if (i10 != 1) {
                        throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                    }
                    i11 = aVar.f13243h;
                    length = aVar.f13242g;
                    c2[] c2VarArr3 = (c2[]) aVar.f13241f;
                    vb.k.b(obj);
                    c2VarArr2 = c2VarArr3;
                    i11++;
                    if (i11 < length) {
                        c2 c2Var = c2VarArr2[i11];
                        aVar.f13241f = c2VarArr2;
                        aVar.f13242g = length;
                        aVar.f13243h = i11;
                        aVar.f13245j = 1;
                        if (c2Var.U(aVar) == d10) {
                            return d10;
                        }
                        i11++;
                        if (i11 < length) {
                            return vb.p.f15031a;
                        }
                    }
                }
            }
        }
        aVar = new a(dVar);
        Object obj2 = aVar.f13244i;
        Object d102 = bc.c.d();
        i10 = aVar.f13245j;
        if (i10 != 0) {
        }
    }
}
