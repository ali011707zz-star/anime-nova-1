package n7;

import android.annotation.TargetApi;
import android.os.Build;
import android.os.StrictMode;
import java.io.BufferedWriter;
import java.io.Closeable;
import java.io.EOFException;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.OutputStreamWriter;
import java.io.Writer;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.concurrent.Callable;
import java.util.concurrent.LinkedBlockingQueue;
import java.util.concurrent.ThreadFactory;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;
import okhttp3.internal.cache.DiskLruCache;

/* compiled from: DiskLruCache.java */
/* loaded from: classes.dex */
public final class a implements Closeable {

    /* renamed from: f, reason: collision with root package name */
    public final File f11325f;

    /* renamed from: g, reason: collision with root package name */
    public final File f11326g;

    /* renamed from: h, reason: collision with root package name */
    public final File f11327h;

    /* renamed from: i, reason: collision with root package name */
    public final File f11328i;

    /* renamed from: j, reason: collision with root package name */
    public final int f11329j;

    /* renamed from: k, reason: collision with root package name */
    public long f11330k;

    /* renamed from: l, reason: collision with root package name */
    public final int f11331l;

    /* renamed from: n, reason: collision with root package name */
    public Writer f11333n;

    /* renamed from: p, reason: collision with root package name */
    public int f11335p;

    /* renamed from: m, reason: collision with root package name */
    public long f11332m = 0;

    /* renamed from: o, reason: collision with root package name */
    public final LinkedHashMap<String, d> f11334o = new LinkedHashMap<>(0, 0.75f, true);

    /* renamed from: q, reason: collision with root package name */
    public long f11336q = 0;

    /* renamed from: r, reason: collision with root package name */
    public final ThreadPoolExecutor f11337r = new ThreadPoolExecutor(0, 1, 60, TimeUnit.SECONDS, new LinkedBlockingQueue(), new b(null));

    /* renamed from: s, reason: collision with root package name */
    public final Callable<Void> f11338s = new CallableC0274a();

    /* compiled from: DiskLruCache.java */
    /* renamed from: n7.a$a, reason: collision with other inner class name */
    /* loaded from: classes.dex */
    public class CallableC0274a implements Callable<Void> {
        public CallableC0274a() {
        }

        @Override // java.util.concurrent.Callable
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public Void call() throws Exception {
            synchronized (a.this) {
                if (a.this.f11333n == null) {
                    return null;
                }
                a.this.N0();
                if (a.this.w0()) {
                    a.this.K0();
                    a.this.f11335p = 0;
                }
                return null;
            }
        }
    }

    /* compiled from: DiskLruCache.java */
    /* loaded from: classes.dex */
    public static final class b implements ThreadFactory {
        public b() {
        }

        @Override // java.util.concurrent.ThreadFactory
        public synchronized Thread newThread(Runnable runnable) {
            Thread thread;
            thread = new Thread(runnable, "glide-disk-lru-cache-thread");
            thread.setPriority(1);
            return thread;
        }

        public /* synthetic */ b(CallableC0274a callableC0274a) {
            this();
        }
    }

    /* compiled from: DiskLruCache.java */
    /* loaded from: classes.dex */
    public final class c {

        /* renamed from: a, reason: collision with root package name */
        public final d f11340a;

        /* renamed from: b, reason: collision with root package name */
        public final boolean[] f11341b;

        /* renamed from: c, reason: collision with root package name */
        public boolean f11342c;

        public /* synthetic */ c(a aVar, d dVar, CallableC0274a callableC0274a) {
            this(dVar);
        }

        public void a() throws IOException {
            a.this.R(this, false);
        }

        public void b() {
            if (this.f11342c) {
                return;
            }
            try {
                a();
            } catch (IOException unused) {
            }
        }

        public void e() throws IOException {
            a.this.R(this, true);
            this.f11342c = true;
        }

        public File f(int i10) throws IOException {
            File k10;
            synchronized (a.this) {
                if (this.f11340a.f11349f == this) {
                    if (!this.f11340a.f11348e) {
                        this.f11341b[i10] = true;
                    }
                    k10 = this.f11340a.k(i10);
                    if (!a.this.f11325f.exists()) {
                        a.this.f11325f.mkdirs();
                    }
                } else {
                    throw new IllegalStateException();
                }
            }
            return k10;
        }

