package j1;

import android.content.Context;
import android.content.SharedPreferences;
import android.os.Build;
import java.io.BufferedOutputStream;
import java.io.Closeable;
import java.io.File;
import java.io.FileFilter;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.RandomAccessFile;
import java.nio.channels.FileChannel;
import java.nio.channels.FileLock;
import java.util.ArrayList;
import java.util.List;
import java.util.zip.ZipEntry;
import java.util.zip.ZipFile;
import java.util.zip.ZipOutputStream;
import okhttp3.internal.http2.Http2;

/* compiled from: MultiDexExtractor.java */
/* loaded from: classes.dex */
public final class c implements Closeable {

    /* renamed from: f, reason: collision with root package name */
    public final File f8059f;

    /* renamed from: g, reason: collision with root package name */
    public final long f8060g;

    /* renamed from: h, reason: collision with root package name */
    public final File f8061h;

    /* renamed from: i, reason: collision with root package name */
    public final RandomAccessFile f8062i;

    /* renamed from: j, reason: collision with root package name */
    public final FileChannel f8063j;

    /* renamed from: k, reason: collision with root package name */
    public final FileLock f8064k;

    /* compiled from: MultiDexExtractor.java */
    /* loaded from: classes.dex */
    public class a implements FileFilter {
        public a() {
        }

        @Override // java.io.FileFilter
        public boolean accept(File file) {
            return !file.getName().equals("MultiDex.lock");
        }
    }

    /* compiled from: MultiDexExtractor.java */
    /* loaded from: classes.dex */
    public static class b extends File {

        /* renamed from: f, reason: collision with root package name */
        public long f8066f;

        public b(File file, String str) {
            super(file, str);
            this.f8066f = -1L;
        }
    }

    public c(File file, File file2) throws IOException {
        StringBuilder sb2 = new StringBuilder();
        sb2.append("MultiDexExtractor(");
        sb2.append(file.getPath());
        sb2.append(", ");
        sb2.append(file2.getPath());
        sb2.append(")");
        this.f8059f = file;
        this.f8061h = file2;
        this.f8060g = z(file);
        File file3 = new File(file2, "MultiDex.lock");
        RandomAccessFile randomAccessFile = new RandomAccessFile(file3, "rw");
        this.f8062i = randomAccessFile;
        try {
            FileChannel channel = randomAccessFile.getChannel();
            this.f8063j = channel;
            try {
                StringBuilder sb3 = new StringBuilder();
                sb3.append("Blocking on lock ");
                sb3.append(file3.getPath());
                this.f8064k = channel.lock();
                StringBuilder sb4 = new StringBuilder();
                sb4.append(file3.getPath());
                sb4.append(" locked");
            } catch (IOException e10) {
                e = e10;
                d(this.f8063j);
                throw e;
            } catch (Error e11) {
                e = e11;
                d(this.f8063j);
                throw e;
            } catch (RuntimeException e12) {
                e = e12;
                d(this.f8063j);
                throw e;
            }
        } catch (IOException | Error | RuntimeException e13) {
            d(this.f8062i);
            throw e13;
        }
    }

    public static boolean F(Context context, File file, long j10, String str) {
        SharedPreferences k10 = k(context);
        if (k10.getLong(str + "timestamp", -1L) == x(file)) {
            if (k10.getLong(str + "crc", -1L) == j10) {
                return false;
            }
        }
        return true;
    }

    public static void R(Context context, String str, long j10, long j11, List<b> list) {
        SharedPreferences.Editor edit = k(context).edit();
        edit.putLong(str + "timestamp", j10);
        edit.putLong(str + "crc", j11);
        edit.putInt(str + "dex.number", list.size() + 1);
        int i10 = 2;
        for (b bVar : list) {
            edit.putLong(str + "dex.crc." + i10, bVar.f8066f);
            edit.putLong(str + "dex.time." + i10, bVar.lastModified());
            i10++;
        }
        edit.commit();
    }

    public static void d(Closeable closeable) {
        try {
            closeable.close();
        } catch (IOException unused) {
        }
    }

