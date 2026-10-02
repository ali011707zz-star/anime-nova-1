package j8;

import android.graphics.drawable.Drawable;
import org.apache.http.HttpStatus;

/* compiled from: DrawableCrossFadeFactory.java */
/* loaded from: classes.dex */
public class a implements e<Drawable> {

    /* renamed from: a, reason: collision with root package name */
    public final int f8923a;

    /* renamed from: b, reason: collision with root package name */
    public final boolean f8924b;

    /* renamed from: c, reason: collision with root package name */
    public b f8925c;

    /* compiled from: DrawableCrossFadeFactory.java */
    /* renamed from: j8.a$a, reason: collision with other inner class name */
    /* loaded from: classes.dex */
    public static class C0163a {

        /* renamed from: a, reason: collision with root package name */
        public final int f8926a;

        /* renamed from: b, reason: collision with root package name */
        public boolean f8927b;

        public C0163a() {
            this(HttpStatus.SC_MULTIPLE_CHOICES);
        }

        public a a() {
            return new a(this.f8926a, this.f8927b);
        }

        public C0163a(int i10) {
            this.f8926a = i10;
        }
    }

    public a(int i10, boolean z10) {
        this.f8923a = i10;
        this.f8924b = z10;
    }

    @Override // j8.e
    public d<Drawable> a(p7.a aVar, boolean z10) {
        if (aVar == p7.a.MEMORY_CACHE) {
            return c.b();
        }
        return b();
    }

    public final d<Drawable> b() {
        if (this.f8925c == null) {
            this.f8925c = new b(this.f8923a, this.f8924b);
        }
        return this.f8925c;
    }
}
