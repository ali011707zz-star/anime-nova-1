package org.apache.http.util;

import java.io.IOException;
import java.io.InputStream;
import java.util.ArrayList;
import java.util.Map;
import java.util.Properties;

/* loaded from: classes2.dex */
public class VersionInfo {
    public static final String PROPERTY_MODULE = "info.module";
    public static final String PROPERTY_RELEASE = "info.release";
    public static final String PROPERTY_TIMESTAMP = "info.timestamp";
    public static final String UNAVAILABLE = "UNAVAILABLE";
    public static final String VERSION_PROPERTY_FILE = "version.properties";
    private final String infoClassloader;
    private final String infoModule;
    private final String infoPackage;
    private final String infoRelease;
    private final String infoTimestamp;

    public VersionInfo(String str, String str2, String str3, String str4, String str5) {
        if (str != null) {
            this.infoPackage = str;
            this.infoModule = str2 == null ? UNAVAILABLE : str2;
            this.infoRelease = str3 == null ? UNAVAILABLE : str3;
            this.infoTimestamp = str4 == null ? UNAVAILABLE : str4;
            this.infoClassloader = str5 == null ? UNAVAILABLE : str5;
            return;
        }
        throw new IllegalArgumentException("Package identifier must not be null.");
    }

    public static final VersionInfo fromMap(String str, Map map, ClassLoader classLoader) {
        String str2;
        String str3;
        String str4;
        if (str != null) {
            if (map != null) {
                String str5 = (String) map.get(PROPERTY_MODULE);
                if (str5 != null && str5.length() < 1) {
                    str5 = null;
                }
                String str6 = (String) map.get(PROPERTY_RELEASE);
                if (str6 != null && (str6.length() < 1 || str6.equals("${pom.version}"))) {
                    str6 = null;
                }
                String str7 = (String) map.get(PROPERTY_TIMESTAMP);
                str4 = (str7 == null || (str7.length() >= 1 && !str7.equals("${mvn.timestamp}"))) ? str7 : null;
                str2 = str5;
                str3 = str6;
            } else {
                str2 = null;
                str3 = null;
                str4 = null;
            }
            return new VersionInfo(str, str2, str3, str4, classLoader != null ? classLoader.toString() : null);
        }
        throw new IllegalArgumentException("Package identifier must not be null.");
    }

    public static final VersionInfo[] loadVersionInfo(String[] strArr, ClassLoader classLoader) {
        if (strArr != null) {
            ArrayList arrayList = new ArrayList(strArr.length);
            for (String str : strArr) {
                VersionInfo loadVersionInfo = loadVersionInfo(str, classLoader);
                if (loadVersionInfo != null) {
                    arrayList.add(loadVersionInfo);
                }
            }
            return (VersionInfo[]) arrayList.toArray(new VersionInfo[arrayList.size()]);
        }
        throw new IllegalArgumentException("Package identifier list must not be null.");
    }

    public final String getClassloader() {
        return this.infoClassloader;
    }

    public final String getModule() {
        return this.infoModule;
    }

    public final String getPackage() {
        return this.infoPackage;
    }

    public final String getRelease() {
        return this.infoRelease;
    }

    public final String getTimestamp() {
        return this.infoTimestamp;
    }

    public String toString() {
        StringBuffer stringBuffer = new StringBuffer(this.infoPackage.length() + 20 + this.infoModule.length() + this.infoRelease.length() + this.infoTimestamp.length() + this.infoClassloader.length());
        stringBuffer.append("VersionInfo(");
        stringBuffer.append(this.infoPackage);
        stringBuffer.append(':');
        stringBuffer.append(this.infoModule);
        if (!UNAVAILABLE.equals(this.infoRelease)) {
            stringBuffer.append(':');
            stringBuffer.append(this.infoRelease);
        }
        if (!UNAVAILABLE.equals(this.infoTimestamp)) {
            stringBuffer.append(':');
            stringBuffer.append(this.infoTimestamp);
        }
        stringBuffer.append(')');
        if (!UNAVAILABLE.equals(this.infoClassloader)) {
            stringBuffer.append('@');
            stringBuffer.append(this.infoClassloader);
        }
        return stringBuffer.toString();
    }

    /* JADX WARN: Removed duplicated region for block: B:10:0x0047  */
    /* JADX WARN: Removed duplicated region for block: B:13:? A[RETURN, SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static final VersionInfo loadVersionInfo(String str, ClassLoader classLoader) {
        Properties properties;
        InputStream resourceAsStream;
        if (str != null) {
            if (classLoader == null) {
                classLoader = Thread.currentThread().getContextClassLoader();
            }
            try {
                StringBuffer stringBuffer = new StringBuffer();
                stringBuffer.append(str.replace('.', '/'));
                stringBuffer.append("/");
                stringBuffer.append(VERSION_PROPERTY_FILE);
                resourceAsStream = classLoader.getResourceAsStream(stringBuffer.toString());
            } catch (IOException unused) {
            }
            if (resourceAsStream != null) {
                try {
                    properties = new Properties();
                    properties.load(resourceAsStream);
                    if (properties == null) {
                        return fromMap(str, properties, classLoader);
                    }
                    return null;
                } finally {
                    resourceAsStream.close();
                }
            }
            properties = null;
            if (properties == null) {
            }
        } else {
            throw new IllegalArgumentException("Package identifier must not be null.");
        }
    }
}