        public c(d dVar) {
            this.f11340a = dVar;
            this.f11341b = dVar.f11348e ? null : new boolean[a.this.f11331l];
        }
    }

    /* compiled from: DiskLruCache.java */
    /* loaded from: classes.dex */
    public final class d {

        /* renamed from: a, reason: collision with root package name */
        public final String f11344a;

        /* renamed from: b, reason: collision with root package name */
        public final long[] f11345b;

        /* renamed from: c, reason: collision with root package name */
        public File[] f11346c;

        /* renamed from: d, reason: collision with root package name */
        public File[] f11347d;

        /* renamed from: e, reason: collision with root package name */
        public boolean f11348e;

        /* renamed from: f, reason: collision with root package name */
        public c f11349f;

        /* renamed from: g, reason: collision with root package name */
        public long f11350g;

        public /* synthetic */ d(a aVar, String str, CallableC0274a callableC0274a) {
            this(str);
        }

        public File j(int i10) {
            return this.f11346c[i10];
        }

        public File k(int i10) {
            return this.f11347d[i10];
        }

        public String l() throws IOException {
            StringBuilder sb2 = new StringBuilder();
            for (long j10 : this.f11345b) {
                sb2.append(' ');
                sb2.append(j10);
            }
            return sb2.toString();
        }

        public final IOException m(String[] strArr) throws IOException {
            throw new IOException("unexpected journal line: " + Arrays.toString(strArr));
        }

        public final void n(String[] strArr) throws IOException {
            if (strArr.length == a.this.f11331l) {
                for (int i10 = 0; i10 < strArr.length; i10++) {
                    try {
                        this.f11345b[i10] = Long.parseLong(strArr[i10]);
                    } catch (NumberFormatException unused) {
                        throw m(strArr);
                    }
                }
                return;
            }
            throw m(strArr);
        }

        public d(String str) {
            this.f11344a = str;
            this.f11345b = new long[a.this.f11331l];
            this.f11346c = new File[a.this.f11331l];
            this.f11347d = new File[a.this.f11331l];
            StringBuilder sb2 = new StringBuilder(str);
            sb2.append('.');
            int length = sb2.length();
            for (int i10 = 0; i10 < a.this.f11331l; i10++) {
                sb2.append(i10);
                this.f11346c[i10] = new File(a.this.f11325f, sb2.toString());
                sb2.append(".tmp");
                this.f11347d[i10] = new File(a.this.f11325f, sb2.toString());
                sb2.setLength(length);
            }
        }
    }

    /* compiled from: DiskLruCache.java */
    /* loaded from: classes.dex */
    public final class e {

        /* renamed from: a, reason: collision with root package name */
        public final String f11352a;

        /* renamed from: b, reason: collision with root package name */
        public final long f11353b;

        /* renamed from: c, reason: collision with root package name */
        public final long[] f11354c;

        /* renamed from: d, reason: collision with root package name */
        public final File[] f11355d;

        public /* synthetic */ e(a aVar, String str, long j10, File[] fileArr, long[] jArr, CallableC0274a callableC0274a) {
            this(str, j10, fileArr, jArr);
        }

        public File a(int i10) {
            return this.f11355d[i10];
        }

        public e(String str, long j10, File[] fileArr, long[] jArr) {
            this.f11352a = str;
            this.f11353b = j10;
            this.f11355d = fileArr;
            this.f11354c = jArr;
        }
    }

    public a(File file, int i10, int i11, long j10) {
        this.f11325f = file;
        this.f11329j = i10;
        this.f11326g = new File(file, DiskLruCache.JOURNAL_FILE);
        this.f11327h = new File(file, DiskLruCache.JOURNAL_FILE_TEMP);
        this.f11328i = new File(file, DiskLruCache.JOURNAL_FILE_BACKUP);
        this.f11331l = i11;
        this.f11330k = j10;
    }

