package org.apache.http.impl.auth;

import java.security.MessageDigest;
import java.security.SecureRandom;
import java.util.ArrayList;
import java.util.Formatter;
import java.util.Locale;
import java.util.StringTokenizer;
import org.apache.http.Header;
import org.apache.http.HttpRequest;
import org.apache.http.annotation.NotThreadSafe;
import org.apache.http.auth.AuthenticationException;
import org.apache.http.auth.Credentials;
import org.apache.http.auth.MalformedChallengeException;
import org.apache.http.auth.params.AuthParams;
import org.apache.http.message.BasicHeaderValueFormatter;
import org.apache.http.message.BasicNameValuePair;
import org.apache.http.message.BufferedHeader;
import org.apache.http.util.CharArrayBuffer;
import org.apache.http.util.EncodingUtils;

@NotThreadSafe
/* loaded from: classes2.dex */
public class DigestScheme extends RFC2617Scheme {
    private static final char[] HEXADECIMAL = {'0', '1', '2', '3', '4', '5', '6', '7', '8', '9', 'a', 'b', 'c', 'd', 'e', 'f'};
    private static final int QOP_AUTH = 2;
    private static final int QOP_AUTH_INT = 1;
    private static final int QOP_MISSING = 0;
    private static final int QOP_UNKNOWN = -1;

    /* renamed from: a1, reason: collision with root package name */
    private String f11871a1;

    /* renamed from: a2, reason: collision with root package name */
    private String f11872a2;
    private String cnonce;
    private boolean complete = false;
    private String lastNonce;
    private long nounceCount;

    public static String createCnonce() {
        byte[] bArr = new byte[8];
        new SecureRandom().nextBytes(bArr);
        return encode(bArr);
    }

    private Header createDigestHeader(Credentials credentials) throws AuthenticationException {
        String str;
        char c10;
        MessageDigest messageDigest;
        String str2;
        MessageDigest messageDigest2;
        String str3;
        String str4;
        String sb2;
        String str5;
        String parameter = getParameter("uri");
        String parameter2 = getParameter("realm");
        String parameter3 = getParameter("nonce");
        String parameter4 = getParameter("opaque");
        String parameter5 = getParameter("methodname");
        String parameter6 = getParameter("algorithm");
        if (parameter == null) {
            throw new IllegalStateException("URI may not be null");
        }
        if (parameter2 == null) {
            throw new IllegalStateException("Realm may not be null");
        }
        if (parameter3 != null) {
            String parameter7 = getParameter("qop");
            if (parameter7 != null) {
                str = "opaque";
                StringTokenizer stringTokenizer = new StringTokenizer(parameter7, ",");
                while (true) {
                    if (!stringTokenizer.hasMoreTokens()) {
                        c10 = 65535;
                        break;
                    }
                    if (stringTokenizer.nextToken().trim().equals("auth")) {
                        c10 = 2;
                        break;
                    }
                }
            } else {
                str = "opaque";
                c10 = 0;
            }
            if (c10 != 65535) {
                if (parameter6 == null) {
                    parameter6 = "MD5";
                }
                String parameter8 = getParameter("charset");
                if (parameter8 == null) {
                    parameter8 = "ISO-8859-1";
                }
                String str6 = parameter6.equalsIgnoreCase("MD5-sess") ? "MD5" : parameter6;
                try {
                    MessageDigest createMessageDigest = createMessageDigest(str6);
                    String name = credentials.getUserPrincipal().getName();
                    String password = credentials.getPassword();
                    if (parameter3.equals(this.lastNonce)) {
                        messageDigest = createMessageDigest;
                        str2 = parameter8;
                        this.nounceCount++;
                    } else {
                        messageDigest = createMessageDigest;
                        str2 = parameter8;
                        this.nounceCount = 1L;
                        this.cnonce = null;
                        this.lastNonce = parameter3;
                    }
                    StringBuilder sb3 = new StringBuilder(256);
                    new Formatter(sb3, Locale.US).format("%08x", Long.valueOf(this.nounceCount));
                    String sb4 = sb3.toString();
                    if (this.cnonce == null) {
                        this.cnonce = createCnonce();
                    }
                    this.f11871a1 = null;
                    this.f11872a2 = null;
                    if (parameter6.equalsIgnoreCase("MD5-sess")) {
                        sb3.setLength(0);
                        sb3.append(name);
                        sb3.append(':');
                        sb3.append(parameter2);
                        sb3.append(':');
                        sb3.append(password);
                        messageDigest2 = messageDigest;
                        String encode = encode(messageDigest2.digest(EncodingUtils.getBytes(sb3.toString(), str2)));
                        sb3.setLength(0);
                        sb3.append(encode);
                        sb3.append(':');
                        str3 = parameter3;
                        sb3.append(str3);
                        sb3.append(':');
                        sb3.append(this.cnonce);
                        this.f11871a1 = sb3.toString();
                    } else {
                        messageDigest2 = messageDigest;
                        str3 = parameter3;
                        sb3.setLength(0);
                        sb3.append(name);
                        sb3.append(':');
                        sb3.append(parameter2);
                        sb3.append(':');
                        sb3.append(password);
                        this.f11871a1 = sb3.toString();
                    }
                    String encode2 = encode(messageDigest2.digest(EncodingUtils.getBytes(this.f11871a1, str2)));
                    if (c10 == 2) {
                        this.f11872a2 = parameter5 + ':' + parameter;
                        str4 = parameter;
                    } else {
                        str4 = parameter;
                        if (c10 == 1) {
                            throw new AuthenticationException("qop-int method is not suppported");
                        }
                        this.f11872a2 = parameter5 + ':' + str4;
                    }
                    String encode3 = encode(messageDigest2.digest(EncodingUtils.getBytes(this.f11872a2, str2)));
                    if (c10 == 0) {
                        sb3.setLength(0);
                        sb3.append(encode2);
                        sb3.append(':');
                        sb3.append(str3);
                        sb3.append(':');
                        sb3.append(encode3);
                        sb2 = sb3.toString();
                    } else {
                        sb3.setLength(0);
                        sb3.append(encode2);
                        sb3.append(':');
                        sb3.append(str3);
                        sb3.append(':');
                        sb3.append(sb4);
                        sb3.append(':');
                        sb3.append(this.cnonce);
                        sb3.append(':');
                        sb3.append(c10 == 1 ? "auth-int" : "auth");
                        sb3.append(':');
                        sb3.append(encode3);
                        sb2 = sb3.toString();
                    }
                    String encode4 = encode(messageDigest2.digest(EncodingUtils.getAsciiBytes(sb2)));
                    CharArrayBuffer charArrayBuffer = new CharArrayBuffer(128);
                    if (isProxy()) {
                        charArrayBuffer.append("Proxy-Authorization");
                    } else {
                        charArrayBuffer.append("Authorization");
                    }
                    charArrayBuffer.append(": Digest ");
                    ArrayList arrayList = new ArrayList(20);
                    arrayList.add(new BasicNameValuePair("username", name));
                    arrayList.add(new BasicNameValuePair("realm", parameter2));
                    arrayList.add(new BasicNameValuePair("nonce", str3));
                    arrayList.add(new BasicNameValuePair("uri", str4));
                    arrayList.add(new BasicNameValuePair("response", encode4));
                    if (c10 != 0) {
                        str5 = "qop";
                        arrayList.add(new BasicNameValuePair(str5, c10 != 1 ? "auth" : "auth-int"));
                        arrayList.add(new BasicNameValuePair("nc", sb4));
                        arrayList.add(new BasicNameValuePair("cnonce", this.cnonce));
                    } else {
                        str5 = "qop";
                    }
                    arrayList.add(new BasicNameValuePair("algorithm", parameter6));
                    if (parameter4 != null) {
                        arrayList.add(new BasicNameValuePair(str, parameter4));
                    }
                    for (int i10 = 0; i10 < arrayList.size(); i10++) {
                        BasicNameValuePair basicNameValuePair = (BasicNameValuePair) arrayList.get(i10);
                        if (i10 > 0) {
                            charArrayBuffer.append(", ");
                        }
                        BasicHeaderValueFormatter.DEFAULT.formatNameValuePair(charArrayBuffer, basicNameValuePair, !("nc".equals(basicNameValuePair.getName()) || str5.equals(basicNameValuePair.getName())));
                    }
                    return new BufferedHeader(charArrayBuffer);
                } catch (UnsupportedDigestAlgorithmException unused) {
                    throw new AuthenticationException("Unsuppported digest algorithm: " + str6);
                }
            }
            throw new AuthenticationException("None of the qop methods is supported: " + parameter7);
        }
        throw new IllegalStateException("Nonce may not be null");
    }

