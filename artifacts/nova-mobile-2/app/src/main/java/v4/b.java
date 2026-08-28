package v4;

import java.util.HashMap;
import jc.l;

/* compiled from: ServersModel.kt */
/* loaded from: classes.dex */
public final class b {
    private final boolean append_title_to_url;
    private final boolean external;
    private final HashMap<String, String> headers;
    private final int hls;
    private final int min_sdk_required;
    private String name;
    private final boolean optional;
    private final int rq;
    private final String shorten;

    /* renamed from: v, reason: collision with root package name */
    private final int f14798v;
    private final int wait_for_partial_content_load;
    private final boolean webview_player;

    public final boolean a() {
        return this.append_title_to_url;
    }

    public final boolean b() {
        return this.external;
    }

    public final HashMap<String, String> c() {
        return this.headers;
    }

    public final int d() {
        return this.hls;
    }

    public final int e() {
        return this.min_sdk_required;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof b)) {
            return false;
        }
        b bVar = (b) obj;
        return l.a(this.name, bVar.name) && l.a(this.shorten, bVar.shorten) && this.rq == bVar.rq && this.f14798v == bVar.f14798v && this.hls == bVar.hls && l.a(this.headers, bVar.headers) && this.optional == bVar.optional && this.append_title_to_url == bVar.append_title_to_url && this.external == bVar.external && this.webview_player == bVar.webview_player && this.wait_for_partial_content_load == bVar.wait_for_partial_content_load && this.min_sdk_required == bVar.min_sdk_required;
    }

    public final String f() {
        return this.name;
    }

    public final boolean g() {
        return this.optional;
    }

    public final String h() {
        return this.shorten;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public int hashCode() {
        int hashCode = ((((((((this.name.hashCode() * 31) + this.shorten.hashCode()) * 31) + this.rq) * 31) + this.f14798v) * 31) + this.hls) * 31;
        HashMap<String, String> hashMap = this.headers;
        int hashCode2 = (hashCode + (hashMap == null ? 0 : hashMap.hashCode())) * 31;
        boolean z10 = this.optional;
        int i10 = z10;
        if (z10 != 0) {
            i10 = 1;
        }
        int i11 = (hashCode2 + i10) * 31;
        boolean z11 = this.append_title_to_url;
        int i12 = z11;
        if (z11 != 0) {
            i12 = 1;
        }
        int i13 = (i11 + i12) * 31;
        boolean z12 = this.external;
        int i14 = z12;
        if (z12 != 0) {
            i14 = 1;
        }
        int i15 = (i13 + i14) * 31;
        boolean z13 = this.webview_player;
        return ((((i15 + (z13 ? 1 : z13 ? 1 : 0)) * 31) + this.wait_for_partial_content_load) * 31) + this.min_sdk_required;
    }

    public final int i() {
        return this.f14798v;
    }

    public final int j() {
        return this.wait_for_partial_content_load;
    }

    public final boolean k() {
        return this.webview_player;
    }

    public String toString() {
        return "ServersModel(name=" + this.name + ", shorten=" + this.shorten + ", rq=" + this.rq + ", v=" + this.f14798v + ", hls=" + this.hls + ", headers=" + this.headers + ", optional=" + this.optional + ", append_title_to_url=" + this.append_title_to_url + ", external=" + this.external + ", webview_player=" + this.webview_player + ", wait_for_partial_content_load=" + this.wait_for_partial_content_load + ", min_sdk_required=" + this.min_sdk_required + ')';
    }
}
