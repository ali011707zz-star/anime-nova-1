package b4;

import android.database.Cursor;
import androidx.lifecycle.LiveData;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import java.util.concurrent.Callable;
import o1.n;
import o1.p0;
import o1.r;
import o1.s;
import o1.s0;
import o1.v0;
import r1.k;
import vb.p;

/* compiled from: BlockedWordEntityDao_Impl.java */
/* loaded from: classes.dex */
public final class c implements b4.b {

    /* renamed from: a, reason: collision with root package name */
    public final p0 f3494a;

    /* renamed from: b, reason: collision with root package name */
    public final s<k4.a> f3495b;

    /* renamed from: c, reason: collision with root package name */
    public final r<k4.a> f3496c;

    /* renamed from: d, reason: collision with root package name */
    public final r<k4.a> f3497d;

    /* renamed from: e, reason: collision with root package name */
    public final v0 f3498e;

    /* compiled from: BlockedWordEntityDao_Impl.java */
    /* loaded from: classes.dex */
    public class a implements Callable<p> {
        public a() {
        }

        @Override // java.util.concurrent.Callable
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public p call() throws Exception {
            k a10 = c.this.f3498e.a();
            c.this.f3494a.e();
            try {
                a10.A();
                c.this.f3494a.D();
                return p.f15031a;
            } finally {
                c.this.f3494a.i();
                c.this.f3498e.f(a10);
            }
        }
    }

    /* compiled from: BlockedWordEntityDao_Impl.java */
    /* loaded from: classes.dex */
    public class b implements Callable<List<k4.a>> {

        /* renamed from: a, reason: collision with root package name */
        public final /* synthetic */ s0 f3500a;

        public b(s0 s0Var) {
            this.f3500a = s0Var;
        }

        @Override // java.util.concurrent.Callable
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public List<k4.a> call() throws Exception {
            Cursor b10 = q1.c.b(c.this.f3494a, this.f3500a, false, null);
            try {
                int e10 = q1.b.e(b10, "word");
                int e11 = q1.b.e(b10, "id");
                ArrayList arrayList = new ArrayList(b10.getCount());
                while (b10.moveToNext()) {
                    k4.a aVar = new k4.a(b10.isNull(e10) ? null : b10.getString(e10));
                    aVar.c(b10.getLong(e11));
                    arrayList.add(aVar);
                }
                return arrayList;
            } finally {
                b10.close();
            }
        }

        public void finalize() {
            this.f3500a.release();
        }
    }

    /* compiled from: BlockedWordEntityDao_Impl.java */
    /* renamed from: b4.c$c, reason: collision with other inner class name */
    /* loaded from: classes.dex */
    public class C0063c extends s<k4.a> {
        public C0063c(p0 p0Var) {
            super(p0Var);
        }

        @Override // o1.v0
        public String d() {
            return "INSERT OR REPLACE INTO `BlockedWordEntity` (`word`,`id`) VALUES (?,nullif(?, 0))";
        }

        @Override // o1.s
        /* renamed from: j, reason: merged with bridge method [inline-methods] */
        public void g(k kVar, k4.a aVar) {
            if (aVar.b() == null) {
                kVar.H(1);
            } else {
                kVar.u(1, aVar.b());
            }
            kVar.f0(2, aVar.a());
        }
    }

    /* compiled from: BlockedWordEntityDao_Impl.java */
    /* loaded from: classes.dex */
    public class d extends r<k4.a> {
        public d(p0 p0Var) {
            super(p0Var);
        }

        @Override // o1.v0
        public String d() {
            return "DELETE FROM `BlockedWordEntity` WHERE `id` = ?";
        }

        @Override // o1.r
        /* renamed from: i, reason: merged with bridge method [inline-methods] */
        public void g(k kVar, k4.a aVar) {
            kVar.f0(1, aVar.a());
        }
    }

    /* compiled from: BlockedWordEntityDao_Impl.java */
    /* loaded from: classes.dex */
    public class e extends r<k4.a> {
        public e(p0 p0Var) {
            super(p0Var);
        }

