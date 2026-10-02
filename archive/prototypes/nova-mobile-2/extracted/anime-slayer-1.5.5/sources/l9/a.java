package l9;

import java.util.Arrays;
import l9.f;

/* compiled from: AutoValue_BackendRequest.java */
/* loaded from: classes.dex */
public final class a extends f {

    /* renamed from: a, reason: collision with root package name */
    public final Iterable<k9.h> f10535a;

    /* renamed from: b, reason: collision with root package name */
    public final byte[] f10536b;

    /* compiled from: AutoValue_BackendRequest.java */
    /* loaded from: classes.dex */
    public static final class b extends f.a {

        /* renamed from: a, reason: collision with root package name */
        public Iterable<k9.h> f10537a;

        /* renamed from: b, reason: collision with root package name */
        public byte[] f10538b;

        @Override // l9.f.a
        public f a() {
            String str = "";
            if (this.f10537a == null) {
                str = " events";
            }
            if (str.isEmpty()) {
                return new a(this.f10537a, this.f10538b);
            }
            throw new IllegalStateException("Missing required properties:" + str);
        }

        @Override // l9.f.a
        public f.a b(Iterable<k9.h> iterable) {
            if (iterable != null) {
                this.f10537a = iterable;
                return this;
            }
            throw new NullPointerException("Null events");
        }

        @Override // l9.f.a
        public f.a c(byte[] bArr) {
            this.f10538b = bArr;
            return this;
        }
    }

    @Override // l9.f
    public Iterable<k9.h> b() {
        return this.f10535a;
    }

    @Override // l9.f
    public byte[] c() {
        return this.f10536b;
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof f)) {
            return false;
        }
        f fVar = (f) obj;
        if (this.f10535a.equals(fVar.b())) {
            if (Arrays.equals(this.f10536b, fVar instanceof a ? ((a) fVar).f10536b : fVar.c())) {
                return true;
            }
        }
        return false;
    }

    public int hashCode() {
        return ((this.f10535a.hashCode() ^ 1000003) * 1000003) ^ Arrays.hashCode(this.f10536b);
    }

    public String toString() {
        return "BackendRequest{events=" + this.f10535a + ", extras=" + Arrays.toString(this.f10536b) + "}";
    }

    public a(Iterable<k9.h> iterable, byte[] bArr) {
        this.f10535a = iterable;
        this.f10536b = bArr;
    }
}
