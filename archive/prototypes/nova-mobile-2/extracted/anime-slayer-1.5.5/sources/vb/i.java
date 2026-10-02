package vb;

import java.io.Serializable;

/* compiled from: Tuples.kt */
/* loaded from: classes2.dex */
public final class i<A, B> implements Serializable {

    /* renamed from: f, reason: collision with root package name */
    public final A f15018f;

    /* renamed from: g, reason: collision with root package name */
    public final B f15019g;

    public i(A a10, B b10) {
        this.f15018f = a10;
        this.f15019g = b10;
    }

    public final A a() {
        return this.f15018f;
    }

    public final B b() {
        return this.f15019g;
    }

    public final A c() {
        return this.f15018f;
    }

    public final B d() {
        return this.f15019g;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof i)) {
            return false;
        }
        i iVar = (i) obj;
        return jc.l.a(this.f15018f, iVar.f15018f) && jc.l.a(this.f15019g, iVar.f15019g);
    }

    public int hashCode() {
        A a10 = this.f15018f;
        int hashCode = (a10 == null ? 0 : a10.hashCode()) * 31;
        B b10 = this.f15019g;
        return hashCode + (b10 != null ? b10.hashCode() : 0);
    }

    public String toString() {
        return '(' + this.f15018f + ", " + this.f15019g + ')';
    }
}
