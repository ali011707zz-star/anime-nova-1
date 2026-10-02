package t7;

import android.annotation.SuppressLint;
import r7.u;
import t7.i;

/* compiled from: LruResourceCache.java */
/* loaded from: classes.dex */
public class h extends l8.g<p7.e, u<?>> implements i {

    /* renamed from: e, reason: collision with root package name */
    public i.a f14064e;

    public h(long j10) {
        super(j10);
    }

    @Override // t7.i
    @SuppressLint({"InlinedApi"})
    public void a(int i10) {
        if (i10 >= 40) {
            b();
        } else if (i10 >= 20 || i10 == 15) {
            m(h() / 2);
        }
    }

    @Override // t7.i
    public /* bridge */ /* synthetic */ u c(p7.e eVar, u uVar) {
        return (u) super.k(eVar, uVar);
    }

    @Override // t7.i
    public void d(i.a aVar) {
        this.f14064e = aVar;
    }

    @Override // t7.i
    public /* bridge */ /* synthetic */ u e(p7.e eVar) {
        return (u) super.l(eVar);
    }

    @Override // l8.g
    /* renamed from: n, reason: merged with bridge method [inline-methods] */
    public int i(u<?> uVar) {
        if (uVar == null) {
            return super.i(null);
        }
        return uVar.a();
    }

    @Override // l8.g
    /* renamed from: o, reason: merged with bridge method [inline-methods] */
    public void j(p7.e eVar, u<?> uVar) {
        i.a aVar = this.f14064e;
        if (aVar == null || uVar == null) {
            return;
        }
        aVar.a(uVar);
    }
}
