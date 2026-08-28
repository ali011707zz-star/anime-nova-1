package n0;

import android.content.Context;
import android.content.pm.PackageManager;
import android.graphics.Typeface;
import android.net.Uri;
import android.os.CancellationSignal;
import android.os.Handler;
import h0.h;
import p0.i;

/* compiled from: FontsContractCompat.java */
/* loaded from: classes.dex */
public class f {

    /* compiled from: FontsContractCompat.java */
    /* loaded from: classes.dex */
    public static class a {

        /* renamed from: a, reason: collision with root package name */
        public final int f11147a;

        /* renamed from: b, reason: collision with root package name */
        public final b[] f11148b;

        @Deprecated
        public a(int i10, b[] bVarArr) {
            this.f11147a = i10;
            this.f11148b = bVarArr;
        }

        public static a a(int i10, b[] bVarArr) {
            return new a(i10, bVarArr);
        }

        public b[] b() {
            return this.f11148b;
        }

        public int c() {
            return this.f11147a;
        }
    }

    /* compiled from: FontsContractCompat.java */
    /* loaded from: classes.dex */
    public static class b {

        /* renamed from: a, reason: collision with root package name */
        public final Uri f11149a;

        /* renamed from: b, reason: collision with root package name */
        public final int f11150b;

        /* renamed from: c, reason: collision with root package name */
        public final int f11151c;

        /* renamed from: d, reason: collision with root package name */
        public final boolean f11152d;

        /* renamed from: e, reason: collision with root package name */
        public final int f11153e;

        @Deprecated
        public b(Uri uri, int i10, int i11, boolean z10, int i12) {
            this.f11149a = (Uri) i.g(uri);
            this.f11150b = i10;
            this.f11151c = i11;
            this.f11152d = z10;
            this.f11153e = i12;
        }

        public static b a(Uri uri, int i10, int i11, boolean z10, int i12) {
            return new b(uri, i10, i11, z10, i12);
        }

        public int b() {
            return this.f11153e;
        }

        public int c() {
            return this.f11150b;
        }

        public Uri d() {
            return this.f11149a;
        }

        public int e() {
            return this.f11151c;
        }

        public boolean f() {
            return this.f11152d;
        }
    }

    /* compiled from: FontsContractCompat.java */
    /* loaded from: classes.dex */
    public static class c {
        public void a(int i10) {
            throw null;
        }

        public void b(Typeface typeface) {
            throw null;
        }
    }

    public static Typeface a(Context context, CancellationSignal cancellationSignal, b[] bVarArr) {
        return h.b(context, cancellationSignal, bVarArr, 0);
    }

    public static a b(Context context, CancellationSignal cancellationSignal, d dVar) throws PackageManager.NameNotFoundException {
        return n0.c.d(context, dVar, cancellationSignal);
    }

    public static Typeface c(Context context, d dVar, int i10, boolean z10, int i11, Handler handler, c cVar) {
        n0.a aVar = new n0.a(cVar, handler);
        if (z10) {
            return e.e(context, dVar, aVar, i10, i11);
        }
        return e.d(context, dVar, i10, null, aVar);
    }
}
