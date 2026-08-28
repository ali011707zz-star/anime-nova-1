package m2;

import android.database.Cursor;
import java.util.ArrayList;
import java.util.List;
import o1.p0;
import o1.s0;

/* compiled from: DependencyDao_Impl.java */
/* loaded from: classes.dex */
public final class c implements b {

    /* renamed from: a, reason: collision with root package name */
    public final p0 f10796a;

    /* renamed from: b, reason: collision with root package name */
    public final o1.s<m2.a> f10797b;

    /* compiled from: DependencyDao_Impl.java */
    /* loaded from: classes.dex */
    public class a extends o1.s<m2.a> {
        public a(p0 p0Var) {
            super(p0Var);
        }

        @Override // o1.v0
        public String d() {
            return "INSERT OR IGNORE INTO `Dependency` (`work_spec_id`,`prerequisite_id`) VALUES (?,?)";
        }

        @Override // o1.s
        /* renamed from: j, reason: merged with bridge method [inline-methods] */
        public void g(r1.k kVar, m2.a aVar) {
            String str = aVar.f10794a;
            if (str == null) {
                kVar.H(1);
            } else {
                kVar.u(1, str);
            }
            String str2 = aVar.f10795b;
            if (str2 == null) {
                kVar.H(2);
            } else {
                kVar.u(2, str2);
            }
        }
    }

    public c(p0 p0Var) {
        this.f10796a = p0Var;
        this.f10797b = new a(p0Var);
    }

    @Override // m2.b
    public void a(m2.a aVar) {
        this.f10796a.d();
        this.f10796a.e();
        try {
            this.f10797b.h(aVar);
            this.f10796a.D();
        } finally {
            this.f10796a.i();
        }
    }

    @Override // m2.b
    public boolean b(String str) {
        s0 h10 = s0.h("SELECT COUNT(*)=0 FROM dependency WHERE work_spec_id=? AND prerequisite_id IN (SELECT id FROM workspec WHERE state!=2)", 1);
        if (str == null) {
            h10.H(1);
        } else {
            h10.u(1, str);
        }
        this.f10796a.d();
        boolean z10 = false;
        Cursor b10 = q1.c.b(this.f10796a, h10, false, null);
        try {
            if (b10.moveToFirst()) {
                z10 = b10.getInt(0) != 0;
            }
            return z10;
        } finally {
            b10.close();
            h10.release();
        }
    }

    @Override // m2.b
    public boolean c(String str) {
        s0 h10 = s0.h("SELECT COUNT(*)>0 FROM dependency WHERE prerequisite_id=?", 1);
        if (str == null) {
            h10.H(1);
        } else {
            h10.u(1, str);
        }
        this.f10796a.d();
        boolean z10 = false;
        Cursor b10 = q1.c.b(this.f10796a, h10, false, null);
        try {
            if (b10.moveToFirst()) {
                z10 = b10.getInt(0) != 0;
            }
            return z10;
        } finally {
            b10.close();
            h10.release();
        }
    }

    @Override // m2.b
    public List<String> d(String str) {
        s0 h10 = s0.h("SELECT work_spec_id FROM dependency WHERE prerequisite_id=?", 1);
        if (str == null) {
            h10.H(1);
        } else {
            h10.u(1, str);
        }
        this.f10796a.d();
        Cursor b10 = q1.c.b(this.f10796a, h10, false, null);
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