    public static void h(ZipFile zipFile, ZipEntry zipEntry, File file, String str) throws IOException, FileNotFoundException {
        InputStream inputStream = zipFile.getInputStream(zipEntry);
        File createTempFile = File.createTempFile("tmp-" + str, ".zip", file.getParentFile());
        StringBuilder sb2 = new StringBuilder();
        sb2.append("Extracting ");
        sb2.append(createTempFile.getPath());
        try {
            ZipOutputStream zipOutputStream = new ZipOutputStream(new BufferedOutputStream(new FileOutputStream(createTempFile)));
            try {
                ZipEntry zipEntry2 = new ZipEntry("classes.dex");
                zipEntry2.setTime(zipEntry.getTime());
                zipOutputStream.putNextEntry(zipEntry2);
                byte[] bArr = new byte[Http2.INITIAL_MAX_FRAME_SIZE];
                for (int read = inputStream.read(bArr); read != -1; read = inputStream.read(bArr)) {
                    zipOutputStream.write(bArr, 0, read);
                }
                zipOutputStream.closeEntry();
                zipOutputStream.close();
                if (createTempFile.setReadOnly()) {
                    StringBuilder sb3 = new StringBuilder();
                    sb3.append("Renaming to ");
                    sb3.append(file.getPath());
                    if (createTempFile.renameTo(file)) {
                        return;
                    }
                    throw new IOException("Failed to rename \"" + createTempFile.getAbsolutePath() + "\" to \"" + file.getAbsolutePath() + "\"");
                }
                throw new IOException("Failed to mark readonly \"" + createTempFile.getAbsolutePath() + "\" (tmp of \"" + file.getAbsolutePath() + "\")");
            } catch (Throwable th) {
                zipOutputStream.close();
                throw th;
            }
        } finally {
            d(inputStream);
            createTempFile.delete();
        }
    }

    public static SharedPreferences k(Context context) {
        return context.getSharedPreferences("multidex.version", Build.VERSION.SDK_INT < 11 ? 0 : 4);
    }

    public static long x(File file) {
        long lastModified = file.lastModified();
        return lastModified == -1 ? lastModified - 1 : lastModified;
    }

    public static long z(File file) throws IOException {
        long c10 = d.c(file);
        return c10 == -1 ? c10 - 1 : c10;
    }

    public List<? extends File> G(Context context, String str, boolean z10) throws IOException {
        List<b> N;
        List<b> list;
        StringBuilder sb2 = new StringBuilder();
        sb2.append("MultiDexExtractor.load(");
        sb2.append(this.f8059f.getPath());
        sb2.append(", ");
        sb2.append(z10);
        sb2.append(", ");
        sb2.append(str);
        sb2.append(")");
        if (this.f8064k.isValid()) {
            if (!z10 && !F(context, this.f8059f, this.f8060g, str)) {
                try {
                    list = L(context, str);
                } catch (IOException unused) {
                    N = N();
                    R(context, str, x(this.f8059f), this.f8060g, N);
                }
                StringBuilder sb3 = new StringBuilder();
                sb3.append("load found ");
                sb3.append(list.size());
                sb3.append(" secondary dex files");
                return list;
            }
            N = N();
            R(context, str, x(this.f8059f), this.f8060g, N);
            list = N;
            StringBuilder sb32 = new StringBuilder();
            sb32.append("load found ");
            sb32.append(list.size());
            sb32.append(" secondary dex files");
            return list;
        }
        throw new IllegalStateException("MultiDexExtractor was closed");
    }

