package n8;

import android.annotation.SuppressLint;
import android.content.Context;
import android.content.pm.ApplicationInfo;
import android.os.Build;
import androidx.recyclerview.widget.RecyclerView;
import com.getkeepsafe.relinker.MissingLibraryException;
import java.io.Closeable;
import java.io.File;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.util.Enumeration;
import java.util.HashSet;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
import java.util.zip.ZipEntry;
import java.util.zip.ZipFile;
import n8.b;

/* compiled from: ApkLibraryInstaller.java */
/* loaded from: classes.dex */
public class a implements b.a {

    /* compiled from: ApkLibraryInstaller.java */
    /* renamed from: n8.a$a, reason: collision with other inner class name */
    /* loaded from: classes.dex */
    public static class C0275a {

        /* renamed from: a, reason: collision with root package name */
        public ZipFile f11365a;

        /* renamed from: b, reason: collision with root package name */
        public ZipEntry f11366b;

        public C0275a(ZipFile zipFile, ZipEntry zipEntry) {
            this.f11365a = zipFile;
            this.f11366b = zipEntry;
        }
    }

    @Override // n8.b.a
    @SuppressLint({"SetWorldReadable"})
    public void a(Context context, String[] strArr, String str, File file, c cVar) {
        C0275a d10;
        String[] strArr2;
        FileOutputStream fileOutputStream;
        InputStream inputStream;
        long c10;
        C0275a c0275a = null;
        Closeable closeable = null;
        try {
            d10 = d(context, strArr, str, cVar);
        } catch (Throwable th) {
            th = th;
        }
        try {
            if (d10 == null) {
                try {
                    strArr2 = e(context, str);
                } catch (Exception e10) {
                    strArr2 = new String[]{e10.toString()};
                }
                throw new MissingLibraryException(str, strArr, strArr2);
            }
            int i10 = 0;
            while (true) {
                int i11 = i10 + 1;
                if (i10 < 5) {
                    cVar.i("Found %s! Extracting...", str);
                    try {
                        if (file.exists() || file.createNewFile()) {
                            try {
                                inputStream = d10.f11365a.getInputStream(d10.f11366b);
                                try {
                                    fileOutputStream = new FileOutputStream(file);
                                    try {
                                        c10 = c(inputStream, fileOutputStream);
                                        fileOutputStream.getFD().sync();
                                    } catch (FileNotFoundException unused) {
                                        b(inputStream);
                                        b(fileOutputStream);
                                        i10 = i11;
                                    } catch (IOException unused2) {
                                        b(inputStream);
                                        b(fileOutputStream);
                                        i10 = i11;
                                    } catch (Throwable th2) {
                                        th = th2;
                                        closeable = inputStream;
                                        b(closeable);
                                        b(fileOutputStream);
                                        throw th;
                                    }
                                } catch (FileNotFoundException unused3) {
                                    fileOutputStream = null;
                                } catch (IOException unused4) {
                                    fileOutputStream = null;
                                } catch (Throwable th3) {
                                    th = th3;
                                    fileOutputStream = null;
                                }
                            } catch (FileNotFoundException unused5) {
                                inputStream = null;
                                fileOutputStream = null;
                            } catch (IOException unused6) {
                                inputStream = null;
                                fileOutputStream = null;
                            } catch (Throwable th4) {
                                th = th4;
                                fileOutputStream = null;
                            }
                            if (c10 != file.length()) {
                                b(inputStream);
                                b(fileOutputStream);
                            } else {
                                b(inputStream);
                                b(fileOutputStream);
                                file.setReadable(true, false);
                                file.setExecutable(true, false);
                                file.setWritable(true);
                                try {
                                    ZipFile zipFile = d10.f11365a;
                                    if (zipFile != null) {
                                        zipFile.close();
                                        return;
                                    }
                                    return;
                                } catch (IOException unused7) {
                                    return;
                                }
                            }
                        }
                    } catch (IOException unused8) {
                    }
                    i10 = i11;
                } else {
                    cVar.h("FATAL! Couldn't extract the library from the APK!");
                    try {
                        ZipFile zipFile2 = d10.f11365a;
                        if (zipFile2 != null) {
                            zipFile2.close();
                            return;
                        }
                        return;
                    } catch (IOException unused9) {
                        return;
                    }
                }
            }
        } catch (Throwable th5) {
            th = th5;
            c0275a = d10;
            if (c0275a != null) {
                try {
                    ZipFile zipFile3 = c0275a.f11365a;
                    if (zipFile3 != null) {
                        zipFile3.close();
                    }
                } catch (IOException unused10) {
                }
            }
            throw th;
        }
    }