    public static a B0(File file, int i10, int i11, long j10) throws IOException {
        if (j10 <= 0) {
            throw new IllegalArgumentException("maxSize <= 0");
        }
        if (i11 > 0) {
            File file2 = new File(file, DiskLruCache.JOURNAL_FILE_BACKUP);
            if (file2.exists()) {
                File file3 = new File(file, DiskLruCache.JOURNAL_FILE);
                if (file3.exists()) {
                    file2.delete();
                } else {
                    M0(file2, file3, false);
                }
            }
            a aVar = new a(file, i10, i11, j10);
            if (aVar.f11326g.exists()) {
                try {
                    aVar.I0();
                    aVar.H0();
                    return aVar;
                } catch (IOException e10) {
                    System.out.println("DiskLruCache " + file + " is corrupt: " + e10.getMessage() + ", removing");
                    aVar.U();
                }
            }
            file.mkdirs();
            a aVar2 = new a(file, i10, i11, j10);
            aVar2.K0();
            return aVar2;
        }
        throw new IllegalArgumentException("valueCount <= 0");
    }

    public static void M0(File file, File file2, boolean z10) throws IOException {
        if (z10) {
            V(file2);
        }
        if (!file.renameTo(file2)) {
            throw new IOException();
        }
    }

    @TargetApi(26)
    public static void N(Writer writer) throws IOException {
        if (Build.VERSION.SDK_INT < 26) {
            writer.close();
            return;
        }
        StrictMode.ThreadPolicy threadPolicy = StrictMode.getThreadPolicy();
        StrictMode.setThreadPolicy(new StrictMode.ThreadPolicy.Builder(threadPolicy).permitUnbufferedIo().build());
        try {
            writer.close();
        } finally {
            StrictMode.setThreadPolicy(threadPolicy);
        }
    }

    public static void V(File file) throws IOException {
        if (file.exists() && !file.delete()) {
            throw new IOException();
        }
    }

    @TargetApi(26)
    public static void h0(Writer writer) throws IOException {
        if (Build.VERSION.SDK_INT < 26) {
            writer.flush();
            return;
        }
        StrictMode.ThreadPolicy threadPolicy = StrictMode.getThreadPolicy();
        StrictMode.setThreadPolicy(new StrictMode.ThreadPolicy.Builder(threadPolicy).permitUnbufferedIo().build());
        try {
            writer.flush();
        } finally {
            StrictMode.setThreadPolicy(threadPolicy);
        }
    }

    public final void H0() throws IOException {
        V(this.f11327h);
        Iterator<d> it2 = this.f11334o.values().iterator();
        while (it2.hasNext()) {
            d next = it2.next();
            int i10 = 0;
            if (next.f11349f != null) {
                next.f11349f = null;
                while (i10 < this.f11331l) {
                    V(next.j(i10));
                    V(next.k(i10));
                    i10++;
                }
                it2.remove();
            } else {
                while (i10 < this.f11331l) {
                    this.f11332m += next.f11345b[i10];
                    i10++;
                }
            }
        }
    }

    public final void I0() throws IOException {
        n7.b bVar = new n7.b(new FileInputStream(this.f11326g), n7.c.f11363a);
        try {
            String k10 = bVar.k();
            String k11 = bVar.k();
            String k12 = bVar.k();
            String k13 = bVar.k();
            String k14 = bVar.k();
            if (!DiskLruCache.MAGIC.equals(k10) || !DiskLruCache.VERSION_1.equals(k11) || !Integer.toString(this.f11329j).equals(k12) || !Integer.toString(this.f11331l).equals(k13) || !"".equals(k14)) {
                throw new IOException("unexpected journal header: [" + k10 + ", " + k11 + ", " + k13 + ", " + k14 + "]");
            }
            int i10 = 0;
            while (true) {
                try {
                    J0(bVar.k());
                    i10++;
                } catch (EOFException unused) {
                    this.f11335p = i10 - this.f11334o.size();
                    if (bVar.h()) {
                        K0();
                    } else {
                        this.f11333n = new BufferedWriter(new OutputStreamWriter(new FileOutputStream(this.f11326g, true), n7.c.f11363a));
                    }
                    n7.c.a(bVar);
                    return;
                }
            }
        } catch (Throwable th) {
            n7.c.a(bVar);
            throw th;
        }
    }

