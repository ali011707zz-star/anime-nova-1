package l9;

import android.content.Context;

/* compiled from: AutoValue_CreationContext.java */
/* loaded from: classes.dex */
public final class c extends h {

    /* renamed from: a, reason: collision with root package name */
    public final Context f10541a;

    /* renamed from: b, reason: collision with root package name */
    public final t9.a f10542b;

    /* renamed from: c, reason: collision with root package name */
    public final t9.a f10543c;

    /* renamed from: d, reason: collision with root package name */
    public final String f10544d;

    public c(Context context, t9.a aVar, t9.a aVar2, String str) {
        if (context != null) {
            this.f10541a = context;
            if (aVar != null) {
                this.f10542b = aVar;
                if (aVar2 != null) {
                    this.f10543c = aVar2;
                    if (str != null) {
                        this.f10544d = str;
                        return;
                    }
                    throw new NullPointerException("Null backendName");
                }
                throw new NullPointerException("Null monotonicClock");
            }
            throw new NullPointerException("Null wallClock");
        }
        throw new NullPointerException("Null applicationContext");
    }

    @Override // l9.h
    public Context b() {
        return this.f10541a;
    }

    @Override // l9.h
    public String c() {
        return this.f10544d;
    }

    @Override // l9.h
    public t9.a d() {
        return this.f10543c;
    }

    @Override // l9.h
    public t9.a e() {
        return this.f10542b;
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof h)) {
            return false;
        }
        h hVar = (h) obj;
        return this.f10541a.equals(hVar.b()) && this.f10542b.equals(hVar.e()) && this.f10543c.equals(hVar.d()) && this.f10544d.equals(hVar.c());
    }

    public int hashCode() {
        return ((((((this.f10541a.hashCode() ^ 1000003) * 1000003) ^ this.f10542b.hashCode()) * 1000003) ^ this.f10543c.hashCode()) * 1000003) ^ this.f10544d.hashCode();
    }

    public String toString() {
        return "CreationContext{applicationContext=" + this.f10541a + ", wallClock=" + this.f10542b + ", monotonicClock=" + this.f10543c + ", backendName=" + this.f10544d + "}";
    }
}
