package p9;

import java.util.concurrent.Executor;
import java.util.logging.Logger;
import k9.m;
import k9.r;
import q9.v;
import s9.a;

/* compiled from: DefaultScheduler.java */
/* loaded from: classes.dex */
public class c implements e {

    /* renamed from: f, reason: collision with root package name */
    public static final Logger f12132f = Logger.getLogger(r.class.getName());

    /* renamed from: a, reason: collision with root package name */
    public final v f12133a;

    /* renamed from: b, reason: collision with root package name */
    public final Executor f12134b;

    /* renamed from: c, reason: collision with root package name */
    public final l9.e f12135c;

    /* renamed from: d, reason: collision with root package name */
    public final r9.c f12136d;

    /* renamed from: e, reason: collision with root package name */
    public final s9.a f12137e;

    public c(Executor executor, l9.e eVar, v vVar, r9.c cVar, s9.a aVar) {
        this.f12134b = executor;
        this.f12135c = eVar;
        this.f12133a = vVar;
        this.f12136d = cVar;
        this.f12137e = aVar;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ Object d(m mVar, k9.h hVar) {
        this.f12136d.e0(mVar, hVar);
        this.f12133a.b(mVar, 1);
        return null;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void e(final m mVar, h9.h hVar, k9.h hVar2) {
        try {
            l9.m a10 = this.f12135c.a(mVar.b());
            if (a10 == null) {
                String format = String.format("Transport backend '%s' is not registered", mVar.b());
                f12132f.warning(format);
                hVar.a(new IllegalArgumentException(format));
            } else {
                final k9.h a11 = a10.a(hVar2);
                this.f12137e.b(new a.InterfaceC0342a() { // from class: p9.b
                    @Override // s9.a.InterfaceC0342a
                    public final Object execute() {
                        Object d10;
                        d10 = c.this.d(mVar, a11);
                        return d10;
                    }
                });
                hVar.a(null);
            }
        } catch (Exception e10) {
            f12132f.warning("Error scheduling event " + e10.getMessage());
            hVar.a(e10);
        }
    }

    @Override // p9.e
    public void a(final m mVar, final k9.h hVar, final h9.h hVar2) {
        this.f12134b.execute(new Runnable() { // from class: p9.a
            @Override // java.lang.Runnable
            public final void run() {
                c.this.e(mVar, hVar2, hVar);
            }
        });
    }
}
