package o1;

import android.database.Cursor;
import android.database.SQLException;
import android.os.CancellationSignal;
import android.util.Pair;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.List;
import java.util.concurrent.Executor;
import o1.p0;

/* compiled from: QueryInterceptorDatabase.java */
/* loaded from: classes.dex */
public final class f0 implements r1.g {

    /* renamed from: f, reason: collision with root package name */
    public final r1.g f11495f;

    /* renamed from: g, reason: collision with root package name */
    public final p0.f f11496g;

    /* renamed from: h, reason: collision with root package name */
    public final Executor f11497h;

    public f0(r1.g gVar, p0.f fVar, Executor executor) {
        this.f11495f = gVar;
        this.f11496g = fVar;
        this.f11497h = executor;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void N() {
        this.f11496g.a("BEGIN EXCLUSIVE TRANSACTION", Collections.emptyList());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void R() {
        this.f11496g.a("BEGIN DEFERRED TRANSACTION", Collections.emptyList());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void U() {
        this.f11496g.a("END TRANSACTION", Collections.emptyList());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void V(String str) {
        this.f11496g.a(str, new ArrayList(0));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void a0(String str, List list) {
        this.f11496g.a(str, list);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void c0(String str) {
        this.f11496g.a(str, Collections.emptyList());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void h0(r1.j jVar, i0 i0Var) {
        this.f11496g.a(jVar.b(), i0Var.b());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void k0(r1.j jVar, i0 i0Var) {
        this.f11496g.a(jVar.b(), i0Var.b());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void w0() {
        this.f11496g.a("TRANSACTION SUCCESSFUL", Collections.emptyList());
    }

    @Override // r1.g
    public Cursor A0(final String str) {
        this.f11497h.execute(new Runnable() { // from class: o1.b0
            @Override // java.lang.Runnable
            public final void run() {
                f0.this.c0(str);
            }
        });
        return this.f11495f.A0(str);
    }

    @Override // r1.g
    public r1.k C(String str) {
        return new l0(this.f11495f.C(str), this.f11496g, str, this.f11497h);
    }

    @Override // r1.g
    public boolean Q() {
        return this.f11495f.Q();
    }

    @Override // r1.g
    public boolean b0() {
        return this.f11495f.b0();
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public void close() throws IOException {
        this.f11495f.close();
    }

    @Override // r1.g
    public void f() {
        this.f11497h.execute(new Runnable() { // from class: o1.w
            @Override // java.lang.Runnable
            public final void run() {
                f0.this.U();
            }
        });
        this.f11495f.f();
    }

    @Override // r1.g
    public void g() {
        this.f11497h.execute(new Runnable() { // from class: o1.z
            @Override // java.lang.Runnable
            public final void run() {
                f0.this.N();
            }
        });
        this.f11495f.g();
    }

    @Override // r1.g
    public void g0() {
        this.f11497h.execute(new Runnable() { // from class: o1.y
            @Override // java.lang.Runnable
            public final void run() {
                f0.this.w0();
            }
        });
        this.f11495f.g0();
    }

    @Override // r1.g
    public String getPath() {
        return this.f11495f.getPath();
    }

    @Override // r1.g
    public Cursor i0(final r1.j jVar) {
        final i0 i0Var = new i0();
        jVar.d(i0Var);
        this.f11497h.execute(new Runnable() { // from class: o1.d0
            @Override // java.lang.Runnable
            public final void run() {
                f0.this.h0(jVar, i0Var);
            }
        });
        return this.f11495f.i0(jVar);
    }

    @Override // r1.g
    public boolean isOpen() {
        return this.f11495f.isOpen();
    }

    @Override // r1.g
    public void j0(final String str, Object[] objArr) throws SQLException {
        final ArrayList arrayList = new ArrayList();
        arrayList.addAll(Arrays.asList(objArr));
        this.f11497h.execute(new Runnable() { // from class: o1.c0
            @Override // java.lang.Runnable
            public final void run() {
                f0.this.a0(str, arrayList);
            }
        });
        this.f11495f.j0(str, arrayList.toArray());
    }

    @Override // r1.g
    public void l0() {
        this.f11497h.execute(new Runnable() { // from class: o1.x
            @Override // java.lang.Runnable
            public final void run() {
                f0.this.R();
            }
        });
        this.f11495f.l0();
    }

    @Override // r1.g
    public Cursor n(final r1.j jVar, CancellationSignal cancellationSignal) {
        final i0 i0Var = new i0();
        jVar.d(i0Var);
        this.f11497h.execute(new Runnable() { // from class: o1.e0
            @Override // java.lang.Runnable
            public final void run() {
                f0.this.k0(jVar, i0Var);
            }
        });
        return this.f11495f.i0(jVar);
    }

    @Override // r1.g
    public List<Pair<String, String>> q() {
        return this.f11495f.q();
    }

    @Override // r1.g
    public void s(final String str) throws SQLException {
        this.f11497h.execute(new Runnable() { // from class: o1.a0
            @Override // java.lang.Runnable
            public final void run() {
                f0.this.V(str);
            }
        });
        this.f11495f.s(str);
    }
}
