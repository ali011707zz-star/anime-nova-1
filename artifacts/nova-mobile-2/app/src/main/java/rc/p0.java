package rc;

import ac.g;

/* compiled from: CoroutineName.kt */
/* loaded from: classes2.dex */
public final class p0 extends ac.a {

    /* renamed from: g, reason: collision with root package name */
    public static final a f13318g = new a(null);

    /* renamed from: f, reason: collision with root package name */
    public final String f13319f;

    /* compiled from: CoroutineName.kt */
    /* loaded from: classes2.dex */
    public static final class a implements g.c<p0> {
        public a() {
        }

        public /* synthetic */ a(jc.g gVar) {
            this();
        }
    }

    public final String H0() {
        return this.f13319f;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        return (obj instanceof p0) && jc.l.a(this.f13319f, ((p0) obj).f13319f);
    }

    public int hashCode() {
        return this.f13319f.hashCode();
    }

    public String toString() {
        return "CoroutineName(" + this.f13319f + ')';
    }
}
