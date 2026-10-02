package rc;

/* compiled from: JobSupport.kt */
/* loaded from: classes2.dex */
public final class o2 extends wc.m implements x1 {
    public final String V(String str) {
        StringBuilder sb2 = new StringBuilder();
        sb2.append("List{");
        sb2.append(str);
        sb2.append("}[");
        boolean z10 = true;
        for (wc.o oVar = (wc.o) J(); !jc.l.a(oVar, this); oVar = oVar.K()) {
            if (oVar instanceof i2) {
                i2 i2Var = (i2) oVar;
                if (z10) {
                    z10 = false;
                } else {
                    sb2.append(", ");
                }
                sb2.append(i2Var);
            }
        }
        sb2.append("]");
        String sb3 = sb2.toString();
        jc.l.e(sb3, "StringBuilder().apply(builderAction).toString()");
        return sb3;
    }

    @Override // rc.x1
    public boolean b() {
        return true;
    }

    @Override // rc.x1
    public o2 t() {
        return this;
    }

    @Override // wc.o
    public String toString() {
        return u0.c() ? V("Active") : super.toString();
    }
}
