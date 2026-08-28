package r4;

/* compiled from: Notify.kt */
/* loaded from: classes.dex */
public final class i {
    private final h notify;

    public final h a() {
        return this.notify;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        return (obj instanceof i) && jc.l.a(this.notify, ((i) obj).notify);
    }

    public int hashCode() {
        return this.notify.hashCode();
    }

    public String toString() {
        return "NotifyContainer(notify=" + this.notify + ')';
    }
}
