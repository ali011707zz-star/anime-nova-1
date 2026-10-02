package t0;

import android.content.ClipDescription;
import android.net.Uri;
import android.os.Build;
import android.view.inputmethod.InputContentInfo;

/* compiled from: InputContentInfoCompat.java */
/* loaded from: classes.dex */
public final class c {

    /* renamed from: a, reason: collision with root package name */
    public final InterfaceC0346c f14003a;

    /* compiled from: InputContentInfoCompat.java */
    /* loaded from: classes.dex */
    public static final class b implements InterfaceC0346c {

        /* renamed from: a, reason: collision with root package name */
        public final Uri f14005a;

        /* renamed from: b, reason: collision with root package name */
        public final ClipDescription f14006b;

        /* renamed from: c, reason: collision with root package name */
        public final Uri f14007c;

        public b(Uri uri, ClipDescription clipDescription, Uri uri2) {
            this.f14005a = uri;
            this.f14006b = clipDescription;
            this.f14007c = uri2;
        }

        @Override // t0.c.InterfaceC0346c
        public ClipDescription a() {
            return this.f14006b;
        }

        @Override // t0.c.InterfaceC0346c
        public Object b() {
            return null;
        }

        @Override // t0.c.InterfaceC0346c
        public Uri c() {
            return this.f14005a;
        }

        @Override // t0.c.InterfaceC0346c
        public void d() {
        }

        @Override // t0.c.InterfaceC0346c
        public Uri e() {
            return this.f14007c;
        }
    }

    /* compiled from: InputContentInfoCompat.java */
    /* renamed from: t0.c$c, reason: collision with other inner class name */
    /* loaded from: classes.dex */
    public interface InterfaceC0346c {
        ClipDescription a();

        Object b();

        Uri c();

        void d();

        Uri e();
    }

    public c(Uri uri, ClipDescription clipDescription, Uri uri2) {
        if (Build.VERSION.SDK_INT >= 25) {
            this.f14003a = new a(uri, clipDescription, uri2);
        } else {
            this.f14003a = new b(uri, clipDescription, uri2);
        }
    }

    public static c f(Object obj) {
        if (obj != null && Build.VERSION.SDK_INT >= 25) {
            return new c(new a(obj));
        }
        return null;
    }

    public Uri a() {
        return this.f14003a.c();
    }

    public ClipDescription b() {
        return this.f14003a.a();
    }

    public Uri c() {
        return this.f14003a.e();
    }

    public void d() {
        this.f14003a.d();
    }

    public Object e() {
        return this.f14003a.b();
    }

    /* compiled from: InputContentInfoCompat.java */
    /* loaded from: classes.dex */
    public static final class a implements InterfaceC0346c {

        /* renamed from: a, reason: collision with root package name */
        public final InputContentInfo f14004a;

        public a(Object obj) {
            this.f14004a = (InputContentInfo) obj;
        }

        @Override // t0.c.InterfaceC0346c
        public ClipDescription a() {
            return this.f14004a.getDescription();
        }

        @Override // t0.c.InterfaceC0346c
        public Object b() {
            return this.f14004a;
        }

        @Override // t0.c.InterfaceC0346c
        public Uri c() {
            return this.f14004a.getContentUri();
        }

        @Override // t0.c.InterfaceC0346c
        public void d() {
            this.f14004a.requestPermission();
        }

        @Override // t0.c.InterfaceC0346c
        public Uri e() {
            return this.f14004a.getLinkUri();
        }

        public a(Uri uri, ClipDescription clipDescription, Uri uri2) {
            this.f14004a = new InputContentInfo(uri, clipDescription, uri2);
        }
    }

    public c(InterfaceC0346c interfaceC0346c) {
        this.f14003a = interfaceC0346c;
    }
}
