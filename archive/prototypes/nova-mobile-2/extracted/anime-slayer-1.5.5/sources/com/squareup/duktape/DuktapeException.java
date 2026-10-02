package com.squareup.duktape;

import androidx.annotation.Keep;
import java.util.ArrayList;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

@Keep
/* loaded from: classes.dex */
public final class DuktapeException extends RuntimeException {
    private static final String STACK_TRACE_CLASS_NAME = "JavaScript";
    private static final Pattern STACK_TRACE_PATTERN = Pattern.compile("\\s*at ([^\\s]+) \\(([^\\s]+(?<!cpp)):(\\d+)\\).*$");

    public DuktapeException(String str) {
        super(getErrorMessage(str));
        addDuktapeStack(this, str);
    }

    private static void addDuktapeStack(Throwable th, String str) {
        String[] split = str.split("\n", -1);
        if (split.length <= 1) {
            return;
        }
        ArrayList arrayList = new ArrayList();
        boolean z10 = false;
        for (StackTraceElement stackTraceElement : th.getStackTrace()) {
            if (!z10 && stackTraceElement.isNativeMethod() && stackTraceElement.getClassName().equals(Duktape.class.getName()) && (stackTraceElement.getMethodName().equals("evaluate") || stackTraceElement.getMethodName().equals("call"))) {
                for (int i10 = 1; i10 < split.length; i10++) {
                    StackTraceElement stackTraceElement2 = toStackTraceElement(split[i10]);
                    if (stackTraceElement2 != null) {
                        arrayList.add(stackTraceElement2);
                    }
                }
                z10 = true;
            }
            arrayList.add(stackTraceElement);
        }
        th.setStackTrace((StackTraceElement[]) arrayList.toArray(new StackTraceElement[arrayList.size()]));
    }

    private static String getErrorMessage(String str) {
        int indexOf = str.indexOf(10);
        return indexOf > 0 ? str.substring(0, indexOf) : str;
    }

    private static StackTraceElement toStackTraceElement(String str) {
        Matcher matcher = STACK_TRACE_PATTERN.matcher(str);
        if (matcher.matches()) {
            return new StackTraceElement(STACK_TRACE_CLASS_NAME, matcher.group(1), matcher.group(2), Integer.parseInt(matcher.group(3)));
        }
        return null;
    }
}
