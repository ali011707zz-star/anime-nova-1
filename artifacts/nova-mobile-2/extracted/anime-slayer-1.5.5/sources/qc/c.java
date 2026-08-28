package qc;

import java.nio.charset.Charset;
import org.apache.http.protocol.HTTP;

/* compiled from: Charsets.kt */
/* loaded from: classes2.dex */
public final class c {

    /* renamed from: a, reason: collision with root package name */
    public static final c f12677a = new c();

    /* renamed from: b, reason: collision with root package name */
    public static final Charset f12678b;

    /* renamed from: c, reason: collision with root package name */
    public static final Charset f12679c;

    /* renamed from: d, reason: collision with root package name */
    public static final Charset f12680d;

    /* renamed from: e, reason: collision with root package name */
    public static final Charset f12681e;

    /* renamed from: f, reason: collision with root package name */
    public static final Charset f12682f;

    /* renamed from: g, reason: collision with root package name */
    public static final Charset f12683g;

    static {
        Charset forName = Charset.forName(HTTP.UTF_8);
        jc.l.e(forName, "forName(\"UTF-8\")");
        f12678b = forName;
        Charset forName2 = Charset.forName(HTTP.UTF_16);
        jc.l.e(forName2, "forName(\"UTF-16\")");
        f12679c = forName2;
        Charset forName3 = Charset.forName("UTF-16BE");
        jc.l.e(forName3, "forName(\"UTF-16BE\")");
        f12680d = forName3;
        Charset forName4 = Charset.forName("UTF-16LE");
        jc.l.e(forName4, "forName(\"UTF-16LE\")");
        f12681e = forName4;
        Charset forName5 = Charset.forName("US-ASCII");
        jc.l.e(forName5, "forName(\"US-ASCII\")");
        f12682f = forName5;
        Charset forName6 = Charset.forName("ISO-8859-1");
        jc.l.e(forName6, "forName(\"ISO-8859-1\")");
        f12683g = forName6;
    }
}
