package o1;

import android.content.Context;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.nio.channels.Channels;
import java.nio.channels.ReadableByteChannel;
import java.util.concurrent.Callable;
import o1.p0;

/* compiled from: SQLiteCopyOpenHelper.java */
/* loaded from: classes.dex */
public class t0 implements r1.h, q {

    /* renamed from: f, reason: collision with root package name */
    public final Context f11617f;

    /* renamed from: g, reason: collision with root package name */
    public final String f11618g;

    /* renamed from: h, reason: collision with root package name */
    public final File f11619h;

    /* renamed from: i, reason: collision with root package name */
    public final Callable<InputStream> f11620i;

    /* renamed from: j, reason: collision with root package name */
    public final int f11621j;

    /* renamed from: k, reason: collision with root package name */
    public final r1.h f11622k;

    /* renamed from: l, reason: collision with root package name */
    public p f11623l;

    /* renamed from: m, reason: collision with root package name */
    public boolean f11624m;

    public t0(Context context, String str, File file, Callable<InputStream> callable, int i10, r1.h hVar) {
        this.f11617f = context;
        this.f11618g = str;
        this.f11619h = file;
        this.f11620i = callable;
        this.f11621j = i10;
        this.f11622k = hVar;
    }

    @Override // o1.q
    public r1.h b() {
        return this.f11622k;
    }

    @Override // r1.h, java.io.Closeable, java.lang.AutoCloseable
    public synchronized void close() {
        this.f11622k.close();
        this.f11624m = false;
    }

    public final void d(File file, boolean z10) throws IOException {
        ReadableByteChannel newChannel;
        if (this.f11618g != null) {
            newChannel = Channels.newChannel(this.f11617f.getAssets().open(this.f11618g));
        } else if (this.f11619h != null) {
            newChannel = new FileInputStream(this.f11619h).getChannel();
        } else {
            Callable<InputStream> callable = this.f11620i;
            if (callable != null) {
                try {
                    newChannel = Channels.newChannel(callable.call());
                } catch (Exception e10) {
                    throw new IOException("inputStreamCallable exception on call", e10);
                }
            } else {
                throw new IllegalStateException("copyFromAssetPath, copyFromFile and copyFromInputStream are all null!");
            }
        }
        File createTempFile = File.createTempFile("room-copy-helper", ".tmp", this.f11617f.getCacheDir());
        createTempFile.deleteOnExit();
        q1.d.a(newChannel, new FileOutputStream(createTempFile).getChannel());
        File parentFile = file.getParentFile();
        if (parentFile != null && !parentFile.exists() && !parentFile.mkdirs()) {
            throw new IOException("Failed to create directories for " + file.getAbsolutePath());
        }
        h(createTempFile, z10);
        if (createTempFile.renameTo(file)) {
            return;
        }
        throw new IOException("Failed to move intermediate file (" + createTempFile.getAbsolutePath() + ") to destination (" + file.getAbsolutePath() + ").");
    }

    @Override // r1.h
    public String getDatabaseName() {
        return this.f11622k.getDatabaseName();
    }

    public final void h(File file, boolean z10) {
        p pVar = this.f11623l;
        if (pVar != null) {
            p0.e eVar = pVar.f11539f;
        }
    }

    public void k(p pVar) {
        this.f11623l = pVar;
    }

    @Override // r1.h
    public void setWriteAheadLoggingEnabled(boolean z10) {
        this.f11622k.setWriteAheadLoggingEnabled(z10);
    }

    @Override // r1.h
    public synchronized r1.g v0() {
        if (!this.f11624m) {
            x(true);
            this.f11624m = true;
        }
        return this.f11622k.v0();
    }

    public final void x(boolean z10) {
        String databaseName = getDatabaseName();
        File databasePath = this.f11617f.getDatabasePath(databaseName);
        p pVar = this.f11623l;
        q1.a aVar = new q1.a(databaseName, this.f11617f.getFilesDir(), pVar == null || pVar.f11546m);
        try {
            aVar.b();
            if (!databasePath.exists()) {
                try {
                    d(databasePath, z10);
                    return;
                } catch (IOException e10) {
                    throw new RuntimeException("Unable to copy database file.", e10);
                }
            }
            if (this.f11623l == null) {
                return;
            }
            try {
                int c10 = q1.c.c(databasePath);
                int i10 = this.f11621j;
                if (c10 == i10) {
                    return;
                }
                if (this.f11623l.a(c10, i10)) {
                    return;
                }
                if (this.f11617f.deleteDatabase(databaseName)) {
                    try {
                        d(databasePath, z10);
                    } catch (IOException unused) {
                    }
                } else {
                    StringBuilder sb2 = new StringBuilder();
                    sb2.append("Failed to delete database file (");
                    sb2.append(databaseName);
                    sb2.append(") for a copy destructive migration.");
                }
            } catch (IOException unused2) {
            }
        } finally {
            aVar.c();
        }
    }
}
