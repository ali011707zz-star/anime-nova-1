package r4;

/* compiled from: Notify.kt */
/* loaded from: classes.dex */
public final class h {
    private final String message;
    private final String status;

    public final String a() {
        return this.message;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof h)) {
            return false;
        }
        h hVar = (h) obj;
        return jc.l.a(this.status, hVar.status) && jc.l.a(this.message, hVar.message);
    }

    public int hashCode() {
        return (this.status.hashCode() * 31) + this.message.hashCode();
    }

    public String toString() {
        return "Notify(status=" + this.status + ", message=" + this.message + ')';
    }
}