    private static MessageDigest createMessageDigest(String str) throws UnsupportedDigestAlgorithmException {
        try {
            return MessageDigest.getInstance(str);
        } catch (Exception unused) {
            throw new UnsupportedDigestAlgorithmException("Unsupported algorithm in HTTP Digest authentication: " + str);
        }
    }

    private static String encode(byte[] bArr) {
        int length = bArr.length;
        char[] cArr = new char[length * 2];
        for (int i10 = 0; i10 < length; i10++) {
            int i11 = bArr[i10] & 15;
            int i12 = (bArr[i10] & 240) >> 4;
            int i13 = i10 * 2;
            char[] cArr2 = HEXADECIMAL;
            cArr[i13] = cArr2[i12];
            cArr[i13 + 1] = cArr2[i11];
        }
        return new String(cArr);
    }

    @Override // org.apache.http.auth.AuthScheme
    public Header authenticate(Credentials credentials, HttpRequest httpRequest) throws AuthenticationException {
        if (credentials == null) {
            throw new IllegalArgumentException("Credentials may not be null");
        }
        if (httpRequest != null) {
            getParameters().put("methodname", httpRequest.getRequestLine().getMethod());
            getParameters().put("uri", httpRequest.getRequestLine().getUri());
            if (getParameter("charset") == null) {
                getParameters().put("charset", AuthParams.getCredentialCharset(httpRequest.getParams()));
            }
            return createDigestHeader(credentials);
        }
        throw new IllegalArgumentException("HTTP request may not be null");
    }

    public String getA1() {
        return this.f11871a1;
    }

    public String getA2() {
        return this.f11872a2;
    }

    public String getCnonce() {
        return this.cnonce;
    }

    @Override // org.apache.http.auth.AuthScheme
    public String getSchemeName() {
        return "digest";
    }

    @Override // org.apache.http.auth.AuthScheme
    public boolean isComplete() {
        if ("true".equalsIgnoreCase(getParameter("stale"))) {
            return false;
        }
        return this.complete;
    }

    @Override // org.apache.http.auth.AuthScheme
    public boolean isConnectionBased() {
        return false;
    }

    public void overrideParamter(String str, String str2) {
        getParameters().put(str, str2);
    }

    @Override // org.apache.http.impl.auth.AuthSchemeBase, org.apache.http.auth.AuthScheme
    public void processChallenge(Header header) throws MalformedChallengeException {
        super.processChallenge(header);
        if (getParameter("realm") != null) {
            if (getParameter("nonce") != null) {
                this.complete = true;
                return;
            }
            throw new MalformedChallengeException("missing nonce in challenge");
        }
        throw new MalformedChallengeException("missing realm in challenge");
    }
}