    public final void b(Closeable closeable) {
        if (closeable != null) {
            try {
                closeable.close();
            } catch (IOException unused) {
            }
        }
    }

    public final long c(InputStream inputStream, OutputStream outputStream) throws IOException {
        byte[] bArr = new byte[RecyclerView.e0.FLAG_APPEARED_IN_PRE_LAYOUT];
        long j10 = 0;
        while (true) {
            int read = inputStream.read(bArr);
            if (read == -1) {
                outputStream.flush();
                return j10;
            }
            outputStream.write(bArr, 0, read);
            j10 += read;
        }
    }

    public final C0275a d(Context context, String[] strArr, String str, c cVar) {
        String[] f10 = f(context);
        int length = f10.length;
        char c10 = 0;
        int i10 = 0;
        while (true) {
            ZipFile zipFile = null;
            if (i10 >= length) {
                return null;
            }
            String str2 = f10[i10];
            int i11 = 0;
            while (true) {
                int i12 = i11 + 1;
                if (i11 >= 5) {
                    break;
                }
                try {
                    zipFile = new ZipFile(new File(str2), 1);
                    break;
                } catch (IOException unused) {
                    i11 = i12;
                }
            }
            if (zipFile != null) {
                int i13 = 0;
                while (true) {
                    int i14 = i13 + 1;
                    if (i13 < 5) {
                        int length2 = strArr.length;
                        int i15 = 0;
                        while (i15 < length2) {
                            String str3 = "lib" + File.separatorChar + strArr[i15] + File.separatorChar + str;
                            Object[] objArr = new Object[2];
                            objArr[c10] = str3;
                            objArr[1] = str2;
                            cVar.i("Looking for %s in APK %s...", objArr);
                            ZipEntry entry = zipFile.getEntry(str3);
                            if (entry != null) {
                                return new C0275a(zipFile, entry);
                            }
                            i15++;
                            c10 = 0;
                        }
                        i13 = i14;
                        c10 = 0;
                    } else {
                        try {
                            zipFile.close();
                            break;
                        } catch (IOException unused2) {
                        }
                    }
                }
            }
            i10++;
            c10 = 0;
        }
    }

    public final String[] e(Context context, String str) {
        Pattern compile = Pattern.compile("lib" + File.separatorChar + "([^\\" + File.separatorChar + "]*)" + File.separatorChar + str);
        HashSet hashSet = new HashSet();
        for (String str2 : f(context)) {
            try {
                Enumeration<? extends ZipEntry> entries = new ZipFile(new File(str2), 1).entries();
                while (entries.hasMoreElements()) {
                    Matcher matcher = compile.matcher(entries.nextElement().getName());
                    if (matcher.matches()) {
                        hashSet.add(matcher.group(1));
                    }
                }
            } catch (IOException unused) {
            }
        }
        return (String[]) hashSet.toArray(new String[hashSet.size()]);
    }

    public final String[] f(Context context) {
        String[] strArr;
        ApplicationInfo applicationInfo = context.getApplicationInfo();
        if (Build.VERSION.SDK_INT < 21 || (strArr = applicationInfo.splitSourceDirs) == null || strArr.length == 0) {
            return new String[]{applicationInfo.sourceDir};
        }
        String[] strArr2 = new String[strArr.length + 1];
        strArr2[0] = applicationInfo.sourceDir;
        System.arraycopy(strArr, 0, strArr2, 1, strArr.length);
        return strArr2;
    }
}
