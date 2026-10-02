package rc;

import ac.g;

/* compiled from: CoroutineContext.kt */
/* loaded from: classes2.dex */
public final class o0 extends ac.a implements a3<String> {

    /* renamed from: g, reason: collision with root package name */
    public static final a f13311g = new a(null);

    /* renamed from: f, reason: collision with root package name */
    public final long f13312f;

    /* compiled from: CoroutineContext.kt */
    /* loaded from: classes2.dex */
    public static final class a implements g.c<o0> {
        public a() {
        }

        public /* synthetic */ a(jc.g gVar) {
            this();
        }
    }

    public o0(long j10) {
        super(f13311g);
        this.f13312f = j10;
    }

    public final long H0() {
        return this.f13312f;
    }

    @Override // rc.a3
    /* renamed from: I0, reason: merged with bridge method [inline-methods] */
    public void x(ac.g gVar, String str) {
        Thread.currentThread().setName(str);
    }

    @Override // rc.a3
    /* renamed from: J0, reason: merged with bridge method [inline-methods] */
    public String h(ac.g gVar) {
        String H0;
        p0 p0Var = (p0) gVar.get(p0.f13318g);
        String str = "coroutine";
        if (p0Var != null && (H0 = p0Var.H0()) != null) {
            str = H0;
        }
        Thread currentThread = Thread.currentThread();
        String name = currentThread.getName();
        int S = qc.u.S(name, " @", 0, false, 6, null);
        if (S < 0) {
            S = name.length();
        }
        StringBuilder sb2 = new StringBuilder(str.length() + S + 10);
        if (name != null) {
            String substring = name.substring(0, S);
            jc.l.e(substring, "(this as java.lang.Strin…ing(startIndex, endIndex)");
            sb2.append(substring);
            sb2.append(" @");
            sb2.append(str);
            sb2.append('#');
            sb2.append(H0());
            vb.p pVar = vb.p.f15031a;
            String sb3 = sb2.toString();
            jc.l.e(sb3, "StringBuilder(capacity).…builderAction).toString()");
            currentThread.setName(sb3);
            return name;
        }
        throw new NullPointerException("null cannot be cast to non-null type java.lang.String");
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        return (obj instanceof o0) && this.f13312f == ((o0) obj).f13312f;
    }

    public int hashCode() {
        return m4.a.a(this.f13312f);
    }

    public String toString() {
        return "CoroutineId(" + this.f13312f + ')';
    }
}
