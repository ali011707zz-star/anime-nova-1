package org.apache.http.client.utils;

import java.io.IOException;
import java.io.UnsupportedEncodingException;
import java.net.URI;
import java.net.URLDecoder;
import java.net.URLEncoder;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import java.util.Scanner;
import org.apache.http.Header;
import org.apache.http.HeaderElement;
import org.apache.http.HttpEntity;
import org.apache.http.NameValuePair;
import org.apache.http.annotation.Immutable;
import org.apache.http.message.BasicNameValuePair;
import org.apache.http.util.EntityUtils;

@Immutable
/* loaded from: classes2.dex */
public class URLEncodedUtils {
    public static final String CONTENT_TYPE = "application/x-www-form-urlencoded";
    private static final String NAME_VALUE_SEPARATOR = "=";
    private static final String PARAMETER_SEPARATOR = "&";

    private static String decode(String str, String str2) {
        if (str2 == null) {
            str2 = "ISO-8859-1";
        }
        try {
            return URLDecoder.decode(str, str2);
        } catch (UnsupportedEncodingException e10) {
            throw new IllegalArgumentException(e10);
        }
    }

    private static String encode(String str, String str2) {
        if (str2 == null) {
            str2 = "ISO-8859-1";
        }
        try {
            return URLEncoder.encode(str, str2);
        } catch (UnsupportedEncodingException e10) {
            throw new IllegalArgumentException(e10);
        }
    }

    public static String format(List<? extends NameValuePair> list, String str) {
        StringBuilder sb2 = new StringBuilder();
        for (NameValuePair nameValuePair : list) {
            String encode = encode(nameValuePair.getName(), str);
            String value = nameValuePair.getValue();
            String encode2 = value != null ? encode(value, str) : "";
            if (sb2.length() > 0) {
                sb2.append(PARAMETER_SEPARATOR);
            }
            sb2.append(encode);
            sb2.append(NAME_VALUE_SEPARATOR);
            sb2.append(encode2);
        }
        return sb2.toString();
    }

    public static boolean isEncoded(HttpEntity httpEntity) {
        Header contentType = httpEntity.getContentType();
        if (contentType != null) {
            HeaderElement[] elements = contentType.getElements();
            if (elements.length > 0) {
                return elements[0].getName().equalsIgnoreCase(CONTENT_TYPE);
            }
        }
        return false;
    }

    public static List<NameValuePair> parse(URI uri, String str) {
        List<NameValuePair> emptyList = Collections.emptyList();
        String rawQuery = uri.getRawQuery();
        if (rawQuery == null || rawQuery.length() <= 0) {
            return emptyList;
        }
        ArrayList arrayList = new ArrayList();
        parse(arrayList, new Scanner(rawQuery), str);
        return arrayList;
    }

    public static List<NameValuePair> parse(HttpEntity httpEntity) throws IOException {
        String str;
        String entityUtils;
        List<NameValuePair> emptyList = Collections.emptyList();
        Header contentType = httpEntity.getContentType();
        if (contentType != null) {
            HeaderElement[] elements = contentType.getElements();
            if (elements.length > 0) {
                HeaderElement headerElement = elements[0];
                String name = headerElement.getName();
                NameValuePair parameterByName = headerElement.getParameterByName("charset");
                str = parameterByName != null ? parameterByName.getValue() : null;
                r2 = name;
                if (r2 != null || !r2.equalsIgnoreCase(CONTENT_TYPE) || (entityUtils = EntityUtils.toString(httpEntity, "ASCII")) == null || entityUtils.length() <= 0) {
                    return emptyList;
                }
                ArrayList arrayList = new ArrayList();
                parse(arrayList, new Scanner(entityUtils), str);
                return arrayList;
            }
        }
        str = null;
        return r2 != null ? emptyList : emptyList;
    }

    public static void parse(List<NameValuePair> list, Scanner scanner, String str) {
        scanner.useDelimiter(PARAMETER_SEPARATOR);
        while (scanner.hasNext()) {
            String[] split = scanner.next().split(NAME_VALUE_SEPARATOR);
            if (split.length != 0 && split.length <= 2) {
                String decode = decode(split[0], str);
                String str2 = null;
                if (split.length == 2) {
                    str2 = decode(split[1], str);
                }
                list.add(new BasicNameValuePair(decode, str2));
            } else {
                throw new IllegalArgumentException("bad parameter");
            }
        }
    }
}
