package h9;

/* compiled from: AutoValue_Event.java */
/* loaded from: classes.dex */
public final class a<T> extends c<T> {

    /* renamed from: a, reason: collision with root package name */
    public final Integer f7465a;

    /* renamed from: b, reason: collision with root package name */
    public final T f7466b;

    /* renamed from: c, reason: collision with root package name */
    public final d f7467c;

    public a(Integer num, T t10, d dVar) {
        this.f7465a = num;
        if (t10 != null) {
            this.f7466b = t10;
            if (dVar != null) {
                this.f7467c = dVar;
                return;
            }
            throw new NullPointerException("Null priority");
        }
        throw new NullPointerException("Null payload");
    }

    @Override // h9.c
    public Integer a() {
        return this.f7465a;
    }

    @Override // h9.c
    public T b() {
        return this.f7466b;
    }

    @Override // h9.c
    public d c() {
        return this.f7467c;
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof c)) {
            return false;
        }
        c cVar = (c) obj;
        Integer num = this.f7465a;
        if (num != null ? num.equals(cVar.a()) : cVar.a() == null) {
            if (this.f7466b.equals(cVar.b()) && this.f7467c.equals(cVar.c())) {
                return true;
            }
        }
        return false;
    }

    public int hashCode() {
        Integer num = this.f7465a;
        return (((((num == null ? 0 : num.hashCode()) ^ 1000003) * 1000003) ^ this.f7466b.hashCode()) * 1000003) ^ this.f7467c.hashCode();
    }

    public String toString() {
        return "Event{code=" + this.f7465a + ", payload=" + this.f7466b + ", priority=" + this.f7467c + "}";
    }
}
