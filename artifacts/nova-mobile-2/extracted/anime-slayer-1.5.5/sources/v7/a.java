package v7;

import android.content.res.AssetManager;
import android.net.Uri;
import android.os.ParcelFileDescriptor;
import java.io.InputStream;
import v7.n;

/* compiled from: AssetUriLoader.java */
/* loaded from: classes.dex */
public class a<Data> implements n<Uri, Data> {

    /* renamed from: c, reason: collision with root package name */
    public static final int f14866c = 22;

    /* renamed from: a, reason: collision with root package name */
    public final AssetManager f14867a;

    /* renamed from: b, reason: collision with root package name */
    public final InterfaceC0389a<Data> f14868b;

    /* compiled from: AssetUriLoader.java */
    /* renamed from: v7.a$a, reason: collision with other inner class name */
    /* loaded from: classes.dex */
    public interface InterfaceC0389a<Data> {
        com.bumptech.glide.load.data.d<Data> b(AssetManager assetManager, String str);
    }

    /* compiled from: AssetUriLoader.java */
    /* loaded from: classes.dex */
    public static class b implements o<Uri, ParcelFileDescriptor>, InterfaceC0389a<ParcelFileDescriptor> {

        /* renamed from: a, reason: collision with root package name */
        public final AssetManager f14869a;

        public b(AssetManager assetManager) {
            this.f14869a = assetManager;
        }

        @Override // v7.o
        public n<Uri, ParcelFileDescriptor> a(r rVar) {
            return new a(this.f14869a, this);
        }

        @Override // v7.a.InterfaceC0389a
        public com.bumptech.glide.load.data.d<ParcelFileDescriptor> b(AssetManager assetManager, String str) {
            return new com.bumptech.glide.load.data.h(assetManager, str);
        }
    }

    /* compiled from: AssetUriLoader.java */
    /* loaded from: classes.dex */
    public static class c implements o<Uri, InputStream>, InterfaceC0389a<InputStream> {

        /* renamed from: a, reason: collision with root package name */
        public final AssetManager f14870a;

        public c(AssetManager assetManager) {
            this.f14870a = assetManager;
        }

        @Override // v7.o
        public n<Uri, InputStream> a(r rVar) {
            return new a(this.f14870a, this);
        }

        @Override // v7.a.InterfaceC0389a
        public com.bumptech.glide.load.data.d<InputStream> b(AssetManager assetManager, String str) {
            return new com.bumptech.glide.load.data.m(assetManager, str);
        }
    }

    public a(AssetManager assetManager, InterfaceC0389a<Data> interfaceC0389a) {
        this.f14867a = assetManager;
        this.f14868b = interfaceC0389a;
    }

    @Override // v7.n
    /* renamed from: c, reason: merged with bridge method [inline-methods] */
    public n.a<Data> a(Uri uri, int i10, int i11, p7.g gVar) {
        return new n.a<>(new k8.d(uri), this.f14868b.b(this.f14867a, uri.toString().substring(f14866c)));
    }

    @Override // v7.n
    /* renamed from: d, reason: merged with bridge method [inline-methods] */
    public boolean b(Uri uri) {
        return "file".equals(uri.getScheme()) && !uri.getPathSegments().isEmpty() && "android_asset".equals(uri.getPathSegments().get(0));
    }
}
