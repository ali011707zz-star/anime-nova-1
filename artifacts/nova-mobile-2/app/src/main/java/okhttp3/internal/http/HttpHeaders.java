package okhttp3.internal.http;

import cd.f;
import cd.i;
import com.google.android.gms.common.api.Api;
import java.io.EOFException;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.Comparator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.TreeSet;
import okhttp3.Challenge;
import okhttp3.Cookie;
import okhttp3.CookieJar;
import okhttp3.Headers;
import okhttp3.HttpUrl;
import okhttp3.Request;
import okhttp3.Response;
import okhttp3.internal.Util;
import org.apache.http.client.methods.HttpHead;
import org.apache.http.message.BasicHeaderValueFormatter;
import org.apache.http.protocol.HTTP;

/* loaded from: classes2.dex */
public final class HttpHeaders {
    private static final i QUOTED_STRING_DELIMITERS = i.g(BasicHeaderValueFormatter.UNSAFE_CHARS);
    private static final i TOKEN_DELIMITERS = i.g("\t ,=");

    private HttpHeaders() {
    }

    public static long contentLength(Response response) {
        return contentLength(response.headers());
    }

    public static boolean hasBody(Response response) {
        if (response.request().method().equals(HttpHead.METHOD_NAME)) {
            return false;
        }
        int code = response.code();
        return (((code >= 100 && code < 200) || code == 204 || code == 304) && contentLength(response) == -1 && !HTTP.CHUNK_CODING.equalsIgnoreCase(response.header("Transfer-Encoding"))) ? false : true;
    }

    public static boolean hasVaryAll(Response response) {
        return hasVaryAll(response.headers());
    }

