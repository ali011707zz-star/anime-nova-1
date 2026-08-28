package n2;

import androidx.work.impl.WorkDatabase;
import d2.o;
import d2.u;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.UUID;
import m2.q;

/* compiled from: CancelWorkRunnable.java */
/* loaded from: classes.dex */
public abstract class a implements Runnable {

    /* renamed from: f, reason: collision with root package name */
    public final e2.c f11185f = new e2.c();

    /* compiled from: CancelWorkRunnable.java */
    /* renamed from: n2.a$a, reason: collision with other inner class name */
    /* loaded from: classes.dex */
    public class C0268a extends a {

        /* renamed from: g, reason: collision with root package name */
        public final /* synthetic */ e2.i f11186g;

        /* renamed from: h, reason: collision with root package name */
        public final /* synthetic */ UUID f11187h;

        public C0268a(e2.i iVar, UUID uuid) {
            this.f11186g = iVar;
            this.f11187h = uuid;
        }

        @Override // n2.a
        public void h() {
            WorkDatabase w10 = this.f11186g.w();
            w10.e();
            try {
                a(this.f11186g, this.f11187h.toString());
                w10.D();
                w10.i();
                g(this.f11186g);
            } catch (Throwable th) {
                w10.i();
                throw th;
            }
        }
    }

    /* compiled from: CancelWorkRunnable.java */
    /* loaded from: classes.dex */
    public class b extends a {

        /* renamed from: g, reason: collision with root package name */
        public final /* synthetic */ e2.i f11188g;

        /* renamed from: h, reason: collision with root package name */
        public final /* synthetic */ String f11189h;

        public b(e2.i iVar, String str) {
            this.f11188g = iVar;
            this.f11189h = str;
        }

        @Override // n2.a
        public void h() {
            WorkDatabase w10 = this.f11188g.w();
            w10.e();
            try {
                Iterator<String> it2 = w10.O().o(this.f11189h).iterator();
                while (it2.hasNext()) {
                    a(this.f11188g, it2.next());
                }
                w10.D();
                w10.i();
                g(this.f11188g);
            } catch (Throwable th) {
                w10.i();
                throw th;
            }
        }
    }

    /* compiled from: CancelWorkRunnable.java */
    /* loaded from: classes.dex */
    public class c extends a {

        /* renamed from: g, reason: collision with root package name */
        public final /* synthetic */ e2.i f11190g;

        /* renamed from: h, reason: collision with root package name */
        public final /* synthetic */ String f11191h;

        /* renamed from: i, reason: collision with root package name */
        public final /* synthetic */ boolean f11192i;

        public c(e2.i iVar, String str, boolean z10) {
            this.f11190g = iVar;
            this.f11191h = str;
            this.f11192i = z10;
        }

        @Override // n2.a
        public void h() {
            WorkDatabase w10 = this.f11190g.w();
            w10.e();
            try {
                Iterator<String> it2 = w10.O().g(this.f11191h).iterator();
                while (it2.hasNext()) {
                    a(this.f11190g, it2.next());
                }
                w10.D();
                w10.i();
                if (this.f11192i) {
                    g(this.f11190g);
                }
            } catch (Throwable th) {
                w10.i();
                throw th;
            }
        }
    }

    public static a b(UUID uuid, e2.i iVar) {
        return new C0268a(iVar, uuid);
    }

    public static a c(String str, e2.i iVar, boolean z10) {
        return new c(iVar, str, z10);
    }

    public static a d(String str, e2.i iVar) {
        return new b(iVar, str);
    }

    public void a(e2.i iVar, String str) {
        f(iVar.w(), str);
        iVar.t().k(str);
        Iterator<e2.e> it2 = iVar.v().iterator();
        while (it2.hasNext()) {
            it2.next().b(str);
        }
    }

    public o e() {
        return this.f11185f;
    }

    public final void f(WorkDatabase workDatabase, String str) {
        q O = workDatabase.O();
        m2.b G = workDatabase.G();
        LinkedList linkedList = new LinkedList();
        linkedList.add(str);
        while (!linkedList.isEmpty()) {
            String str2 = (String) linkedList.remove();
            u.a j10 = O.j(str2);
            if (j10 != u.a.SUCCEEDED && j10 != u.a.FAILED) {
                O.b(u.a.CANCELLED, str2);
            }
            linkedList.addAll(G.d(str2));
        }
    }

    public void g(e2.i iVar) {
        e2.f.b(iVar.p(), iVar.w(), iVar.v());
    }

    public abstract void h();

    @Override // java.lang.Runnable
    public void run() {
        try {
            h();
            this.f11185f.a(o.f5585a);
        } catch (Throwable th) {
            this.f11185f.a(new o.b.a(th));
        }
    }
}
