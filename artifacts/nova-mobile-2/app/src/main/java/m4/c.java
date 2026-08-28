package m4;

import jc.l;

/* compiled from: FlagReason.kt */
/* loaded from: classes.dex */
public final class c {
    private final long comment_flag_reason_id;
    private final String flag_reason;
    private final int flag_reason_order;

    public c(long j10, String str, int i10) {
        l.f(str, "flag_reason");
        this.comment_flag_reason_id = j10;
        this.flag_reason = str;
        this.flag_reason_order = i10;
    }

    public final long a() {
        return this.comment_flag_reason_id;
    }

    public final String b() {
        return this.flag_reason;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof c)) {
            return false;
        }
        c cVar = (c) obj;
        return this.comment_flag_reason_id == cVar.comment_flag_reason_id && l.a(this.flag_reason, cVar.flag_reason) && this.flag_reason_order == cVar.flag_reason_order;
    }

    public int hashCode() {
        return (((a.a(this.comment_flag_reason_id) * 31) + this.flag_reason.hashCode()) * 31) + this.flag_reason_order;
    }

    public String toString() {
        return "FlagReason(comment_flag_reason_id=" + this.comment_flag_reason_id + ", flag_reason=" + this.flag_reason + ", flag_reason_order=" + this.flag_reason_order + ')';
    }
}