    /* JADX WARN: Code restructure failed: missing block: B:24:0x007d, code lost:
    
        continue;
     */
    /* JADX WARN: Code restructure failed: missing block: B:57:0x007d, code lost:
    
        continue;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    private static void parseChallengeHeader(List<Challenge> list, f fVar) {
        String readToken;
        int skipAll;
        String readToken2;
        while (true) {
            String str = null;
            while (true) {
                if (str == null) {
                    skipWhitespaceAndCommas(fVar);
                    str = readToken(fVar);
                    if (str == null) {
                        return;
                    }
                }
                boolean skipWhitespaceAndCommas = skipWhitespaceAndCommas(fVar);
                readToken = readToken(fVar);
                if (readToken == null) {
                    if (fVar.M()) {
                        list.add(new Challenge(str, (Map<String, String>) Collections.emptyMap()));
                        return;
                    }
                    return;
                }
                skipAll = skipAll(fVar, (byte) 61);
                boolean skipWhitespaceAndCommas2 = skipWhitespaceAndCommas(fVar);
                if (skipWhitespaceAndCommas || (!skipWhitespaceAndCommas2 && !fVar.M())) {
                    LinkedHashMap linkedHashMap = new LinkedHashMap();
                    int skipAll2 = skipAll + skipAll(fVar, (byte) 61);
                    while (true) {
                        if (readToken == null) {
                            readToken = readToken(fVar);
                            if (skipWhitespaceAndCommas(fVar)) {
                                break;
                            } else {
                                skipAll2 = skipAll(fVar, (byte) 61);
                            }
                        }
                        if (skipAll2 == 0) {
                            break;
                        }
                        if (skipAll2 > 1 || skipWhitespaceAndCommas(fVar)) {
                            return;
                        }
                        if (!fVar.M() && fVar.G(0L) == 34) {
                            readToken2 = readQuotedString(fVar);
                        } else {
                            readToken2 = readToken(fVar);
                        }
                        if (readToken2 == null || ((String) linkedHashMap.put(readToken, readToken2)) != null) {
                            return;
                        }
                        if (!skipWhitespaceAndCommas(fVar) && !fVar.M()) {
                            return;
                        } else {
                            readToken = null;
                        }
                    }
                    list.add(new Challenge(str, linkedHashMap));
                    str = readToken;
                }
            }
            list.add(new Challenge(str, (Map<String, String>) Collections.singletonMap(null, readToken + repeat('=', skipAll))));
        }
    }

    public static List<Challenge> parseChallenges(Headers headers, String str) {
        ArrayList arrayList = new ArrayList();
        for (int i10 = 0; i10 < headers.size(); i10++) {
            if (str.equalsIgnoreCase(headers.name(i10))) {
                parseChallengeHeader(arrayList, new f().t0(headers.value(i10)));
            }
        }
        return arrayList;
    }

    public static int parseSeconds(String str, int i10) {
        try {
            long parseLong = Long.parseLong(str);
            if (parseLong > 2147483647L) {
                return Api.BaseClientBuilder.API_PRIORITY_OTHER;
            }
            if (parseLong < 0) {
                return 0;
            }
            return (int) parseLong;
        } catch (NumberFormatException unused) {
            return i10;
        }
    }

    private static String readQuotedString(f fVar) {
        if (fVar.readByte() == 34) {
            f fVar2 = new f();
            while (true) {
                long q02 = fVar.q0(QUOTED_STRING_DELIMITERS);
                if (q02 == -1) {
                    return null;
                }
                if (fVar.G(q02) == 34) {
                    fVar2.write(fVar, q02);
                    fVar.readByte();
                    return fVar2.J0();
                }
                if (fVar.N0() == q02 + 1) {
                    return null;
                }
                fVar2.write(fVar, q02);
                fVar.readByte();
                fVar2.write(fVar, 1L);
            }
        } else {
            throw new IllegalArgumentException();
        }
    }

    private static String readToken(f fVar) {
        try {
            long q02 = fVar.q0(TOKEN_DELIMITERS);
            if (q02 == -1) {
                q02 = fVar.N0();
            }
            if (q02 != 0) {
                return fVar.K0(q02);
            }
            return null;
        } catch (EOFException unused) {
            throw new AssertionError();
        }
    }

    public static void receiveHeaders(CookieJar cookieJar, HttpUrl httpUrl, Headers headers) {
        if (cookieJar == CookieJar.NO_COOKIES) {
            return;
        }
        List<Cookie> parseAll = Cookie.parseAll(httpUrl, headers);
        if (parseAll.isEmpty()) {
            return;
        }
        cookieJar.saveFromResponse(httpUrl, parseAll);
    }

    private static String repeat(char c10, int i10) {
        char[] cArr = new char[i10];
        Arrays.fill(cArr, c10);
        return new String(cArr);
    }

    private static int skipAll(f fVar, byte b10) {
        int i10 = 0;
        while (!fVar.M() && fVar.G(0L) == b10) {
            i10++;
            fVar.readByte();
        }
        return i10;
    }

    public static int skipUntil(String str, int i10, String str2) {
        while (i10 < str.length() && str2.indexOf(str.charAt(i10)) == -1) {
            i10++;
        }
        return i10;
    }

    public static int skipWhitespace(String str, int i10) {
        char charAt;
        while (i10 < str.length() && ((charAt = str.charAt(i10)) == ' ' || charAt == '\t')) {
            i10++;
        }
        return i10;
    }

    private static boolean skipWhitespaceAndCommas(f fVar) {
        boolean z10 = false;
        while (!fVar.M()) {
            byte G = fVar.G(0L);
            if (G != 44) {
                if (G != 32 && G != 9) {
                    break;
                }
                fVar.readByte();
            } else {
                fVar.readByte();
                z10 = true;
            }
        }
        return z10;
    }

    private static long stringToLong(String str) {
        if (str == null) {
            return -1L;
        }
        try {
            return Long.parseLong(str);
        } catch (NumberFormatException unused) {
            return -1L;
        }
    }

    private static Set<String> varyFields(Response response) {
        return varyFields(response.headers());
    }

    public static Headers varyHeaders(Response response) {
        return varyHeaders(response.networkResponse().request().headers(), response.headers());
    }

    public static boolean varyMatches(Response response, Headers headers, Request request) {
        for (String str : varyFields(response)) {
            if (!Util.equal(headers.values(str), request.headers(str))) {
                return false;
            }
        }
        return true;
    }

    public static long contentLength(Headers headers) {
        return stringToLong(headers.get("Content-Length"));
    }

    public static boolean hasVaryAll(Headers headers) {
        return varyFields(headers).contains("*");
    }

    public static Set<String> varyFields(Headers headers) {
        Set<String> emptySet = Collections.emptySet();
        int size = headers.size();
        for (int i10 = 0; i10 < size; i10++) {
            if (org.apache.http.HttpHeaders.VARY.equalsIgnoreCase(headers.name(i10))) {
                String value = headers.value(i10);
                if (emptySet.isEmpty()) {
                    emptySet = new TreeSet<>((Comparator<? super String>) String.CASE_INSENSITIVE_ORDER);
                }
                for (String str : value.split(",")) {
                    emptySet.add(str.trim());
                }
            }
        }
        return emptySet;
    }

    public static Headers varyHeaders(Headers headers, Headers headers2) {
        Set<String> varyFields = varyFields(headers2);
        if (varyFields.isEmpty()) {
            return new Headers.Builder().build();
        }
        Headers.Builder builder = new Headers.Builder();
        int size = headers.size();
        for (int i10 = 0; i10 < size; i10++) {
            String name = headers.name(i10);
            if (varyFields.contains(name)) {
                builder.add(name, headers.value(i10));
            }
        }
        return builder.build();
    }
}
