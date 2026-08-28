package k1;

import k1.u;
import kotlin.NoWhenBranchMatchedException;

/* compiled from: LoadStates.kt */
/* loaded from: classes.dex */
public final class w {

    /* renamed from: d, reason: collision with root package name */
    public static final w f9825d;

    /* renamed from: e, reason: collision with root package name */
    public static final a f9826e = new a(null);

    /* renamed from: a, reason: collision with root package name */
    public final u f9827a;

    /* renamed from: b, reason: collision with root package name */
    public final u f9828b;

    /* renamed from: c, reason: collision with root package name */
    public final u f9829c;

    /* compiled from: LoadStates.kt */
    /* loaded from: classes.dex */
    public static final class a {
        public a() {
        }

        public final w a() {
            return w.f9825d;
        }

        public /* synthetic */ a(jc.g gVar) {
            this();
        }
    }

    static {
        u.c.a aVar = u.c.f9818d;
        f9825d = new w(aVar.b(), aVar.b(), aVar.b());
    }

    public w(u uVar, u uVar2, u uVar3) {
        jc.l.f(uVar, "refresh");
        jc.l.f(uVar2, "prepend");
        jc.l.f(uVar3, "append");
        this.f9827a = uVar;
        this.f9828b = uVar2;
        this.f9829c = uVar3;
    }

    public static /* synthetic */ w c(w wVar, u uVar, u uVar2, u uVar3, int i10, Object obj) {
        if ((i10 & 1) != 0) {
            uVar = wVar.f9827a;
        }
        if ((i10 & 2) != 0) {
            uVar2 = wVar.f9828b;
        }
        if ((i10 & 4) != 0) {
            uVar3 = wVar.f9829c;
        }
        return wVar.b(uVar, uVar2, uVar3);
    }

    public final w b(u uVar, u uVar2, u uVar3) {
        jc.l.f(uVar, "refresh");
        jc.l.f(uVar2, "prepend");
        jc.l.f(uVar3, "append");
        return new w(uVar, uVar2, uVar3);
    }

    public final u d(y yVar) {
        jc.l.f(yVar, "loadType");
        int i10 = x.f9834b[yVar.ordinal()];
        if (i10 == 1) {
            return this.f9827a;
        }
        if (i10 == 2) {
            return this.f9829c;
        }
        if (i10 == 3) {
            return this.f9828b;
        }
        throw new NoWhenBranchMatchedException();
    }

    public final u e() {
        return this.f9829c;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof w)) {
            return false;
        }
        w wVar = (w) obj;
        return jc.l.a(this.f9827a, wVar.f9827a) && jc.l.a(this.f9828b, wVar.f9828b) && jc.l.a(this.f9829c, wVar.f9829c);
    }

    public final u f() {
        return this.f9828b;
    }

    public final u g() {
        return this.f9827a;
    }

    public final w h(y yVar, u uVar) {
        jc.l.f(yVar, "loadType");
        jc.l.f(uVar, "newState");
        int i10 = x.f9833a[yVar.ordinal()];
        if (i10 == 1) {
            return c(this, null, null, uVar, 3, null);
        }
        if (i10 == 2) {
            return c(this, null, uVar, null, 5, null);
        }
        if (i10 == 3) {
            return c(this, uVar, null, null, 6, null);
        }
        throw new NoWhenBranchMatchedException();
    }

    public int hashCode() {
        u uVar = this.f9827a;
        int hashCode = (uVar != null ? uVar.hashCode() : 0) * 31;
        u uVar2 = this.f9828b;
        int hashCode2 = (hashCode + (uVar2 != null ? uVar2.hashCode() : 0)) * 31;
        u uVar3 = this.f9829c;
        return hashCode2 + (uVar3 != null ? uVar3.hashCode() : 0);
    }

    public String toString() {
        return "LoadStates(refresh=" + this.f9827a + ", prepend=" + this.f9828b + ", append=" + this.f9829c + ")";
    }
}