        @Override // o1.v0
        public String d() {
            return "UPDATE OR ABORT `BlockedWordEntity` SET `word` = ?,`id` = ? WHERE `id` = ?";
        }

        @Override // o1.r
        /* renamed from: i, reason: merged with bridge method [inline-methods] */
        public void g(k kVar, k4.a aVar) {
            if (aVar.b() == null) {
                kVar.H(1);
            } else {
                kVar.u(1, aVar.b());
            }
            kVar.f0(2, aVar.a());
            kVar.f0(3, aVar.a());
        }
    }

    /* compiled from: BlockedWordEntityDao_Impl.java */
    /* loaded from: classes.dex */
    public class f extends v0 {
        public f(p0 p0Var) {
            super(p0Var);
        }

        @Override // o1.v0
        public String d() {
            return "DELETE FROM BlockedWordEntity";
        }
    }

    /* compiled from: BlockedWordEntityDao_Impl.java */
    /* loaded from: classes.dex */
    public class g implements Callable<List<Long>> {

        /* renamed from: a, reason: collision with root package name */
        public final /* synthetic */ List f3506a;

        public g(List list) {
            this.f3506a = list;
        }

        @Override // java.util.concurrent.Callable
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public List<Long> call() throws Exception {
            c.this.f3494a.e();
            try {
                List<Long> i10 = c.this.f3495b.i(this.f3506a);
                c.this.f3494a.D();
                return i10;
            } finally {
                c.this.f3494a.i();
            }
        }
    }

    /* compiled from: BlockedWordEntityDao_Impl.java */
    /* loaded from: classes.dex */
    public class h implements Callable<Integer> {

        /* renamed from: a, reason: collision with root package name */
        public final /* synthetic */ k4.a f3508a;

        public h(k4.a aVar) {
            this.f3508a = aVar;
        }

        @Override // java.util.concurrent.Callable
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public Integer call() throws Exception {
            c.this.f3494a.e();
            try {
                int h10 = c.this.f3496c.h(this.f3508a) + 0;
                c.this.f3494a.D();
                return Integer.valueOf(h10);
            } finally {
                c.this.f3494a.i();
            }
        }
    }

    public c(p0 p0Var) {
        this.f3494a = p0Var;
        this.f3495b = new C0063c(p0Var);
        this.f3496c = new d(p0Var);
        this.f3497d = new e(p0Var);
        this.f3498e = new f(p0Var);
    }

    public static List<Class<?>> k() {
        return Collections.emptyList();
    }

    @Override // b4.b
    public LiveData<List<k4.a>> a() {
        return this.f3494a.m().e(new String[]{"BlockedWordEntity"}, false, new b(s0.h("select * from BlockedWordEntity order by id desc", 0)));
    }

    @Override // b4.a
    public Object c(List<? extends k4.a> list, ac.d<? super List<Long>> dVar) {
        return n.a(this.f3494a, true, new g(list), dVar);
    }

    @Override // b4.b
    public List<k4.a> d() {
        s0 h10 = s0.h("select * from BlockedWordEntity order by id desc", 0);
        this.f3494a.d();
        Cursor b10 = q1.c.b(this.f3494a, h10, false, null);
        try {
            int e10 = q1.b.e(b10, "word");
            int e11 = q1.b.e(b10, "id");
            ArrayList arrayList = new ArrayList(b10.getCount());
            while (b10.moveToNext()) {
                k4.a aVar = new k4.a(b10.isNull(e10) ? null : b10.getString(e10));
                aVar.c(b10.getLong(e11));
                arrayList.add(aVar);
            }
            return arrayList;
        } finally {
            b10.close();
            h10.release();
        }
    }

    @Override // b4.b
    public Object e(ac.d<? super p> dVar) {
        return n.a(this.f3494a, true, new a(), dVar);
    }

    @Override // b4.a
    /* renamed from: j, reason: merged with bridge method [inline-methods] */
    public Object b(k4.a aVar, ac.d<? super Integer> dVar) {
        return n.a(this.f3494a, true, new h(aVar), dVar);
    }
}
