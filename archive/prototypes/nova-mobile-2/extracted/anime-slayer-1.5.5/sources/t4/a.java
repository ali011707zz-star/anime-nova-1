package t4;

import jc.l;
import w4.e;

/* compiled from: AuthTokenUser.kt */
/* loaded from: classes.dex */
public final class a {
    private final String access_token;
    private final e data;
    private long expires;
    private final long expires_in;
    private final String refresh_token;
    private final String scope;
    private final String token_type;

    public final String a() {
        return this.access_token;
    }

    public final e b() {
        return this.data;
    }

    public final long c() {
        return this.expires_in;
    }

    public final String d() {
        return this.refresh_token;
    }

    public final String e() {
        return this.scope;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof a)) {
            return false;
        }
        a aVar = (a) obj;
        return l.a(this.access_token, aVar.access_token) && this.expires_in == aVar.expires_in && this.expires == aVar.expires && l.a(this.token_type, aVar.token_type) && l.a(this.scope, aVar.scope) && l.a(this.refresh_token, aVar.refresh_token) && l.a(this.data, aVar.data);
    }

    public final String f() {
        return this.token_type;
    }

    public int hashCode() {
        return (((((((((((this.access_token.hashCode() * 31) + m4.a.a(this.expires_in)) * 31) + m4.a.a(this.expires)) * 31) + this.token_type.hashCode()) * 31) + this.scope.hashCode()) * 31) + this.refresh_token.hashCode()) * 31) + this.data.hashCode();
    }

    public String toString() {
        return "AuthTokenUser(access_token=" + this.access_token + ", expires_in=" + this.expires_in + ", expires=" + this.expires + ", token_type=" + this.token_type + ", scope=" + this.scope + ", refresh_token=" + this.refresh_token + ", data=" + this.data + ')';
    }
}
