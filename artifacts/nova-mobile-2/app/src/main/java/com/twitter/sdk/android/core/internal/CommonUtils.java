package com.twitter.sdk.android.core.internal;

import android.content.Context;
import android.content.res.Resources;
import com.twitter.sdk.android.core.Twitter;
import java.io.Closeable;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.util.Scanner;

/* loaded from: classes.dex */
public class CommonUtils {
    public static final boolean TRACE_ENABLED_DEFAULT = false;
    public static final String TRACE_ENABLED_RESOURCE_NAME = "com.twitter.sdk.android.TRACE_ENABLED";
    private static Boolean clsTrace;

    public static void closeOrLog(Closeable closeable, String str) {
        if (closeable != null) {
            try {
                closeable.close();
            } catch (IOException e10) {
                Twitter.getLogger().e("Twitter", str, e10);
            }
        }
    }

    public static void closeQuietly(Closeable closeable) {
        if (closeable != null) {
            try {
                closeable.close();
            } catch (RuntimeException e10) {
                throw e10;
            } catch (Exception unused) {
            }
        }
    }

    public static void copyStream(InputStream inputStream, OutputStream outputStream, byte[] bArr) throws IOException {
        while (true) {
            int read = inputStream.read(bArr);
            if (read == -1) {
                return;
            } else {
                outputStream.write(bArr, 0, read);
            }
        }
    }

    public static boolean getBooleanResourceValue(Context context, String str, boolean z10) {
        Resources resources;
        if (context != null && (resources = context.getResources()) != null) {
            int resourcesIdentifier = getResourcesIdentifier(context, str, "bool");
            if (resourcesIdentifier > 0) {
                return resources.getBoolean(resourcesIdentifier);
            }
            int resourcesIdentifier2 = getResourcesIdentifier(context, str, "string");
            if (resourcesIdentifier2 > 0) {
                return Boolean.parseBoolean(context.getString(resourcesIdentifier2));
            }
        }
        return z10;
    }

    public static String getResourcePackageName(Context context) {
        int i10 = context.getApplicationContext().getApplicationInfo().icon;
        if (i10 > 0) {
            return context.getResources().getResourcePackageName(i10);
        }
        return context.getPackageName();
    }

    public static int getResourcesIdentifier(Context context, String str, String str2) {
        return context.getResources().getIdentifier(str, str2, getResourcePackageName(context));
    }

    public static String getStringResourceValue(Context context, String str, String str2) {
        Resources resources;
        int resourcesIdentifier;
        return (context == null || (resources = context.getResources()) == null || (resourcesIdentifier = getResourcesIdentifier(context, str, "string")) <= 0) ? str2 : resources.getString(resourcesIdentifier);
    }

    public static boolean isClsTrace(Context context) {
        if (clsTrace == null) {
            clsTrace = Boolean.valueOf(getBooleanResourceValue(context, TRACE_ENABLED_RESOURCE_NAME, false));
        }
        return clsTrace.booleanValue();
    }

    public static void logControlled(Context context, String str) {
        if (isClsTrace(context)) {
            Twitter.getLogger().d("Twitter", str);
        }
    }

    public static void logControlledError(Context context, String str, Throwable th) {
        if (isClsTrace(context)) {
            Twitter.getLogger().e("Twitter", str);
        }
    }

    public static void logOrThrowIllegalStateException(String str, String str2) {
        if (!Twitter.isDebug()) {
            Twitter.getLogger().w(str, str2);
            return;
        }
        throw new IllegalStateException(str2);
    }

    public static String streamToString(InputStream inputStream) throws IOException {
        Scanner useDelimiter = new Scanner(inputStream).useDelimiter("\\A");
        return useDelimiter.hasNext() ? useDelimiter.next() : "";
    }

    public static void logControlled(Context context, int i10, String str, String str2) {
        if (isClsTrace(context)) {
            Twitter.getLogger().log(i10, "Twitter", str2);
        }
    }
}
