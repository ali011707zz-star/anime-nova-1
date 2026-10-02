package org.apache.http.impl;

import org.apache.http.HttpRequest;
import org.apache.http.HttpRequestFactory;
import org.apache.http.MethodNotSupportedException;
import org.apache.http.RequestLine;
import org.apache.http.client.methods.HttpDelete;
import org.apache.http.client.methods.HttpGet;
import org.apache.http.client.methods.HttpHead;
import org.apache.http.client.methods.HttpOptions;
import org.apache.http.client.methods.HttpPost;
import org.apache.http.client.methods.HttpPut;
import org.apache.http.client.methods.HttpTrace;
import org.apache.http.message.BasicHttpEntityEnclosingRequest;
import org.apache.http.message.BasicHttpRequest;

/* loaded from: classes2.dex */
public class DefaultHttpRequestFactory implements HttpRequestFactory {
    private static final String[] RFC2616_COMMON_METHODS = {HttpGet.METHOD_NAME};
    private static final String[] RFC2616_ENTITY_ENC_METHODS = {HttpPost.METHOD_NAME, HttpPut.METHOD_NAME};
    private static final String[] RFC2616_SPECIAL_METHODS = {HttpHead.METHOD_NAME, HttpOptions.METHOD_NAME, HttpDelete.METHOD_NAME, HttpTrace.METHOD_NAME, "CONNECT"};

    private static boolean isOneOf(String[] strArr, String str) {
        for (String str2 : strArr) {
            if (str2.equalsIgnoreCase(str)) {
                return true;
            }
        }
        return false;
    }

    @Override // org.apache.http.HttpRequestFactory
    public HttpRequest newHttpRequest(RequestLine requestLine) throws MethodNotSupportedException {
        if (requestLine != null) {
            String method = requestLine.getMethod();
            if (isOneOf(RFC2616_COMMON_METHODS, method)) {
                return new BasicHttpRequest(requestLine);
            }
            if (isOneOf(RFC2616_ENTITY_ENC_METHODS, method)) {
                return new BasicHttpEntityEnclosingRequest(requestLine);
            }
            if (isOneOf(RFC2616_SPECIAL_METHODS, method)) {
                return new BasicHttpRequest(requestLine);
            }
            StringBuffer stringBuffer = new StringBuffer();
            stringBuffer.append(method);
            stringBuffer.append(" method not supported");
            throw new MethodNotSupportedException(stringBuffer.toString());
        }
        throw new IllegalArgumentException("Request line may not be null");
    }

    @Override // org.apache.http.HttpRequestFactory
    public HttpRequest newHttpRequest(String str, String str2) throws MethodNotSupportedException {
        if (isOneOf(RFC2616_COMMON_METHODS, str)) {
            return new BasicHttpRequest(str, str2);
        }
        if (isOneOf(RFC2616_ENTITY_ENC_METHODS, str)) {
            return new BasicHttpEntityEnclosingRequest(str, str2);
        }
        if (isOneOf(RFC2616_SPECIAL_METHODS, str)) {
            return new BasicHttpRequest(str, str2);
        }
        StringBuffer stringBuffer = new StringBuffer();
        stringBuffer.append(str);
        stringBuffer.append(" method not supported");
        throw new MethodNotSupportedException(stringBuffer.toString());
    }
}
