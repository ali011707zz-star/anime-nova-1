package tgio.rncryptor;

import android.util.Base64;
import java.io.BufferedInputStream;
import java.io.BufferedOutputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;
import org.apache.http.protocol.HTTP;

/* loaded from: classes2.dex */
public class RNCryptorNative {

    /* loaded from: classes2.dex */
    public interface RNCryptorNativeCallback {
        void done(String str, Exception exc);
    }

    static {
        System.loadLibrary("gnustl_shared");
        System.loadLibrary("cryptopp_shared");
        System.loadLibrary("rncrypto");
    }

    public static void decryptAsync(String str, String str2, RNCryptorNativeCallback rNCryptorNativeCallback) {
        try {
            rNCryptorNativeCallback.done(new RNCryptorNative().decrypt(str, str2), null);
        } catch (Exception e10) {
            rNCryptorNativeCallback.done(null, e10);
        }
    }

    public static void decryptFile(File file, File file2, String str) throws IOException {
        writeBytes(file2, Base64.decode(new RNCryptorNative().decrypt(new String(readBytes(file)), str), 0));
    }

    public static void encryptAsync(String str, String str2, RNCryptorNativeCallback rNCryptorNativeCallback) {
        try {
            rNCryptorNativeCallback.done(new String(new RNCryptorNative().encrypt(str, str2), HTTP.UTF_8), null);
        } catch (Exception e10) {
            rNCryptorNativeCallback.done(null, e10);
        }
    }

    public static void encryptFile(File file, File file2, String str) throws IOException {
        writeBytes(file2, new RNCryptorNative().encrypt(Base64.encodeToString(readBytes(file), 0), str));
    }

    private static byte[] readBytes(File file) {
        int length = (int) file.length();
        byte[] bArr = new byte[length];
        try {
            BufferedInputStream bufferedInputStream = new BufferedInputStream(new FileInputStream(file));
            bufferedInputStream.read(bArr, 0, length);
            bufferedInputStream.close();
        } catch (FileNotFoundException e10) {
            e10.printStackTrace();
        } catch (IOException e11) {
            e11.printStackTrace();
        }
        return bArr;
    }

    private static void writeBytes(File file, byte[] bArr) throws IOException {
        BufferedOutputStream bufferedOutputStream = new BufferedOutputStream(new FileOutputStream(file));
        bufferedOutputStream.write(bArr);
        bufferedOutputStream.flush();
        bufferedOutputStream.close();
    }

    public native String decrypt(String str, String str2);

    public native byte[] encrypt(String str, String str2);

    public native String getABI();
}
