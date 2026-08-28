package m2;

import android.database.Cursor;
import o1.p0;
import o1.s0;

/* compiled from: PreferenceDao_Impl.java */
/* loaded from: classes.dex */
public final class f implements e {

    /* renamed from: a, reason: collision with root package name */
    public final p0 f10801a;

    /* renamed from: b, reason: collision with root package name */
    public final o1.s<d> f10802b;

    /* compiled from: PreferenceDao_Impl.java */
    /* loaded from: classes.dex */
    public class a extends o1.s<d> {
        public a(p0 p0Var) {
            super(p0Var);
        }

        @Override // o1.v0
        public String d() {
            return "INSERT OR REPLACE INTO `Preference` (`key`,`long_value`) VALUES (?,?)";
        }

        @Override // o1.s
        /* renamed from: j, reason: merged with bridge method [inline-methods] */
        public void g(r1.k kVar, d dVar) {
            String str = dVar.f10799a;
            if (str == null) {
                kVar.H(1);
            } else {
                kVar.u(1, str);
            }
            Long l10 = dVar.f10800b;
            if (l10 == null) {
                kVar.H(2);
            } else {
                kVar.f0(2, l10.longValue());
            }
        }
    }

    public f(p0 p0Var) {
        this.f10801a = p0Var;
        this.f10802b = new a(p0Var);
    }

    @Override // m2.e
    public void a(d dVar) {
        this.f10801a.d();
        this.f10801a.e();
        try {
            this.f10802b.h(dVar);
            this.f10801a.D();
        } finally {
            this.f10801a.i();
        }
    }

    @Override // m2.e
    public Long b(String str) {
        s0 h10 = s0.h("SELECT long_value FROM Preference where `key`=?", 1);
        if (str == null) {
            h10.H(1);
        } else {
            h10.u(1, str);
        }
        this.f10801a.d();
        Long l10 = null;
        Cursor b10 = q1.c.b(this.f10801a, h10, false, null);
        try {
            if (b10.moveToFirst() && !b10.isNull(0)) {
                l10 = Long.valueOf(b10.getLong(0));
            }
            return l10;
        } finally {
            b10.close();
            h10.release();
        }
    }
}
