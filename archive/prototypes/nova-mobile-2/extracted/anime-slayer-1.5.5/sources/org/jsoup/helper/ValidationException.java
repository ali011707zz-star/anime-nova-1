package org.jsoup.helper;

import hd.a;
import java.util.ArrayList;

/* loaded from: classes2.dex */
public class ValidationException extends IllegalArgumentException {

    /* renamed from: f, reason: collision with root package name */
    public static final String f11875f = a.class.getName();

    @Override // java.lang.Throwable
    public synchronized Throwable fillInStackTrace() {
        super.fillInStackTrace();
        StackTraceElement[] stackTrace = getStackTrace();
        ArrayList arrayList = new ArrayList();
        for (StackTraceElement stackTraceElement : stackTrace) {
            if (!stackTraceElement.getClassName().equals(f11875f)) {
                arrayList.add(stackTraceElement);
            }
        }
        setStackTrace((StackTraceElement[]) arrayList.toArray(new StackTraceElement[0]));
        return this;
    }
}
