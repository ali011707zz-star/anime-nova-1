package org.apache.http.impl.cookie;

import java.io.Serializable;
import java.util.Date;
import java.util.HashMap;
import java.util.Locale;
import java.util.Map;
import org.apache.http.annotation.NotThreadSafe;
import org.apache.http.cookie.ClientCookie;
import org.apache.http.cookie.SetCookie;

@NotThreadSafe
/* loaded from: classes2.dex */
public class BasicClientCookie implements SetCookie, ClientCookie, Cloneable, Serializable {
    private static final long serialVersionUID = -3869795591041535538L;
    private Map<String, String> attribs;
    private String cookieComment;
    private String cookieDomain;
    private Date cookieExpiryDate;
    private String cookiePath;
    private int cookieVersion;
    private boolean isSecure;
    private final String name;
    private String value;

    public BasicClientCookie(String str, String str2) {
        if (str != null) {
            this.name = str;
            this.attribs = new HashMap();
            this.value = str2;
            return;
        }
        throw new IllegalArgumentException("Name may not be null");
    }

    public Object clone() throws CloneNotSupportedException {
        BasicClientCookie basicClientCookie = (BasicClientCookie) super.clone();
        basicClientCookie.attribs = new HashMap(this.attribs);
        return basicClientCookie;
    }

    @Override // org.apache.http.cookie.ClientCookie
    public boolean containsAttribute(String str) {
        return this.attribs.get(str) != null;
    }

    @Override // org.apache.http.cookie.ClientCookie
    public String getAttribute(String str) {
        return this.attribs.get(str);
    }

    @Override // org.apache.http.cookie.Cookie
    public String getComment() {
        return this.cookieComment;
    }

    @Override // org.apache.http.cookie.Cookie
    public String getCommentURL() {
        return null;
    }

    @Override // org.apache.http.cookie.Cookie
    public String getDomain() {
        return this.cookieDomain;
    }

    @Override // org.apache.http.cookie.Cookie
    public Date getExpiryDate() {
        return this.cookieExpiryDate;
    }

    @Override // org.apache.http.cookie.Cookie
    public String getName() {
        return this.name;
    }

    @Override // org.apache.http.cookie.Cookie
    public String getPath() {
        return this.cookiePath;
    }

    @Override // org.apache.http.cookie.Cookie
    public int[] getPorts() {
        return null;
    }

    @Override // org.apache.http.cookie.Cookie
    public String getValue() {
        return this.value;
    }

    @Override // org.apache.http.cookie.Cookie
    public int getVersion() {
        return this.cookieVersion;
    }

    @Override // org.apache.http.cookie.Cookie
    public boolean isExpired(Date date) {
        if (date != null) {
            Date date2 = this.cookieExpiryDate;
            return date2 != null && date2.getTime() <= date.getTime();
        }
        throw new IllegalArgumentException("Date may not be null");
    }

    @Override // org.apache.http.cookie.Cookie
    public boolean isPersistent() {
        return this.cookieExpiryDate != null;
    }

    @Override // org.apache.http.cookie.Cookie
    public boolean isSecure() {
        return this.isSecure;
    }

    public void setAttribute(String str, String str2) {
        this.attribs.put(str, str2);
    }

    @Override // org.apache.http.cookie.SetCookie
    public void setComment(String str) {
        this.cookieComment = str;
    }

    @Override // org.apache.http.cookie.SetCookie
    public void setDomain(String str) {
        if (str != null) {
            this.cookieDomain = str.toLowerCase(Locale.ENGLISH);
        } else {
            this.cookieDomain = null;
        }
    }

    @Override // org.apache.http.cookie.SetCookie
    public void setExpiryDate(Date date) {
        this.cookieExpiryDate = date;
    }

    @Override // org.apache.http.cookie.SetCookie
    public void setPath(String str) {
        this.cookiePath = str;
    }

    @Override // org.apache.http.cookie.SetCookie
    public void setSecure(boolean z10) {
        this.isSecure = z10;
    }

    @Override // org.apache.http.cookie.SetCookie
    public void setValue(String str) {
        this.value = str;
    }

    @Override // org.apache.http.cookie.SetCookie
    public void setVersion(int i10) {
        this.cookieVersion = i10;
    }

    public String toString() {
        return "[version: " + Integer.toString(this.cookieVersion) + "][name: " + this.name + "][value: " + this.value + "][domain: " + this.cookieDomain + "][path: " + this.cookiePath + "][expiry: " + this.cookieExpiryDate + "]";
    }
}
