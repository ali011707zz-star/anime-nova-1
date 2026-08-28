package m2;

import android.database.Cursor;
import java.util.ArrayList;
import java.util.List;
import o1.p0;
import o1.s0;

/* compiled from: WorkTagDao_Impl.java */
/* loaded from: classes.dex */
public final class u implements t {

    /* renamed from: a, reason: collision with root package name */
    public final p0 f10875a;

    /* renamed from: b, reason: collision with root package name */
    public final o1.s<s> f10876b;

    /* compiled from: WorkTagDao_Impl.java */
    /* loaded from: classes.dex */
    public class a extends o1.s<s> {
        public a(p0 p0Var) {
            super(p0Var);
        }

        @Override // o1.v0
        public String d() {
            return "INSERT OR IGNORE INTO `WorkTag` (`tag`,`work_spec_id`) VALUES (?,?)";
        }

        @Override // o1.s
        /* renamed from: j, reason: merged with bridge method [inline-methods] */
        public void g(r1.k kVar, s sVar) {
            String str = sVar.f10873a;
            if (str == null) {
                kVar.H(1);
            } else {
                kVar.u(1, str);
            }
            String str2 = sVar.f10874b;
            if (str2 == null) {
                kVar.H(2);
            } else {
                kVar.u(2, str2);
            }
        }
    }

    public u(p0 p0Var) {
        this.f10875a = p0Var;
        this.f10876b = new a(p0Var);
    }

    @Override // m2.t
    public void a(s sVar) {
        this.f10875a.d();
        this.f10875a.e();
        try {
            this.f10876b.h(sVar);
            this.f10875a.D();
        } finally {
            this.f10875a.i();
        }
    }

    @Override // m2.t
    public List<String> b(String str) {
        s0 h10 = s0.h("SELECT DISTINCT tag FROM worktag WHERE work_spec_id=?", 1);
        if (str == null) {
            h10.H(1);
        } else {
            h10.u(1, str);
        }
        this.f10875a.d();
        Cursor b10 = q1.c.b(this.f10875a, h10, false, null);
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
