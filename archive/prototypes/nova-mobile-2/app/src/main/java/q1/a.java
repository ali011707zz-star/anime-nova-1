package q1;

import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.nio.channels.FileChannel;
import java.util.HashMap;
import java.util.Map;
import java.util.concurrent.locks.Lock;
import java.util.concurrent.locks.ReentrantLock;

/* compiled from: CopyLock.java */
/* loaded from: classes.dex */
public class a {

    /* renamed from: e, reason: collision with root package name */
    public static final Map<String, Lock> f12412e = new HashMap();

    /* renamed from: a, reason: collision with root package name */
    public final File f12413a;

    /* renamed from: b, reason: collision with root package name */
    public final Lock f12414b;

    /* renamed from: c, reason: collision with root package name */
    public final boolean f12415c;

    /* renamed from: d, reason: collision with root package name */
    public FileChannel f12416d;

    public a(String str, File file, boolean z10) {
        File file2 = new File(file, str + ".lck");
        this.f12413a = file2;
        this.f12414b = a(file2.getAbsolutePath());
        this.f12415c = z10;
    }

    public static Lock a(String str) {
        Lock lock;
        Map<String, Lock> map = f12412e;
        synchronized (map) {
            lock = map.get(str);
            if (lock == null) {
                lock = new ReentrantLock();
                map.put(str, lock);
            }
        }
        return lock;
    }

    public void b() {
        this.f12414b.lock();
        if (this.f12415c) {
            try {
                FileChannel channel = new FileOutputStream(this.f12413a).getChannel();
                this.f12416d = channel;
                channel.lock();
            } catch (IOException e10) {
                throw new IllegalStateException("Unable to grab copy lock.", e10);
            }
        }
    }

    public void c() {
        FileChannel fileChannel = this.f12416d;
        if (fileChannel != null) {
            try {
                fileChannel.close();
            } catch (IOException unused) {
            }
        }
        this.f12414b.unlock();
    }
}