    public final void J0(String str) throws IOException {
        String substring;
        int indexOf = str.indexOf(32);
        if (indexOf != -1) {
            int i10 = indexOf + 1;
            int indexOf2 = str.indexOf(32, i10);
            if (indexOf2 == -1) {
                substring = str.substring(i10);
                if (indexOf == 6 && str.startsWith("REMOVE")) {
                    this.f11334o.remove(substring);
                    return;
                }
            } else {
                substring = str.substring(i10, indexOf2);
            }
            d dVar = this.f11334o.get(substring);
            CallableC0274a callableC0274a = null;
            if (dVar == null) {
                dVar = new d(this, substring, callableC0274a);
                this.f11334o.put(substring, dVar);
            }
            if (indexOf2 != -1 && indexOf == 5 && str.startsWith("CLEAN")) {
                String[] split = str.substring(indexOf2 + 1).split(" ");
                dVar.f11348e = true;
                dVar.f11349f = null;
                dVar.n(split);
                return;
            }
            if (indexOf2 == -1 && indexOf == 5 && str.startsWith("DIRTY")) {
                dVar.f11349f = new c(this, dVar, callableC0274a);
                return;
            }
            if (indexOf2 == -1 && indexOf == 4 && str.startsWith("READ")) {
                return;
            }
            throw new IOException("unexpected journal line: " + str);
        }
        throw new IOException("unexpected journal line: " + str);
    }

    public final synchronized void K0() throws IOException {
        Writer writer = this.f11333n;
        if (writer != null) {
            N(writer);
        }
        BufferedWriter bufferedWriter = new BufferedWriter(new OutputStreamWriter(new FileOutputStream(this.f11327h), n7.c.f11363a));
        try {
            bufferedWriter.write(DiskLruCache.MAGIC);
            bufferedWriter.write("\n");
            bufferedWriter.write(DiskLruCache.VERSION_1);
            bufferedWriter.write("\n");
            bufferedWriter.write(Integer.toString(this.f11329j));
            bufferedWriter.write("\n");
            bufferedWriter.write(Integer.toString(this.f11331l));
            bufferedWriter.write("\n");
            bufferedWriter.write("\n");
            for (d dVar : this.f11334o.values()) {
                if (dVar.f11349f != null) {
                    bufferedWriter.write("DIRTY " + dVar.f11344a + '\n');
                } else {
                    bufferedWriter.write("CLEAN " + dVar.f11344a + dVar.l() + '\n');
                }
            }
            N(bufferedWriter);
            if (this.f11326g.exists()) {
                M0(this.f11326g, this.f11328i, true);
            }
            M0(this.f11327h, this.f11326g, false);
            this.f11328i.delete();
            this.f11333n = new BufferedWriter(new OutputStreamWriter(new FileOutputStream(this.f11326g, true), n7.c.f11363a));
        } catch (Throwable th) {
            N(bufferedWriter);
            throw th;
        }
    }

    public final void L() {
        if (this.f11333n == null) {
            throw new IllegalStateException("cache is closed");
        }
    }

    public synchronized boolean L0(String str) throws IOException {
        L();
        d dVar = this.f11334o.get(str);
        if (dVar != null && dVar.f11349f == null) {
            for (int i10 = 0; i10 < this.f11331l; i10++) {
                File j10 = dVar.j(i10);
                if (j10.exists() && !j10.delete()) {
                    throw new IOException("failed to delete " + j10);
                }
                this.f11332m -= dVar.f11345b[i10];
                dVar.f11345b[i10] = 0;
            }
            this.f11335p++;
            this.f11333n.append((CharSequence) "REMOVE");
            this.f11333n.append(' ');
            this.f11333n.append((CharSequence) str);
            this.f11333n.append('\n');
            this.f11334o.remove(str);
            if (w0()) {
                this.f11337r.submit(this.f11338s);
            }
            return true;
        }
        return false;
    }

    public final void N0() throws IOException {
        while (this.f11332m > this.f11330k) {
            L0(this.f11334o.entrySet().iterator().next().getKey());
        }
    }

