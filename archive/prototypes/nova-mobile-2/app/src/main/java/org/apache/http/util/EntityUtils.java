package org.apache.http.util;

import androidx.recyclerview.widget.RecyclerView;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import org.apache.http.HeaderElement;
import org.apache.http.HttpEntity;
import org.apache.http.NameValuePair;
import org.apache.http.ParseException;

/* loaded from: classes2.dex */
public final class EntityUtils {
    private EntityUtils() {
    }

    public static void consume(HttpEntity httpEntity) throws IOException {
        InputStream content;
        if (httpEntity == null || !httpEntity.isStreaming() || (content = httpEntity.getContent()) == null) {
            return;
        }
        content.close();
    }

    public static String getContentCharSet(HttpEntity httpEntity) throws ParseException {
        NameValuePair parameterByName;
        if (httpEntity != null) {
            if (httpEntity.getContentType() == null) {
                return null;
            }
            HeaderElement[] elements = httpEntity.getContentType().getElements();
            if (elements.length <= 0 || (parameterByName = elements[0].getParameterByName("charset")) == null) {
                return null;
            }
            return parameterByName.getValue();
        }
        throw new IllegalArgumentException("HTTP entity may not be null");
    }

    public static String getContentMimeType(HttpEntity httpEntity) throws ParseException {
        if (httpEntity != null) {
            if (httpEntity.getContentType() == null) {
                return null;
            }
            HeaderElement[] elements = httpEntity.getContentType().getElements();
            if (elements.length > 0) {
                return elements[0].getName();
            }
            return null;
        }
        throw new IllegalArgumentException("HTTP entity may not be null");
    }

    public static byte[] toByteArray(HttpEntity httpEntity) throws IOException {
        if (httpEntity != null) {
            InputStream content = httpEntity.getContent();
            if (content == null) {
                return null;
            }
            try {
                if (httpEntity.getContentLength() <= 2147483647L) {
                    int contentLength = (int) httpEntity.getContentLength();
                    if (contentLength < 0) {
                        contentLength = RecyclerView.e0.FLAG_APPEARED_IN_PRE_LAYOUT;
                    }
                    ByteArrayBuffer byteArrayBuffer = new ByteArrayBuffer(contentLength);
                    byte[] bArr = new byte[RecyclerView.e0.FLAG_APPEARED_IN_PRE_LAYOUT];
                    while (true) {
                        int read = content.read(bArr);
                        if (read != -1) {
                            byteArrayBuffer.append(bArr, 0, read);
                        } else {
                            return byteArrayBuffer.toByteArray();
                        }
                    }
                } else {
                    throw new IllegalArgumentException("HTTP entity too large to be buffered in memory");
                }
            } finally {
                content.close();
            }
        } else {
            throw new IllegalArgumentException("HTTP entity may not be null");
        }
    }

    public static String toString(HttpEntity httpEntity, String str) throws IOException, ParseException {
        if (httpEntity != null) {
            InputStream content = httpEntity.getContent();
            if (content == null) {
                return null;
            }
            try {
                if (httpEntity.getContentLength() <= 2147483647L) {
                    int contentLength = (int) httpEntity.getContentLength();
                    if (contentLength < 0) {
                        contentLength = RecyclerView.e0.FLAG_APPEARED_IN_PRE_LAYOUT;
                    }
                    String contentCharSet = getContentCharSet(httpEntity);
                    if (contentCharSet != null) {
                        str = contentCharSet;
                    }
                    if (str == null) {
                        str = "ISO-8859-1";
                    }
                    InputStreamReader inputStreamReader = new InputStreamReader(content, str);
                    CharArrayBuffer charArrayBuffer = new CharArrayBuffer(contentLength);
                    char[] cArr = new char[RecyclerView.e0.FLAG_ADAPTER_FULLUPDATE];
                    while (true) {
                        int read = inputStreamReader.read(cArr);
                        if (read != -1) {
                            charArrayBuffer.append(cArr, 0, read);
                        } else {
                            return charArrayBuffer.toString();
                        }
                    }
                } else {
                    throw new IllegalArgumentException("HTTP entity too large to be buffered in memory");
                }
            } finally {
                content.close();
            }
        } else {
            throw new IllegalArgumentException("HTTP entity may not be null");
        }
    }

    public static String toString(HttpEntity httpEntity) throws IOException, ParseException {
        return toString(httpEntity, null);
    }
}
