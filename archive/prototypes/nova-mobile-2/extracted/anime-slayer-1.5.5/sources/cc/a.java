package cc;

import java.io.Serializable;
import jc.l;
import vb.j;
import vb.p;

/* compiled from: ContinuationImpl.kt */
/* loaded from: classes.dex */
public abstract class a implements ac.d<Object>, e, Serializable {
    private final ac.d<Object> completion;

    public a(ac.d<Object> dVar) {
        this.completion = dVar;
    }

    public ac.d<p> create(ac.d<?> dVar) {
        l.f(dVar, "completion");
        throw new UnsupportedOperationException("create(Continuation) has not been overridden");
    }

    @Override // cc.e
    public e getCallerFrame() {
        ac.d<Object> dVar = this.completion;
        if (dVar instanceof e) {
            return (e) dVar;
        }
        return null;
    }

    public final ac.d<Object> getCompletion() {
        return this.completion;
    }

    @Override // cc.e
    public StackTraceElement getStackTraceElement() {
        return g.d(this);
    }

    public abstract Object invokeSuspend(Object obj);

    public void releaseIntercepted() {
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // ac.d
    public final void resumeWith(Object obj) {
        Object invokeSuspend;
        ac.d dVar = this;
        while (true) {
            h.b(dVar);
            a aVar = (a) dVar;
            ac.d dVar2 = aVar.completion;
            l.c(dVar2);
            try {
                invokeSuspend = aVar.invokeSuspend(obj);
            } catch (Throwable th) {
                j.a aVar2 = vb.j.f15020f;
                obj = vb.j.a(vb.k.a(th));
            }
            if (invokeSuspend == bc.c.d()) {
                return;
            }
            j.a aVar3 = vb.j.f15020f;
            obj = vb.j.a(invokeSuspend);
            aVar.releaseIntercepted();
            if (!(dVar2 instanceof a)) {
                dVar2.resumeWith(obj);
                return;
            }
            dVar = dVar2;
        }
    }

    public String toString() {
        StringBuilder sb2 = new StringBuilder();
        sb2.append("Continuation at ");
        Object stackTraceElement = getStackTraceElement();
        if (stackTraceElement == null) {
            stackTraceElement = getClass().getName();
        }
        sb2.append(stackTraceElement);
        return sb2.toString();
    }

    public ac.d<p> create(Object obj, ac.d<?> dVar) {
        l.f(dVar, "completion");
        throw new UnsupportedOperationException("create(Any?;Continuation) has not been overridden");
    }
}
