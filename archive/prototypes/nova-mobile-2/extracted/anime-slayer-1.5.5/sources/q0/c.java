package q0;

import android.content.ClipData;
import android.net.Uri;
import android.os.Build;
import android.os.Bundle;
import android.view.ContentInfo;

/* compiled from: ContentInfoCompat.java */
/* loaded from: classes.dex */
public final class c {

    /* renamed from: a, reason: collision with root package name */
    public final f f12293a;

    /* compiled from: ContentInfoCompat.java */
    /* loaded from: classes.dex */
    public static final class a {

        /* renamed from: a, reason: collision with root package name */
        public final InterfaceC0303c f12294a;

        public a(ClipData clipData, int i10) {
            if (Build.VERSION.SDK_INT >= 31) {
                this.f12294a = new b(clipData, i10);
            } else {
                this.f12294a = new d(clipData, i10);
            }
        }

        public c a() {
            return this.f12294a.build();
        }

        public a b(Bundle bundle) {
            this.f12294a.setExtras(bundle);
            return this;
        }

        public a c(int i10) {
            this.f12294a.b(i10);
            return this;
        }

        public a d(Uri uri) {
            this.f12294a.a(uri);
            return this;
        }
    }

    /* compiled from: ContentInfoCompat.java */
    /* loaded from: classes.dex */
    public static final class b implements InterfaceC0303c {

        /* renamed from: a, reason: collision with root package name */
        public final ContentInfo.Builder f12295a;

        public b(ClipData clipData, int i10) {
            this.f12295a = new ContentInfo.Builder(clipData, i10);
        }

        @Override // q0.c.InterfaceC0303c
        public void a(Uri uri) {
            this.f12295a.setLinkUri(uri);
        }

        @Override // q0.c.InterfaceC0303c
        public void b(int i10) {
            this.f12295a.setFlags(i10);
        }

        @Override // q0.c.InterfaceC0303c
        public c build() {
            return new c(new e(this.f12295a.build()));
        }

        @Override // q0.c.InterfaceC0303c
        public void setExtras(Bundle bundle) {
            this.f12295a.setExtras(bundle);
        }
    }

    /* compiled from: ContentInfoCompat.java */
    /* renamed from: q0.c$c, reason: collision with other inner class name */
    /* loaded from: classes.dex */
    public interface InterfaceC0303c {
        void a(Uri uri);

        void b(int i10);

        c build();

        void setExtras(Bundle bundle);
    }

    /* compiled from: ContentInfoCompat.java */
    /* loaded from: classes.dex */
    public static final class d implements InterfaceC0303c {

        /* renamed from: a, reason: collision with root package name */
        public ClipData f12296a;

        /* renamed from: b, reason: collision with root package name */
        public int f12297b;

        /* renamed from: c, reason: collision with root package name */
        public int f12298c;

        /* renamed from: d, reason: collision with root package name */
        public Uri f12299d;

        /* renamed from: e, reason: collision with root package name */
        public Bundle f12300e;

        public d(ClipData clipData, int i10) {
            this.f12296a = clipData;
            this.f12297b = i10;
        }

        @Override // q0.c.InterfaceC0303c
        public void a(Uri uri) {
            this.f12299d = uri;
        }

        @Override // q0.c.InterfaceC0303c
        public void b(int i10) {
            this.f12298c = i10;
        }

        @Override // q0.c.InterfaceC0303c
        public c build() {
            return new c(new g(this));
        }

        @Override // q0.c.InterfaceC0303c
        public void setExtras(Bundle bundle) {
            this.f12300e = bundle;
        }
    }

    /* compiled from: ContentInfoCompat.java */
    /* loaded from: classes.dex */
    public static final class e implements f {

        /* renamed from: a, reason: collision with root package name */
        public final ContentInfo f12301a;

        public e(ContentInfo contentInfo) {
            this.f12301a = (ContentInfo) p0.i.g(contentInfo);
        }

        @Override // q0.c.f
        public ClipData a() {
            return this.f12301a.getClip();
        }

        @Override // q0.c.f
        public int b() {
            return this.f12301a.getFlags();
        }

        @Override // q0.c.f
        public ContentInfo c() {
            return this.f12301a;
        }

        @Override // q0.c.f
        public int d() {
            return this.f12301a.getSource();
        }

        public String toString() {
            return "ContentInfoCompat{" + this.f12301a + "}";
        }
    }

    /* compiled from: ContentInfoCompat.java */
    /* loaded from: classes.dex */
    public interface f {
        ClipData a();

        int b();

        ContentInfo c();

        int d();
    }

    /* compiled from: ContentInfoCompat.java */
    /* loaded from: classes.dex */
    public static final class g implements f {

        /* renamed from: a, reason: collision with root package name */
        public final ClipData f12302a;

        /* renamed from: b, reason: collision with root package name */
        public final int f12303b;

        /* renamed from: c, reason: collision with root package name */
        public final int f12304c;

        /* renamed from: d, reason: collision with root package name */
        public final Uri f12305d;

        /* renamed from: e, reason: collision with root package name */
        public final Bundle f12306e;

        public g(d dVar) {
            this.f12302a = (ClipData) p0.i.g(dVar.f12296a);
            this.f12303b = p0.i.c(dVar.f12297b, 0, 5, "source");
            this.f12304c = p0.i.f(dVar.f12298c, 1);
            this.f12305d = dVar.f12299d;
            this.f12306e = dVar.f12300e;
        }

        @Override // q0.c.f
        public ClipData a() {
            return this.f12302a;
        }

        @Override // q0.c.f
        public int b() {
            return this.f12304c;
        }

        @Override // q0.c.f
        public ContentInfo c() {
            return null;
        }

        @Override // q0.c.f
        public int d() {
            return this.f12303b;
        }

        public String toString() {
            String str;
            StringBuilder sb2 = new StringBuilder();
            sb2.append("ContentInfoCompat{clip=");
            sb2.append(this.f12302a.getDescription());
            sb2.append(", source=");
            sb2.append(c.e(this.f12303b));
            sb2.append(", flags=");
            sb2.append(c.a(this.f12304c));
            if (this.f12305d == null) {
                str = "";
            } else {
                str = ", hasLinkUri(" + this.f12305d.toString().length() + ")";
            }
            sb2.append(str);
            sb2.append(this.f12306e != null ? ", hasExtras" : "");
            sb2.append("}");
            return sb2.toString();
        }
    }

    public c(f fVar) {
        this.f12293a = fVar;
    }

    public static String a(int i10) {
        return (i10 & 1) != 0 ? "FLAG_CONVERT_TO_PLAIN_TEXT" : String.valueOf(i10);
    }

    public static String e(int i10) {
        return i10 != 0 ? i10 != 1 ? i10 != 2 ? i10 != 3 ? i10 != 4 ? i10 != 5 ? String.valueOf(i10) : "SOURCE_PROCESS_TEXT" : "SOURCE_AUTOFILL" : "SOURCE_DRAG_AND_DROP" : "SOURCE_INPUT_METHOD" : "SOURCE_CLIPBOARD" : "SOURCE_APP";
    }

    public static c g(ContentInfo contentInfo) {
        return new c(new e(contentInfo));
    }

    public ClipData b() {
        return this.f12293a.a();
    }

    public int c() {
        return this.f12293a.b();
    }

    public int d() {
        return this.f12293a.d();
    }

    public ContentInfo f() {
        return this.f12293a.c();
    }

    public String toString() {
        return this.f12293a.toString();
    }
}
