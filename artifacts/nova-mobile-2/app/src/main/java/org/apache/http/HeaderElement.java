package org.apache.http;

/* loaded from: classes2.dex */
public interface HeaderElement {
    String getName();

    NameValuePair getParameter(int i10);

    NameValuePair getParameterByName(String str);

    int getParameterCount();

    NameValuePair[] getParameters();

    String getValue();
}
