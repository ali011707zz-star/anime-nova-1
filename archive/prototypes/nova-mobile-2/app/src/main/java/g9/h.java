package g9;

/* compiled from: TransformerHorizontalBarChart.java */
/* loaded from: classes.dex */
public class h extends g {
    public h(j jVar) {
        super(jVar);
    }

    @Override // g9.g
    public void f(boolean z10) {
        this.f7067b.reset();
        if (!z10) {
            this.f7067b.postTranslate(this.f7068c.G(), this.f7068c.l() - this.f7068c.F());
        } else {
            this.f7067b.setTranslate(-(this.f7068c.m() - this.f7068c.H()), this.f7068c.l() - this.f7068c.F());
            this.f7067b.postScale(-1.0f, 1.0f);
        }
    }
}
