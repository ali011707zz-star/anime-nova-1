package android.support.v4.media;

import android.graphics.Bitmap;
import android.net.Uri;
import android.os.Build;
import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import android.support.v4.media.a;
import android.support.v4.media.b;
import android.support.v4.media.session.MediaSessionCompat;
import android.text.TextUtils;

/* loaded from: classes.dex */
public final class MediaDescriptionCompat implements Parcelable {
    public static final Parcelable.Creator<MediaDescriptionCompat> CREATOR = new a();

    /* renamed from: f, reason: collision with root package name */
    public final String f578f;

    /* renamed from: g, reason: collision with root package name */
    public final CharSequence f579g;

    /* renamed from: h, reason: collision with root package name */
    public final CharSequence f580h;

    /* renamed from: i, reason: collision with root package name */
    public final CharSequence f581i;

    /* renamed from: j, reason: collision with root package name */
    public final Bitmap f582j;

    /* renamed from: k, reason: collision with root package name */
    public final Uri f583k;

    /* renamed from: l, reason: collision with root package name */
    public final Bundle f584l;

    /* renamed from: m, reason: collision with root package name */
    public final Uri f585m;

    /* renamed from: n, reason: collision with root package name */
    public Object f586n;

    /* loaded from: classes.dex */
    public static class a implements Parcelable.Creator<MediaDescriptionCompat> {
        @Override // android.os.Parcelable.Creator
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public MediaDescriptionCompat createFromParcel(Parcel parcel) {
            if (Build.VERSION.SDK_INT < 21) {
                return new MediaDescriptionCompat(parcel);
            }
            return MediaDescriptionCompat.a(android.support.v4.media.a.a(parcel));
        }

        @Override // android.os.Parcelable.Creator
        /* renamed from: b, reason: merged with bridge method [inline-methods] */
        public MediaDescriptionCompat[] newArray(int i10) {
            return new MediaDescriptionCompat[i10];
        }
    }

    /* loaded from: classes.dex */
    public static final class b {

        /* renamed from: a, reason: collision with root package name */
        public String f587a;

        /* renamed from: b, reason: collision with root package name */
        public CharSequence f588b;

        /* renamed from: c, reason: collision with root package name */
        public CharSequence f589c;

        /* renamed from: d, reason: collision with root package name */
        public CharSequence f590d;

        /* renamed from: e, reason: collision with root package name */
        public Bitmap f591e;

        /* renamed from: f, reason: collision with root package name */
        public Uri f592f;

        /* renamed from: g, reason: collision with root package name */
        public Bundle f593g;

        /* renamed from: h, reason: collision with root package name */
        public Uri f594h;

        public MediaDescriptionCompat a() {
            return new MediaDescriptionCompat(this.f587a, this.f588b, this.f589c, this.f590d, this.f591e, this.f592f, this.f593g, this.f594h);
        }

        public b b(CharSequence charSequence) {
            this.f590d = charSequence;
            return this;
        }

        public b c(Bundle bundle) {
            this.f593g = bundle;
            return this;
        }

        public b d(Bitmap bitmap) {
            this.f591e = bitmap;
            return this;
        }

        public b e(Uri uri) {
            this.f592f = uri;
            return this;
        }

        public b f(String str) {
            this.f587a = str;
            return this;
        }

        public b g(Uri uri) {
            this.f594h = uri;
            return this;
        }

        public b h(CharSequence charSequence) {
            this.f589c = charSequence;
            return this;
        }

        public b i(CharSequence charSequence) {
            this.f588b = charSequence;
            return this;
        }
    }

    public MediaDescriptionCompat(String str, CharSequence charSequence, CharSequence charSequence2, CharSequence charSequence3, Bitmap bitmap, Uri uri, Bundle bundle, Uri uri2) {
        this.f578f = str;
        this.f579g = charSequence;
        this.f580h = charSequence2;
        this.f581i = charSequence3;
        this.f582j = bitmap;
        this.f583k = uri;
        this.f584l = bundle;
        this.f585m = uri2;
    }

