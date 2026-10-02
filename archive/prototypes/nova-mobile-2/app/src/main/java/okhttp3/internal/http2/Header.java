package okhttp3.internal.http2;

import cd.i;
import okhttp3.Headers;
import okhttp3.internal.Util;

/* loaded from: classes2.dex */
public final class Header {
    public final int hpackSize;
    public final i name;
    public final i value;
    public static final i PSEUDO_PREFIX = i.g(":");
    public static final String RESPONSE_STATUS_UTF8 = ":status";
    public static final i RESPONSE_STATUS = i.g(RESPONSE_STATUS_UTF8);
    public static final String TARGET_METHOD_UTF8 = ":method";
    public static final i TARGET_METHOD = i.g(TARGET_METHOD_UTF8);
    public static final String TARGET_PATH_UTF8 = ":path";
    public static final i TARGET_PATH = i.g(TARGET_PATH_UTF8);
    public static final String TARGET_SCHEME_UTF8 = ":scheme";
    public static final i TARGET_SCHEME = i.g(TARGET_SCHEME_UTF8);
    public static final String TARGET_AUTHORITY_UTF8 = ":authority";
    public static final i TARGET_AUTHORITY = i.g(TARGET_AUTHORITY_UTF8);

    /* loaded from: classes2.dex */
    public interface Listener {
        void onHeaders(Headers headers);
    }

    public Header(String str, String str2) {
        this(i.g(str), i.g(str2));
    }

    public boolean equals(Object obj) {
        if (!(obj instanceof Header)) {
            return false;
        }
        Header header = (Header) obj;
        return this.name.equals(header.name) && this.value.equals(header.value);
    }

    public int hashCode() {
        return ((527 + this.name.hashCode()) * 31) + this.value.hashCode();
    }

    public String toString() {
        return Util.format("%s: %s", this.name.C(), this.value.C());
    }

    public Header(i iVar, String str) {
        this(iVar, i.g(str));
    }

    public Header(i iVar, i iVar2) {
        this.name = iVar;
        this.value = iVar2;
        this.hpackSize = iVar.y() + 32 + iVar2.y();
    }
}
