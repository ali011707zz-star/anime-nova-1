package wc;

/* compiled from: LockFreeLinkedList.kt */
/* loaded from: classes2.dex */
public class m extends o {
    @Override // wc.o
    public boolean O() {
        return false;
    }

    @Override // wc.o
    public final boolean P() {
        throw new IllegalStateException("head cannot be removed".toString());
    }

    public final boolean U() {
        return J() == this;
    }
}