    /* JADX WARN: Removed duplicated region for block: B:15:0x0069  */
    /* JADX WARN: Removed duplicated region for block: B:19:0x006d  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static MediaDescriptionCompat a(Object obj) {
        int i10;
        Uri uri;
        Bundle bundle = null;
        if (obj == null || (i10 = Build.VERSION.SDK_INT) < 21) {
            return null;
        }
        b bVar = new b();
        bVar.f(android.support.v4.media.a.f(obj));
        bVar.i(android.support.v4.media.a.h(obj));
        bVar.h(android.support.v4.media.a.g(obj));
        bVar.b(android.support.v4.media.a.b(obj));
        bVar.d(android.support.v4.media.a.d(obj));
        bVar.e(android.support.v4.media.a.e(obj));
        Bundle c10 = android.support.v4.media.a.c(obj);
        if (c10 != null) {
            MediaSessionCompat.a(c10);
            uri = (Uri) c10.getParcelable("android.support.v4.media.description.MEDIA_URI");
        } else {
            uri = null;
        }
        if (uri != null) {
            if (!c10.containsKey("android.support.v4.media.description.NULL_BUNDLE_FLAG") || c10.size() != 2) {
                c10.remove("android.support.v4.media.description.MEDIA_URI");
                c10.remove("android.support.v4.media.description.NULL_BUNDLE_FLAG");
            }
            bVar.c(bundle);
            if (uri == null) {
                bVar.g(uri);
            } else if (i10 >= 23) {
                bVar.g(android.support.v4.media.b.a(obj));
            }
            MediaDescriptionCompat a10 = bVar.a();
            a10.f586n = obj;
            return a10;
        }
        bundle = c10;
        bVar.c(bundle);
        if (uri == null) {
        }
        MediaDescriptionCompat a102 = bVar.a();
        a102.f586n = obj;
        return a102;
    }

    public Object c() {
        int i10;
        Object obj = this.f586n;
        if (obj != null || (i10 = Build.VERSION.SDK_INT) < 21) {
            return obj;
        }
        Object b10 = a.C0020a.b();
        a.C0020a.g(b10, this.f578f);
        a.C0020a.i(b10, this.f579g);
        a.C0020a.h(b10, this.f580h);
        a.C0020a.c(b10, this.f581i);
        a.C0020a.e(b10, this.f582j);
        a.C0020a.f(b10, this.f583k);
        Bundle bundle = this.f584l;
        if (i10 < 23 && this.f585m != null) {
            if (bundle == null) {
                bundle = new Bundle();
                bundle.putBoolean("android.support.v4.media.description.NULL_BUNDLE_FLAG", true);
            }
            bundle.putParcelable("android.support.v4.media.description.MEDIA_URI", this.f585m);
        }
        a.C0020a.d(b10, bundle);
        if (i10 >= 23) {
            b.a.a(b10, this.f585m);
        }
        Object a10 = a.C0020a.a(b10);
        this.f586n = a10;
        return a10;
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public String toString() {
        return ((Object) this.f579g) + ", " + ((Object) this.f580h) + ", " + ((Object) this.f581i);
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i10) {
        if (Build.VERSION.SDK_INT < 21) {
            parcel.writeString(this.f578f);
            TextUtils.writeToParcel(this.f579g, parcel, i10);
            TextUtils.writeToParcel(this.f580h, parcel, i10);
            TextUtils.writeToParcel(this.f581i, parcel, i10);
            parcel.writeParcelable(this.f582j, i10);
            parcel.writeParcelable(this.f583k, i10);
            parcel.writeBundle(this.f584l);
            parcel.writeParcelable(this.f585m, i10);
            return;
        }
        android.support.v4.media.a.i(c(), parcel, i10);
    }

    public MediaDescriptionCompat(Parcel parcel) {
        this.f578f = parcel.readString();
        this.f579g = (CharSequence) TextUtils.CHAR_SEQUENCE_CREATOR.createFromParcel(parcel);
        this.f580h = (CharSequence) TextUtils.CHAR_SEQUENCE_CREATOR.createFromParcel(parcel);
        this.f581i = (CharSequence) TextUtils.CHAR_SEQUENCE_CREATOR.createFromParcel(parcel);
        ClassLoader classLoader = MediaDescriptionCompat.class.getClassLoader();
        this.f582j = (Bitmap) parcel.readParcelable(classLoader);
        this.f583k = (Uri) parcel.readParcelable(classLoader);
        this.f584l = parcel.readBundle(classLoader);
        this.f585m = (Uri) parcel.readParcelable(classLoader);
    }
}