    public final synchronized void R(c cVar, boolean z10) throws IOException {
        d dVar = cVar.f11340a;
        if (dVar.f11349f == cVar) {
            if (z10 && !dVar.f11348e) {
                for (int i10 = 0; i10 < this.f11331l; i10++) {
                    if (cVar.f11341b[i10]) {
                        if (!dVar.k(i10).exists()) {
                            cVar.a();
                            return;
                        }
                    } else {
                        cVar.a();
                        throw new IllegalStateException("Newly created entry didn't create value for index " + i10);
                    }
                }
            }
            for (int i11 = 0; i11 < this.f11331l; i11++) {
                File k10 = dVar.k(i11);
                if (z10) {
                    if (k10.exists()) {
                        File j10 = dVar.j(i11);
                        k10.renameTo(j10);
                        long j11 = dVar.f11345b[i11];
                        long length = j10.length();
                        dVar.f11345b[i11] = length;
                        this.f11332m = (this.f11332m - j11) + length;
                    }
                } else {
                    V(k10);
                }
            }
            this.f11335p++;
            dVar.f11349f = null;
            if (dVar.f11348e | z10) {
                dVar.f11348e = true;
                this.f11333n.append((CharSequence) "CLEAN");
                this.f11333n.append(' ');
                this.f11333n.append((CharSequence) dVar.f11344a);
                this.f11333n.append((CharSequence) dVar.l());
                this.f11333n.append('\n');
                if (z10) {
                    long j12 = this.f11336q;
                    this.f11336q = 1 + j12;
                    dVar.f11350g = j12;
                }
            } else {
                this.f11334o.remove(dVar.f11344a);
                this.f11333n.append((CharSequence) "REMOVE");
                this.f11333n.append(' ');
                this.f11333n.append((CharSequence) dVar.f11344a);
                this.f11333n.append('\n');
            }
            h0(this.f11333n);
            if (this.f11332m > this.f11330k || w0()) {
                this.f11337r.submit(this.f11338s);
            }
            return;
        }
        throw new IllegalStateException();
    }

    public void U() throws IOException {
        close();
        n7.c.b(this.f11325f);
    }

    public c a0(String str) throws IOException {
        return c0(str, -1L);
    }

    public final synchronized c c0(String str, long j10) throws IOException {
        L();
        d dVar = this.f11334o.get(str);
        CallableC0274a callableC0274a = null;
        if (j10 != -1 && (dVar == null || dVar.f11350g != j10)) {
            return null;
        }
        if (dVar != null) {
            if (dVar.f11349f != null) {
                return null;
            }
        } else {
            dVar = new d(this, str, callableC0274a);
            this.f11334o.put(str, dVar);
        }
        c cVar = new c(this, dVar, callableC0274a);
        dVar.f11349f = cVar;
        this.f11333n.append((CharSequence) "DIRTY");
        this.f11333n.append(' ');
        this.f11333n.append((CharSequence) str);
        this.f11333n.append('\n');
        h0(this.f11333n);
        return cVar;
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public synchronized void close() throws IOException {
        if (this.f11333n == null) {
            return;
        }
        Iterator it2 = new ArrayList(this.f11334o.values()).iterator();
        while (it2.hasNext()) {
            d dVar = (d) it2.next();
            if (dVar.f11349f != null) {
                dVar.f11349f.a();
            }
        }
        N0();
        N(this.f11333n);
        this.f11333n = null;
    }

    public synchronized e k0(String str) throws IOException {
        L();
        d dVar = this.f11334o.get(str);
        if (dVar == null) {
            return null;
        }
        if (!dVar.f11348e) {
            return null;
        }
        for (File file : dVar.f11346c) {
            if (!file.exists()) {
                return null;
            }
        }
        this.f11335p++;
        this.f11333n.append((CharSequence) "READ");
        this.f11333n.append(' ');
        this.f11333n.append((CharSequence) str);
        this.f11333n.append('\n');
        if (w0()) {
            this.f11337r.submit(this.f11338s);
        }
        return new e(this, str, dVar.f11350g, dVar.f11346c, dVar.f11345b, null);
    }

    public final boolean w0() {
        int i10 = this.f11335p;
        return i10 >= 2000 && i10 >= this.f11334o.size();
    }
}
