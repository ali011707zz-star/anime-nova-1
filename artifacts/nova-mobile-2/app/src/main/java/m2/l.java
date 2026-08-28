package m2;

import android.database.Cursor;
import java.util.ArrayList;
import java.util.List;
import o1.p0;
import o1.s0;

/* compiled from: WorkNameDao_Impl.java */
/* loaded from: classes.dex */
public final class l implements k {

    /* renamed from: a, reason: collision with root package name */
    public final p0 f10813a;

    /* renamed from: b, reason: collision with root package name */
    public final o1.s<j> f10814b;

    /* compiled from: WorkNameDao_Impl.java */
    /* loaded from: classes.dex */
    public class a extends o1.s<j> {
        public a(p0 p0Var) {
            super(p0Var);
        }

        @Override // o1.v0
        public String d() {
            return "INSERT OR IGNORE INTO `WorkName` (`name`,`work_spec_id`) VALUES (?,?)";
        }

        @Override // o1.s
        /* renamed from: j, reason: merged with bridge method [inline-methods] */
        public void g(r1.k kVar, j jVar) {
            String str = jVar.f10811a;
            if (str == null) {
                kVar.H(1);
            } else {
                kVar.u(1, str);
            }
            String str2 = jVar.f10812b;
            if (str2 == null) {
                kVar.H(2);
            } else {
                kVar.u(2, str2);
            }
        }
    }

    public l(p0 p0Var) {
        this.f10813a = p0Var;
        this.f10814b = new a(p0Var);
    }

    @Override // m2.k
    public void a(j jVar) {
        this.f10813a.d();
        this.f10813a.e();
        try {
            this.f10814b.h(jVar);
            this.f10813a.D();
        } finally {
            this.f10813a.i();
        }
    }

    @Override // m2.k
    public List<String> b(String str) {
        s0 h10 = s0.h("SELECT name FROM workname WHERE work_spec_id=?", 1);
        if (str == null) {
            h10.H(1);
        } else {
            h10.u(1, str);
        }
        this.f10813a.d();
        Cursor b10 = q1.c.b(this.f10813a, h10, false, null);
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
}
