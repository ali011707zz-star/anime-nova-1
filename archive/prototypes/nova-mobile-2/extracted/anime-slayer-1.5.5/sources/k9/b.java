package k9;

import k9.l;

/* compiled from: AutoValue_SendRequest.java */
/* loaded from: classes.dex */
public final class b extends l {

    /* renamed from: a, reason: collision with root package name */
    public final m f10073a;

    /* renamed from: b, reason: collision with root package name */
    public final String f10074b;

    /* renamed from: c, reason: collision with root package name */
    public final h9.c<?> f10075c;

    /* renamed from: d, reason: collision with root package name */
    public final h9.e<?, byte[]> f10076d;

    /* renamed from: e, reason: collision with root package name */
    public final h9.b f10077e;

    /* compiled from: AutoValue_SendRequest.java */
    /* renamed from: k9.b$b, reason: collision with other inner class name */
    /* loaded from: classes.dex */
    public static final class C0215b extends l.a {

        /* renamed from: a, reason: collision with root package name */
        public m f10078a;

        /* renamed from: b, reason: collision with root package name */
        public String f10079b;

        /* renamed from: c, reason: collision with root package name */
        public h9.c<?> f10080c;

        /* renamed from: d, reason: collision with root package name */
        public h9.e<?, byte[]> f10081d;

        /* renamed from: e, reason: collision with root package name */
        public h9.b f10082e;

        @Override // k9.l.a
        public l a() {
            String str = "";
            if (this.f10078a == null) {
                str = " transportContext";
            }
            if (this.f10079b == null) {
                str = str + " transportName";
            }
            if (this.f10080c == null) {
                str = str + " event";
            }
            if (this.f10081d == null) {
                str = str + " transformer";
            }
            if (this.f10082e == null) {
                str = str + " encoding";
            }
            if (str.isEmpty()) {
                return new b(this.f10078a, this.f10079b, this.f10080c, this.f10081d, this.f10082e);
            }
            throw new IllegalStateException("Missing required properties:" + str);
        }

        @Override // k9.l.a
        public l.a b(h9.b bVar) {
            if (bVar != null) {
                this.f10082e = bVar;
                return this;
            }
            throw new NullPointerException("Null encoding");
        }

        @Override // k9.l.a
        public l.a c(h9.c<?> cVar) {
            if (cVar != null) {
                this.f10080c = cVar;
                return this;
            }
            throw new NullPointerException("Null event");
        }

        @Override // k9.l.a
        public l.a d(h9.e<?, byte[]> eVar) {
            if (eVar != null) {
                this.f10081d = eVar;
                return this;
            }
            throw new NullPointerException("Null transformer");
        }

        @Override // k9.l.a
        public l.a e(m mVar) {
            if (mVar != null) {
                this.f10078a = mVar;
                return this;
            }
            throw new NullPointerException("Null transportContext");
        }

        @Override // k9.l.a
        public l.a f(String str) {
            if (str != null) {
                this.f10079b = str;
                return this;
            }
            throw new NullPointerException("Null transportName");
        }
    }

    @Override // k9.l
    public h9.b b() {
        return this.f10077e;
    }

    @Override // k9.l
    public h9.c<?> c() {
        return this.f10075c;
    }

    @Override // k9.l
    public h9.e<?, byte[]> e() {
        return this.f10076d;
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof l)) {
            return false;
        }
        l lVar = (l) obj;
        return this.f10073a.equals(lVar.f()) && this.f10074b.equals(lVar.g()) && this.f10075c.equals(lVar.c()) && this.f10076d.equals(lVar.e()) && this.f10077e.equals(lVar.b());
    }

    @Override // k9.l
    public m f() {
        return this.f10073a;
    }

    @Override // k9.l
    public String g() {
        return this.f10074b;
    }

    public int hashCode() {
        return ((((((((this.f10073a.hashCode() ^ 1000003) * 1000003) ^ this.f10074b.hashCode()) * 1000003) ^ this.f10075c.hashCode()) * 1000003) ^ this.f10076d.hashCode()) * 1000003) ^ this.f10077e.hashCode();
    }

    public String toString() {
        return "SendRequest{transportContext=" + this.f10073a + ", transportName=" + this.f10074b + ", event=" + this.f10075c + ", transformer=" + this.f10076d + ", encoding=" + this.f10077e + "}";
    }

    public b(m mVar, String str, h9.c<?> cVar, h9.e<?, byte[]> eVar, h9.b bVar) {
        this.f10073a = mVar;
        this.f10074b = str;
        this.f10075c = cVar;
        this.f10076d = eVar;
        this.f10077e = bVar;
    }
}
