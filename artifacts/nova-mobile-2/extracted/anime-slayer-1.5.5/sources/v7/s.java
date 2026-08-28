package v7;

import android.content.res.AssetFileDescriptor;
import android.content.res.Resources;
import android.net.Uri;
import android.os.ParcelFileDescriptor;
import android.util.Log;
import java.io.InputStream;
import v7.n;

/* compiled from: ResourceLoader.java */
/* loaded from: classes.dex */
public class s<Data> implements n<Integer, Data> {

    /* renamed from: a, reason: collision with root package name */
    public final n<Uri, Data> f14941a;

    /* renamed from: b, reason: collision with root package name */
    public final Resources f14942b;

    /* compiled from: ResourceLoader.java */
    /* loaded from: classes.dex */
    public static final class a implements o<Integer, AssetFileDescriptor> {

        /* renamed from: a, reason: collision with root package name */
        public final Resources f14943a;

        public a(Resources resources) {
            this.f14943a = resources;
        }

        @Override // v7.o
        public n<Integer, AssetFileDescriptor> a(r rVar) {
            return new s(this.f14943a, rVar.d(Uri.class, AssetFileDescriptor.class));
        }
    }

    /* compiled from: ResourceLoader.java */
    /* loaded from: classes.dex */
    public static class b implements o<Integer, ParcelFileDescriptor> {

        /* renamed from: a, reason: collision with root package name */
        public final Resources f14944a;

        public b(Resources resources) {
            this.f14944a = resources;
        }

        @Override // v7.o
        public n<Integer, ParcelFileDescriptor> a(r rVar) {
            return new s(this.f14944a, rVar.d(Uri.class, ParcelFileDescriptor.class));
        }
    }

    /* compiled from: ResourceLoader.java */
    /* loaded from: classes.dex */
    public static class c implements o<Integer, InputStream> {

        /* renamed from: a, reason: collision with root package name */
        public final Resources f14945a;

        public c(Resources resources) {
            this.f14945a = resources;
        }

        @Override // v7.o
        public n<Integer, InputStream> a(r rVar) {
            return new s(this.f14945a, rVar.d(Uri.class, InputStream.class));
        }
    }

    /* compiled from: ResourceLoader.java */
    /* loaded from: classes.dex */
    public static class d implements o<Integer, Uri> {

        /* renamed from: a, reason: collision with root package name */
        public final Resources f14946a;

        public d(Resources resources) {
            this.f14946a = resources;
        }

        @Override // v7.o
        public n<Integer, Uri> a(r rVar) {
            return new s(this.f14946a, v.c());
        }
    }

    public s(Resources resources, n<Uri, Data> nVar) {
        this.f14942b = resources;
        this.f14941a = nVar;
    }

    @Override // v7.n
    /* renamed from: c, reason: merged with bridge method [inline-methods] */
    public n.a<Data> a(Integer num, int i10, int i11, p7.g gVar) {
        Uri d10 = d(num);
        if (d10 == null) {
            return null;
        }
        return this.f14941a.a(d10, i10, i11, gVar);
    }

    public final Uri d(Integer num) {
        try {
            return Uri.parse("android.resource://" + this.f14942b.getResourcePackageName(num.intValue()) + '/' + this.f14942b.getResourceTypeName(num.intValue()) + '/' + this.f14942b.getResourceEntryName(num.intValue()));
        } catch (Resources.NotFoundException unused) {
            if (!Log.isLoggable("ResourceLoader", 5)) {
                return null;
            }
            StringBuilder sb2 = new StringBuilder();
            sb2.append("Received invalid resource id: ");
            sb2.append(num);
            return null;
        }
    }

    @Override // v7.n
    /* renamed from: e, reason: merged with bridge method [inline-methods] */
    public boolean b(Integer num) {
        return true;
    }
}
