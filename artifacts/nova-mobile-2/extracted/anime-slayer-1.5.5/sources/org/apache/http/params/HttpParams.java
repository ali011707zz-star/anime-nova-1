package org.apache.http.params;

/* loaded from: classes2.dex */
public interface HttpParams {
    HttpParams copy();

    boolean getBooleanParameter(String str, boolean z10);

    double getDoubleParameter(String str, double d10);

    int getIntParameter(String str, int i10);

    long getLongParameter(String str, long j10);

    Object getParameter(String str);

    boolean isParameterFalse(String str);

    boolean isParameterTrue(String str);

    boolean removeParameter(String str);

    HttpParams setBooleanParameter(String str, boolean z10);

    HttpParams setDoubleParameter(String str, double d10);

    HttpParams setIntParameter(String str, int i10);

    HttpParams setLongParameter(String str, long j10);

    HttpParams setParameter(String str, Object obj);
}
