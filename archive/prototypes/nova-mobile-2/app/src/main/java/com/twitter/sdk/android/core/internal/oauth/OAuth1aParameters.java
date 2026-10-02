package com.twitter.sdk.android.core.internal.oauth;

import cd.i;
import com.twitter.sdk.android.core.Twitter;
import com.twitter.sdk.android.core.TwitterAuthConfig;
import com.twitter.sdk.android.core.TwitterAuthToken;
import com.twitter.sdk.android.core.internal.network.UrlUtils;
import java.io.UnsupportedEncodingException;
import java.net.URI;
import java.security.InvalidKeyException;
import java.security.NoSuchAlgorithmException;
import java.security.SecureRandom;
import java.util.Locale;
import java.util.Map;
import java.util.TreeMap;
import javax.crypto.Mac;
import javax.crypto.spec.SecretKeySpec;

/* loaded from: classes.dex */
class OAuth1aParameters {
    private static final SecureRandom RAND = new SecureRandom();
    private static final String SIGNATURE_METHOD = "HMAC-SHA1";
    private static final String VERSION = "1.0";
    private final TwitterAuthConfig authConfig;
    private final TwitterAuthToken authToken;
    private final String callback;
    private final String method;
    private final Map<String, String> postParams;
    private final String url;

    public OAuth1aParameters(TwitterAuthConfig twitterAuthConfig, TwitterAuthToken twitterAuthToken, String str, String str2, String str3, Map<String, String> map) {
        this.authConfig = twitterAuthConfig;
        this.authToken = twitterAuthToken;
        this.callback = str;
        this.method = str2;
        this.url = str3;
        this.postParams = map;
    }

    private void appendParameter(StringBuilder sb2, String str, String str2) {
        if (str2 != null) {
            sb2.append(' ');
            sb2.append(UrlUtils.percentEncode(str));
            sb2.append("=\"");
            sb2.append(UrlUtils.percentEncode(str2));
            sb2.append("\",");
        }
    }

    private String getEncodedQueryParams(TreeMap<String, String> treeMap) {
        StringBuilder sb2 = new StringBuilder();
        int size = treeMap.size();
        int i10 = 0;
        for (Map.Entry<String, String> entry : treeMap.entrySet()) {
            sb2.append(UrlUtils.percentEncode(UrlUtils.percentEncode(entry.getKey())));
            sb2.append("%3D");
            sb2.append(UrlUtils.percentEncode(UrlUtils.percentEncode(entry.getValue())));
            i10++;
            if (i10 < size) {
                sb2.append("%26");
            }
        }
        return sb2.toString();
    }

    private String getNonce() {
        return String.valueOf(System.nanoTime()) + String.valueOf(Math.abs(RAND.nextLong()));
    }

    private String getSigningKey() {
        TwitterAuthToken twitterAuthToken = this.authToken;
        return UrlUtils.urlEncode(this.authConfig.getConsumerSecret()) + '&' + UrlUtils.urlEncode(twitterAuthToken != null ? twitterAuthToken.secret : null);
    }

    private String getTimestamp() {
        return Long.toString(System.currentTimeMillis() / 1000);
    }

    public String calculateSignature(String str) {
        try {
            String signingKey = getSigningKey();
            byte[] bytes = str.getBytes(UrlUtils.UTF8);
            SecretKeySpec secretKeySpec = new SecretKeySpec(signingKey.getBytes(UrlUtils.UTF8), "HmacSHA1");
            Mac mac = Mac.getInstance("HmacSHA1");
            mac.init(secretKeySpec);
            byte[] doFinal = mac.doFinal(bytes);
            return i.r(doFinal, 0, doFinal.length).a();
        } catch (UnsupportedEncodingException e10) {
            Twitter.getLogger().e("Twitter", "Failed to calculate signature", e10);
            return "";
        } catch (InvalidKeyException e11) {
            Twitter.getLogger().e("Twitter", "Failed to calculate signature", e11);
            return "";
        } catch (NoSuchAlgorithmException e12) {
            Twitter.getLogger().e("Twitter", "Failed to calculate signature", e12);
            return "";
        }
    }

    public String constructAuthorizationHeader(String str, String str2, String str3) {
        StringBuilder sb2 = new StringBuilder("OAuth");
        appendParameter(sb2, OAuthConstants.PARAM_CALLBACK, this.callback);
        appendParameter(sb2, OAuthConstants.PARAM_CONSUMER_KEY, this.authConfig.getConsumerKey());
        appendParameter(sb2, OAuthConstants.PARAM_NONCE, str);
        appendParameter(sb2, OAuthConstants.PARAM_SIGNATURE, str3);
        appendParameter(sb2, OAuthConstants.PARAM_SIGNATURE_METHOD, SIGNATURE_METHOD);
        appendParameter(sb2, OAuthConstants.PARAM_TIMESTAMP, str2);
        TwitterAuthToken twitterAuthToken = this.authToken;
        appendParameter(sb2, OAuthConstants.PARAM_TOKEN, twitterAuthToken != null ? twitterAuthToken.token : null);
        appendParameter(sb2, OAuthConstants.PARAM_VERSION, VERSION);
        return sb2.substring(0, sb2.length() - 1);
    }

    public String constructSignatureBase(String str, String str2) {
        String str3;
        URI create = URI.create(this.url);
        TreeMap<String, String> queryParams = UrlUtils.getQueryParams(create, true);
        Map<String, String> map = this.postParams;
        if (map != null) {
            queryParams.putAll(map);
        }
        String str4 = this.callback;
        if (str4 != null) {
            queryParams.put(OAuthConstants.PARAM_CALLBACK, str4);
        }
        queryParams.put(OAuthConstants.PARAM_CONSUMER_KEY, this.authConfig.getConsumerKey());
        queryParams.put(OAuthConstants.PARAM_NONCE, str);
        queryParams.put(OAuthConstants.PARAM_SIGNATURE_METHOD, SIGNATURE_METHOD);
        queryParams.put(OAuthConstants.PARAM_TIMESTAMP, str2);
        TwitterAuthToken twitterAuthToken = this.authToken;
        if (twitterAuthToken != null && (str3 = twitterAuthToken.token) != null) {
            queryParams.put(OAuthConstants.PARAM_TOKEN, str3);
        }
        queryParams.put(OAuthConstants.PARAM_VERSION, VERSION);
        return this.method.toUpperCase(Locale.ENGLISH) + '&' + UrlUtils.percentEncode(create.getScheme() + "://" + create.getHost() + create.getPath()) + '&' + getEncodedQueryParams(queryParams);
    }

    public String getAuthorizationHeader() {
        String nonce = getNonce();
        String timestamp = getTimestamp();
        return constructAuthorizationHeader(nonce, timestamp, calculateSignature(constructSignatureBase(nonce, timestamp)));
    }
}
