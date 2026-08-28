package m2;

import o1.p0;
import o1.v0;

/* compiled from: WorkProgressDao_Impl.java */
/* loaded from: classes.dex */
public final class o implements n {

    /* renamed from: a, reason: collision with root package name */
    public final p0 f10818a;

    /* renamed from: b, reason: collision with root package name */
    public final o1.s<m> f10819b;

    /* renamed from: c, reason: collision with root package name */
    public final v0 f10820c;

    /* renamed from: d, reason: collision with root package name */
    public final v0 f10821d;

    /* compiled from: WorkProgressDao_Impl.java */
    /* loaded from: classes.dex */
    public class a extends o1.s<m> {
        public a(p0 p0Var) {
            super(p0Var);
        }

        @Override // o1.v0
        public String d() {
            return "INSERT OR REPLACE INTO `WorkProgress` (`work_spec_id`,`progress`) VALUES (?,?)";
        }

        @Override // o1.s
        /* renamed from: j, reason: merged with bridge method [inline-methods] */
        public void g(r1.k kVar, m mVar) {
            String str = mVar.f10816a;
            if (str == null) {
                kVar.H(1);
            } else {
                kVar.u(1, str);
            }
            byte[] m10 = androidx.work.a.m(mVar.f10817b);
            if (m10 == null) {
                kVar.H(2);
            } else {
                kVar.n0(2, m10);
            }
        }
    }

    /* compiled from: WorkProgressDao_Impl.java */
    /* loaded from: classes.dex */
    public class b extends v0 {
        public b(p0 p0Var) {
            super(p0Var);
        }

        @Override // o1.v0
        public String d() {
            return "DELETE from WorkProgress where work_spec_id=?";
        }
    }

    /* compiled from: WorkProgressDao_Impl.java */
    /* loaded from: classes.dex */
    public class c extends v0 {
        public c(p0 p0Var) {
            super(p0Var);
        }

        @Override // o1.v0
        public String d() {
            return "DELETE FROM WorkProgress";
        }
    }

    public o(p0 p0Var) {
        this.f10818a = p0Var;
        this.f10819b = new a(p0Var);
        this.f10820c = new b(p0Var);
        this.f10821d = new c(p0Var);
    }

    @Override // m2.n
    public void a(String str) {
        this.f10818a.d();
        r1.k a10 = this.f10820c.a();
        if (str == null) {
            a10.H(1);
        } else {
            a10.u(1, str);
        }
        this.f10818a.e();
        try {
            a10.A();
            this.f10818a.D();
        } finally {
            this.f10818a.i();
            this.f10820c.f(a10);
        }
    }

    @Override // m2.n
    public void b() {
        this.f10818a.d();
        r1.k a10 = this.f10821d.a();
        this.f10818a.e();
        try {
            a10.A();
            this.f10818a.D();
        } finally {
            this.f10818a.i();
            this.f10821d.f(a10);
        }
    }
}
