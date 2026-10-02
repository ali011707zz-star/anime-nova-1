package com.google.firebase.installations.local;

import android.content.SharedPreferences;
import android.util.Base64;
import com.google.android.gms.stats.CodePackage;
import com.google.android.material.progressindicator.BaseProgressIndicator;
import com.google.firebase.FirebaseApp;
import java.security.KeyFactory;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.security.PublicKey;
import java.security.spec.InvalidKeySpecException;
import java.security.spec.X509EncodedKeySpec;
import org.json.JSONException;
import org.json.JSONObject;

/* loaded from: classes.dex */
public class IidStore {
    private static final String[] ALLOWABLE_SCOPES = {"*", "FCM", CodePackage.GCM, ""};
    private final String defaultSenderId;
    private final SharedPreferences iidPrefs;

    public IidStore(FirebaseApp firebaseApp) {
        this.iidPrefs = firebaseApp.getApplicationContext().getSharedPreferences("com.google.android.gms.appid", 0);
        this.defaultSenderId = getDefaultSenderId(firebaseApp);
    }

    private String createTokenKey(String str, String str2) {
        return "|T|" + str + "|" + str2;
    }

    private static String getDefaultSenderId(FirebaseApp firebaseApp) {
        String gcmSenderId = firebaseApp.getOptions().getGcmSenderId();
        if (gcmSenderId != null) {
            return gcmSenderId;
        }
        String applicationId = firebaseApp.getOptions().getApplicationId();
        if (!applicationId.startsWith("1:") && !applicationId.startsWith("2:")) {
            return applicationId;
        }
        String[] split = applicationId.split(":");
        if (split.length != 4) {
            return null;
        }
        String str = split[1];
        if (str.isEmpty()) {
            return null;
        }
        return str;
    }

    private static String getIdFromPublicKey(PublicKey publicKey) {
        try {
            byte[] digest = MessageDigest.getInstance("SHA1").digest(publicKey.getEncoded());
            digest[0] = (byte) (((digest[0] & 15) + 112) & BaseProgressIndicator.MAX_ALPHA);
            return Base64.encodeToString(digest, 0, 8, 11);
        } catch (NoSuchAlgorithmException unused) {
            return null;
        }
    }

    private String parseIidTokenFromJson(String str) {
        try {
            return new JSONObject(str).getString("token");
        } catch (JSONException unused) {
            return null;
        }
    }

    private PublicKey parseKey(String str) {
        try {
            return KeyFactory.getInstance("RSA").generatePublic(new X509EncodedKeySpec(Base64.decode(str, 8)));
        } catch (IllegalArgumentException | NoSuchAlgorithmException | InvalidKeySpecException e10) {
            StringBuilder sb2 = new StringBuilder();
            sb2.append("Invalid key stored ");
            sb2.append(e10);
            return null;
        }
    }

    private String readInstanceIdFromLocalStorage() {
        String string;
        synchronized (this.iidPrefs) {
            string = this.iidPrefs.getString("|S|id", null);
        }
        return string;
    }

    private String readPublicKeyFromLocalStorageAndCalculateInstanceId() {
        synchronized (this.iidPrefs) {
            String string = this.iidPrefs.getString("|S||P|", null);
            if (string == null) {
                return null;
            }
            PublicKey parseKey = parseKey(string);
            if (parseKey == null) {
                return null;
            }
            return getIdFromPublicKey(parseKey);
        }
    }

    public String readIid() {
        synchronized (this.iidPrefs) {
            String readInstanceIdFromLocalStorage = readInstanceIdFromLocalStorage();
            if (readInstanceIdFromLocalStorage != null) {
                return readInstanceIdFromLocalStorage;
            }
            return readPublicKeyFromLocalStorageAndCalculateInstanceId();
        }
    }

    public String readToken() {
        synchronized (this.iidPrefs) {
            for (String str : ALLOWABLE_SCOPES) {
                String string = this.iidPrefs.getString(createTokenKey(this.defaultSenderId, str), null);
                if (string != null && !string.isEmpty()) {
                    if (string.startsWith("{")) {
                        string = parseIidTokenFromJson(string);
                    }
                    return string;
                }
            }
            return null;
        }
    }
}
