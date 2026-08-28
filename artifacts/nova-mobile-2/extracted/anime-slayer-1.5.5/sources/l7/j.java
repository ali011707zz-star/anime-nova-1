package l7;

import com.warkiz.widget.IndicatorSeekBar;

/* compiled from: ViewExtensions.kt */
/* loaded from: classes.dex */
public final class j implements cb.e {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ ic.l<Integer, vb.p> f10499a;

    /* JADX WARN: Multi-variable type inference failed */
    public j(ic.l<? super Integer, vb.p> lVar) {
        this.f10499a = lVar;
    }

    @Override // cb.e
    public void a(IndicatorSeekBar indicatorSeekBar) {
    }

    @Override // cb.e
    public void b(cb.j jVar) {
        jc.l.f(jVar, "seekParams");
        this.f10499a.invoke(Integer.valueOf(jVar.f3887b));
    }

    @Override // cb.e
    public void c(IndicatorSeekBar indicatorSeekBar) {
    }
}
