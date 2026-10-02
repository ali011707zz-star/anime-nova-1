package q9;

import android.content.Context;
import android.net.ConnectivityManager;
import android.net.NetworkInfo;
import com.google.android.datatransport.runtime.synchronization.SynchronizationException;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.concurrent.Executor;
import l9.g;
import s9.a;

/* compiled from: Uploader.java */
/* loaded from: classes.dex */
public class p {

    /* renamed from: a, reason: collision with root package name */
    public final Context f12594a;

    /* renamed from: b, reason: collision with root package name */
    public final l9.e f12595b;

    /* renamed from: c, reason: collision with root package name */
    public final r9.c f12596c;

    /* renamed from: d, reason: collision with root package name */
    public final v f12597d;

    /* renamed from: e, reason: collision with root package name */
    public final Executor f12598e;

    /* renamed from: f, reason: collision with root package name */
    public final s9.a f12599f;

    /* renamed from: g, reason: collision with root package name */
    public final t9.a f12600g;

    public p(Context context, l9.e eVar, r9.c cVar, v vVar, Executor executor, s9.a aVar, t9.a aVar2) {
        this.f12594a = context;
        this.f12595b = eVar;
        this.f12596c = cVar;
        this.f12597d = vVar;
        this.f12598e = executor;
        this.f12599f = aVar;
        this.f12600g = aVar2;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ Boolean i(k9.m mVar) {
        return Boolean.valueOf(this.f12596c.e(mVar));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ Iterable j(k9.m mVar) {
        return this.f12596c.o(mVar);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ Object k(Iterable iterable, k9.m mVar, long j10) {
        this.f12596c.o0(iterable);
        this.f12596c.E0(mVar, this.f12600g.a() + j10);
        return null;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ Object l(Iterable iterable) {
        this.f12596c.l(iterable);
        return null;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ Object m(k9.m mVar, long j10) {
        this.f12596c.E0(mVar, this.f12600g.a() + j10);
        return null;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ Object n(k9.m mVar, int i10) {
        this.f12597d.b(mVar, i10 + 1);
        return null;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void o(final k9.m mVar, final int i10, Runnable runnable) {
        try {
            try {
                s9.a aVar = this.f12599f;
                final r9.c cVar = this.f12596c;
                cVar.getClass();
                aVar.b(new a.InterfaceC0342a() { // from class: q9.o
                    @Override // s9.a.InterfaceC0342a
                    public final Object execute() {
                        return Integer.valueOf(r9.c.this.i());
                    }
                });
                if (!h()) {
                    this.f12599f.b(new a.InterfaceC0342a() { // from class: q9.m
                        @Override // s9.a.InterfaceC0342a
                        public final Object execute() {
                            Object n10;
                            n10 = p.this.n(mVar, i10);
                            return n10;
                        }
                    });
                } else {
                    p(mVar, i10);
                }
            } catch (SynchronizationException unused) {
                this.f12597d.b(mVar, i10 + 1);
            }
        } finally {
            runnable.run();
        }
    }

    public boolean h() {
        NetworkInfo activeNetworkInfo = ((ConnectivityManager) this.f12594a.getSystemService("connectivity")).getActiveNetworkInfo();
        return activeNetworkInfo != null && activeNetworkInfo.isConnected();
    }

    public void p(final k9.m mVar, int i10) {
        l9.g b10;
        l9.m a10 = this.f12595b.a(mVar.b());
        long j10 = 0;
        while (true) {
            final long j11 = j10;
            while (((Boolean) this.f12599f.b(new a.InterfaceC0342a() { // from class: q9.k
                @Override // s9.a.InterfaceC0342a
                public final Object execute() {
                    Boolean i11;
                    i11 = p.this.i(mVar);
                    return i11;
                }
            })).booleanValue()) {
                final Iterable iterable = (Iterable) this.f12599f.b(new a.InterfaceC0342a() { // from class: q9.l
                    @Override // s9.a.InterfaceC0342a
                    public final Object execute() {
                        Iterable j12;
                        j12 = p.this.j(mVar);
                        return j12;
                    }
                });
                if (!iterable.iterator().hasNext()) {
                    return;
                }
                if (a10 == null) {
                    n9.a.a("Uploader", "Unknown backend for %s, deleting event batch for it...", mVar);
                    b10 = l9.g.a();
                } else {
                    ArrayList arrayList = new ArrayList();
                    Iterator it2 = iterable.iterator();
                    while (it2.hasNext()) {
                        arrayList.add(((r9.i) it2.next()).b());
                    }
                    b10 = a10.b(l9.f.a().b(arrayList).c(mVar.c()).a());
                }
                if (b10.c() == g.a.TRANSIENT_ERROR) {
                    this.f12599f.b(new a.InterfaceC0342a() { // from class: q9.j
                        @Override // s9.a.InterfaceC0342a
                        public final Object execute() {
                            Object k10;
                            k10 = p.this.k(iterable, mVar, j11);
                            return k10;
                        }
                    });
                    this.f12597d.a(mVar, i10 + 1, true);
                    return;
                } else {
                    this.f12599f.b(new a.InterfaceC0342a() { // from class: q9.i
                        @Override // s9.a.InterfaceC0342a
                        public final Object execute() {
                            Object l10;
                            l10 = p.this.l(iterable);
                            return l10;
                        }
                    });
                    if (b10.c() == g.a.OK) {
                        break;
                    }
                }
            }
            this.f12599f.b(new a.InterfaceC0342a() { // from class: q9.n
                @Override // s9.a.InterfaceC0342a
                public final Object execute() {
                    Object m10;
                    m10 = p.this.m(mVar, j11);
                    return m10;
                }
            });
            return;
            j10 = Math.max(j11, b10.b());
        }
    }

    public void q(final k9.m mVar, final int i10, final Runnable runnable) {
        this.f12598e.execute(new Runnable() { // from class: q9.h
            @Override // java.lang.Runnable
            public final void run() {
                p.this.o(mVar, i10, runnable);
            }
        });
    }
}
