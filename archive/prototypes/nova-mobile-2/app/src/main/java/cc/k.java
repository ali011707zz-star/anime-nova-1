package cc;

import jc.l;
import jc.y;

/* compiled from: ContinuationImpl.kt */
/* loaded from: classes.dex */
public abstract class k extends d implements jc.h<Object> {
    private final int arity;

    public k(int i10, ac.d<Object> dVar) {
        super(dVar);
        this.arity = i10;
    }

    @Override // jc.h
    public int getArity() {
        return this.arity;
    }

    @Override // cc.a
    public String toString() {
        if (getCompletion() == null) {
            String g10 = y.g(this);
            l.e(g10, "renderLambdaToString(this)");
            return g10;
        }
        return super.toString();
    }

    public k(int i10) {
        this(i10, null);
    }
}
