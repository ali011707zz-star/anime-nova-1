package t7;

import android.content.Context;
import java.io.File;
import t7.d;

/* compiled from: ExternalPreferredCacheDiskCacheFactory.java */
/* loaded from: classes.dex */
public final class f extends d {

    /* compiled from: ExternalPreferredCacheDiskCacheFactory.java */
    /* loaded from: classes.dex */
    public class a implements d.a {

        /* renamed from: a, reason: collision with root package name */
        public final /* synthetic */ Context f14060a;

        /* renamed from: b, reason: collision with root package name */
        public final /* synthetic */ String f14061b;

        public a(Context context, String str) {
            this.f14060a = context;
            this.f14061b = str;
        }

        @Override // t7.d.a
        public File a() {
            File externalCacheDir;
            File b10 = b();
            return ((b10 == null || !b10.exists()) && (externalCacheDir = this.f14060a.getExternalCacheDir()) != null && externalCacheDir.canWrite()) ? this.f14061b != null ? new File(externalCacheDir, this.f14061b) : externalCacheDir : b10;
        }

        public final File b() {
            File cacheDir = this.f14060a.getCacheDir();
            if (cacheDir == null) {
                return null;
            }
            return this.f14061b != null ? new File(cacheDir, this.f14061b) : cacheDir;
        }
    }

    public f(Context context, long j10) {
        this(context, "image_manager_disk_cache", j10);
    }

    public f(Context context, String str, long j10) {
        super(new a(context, str), j10);
    }
}
