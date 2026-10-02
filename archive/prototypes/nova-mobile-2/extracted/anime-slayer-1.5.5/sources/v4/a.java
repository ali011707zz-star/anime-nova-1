package v4;

import com.google.android.gms.common.internal.ImagesContract;
import java.util.List;
import jc.l;

/* compiled from: ServerModel.kt */
/* loaded from: classes.dex */
public final class a {
    private String host;
    private String shorten;
    private int type;
    private String url;
    private List<String> urls;

    public a(String str, String str2, String str3, int i10, List<String> list) {
        l.f(str, "host");
        l.f(str2, ImagesContract.URL);
        l.f(str3, "shorten");
        l.f(list, "urls");
        this.host = str;
        this.url = str2;
        this.shorten = str3;
        this.type = i10;
        this.urls = list;
    }

    public final String a() {
        return this.shorten;
    }

    public final int b() {
        return this.type;
    }

    public final List<String> c() {
        return this.urls;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof a)) {
            return false;
        }
        a aVar = (a) obj;
        return l.a(this.host, aVar.host) && l.a(this.url, aVar.url) && l.a(this.shorten, aVar.shorten) && this.type == aVar.type && l.a(this.urls, aVar.urls);
    }

    public int hashCode() {
        return (((((((this.host.hashCode() * 31) + this.url.hashCode()) * 31) + this.shorten.hashCode()) * 31) + this.type) * 31) + this.urls.hashCode();
    }

    public String toString() {
        return "ServerModel(host=" + this.host + ", url=" + this.url + ", shorten=" + this.shorten + ", type=" + this.type + ", urls=" + this.urls + ')';
    }
}
