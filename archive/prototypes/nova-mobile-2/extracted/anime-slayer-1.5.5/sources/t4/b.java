package t4;

import com.twitter.sdk.android.core.internal.scribe.ScribeConfig;
import jc.g;
import jc.l;
import qc.m;

/* compiled from: WebToken.kt */
/* loaded from: classes.dex */
public final class b {
    private final String access_token;
    private final long expires_in;
    private long expiry_time;

    /* renamed from: id, reason: collision with root package name */
    private long f14014id;
    private final String refresh_token;
    private final String scope;
    private final String token_type;

    public b(long j10, String str, long j11, long j12, String str2, String str3, String str4) {
        l.f(str, "access_token");
        l.f(str2, "token_type");
        l.f(str3, "scope");
        l.f(str4, "refresh_token");
        this.f14014id = j10;
        this.access_token = str;
        this.expires_in = j11;
        this.expiry_time = j12;
        this.token_type = str2;
        this.scope = str3;
        this.refresh_token = str4;
    }

    public final void a(long j10) {
        this.expiry_time = (j10 / 1000) + (this.expires_in - ScribeConfig.DEFAULT_SEND_INTERVAL_SECONDS);
    }

    public final b b(long j10, String str, long j11, long j12, String str2, String str3, String str4) {
        l.f(str, "access_token");
        l.f(str2, "token_type");
        l.f(str3, "scope");
        l.f(str4, "refresh_token");
        return new b(j10, str, j11, j12, str2, str3, str4);
    }

    public final String d() {
        return this.access_token;
    }

    public final String e() {
        return this.refresh_token;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof b)) {
            return false;
        }
        b bVar = (b) obj;
        return this.f14014id == bVar.f14014id && l.a(this.access_token, bVar.access_token) && this.expires_in == bVar.expires_in && this.expiry_time == bVar.expiry_time && l.a(this.token_type, bVar.token_type) && l.a(this.scope, bVar.scope) && l.a(this.refresh_token, bVar.refresh_token);
    }

    public int hashCode() {
        return (((((((((((m4.a.a(this.f14014id) * 31) + this.access_token.hashCode()) * 31) + m4.a.a(this.expires_in)) * 31) + m4.a.a(this.expiry_time)) * 31) + this.token_type.hashCode()) * 31) + this.scope.hashCode()) * 31) + this.refresh_token.hashCode();
    }

    public String toString() {
        return m.f("\n{\n    \"access_token\": " + this.access_token + "\n    \"expires_in\": " + this.expires_in + "\n    \"expiry_time\": " + this.expiry_time + "\n    \"token_type\": " + this.token_type + "\n    \"scope\": " + this.scope + "\n    \"refresh_token\": " + this.refresh_token + "\n}\n        ");
    }

    public /* synthetic */ b(long j10, String str, long j11, long j12, String str2, String str3, String str4, int i10, g gVar) {
        this((i10 & 1) != 0 ? 1L : j10, str, j11, (i10 & 8) != 0 ? 0L : j12, str2, str3, str4);
    }
}
