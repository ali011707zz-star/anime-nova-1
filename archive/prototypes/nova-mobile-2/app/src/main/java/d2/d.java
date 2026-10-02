package d2;

import android.net.Uri;
import java.util.HashSet;
import java.util.Set;

/* compiled from: ContentUriTriggers.java */
/* loaded from: classes.dex */
public final class d {

    /* renamed from: a, reason: collision with root package name */
    public final Set<a> f5561a = new HashSet();

    /* compiled from: ContentUriTriggers.java */
    /* loaded from: classes.dex */
    public static final class a {

        /* renamed from: a, reason: collision with root package name */
        public final Uri f5562a;

        /* renamed from: b, reason: collision with root package name */
        public final boolean f5563b;

        public a(Uri uri, boolean z10) {
            this.f5562a = uri;
            this.f5563b = z10;
        }

        public Uri a() {
            return this.f5562a;
        }

        public boolean b() {
            return this.f5563b;
        }

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (obj == null || a.class != obj.getClass()) {
                return false;
            }
            a aVar = (a) obj;
            return this.f5563b == aVar.f5563b && this.f5562a.equals(aVar.f5562a);
        }

        public int hashCode() {
            return (this.f5562a.hashCode() * 31) + (this.f5563b ? 1 : 0);
        }
    }

    public void a(Uri uri, boolean z10) {
        this.f5561a.add(new a(uri, z10));
    }

    public Set<a> b() {
        return this.f5561a;
    }

    public int c() {
        return this.f5561a.size();
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || d.class != obj.getClass()) {
            return false;
        }
        return this.f5561a.equals(((d) obj).f5561a);
    }

    public int hashCode() {
        return this.f5561a.hashCode();
    }
}
