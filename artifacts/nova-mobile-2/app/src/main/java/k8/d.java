package k8;

import java.security.MessageDigest;
import l8.j;
import p7.e;

/* compiled from: ObjectKey.java */
/* loaded from: classes.dex */
public final class d implements e {

    /* renamed from: b, reason: collision with root package name */
    public final Object f10060b;

    public d(Object obj) {
        this.f10060b = j.d(obj);
    }

    @Override // p7.e
    public void b(MessageDigest messageDigest) {
        messageDigest.update(this.f10060b.toString().getBytes(e.f12083a));
    }

    @Override // p7.e
    public boolean equals(Object obj) {
        if (obj instanceof d) {
            return this.f10060b.equals(((d) obj).f10060b);
        }
        return false;
    }

    @Override // p7.e
    public int hashCode() {
        return this.f10060b.hashCode();
    }

    public String toString() {
        return "ObjectKey{object=" + this.f10060b + '}';
    }
}
