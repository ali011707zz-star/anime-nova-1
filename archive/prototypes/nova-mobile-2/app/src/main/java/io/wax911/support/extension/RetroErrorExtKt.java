package io.wax911.support.extension;

import jc.l;
import okhttp3.ResponseBody;

/* compiled from: RetroErrorExt.kt */
/* loaded from: classes.dex */
public final class RetroErrorExtKt {
    public static final void logError(ResponseBody responseBody) {
        try {
            if (responseBody == null) {
                return;
            }
            try {
                String string = responseBody.string();
                l.e(string, "json");
                if (string.length() == 0) {
                }
            } catch (Exception e10) {
                e10.printStackTrace();
            }
        } finally {
            responseBody.close();
        }
    }
}
