package z;

import android.annotation.SuppressLint;
import android.content.Context;
import android.view.View;
import com.twitter.sdk.android.core.internal.scribe.EventsFilesManager;
import java.nio.CharBuffer;

/* compiled from: Debug.java */
@SuppressLint({"LogConditional"})
/* loaded from: classes.dex */
public class a {
    public static String a() {
        StackTraceElement stackTraceElement = new Throwable().getStackTrace()[1];
        return ".(" + stackTraceElement.getFileName() + ":" + stackTraceElement.getLineNumber() + ") " + stackTraceElement.getMethodName() + "()";
    }

    public static String b(Context context, int i10) {
        if (i10 == -1) {
            return "UNKNOWN";
        }
        try {
            return context.getResources().getResourceEntryName(i10);
        } catch (Exception unused) {
            return "?" + i10;
        }
    }

    public static String c(View view) {
        try {
            return view.getContext().getResources().getResourceEntryName(view.getId());
        } catch (Exception unused) {
            return "UNKNOWN";
        }
    }

    public static String d(p pVar, int i10) {
        return e(pVar, i10, -1);
    }

    public static String e(p pVar, int i10, int i11) {
        int length;
        if (i10 == -1) {
            return "UNDEFINED";
        }
        String resourceEntryName = pVar.getContext().getResources().getResourceEntryName(i10);
        if (i11 == -1) {
            return resourceEntryName;
        }
        if (resourceEntryName.length() > i11) {
            resourceEntryName = resourceEntryName.replaceAll("([^_])[aeiou]+", "$1");
        }
        if (resourceEntryName.length() <= i11 || (length = resourceEntryName.replaceAll("[^_]", "").length()) <= 0) {
            return resourceEntryName;
        }
        return resourceEntryName.replaceAll(CharBuffer.allocate((resourceEntryName.length() - i11) / length).toString().replace((char) 0, '.') + EventsFilesManager.ROLL_OVER_FILE_NAME_SEPARATOR, EventsFilesManager.ROLL_OVER_FILE_NAME_SEPARATOR);
    }

    public static void f(String str, String str2, int i10) {
        StackTraceElement[] stackTrace = new Throwable().getStackTrace();
        int min = Math.min(i10, stackTrace.length - 1);
        String str3 = " ";
        for (int i11 = 1; i11 <= min; i11++) {
            StackTraceElement stackTraceElement = stackTrace[i11];
            String str4 = ".(" + stackTrace[i11].getFileName() + ":" + stackTrace[i11].getLineNumber() + ") " + stackTrace[i11].getMethodName();
            str3 = str3 + " ";
            StringBuilder sb2 = new StringBuilder();
            sb2.append(str2);
            sb2.append(str3);
            sb2.append(str4);
            sb2.append(str3);
        }
    }
}
