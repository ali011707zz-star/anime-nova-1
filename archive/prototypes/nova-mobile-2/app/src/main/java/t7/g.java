package t7;

import android.content.Context;
import java.io.File;
import t7.d;

/* compiled from: InternalCacheDiskCacheFactory.java */
/* loaded from: classes.dex */
public final class g extends d {

    /* compiled from: InternalCacheDiskCacheFactory.java */
    /* loaded from: classes.dex */
    public class a implements d.a {

        /* renamed from: a, reason: collision with root package name */
        public final /* synthetic */ Context f14062a;

        /* renamed from: b, reason: collision with root package name */
        public final /* synthetic */ String f14063b;

        public a(Context context, String str) {
            this.f14062a = context;
            this.f14063b = str;
        }

        @Override // t7.d.a
        public File a() {
            File cacheDir = this.f14062a.getCacheDir();
            if (cacheDir == null) {
                return null;
            }
            return this.f14063b != null ? new File(cacheDir, this.f14063b) : cacheDir;
        }
    }

    public g(Context context) {
        this(context, "image_manager_disk_cache", 262144000L);
    }

    public g(Context context, String str, long j10) {
        super(new a(context, str), j10);
    }
}
