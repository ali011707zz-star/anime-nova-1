package k9;

import java.util.Arrays;
import k9.m;

/* compiled from: AutoValue_TransportContext.java */
/* loaded from: classes.dex */
public final class c extends m {

    /* renamed from: a, reason: collision with root package name */
    public final String f10083a;

    /* renamed from: b, reason: collision with root package name */
    public final byte[] f10084b;

    /* renamed from: c, reason: collision with root package name */
    public final h9.d f10085c;

    /* compiled from: AutoValue_TransportContext.java */
    /* loaded from: classes.dex */
    public static final class b extends m.a {

        /* renamed from: a, reason: collision with root package name */
        public String f10086a;

        /* renamed from: b, reason: collision with root package name */
        public byte[] f10087b;

        /* renamed from: c, reason: collision with root package name */
        public h9.d f10088c;

        @Override // k9.m.a
        public m a() {
            String str = "";
            if (this.f10086a == null) {
                str = " backendName";
            }
            if (this.f10088c == null) {
                str = str + " priority";
            }
            if (str.isEmpty()) {
                return new c(this.f10086a, this.f10087b, this.f10088c);
            }
            throw new IllegalStateException("Missing required properties:" + str);
        }

        @Override // k9.m.a
        public m.a b(String str) {
            if (str != null) {
                this.f10086a = str;
                return this;
            }
            throw new NullPointerException("Null backendName");
        }

        @Override // k9.m.a
        public m.a c(byte[] bArr) {
            this.f10087b = bArr;
            return this;
        }

        @Override // k9.m.a
        public m.a d(h9.d dVar) {
            if (dVar != null) {
                this.f10088c = dVar;
                return this;
            }
            throw new NullPointerException("Null priority");
        }
    }

    @Override // k9.m
    public String b() {
        return this.f10083a;
    }

    @Override // k9.m
    public byte[] c() {
        return this.f10084b;
    }

    @Override // k9.m
    public h9.d d() {
        return this.f10085c;
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof m)) {
            return false;
        }
        m mVar = (m) obj;
        if (this.f10083a.equals(mVar.b())) {
            if (Arrays.equals(this.f10084b, mVar instanceof c ? ((c) mVar).f10084b : mVar.c()) && this.f10085c.equals(mVar.d())) {
                return true;
            }
        }
        return false;
    }

    public int hashCode() {
        return ((((this.f10083a.hashCode() ^ 1000003) * 1000003) ^ Arrays.hashCode(this.f10084b)) * 1000003) ^ this.f10085c.hashCode();
    }

    public c(String str, byte[] bArr, h9.d dVar) {
        this.f10083a = str;
        this.f10084b = bArr;
        this.f10085c = dVar;
    }
}
