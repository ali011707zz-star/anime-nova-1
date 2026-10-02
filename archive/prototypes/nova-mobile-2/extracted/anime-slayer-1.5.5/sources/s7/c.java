package s7;

import android.graphics.Bitmap;

/* compiled from: AttributeStrategy.java */
/* loaded from: classes.dex */
public class c implements l {

    /* renamed from: a, reason: collision with root package name */
    public final b f13805a = new b();

    /* renamed from: b, reason: collision with root package name */
    public final h<a, Bitmap> f13806b = new h<>();

    /* compiled from: AttributeStrategy.java */
    /* loaded from: classes.dex */
    public static class a implements m {

        /* renamed from: a, reason: collision with root package name */
        public final b f13807a;

        /* renamed from: b, reason: collision with root package name */
        public int f13808b;

        /* renamed from: c, reason: collision with root package name */
        public int f13809c;

        /* renamed from: d, reason: collision with root package name */
        public Bitmap.Config f13810d;

        public a(b bVar) {
            this.f13807a = bVar;
        }

        @Override // s7.m
        public void a() {
            this.f13807a.c(this);
        }

        public void b(int i10, int i11, Bitmap.Config config) {
            this.f13808b = i10;
            this.f13809c = i11;
            this.f13810d = config;
        }

        public boolean equals(Object obj) {
            if (!(obj instanceof a)) {
                return false;
            }
            a aVar = (a) obj;
            return this.f13808b == aVar.f13808b && this.f13809c == aVar.f13809c && this.f13810d == aVar.f13810d;
        }

        public int hashCode() {
            int i10 = ((this.f13808b * 31) + this.f13809c) * 31;
            Bitmap.Config config = this.f13810d;
            return i10 + (config != null ? config.hashCode() : 0);
        }

        public String toString() {
            return c.g(this.f13808b, this.f13809c, this.f13810d);
        }
    }

    /* compiled from: AttributeStrategy.java */
    /* loaded from: classes.dex */
    public static class b extends d<a> {
        @Override // s7.d
        /* renamed from: d, reason: merged with bridge method [inline-methods] */
        public a a() {
            return new a(this);
        }

        public a e(int i10, int i11, Bitmap.Config config) {
            a b10 = b();
            b10.b(i10, i11, config);
            return b10;
        }
    }

    public static String g(int i10, int i11, Bitmap.Config config) {
        return "[" + i10 + "x" + i11 + "], " + config;
    }

    public static String h(Bitmap bitmap) {
        return g(bitmap.getWidth(), bitmap.getHeight(), bitmap.getConfig());
    }

    @Override // s7.l
    public String a(int i10, int i11, Bitmap.Config config) {
        return g(i10, i11, config);
    }

    @Override // s7.l
    public int b(Bitmap bitmap) {
        return l8.k.h(bitmap);
    }

    @Override // s7.l
    public Bitmap c(int i10, int i11, Bitmap.Config config) {
        return this.f13806b.a(this.f13805a.e(i10, i11, config));
    }

    @Override // s7.l
    public void d(Bitmap bitmap) {
        this.f13806b.d(this.f13805a.e(bitmap.getWidth(), bitmap.getHeight(), bitmap.getConfig()), bitmap);
    }

    @Override // s7.l
    public Bitmap e() {
        return this.f13806b.f();
    }

    @Override // s7.l
    public String f(Bitmap bitmap) {
        return h(bitmap);
    }

    public String toString() {
        return "AttributeStrategy:\n  " + this.f13806b;
    }
}