    public final List<b> L(Context context, String str) throws IOException {
        String str2 = this.f8059f.getName() + ".classes";
        SharedPreferences k10 = k(context);
        int i10 = k10.getInt(str + "dex.number", 1);
        ArrayList arrayList = new ArrayList(i10 + (-1));
        int i11 = 2;
        while (i11 <= i10) {
            b bVar = new b(this.f8061h, str2 + i11 + ".zip");
            if (bVar.isFile()) {
                bVar.f8066f = z(bVar);
                long j10 = k10.getLong(str + "dex.crc." + i11, -1L);
                long j11 = k10.getLong(str + "dex.time." + i11, -1L);
                long lastModified = bVar.lastModified();
                if (j11 == lastModified) {
                    String str3 = str2;
                    SharedPreferences sharedPreferences = k10;
                    if (j10 == bVar.f8066f) {
                        arrayList.add(bVar);
                        i11++;
                        k10 = sharedPreferences;
                        str2 = str3;
                    }
                }
                throw new IOException("Invalid extracted dex: " + bVar + " (key \"" + str + "\"), expected modification time: " + j11 + ", modification time: " + lastModified + ", expected crc: " + j10 + ", file crc: " + bVar.f8066f);
            }
            throw new IOException("Missing extracted secondary dex file '" + bVar.getPath() + "'");
        }
        return arrayList;
    }

    public final List<b> N() throws IOException {
        String str = this.f8059f.getName() + ".classes";
        b();
        ArrayList arrayList = new ArrayList();
        ZipFile zipFile = new ZipFile(this.f8059f);
        int i10 = 2;
        try {
            ZipEntry entry = zipFile.getEntry("classes2.dex");
            while (entry != null) {
                b bVar = new b(this.f8061h, str + i10 + ".zip");
                arrayList.add(bVar);
                StringBuilder sb2 = new StringBuilder();
                sb2.append("Extraction is needed for file ");
                sb2.append(bVar);
                int i11 = 0;
                boolean z10 = false;
                while (i11 < 3 && !z10) {
                    i11++;
                    h(zipFile, entry, bVar, str);
                    try {
                        bVar.f8066f = z(bVar);
                        z10 = true;
                    } catch (IOException unused) {
                        StringBuilder sb3 = new StringBuilder();
                        sb3.append("Failed to read crc from ");
                        sb3.append(bVar.getAbsolutePath());
                        z10 = false;
                    }
                    StringBuilder sb4 = new StringBuilder();
                    sb4.append("Extraction ");
                    sb4.append(z10 ? "succeeded" : "failed");
                    sb4.append(" '");
                    sb4.append(bVar.getAbsolutePath());
                    sb4.append("': length ");
                    sb4.append(bVar.length());
                    sb4.append(" - crc: ");
                    sb4.append(bVar.f8066f);
                    if (!z10) {
                        bVar.delete();
                        if (bVar.exists()) {
                            StringBuilder sb5 = new StringBuilder();
                            sb5.append("Failed to delete corrupted secondary dex '");
                            sb5.append(bVar.getPath());
                            sb5.append("'");
                        }
                    }
                }
                if (z10) {
                    i10++;
                    entry = zipFile.getEntry("classes" + i10 + ".dex");
                } else {
                    throw new IOException("Could not create zip file " + bVar.getAbsolutePath() + " for secondary dex (" + i10 + ")");
                }
            }
            try {
                zipFile.close();
            } catch (IOException unused2) {
            }
            return arrayList;
        } catch (Throwable th) {
            try {
                zipFile.close();
            } catch (IOException unused3) {
            }
            throw th;
        }
    }

    public final void b() {
        File[] listFiles = this.f8061h.listFiles(new a());
        if (listFiles == null) {
            StringBuilder sb2 = new StringBuilder();
            sb2.append("Failed to list secondary dex dir content (");
            sb2.append(this.f8061h.getPath());
            sb2.append(").");
            return;
        }
        for (File file : listFiles) {
            StringBuilder sb3 = new StringBuilder();
            sb3.append("Trying to delete old file ");
            sb3.append(file.getPath());
            sb3.append(" of size ");
            sb3.append(file.length());
            if (!file.delete()) {
                StringBuilder sb4 = new StringBuilder();
                sb4.append("Failed to delete old file ");
                sb4.append(file.getPath());
            } else {
                StringBuilder sb5 = new StringBuilder();
                sb5.append("Deleted old file ");
                sb5.append(file.getPath());
            }
        }
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public void close() throws IOException {
        this.f8064k.release();
        this.f8063j.close();
        this.f8062i.close();
    }
}
