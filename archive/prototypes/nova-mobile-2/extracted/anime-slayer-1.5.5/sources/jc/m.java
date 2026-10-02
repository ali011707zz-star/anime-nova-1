package jc;

import java.io.Serializable;

/* compiled from: Lambda.kt */
/* loaded from: classes.dex */
public abstract class m<R> implements h<R>, Serializable {
    private final int arity;

    public m(int i10) {
        this.arity = i10;
    }

    @Override // jc.h
    public int getArity() {
        return this.arity;
    }

    public String toString() {
        String h10 = y.h(this);
        l.e(h10, "renderLambdaToString(this)");
        return h10;
    }
}
