package i9;

import java.nio.charset.Charset;
import java.util.Arrays;
import java.util.Collections;
import java.util.HashSet;
import java.util.Set;
import java.util.regex.Pattern;
import k9.f;
import org.apache.http.protocol.HTTP;

/* compiled from: CCTDestination.java */
/* loaded from: classes.dex */
public final class a implements f {

    /* renamed from: c, reason: collision with root package name */
    public static final String f7928c;

    /* renamed from: d, reason: collision with root package name */
    public static final String f7929d;

    /* renamed from: e, reason: collision with root package name */
    public static final String f7930e;

    /* renamed from: f, reason: collision with root package name */
    public static final Set<h9.b> f7931f;

    /* renamed from: g, reason: collision with root package name */
    public static final a f7932g;

    /* renamed from: h, reason: collision with root package name */
    public static final a f7933h;

    /* renamed from: a, reason: collision with root package name */
    public final String f7934a;

    /* renamed from: b, reason: collision with root package name */
    public final String f7935b;

    static {
        String a10 = e.a("hts/frbslgiggolai.o/0clgbthfra=snpoo", "tp:/ieaeogn.ogepscmvc/o/ac?omtjo_rt3");
        f7928c = a10;
        String a11 = e.a("hts/frbslgigp.ogepscmv/ieo/eaybtho", "tp:/ieaeogn-agolai.o/1frlglgc/aclg");
        f7929d = a11;
        String a12 = e.a("AzSCki82AwsLzKd5O8zo", "IayckHiZRO1EFl1aGoK");
        f7930e = a12;
        f7931f = Collections.unmodifiableSet(new HashSet(Arrays.asList(h9.b.b("proto"), h9.b.b("json"))));
        f7932g = new a(a10, null);
        f7933h = new a(a11, a12);
    }

    public a(String str, String str2) {
        this.f7934a = str;
        this.f7935b = str2;
    }

    public static a c(byte[] bArr) {
        String str = new String(bArr, Charset.forName(HTTP.UTF_8));
        if (str.startsWith("1$")) {
            String[] split = str.substring(2).split(Pattern.quote("\\"), 2);
            if (split.length == 2) {
                String str2 = split[0];
                if (!str2.isEmpty()) {
                    String str3 = split[1];
                    if (str3.isEmpty()) {
                        str3 = null;
                    }
                    return new a(str2, str3);
                }
                throw new IllegalArgumentException("Missing endpoint in CCTDestination extras");
            }
            throw new IllegalArgumentException("Extra is not a valid encoded LegacyFlgDestination");
        }
        throw new IllegalArgumentException("Version marker missing from extras");
    }

    @Override // k9.f
    public Set<h9.b> a() {
        return f7931f;
    }

    public byte[] b() {
        String str = this.f7935b;
        if (str == null && this.f7934a == null) {
            return null;
        }
        Object[] objArr = new Object[4];
        objArr[0] = "1$";
        objArr[1] = this.f7934a;
        objArr[2] = "\\";
        if (str == null) {
            str = "";
        }
        objArr[3] = str;
        return String.format("%s%s%s%s", objArr).getBytes(Charset.forName(HTTP.UTF_8));
    }

    public String d() {
        return this.f7935b;
    }

    public String e() {
        return this.f7934a;
    }

    @Override // k9.e
    public byte[] getExtras() {
        return b();
    }

    @Override // k9.e
    public String getName() {
        return "cct";
    }
}
