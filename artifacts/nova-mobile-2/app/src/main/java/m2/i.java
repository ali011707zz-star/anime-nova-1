package m2;

import android.database.Cursor;
import java.util.ArrayList;
import java.util.List;
import o1.p0;
import o1.s0;
import o1.v0;

/* compiled from: SystemIdInfoDao_Impl.java */
/* loaded from: classes.dex */
public final class i implements h {

    /* renamed from: a, reason: collision with root package name */
    public final p0 f10806a;

    /* renamed from: b, reason: collision with root package name */
    public final o1.s<g> f10807b;

    /* renamed from: c, reason: collision with root package name */
    public final v0 f10808c;

    /* compiled from: SystemIdInfoDao_Impl.java */
    /* loaded from: classes.dex */
    public class a extends o1.s<g> {
        public a(p0 p0Var) {
            super(p0Var);
        }

        @Override // o1.v0
        public String d() {
            return "INSERT OR REPLACE INTO `SystemIdInfo` (`work_spec_id`,`system_id`) VALUES (?,?)";
        }

        @Override // o1.s
        /* renamed from: j, reason: merged with bridge method [inline-methods] */
        public void g(r1.k kVar, g gVar) {
            String str = gVar.f10804a;
            if (str == null) {
                kVar.H(1);
            } else {
                kVar.u(1, str);
            }
            kVar.f0(2, gVar.f10805b);
        }
    }

    /* compiled from: SystemIdInfoDao_Impl.java */
    /* loaded from: classes.dex */
    public class b extends v0 {
        public b(p0 p0Var) {
            super(p0Var);
        }

        @Override // o1.v0
        public String d() {
            return "DELETE FROM SystemIdInfo where work_spec_id=?";
        }
    }

    public i(p0 p0Var) {
        this.f10806a = p0Var;
        this.f10807b = new a(p0Var);
        this.f10808c = new b(p0Var);
    }

    @Override // m2.h
    public List<String> a() {
        s0 h10 = s0.h("SELECT DISTINCT work_spec_id FROM SystemIdInfo", 0);
        this.f10806a.d();
        Cursor b10 = q1.c.b(this.f10806a, h10, false, null);
        try {
            ArrayList arrayList = new ArrayList(b10.getCount());
            while (b10.moveToNext()) {
                arrayList.add(b10.getString(0));
            }
            return arrayList;
        } finally {
            b10.close();
            h10.release();
        }
    }

    @Override // m2.h
    public g b(String str) {
        s0 h10 = s0.h("SELECT `SystemIdInfo`.`work_spec_id` AS `work_spec_id`, `SystemIdInfo`.`system_id` AS `system_id` FROM SystemIdInfo WHERE work_spec_id=?", 1);
        if (str == null) {
            h10.H(1);
        } else {
            h10.u(1, str);
        }
        this.f10806a.d();
        Cursor b10 = q1.c.b(this.f10806a, h10, false, null);
        try {
            return b10.moveToFirst() ? new g(b10.getString(q1.b.e(b10, "work_spec_id")), b10.getInt(q1.b.e(b10, "system_id"))) : null;
        } finally {
            b10.close();
            h10.release();
        }
    }

    @Override // m2.h
    public void c(g gVar) {
        this.f10806a.d();
        this.f10806a.e();
        try {
            this.f10807b.h(gVar);
            this.f10806a.D();
        } finally {
            this.f10806a.i();
        }
    }

    @Override // m2.h
    public void d(String str) {
        this.f10806a.d();
        r1.k a10 = this.f10808c.a();
        if (str == null) {
            a10.H(1);
        } else {
            a10.u(1, str);
        }
        this.f10806a.e();
        try {
            a10.A();
            this.f10806a.D();
        } finally {
            this.f10806a.i();
            this.f10808c.f(a10);
        }
    }
}
