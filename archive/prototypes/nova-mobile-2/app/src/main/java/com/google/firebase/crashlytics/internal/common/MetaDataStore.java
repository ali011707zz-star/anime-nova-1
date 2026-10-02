package com.google.firebase.crashlytics.internal.common;

import com.google.firebase.crashlytics.internal.Logger;
import java.io.File;
import java.io.FileInputStream;
import java.nio.charset.Charset;
import java.util.Collections;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import org.apache.http.protocol.HTTP;
import org.json.JSONException;
import org.json.JSONObject;

/* loaded from: classes.dex */
class MetaDataStore {
    private static final Charset UTF_8 = Charset.forName(HTTP.UTF_8);
    private final File filesDir;

    public MetaDataStore(File file) {
        this.filesDir = file;
    }

    private static Map<String, String> jsonToKeysData(String str) throws JSONException {
        JSONObject jSONObject = new JSONObject(str);
        HashMap hashMap = new HashMap();
        Iterator<String> keys = jSONObject.keys();
        while (keys.hasNext()) {
            String next = keys.next();
            hashMap.put(next, valueOrNull(jSONObject, next));
        }
        return hashMap;
    }

    private static String valueOrNull(JSONObject jSONObject, String str) {
        if (jSONObject.isNull(str)) {
            return null;
        }
        return jSONObject.optString(str, null);
    }

    public File getInternalKeysFileForSession(String str) {
        return new File(this.filesDir, str + "internal-keys.meta");
    }

    public File getKeysFileForSession(String str) {
        return new File(this.filesDir, str + "keys.meta");
    }

    public File getUserDataFileForSession(String str) {
        return new File(this.filesDir, str + "user.meta");
    }

    public Map<String, String> readKeyData(String str) {
        return readKeyData(str, false);
    }

    public Map<String, String> readKeyData(String str, boolean z10) {
        FileInputStream fileInputStream;
        File internalKeysFileForSession = z10 ? getInternalKeysFileForSession(str) : getKeysFileForSession(str);
        if (!internalKeysFileForSession.exists()) {
            return Collections.emptyMap();
        }
        FileInputStream fileInputStream2 = null;
        try {
            try {
                fileInputStream = new FileInputStream(internalKeysFileForSession);
            } catch (Throwable th) {
                th = th;
            }
        } catch (Exception e10) {
            e = e10;
        }
        try {
            Map<String, String> jsonToKeysData = jsonToKeysData(CommonUtils.streamToString(fileInputStream));
            CommonUtils.closeOrLog(fileInputStream, "Failed to close user metadata file.");
            return jsonToKeysData;
        } catch (Exception e11) {
            e = e11;
            fileInputStream2 = fileInputStream;
            Logger.getLogger().e("Error deserializing user metadata.", e);
            CommonUtils.closeOrLog(fileInputStream2, "Failed to close user metadata file.");
            return Collections.emptyMap();
        } catch (Throwable th2) {
            th = th2;
            fileInputStream2 = fileInputStream;
            CommonUtils.closeOrLog(fileInputStream2, "Failed to close user metadata file.");
            throw th;
        }
    }
}
