package q9;

import java.util.Iterator;
import java.util.concurrent.Executor;
import s9.a;

/* compiled from: WorkInitializer.java */
/* loaded from: classes.dex */
public class t {

    /* renamed from: a, reason: collision with root package name */
    public final Executor f12610a;

    /* renamed from: b, reason: collision with root package name */
    public final r9.c f12611b;

    /* renamed from: c, reason: collision with root package name */
    public final v f12612c;

    /* renamed from: d, reason: collision with root package name */
    public final s9.a f12613d;

    public t(Executor executor, r9.c cVar, v vVar, s9.a aVar) {
        this.f12610a = executor;
        this.f12611b = cVar;
        this.f12612c = vVar;
        this.f12613d = aVar;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ Object d() {
        Iterator<k9.m> it2 = this.f12611b.S().iterator();
        while (it2.hasNext()) {
            this.f12612c.b(it2.next(), 1);
        }
        return null;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void e() {
        this.f12613d.b(new a.InterfaceC0342a() { // from class: q9.s
            @Override // s9.a.InterfaceC0342a
            public final Object execute() {
                Object d10;
                d10 = t.this.d();
                return d10;
            }
        });
    }

    public void c() {
        this.f12610a.execute(new Runnable() { // from class: q9.r
            @Override // java.lang.Runnable
            public final void run() {
                t.this.e();
            }
        });
    }
}
