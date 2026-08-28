package y7;

import android.graphics.Bitmap;
import android.graphics.drawable.Drawable;
import android.net.Uri;

/* compiled from: ResourceBitmapDecoder.java */
/* loaded from: classes.dex */
public class x implements p7.i<Uri, Bitmap> {

    /* renamed from: a, reason: collision with root package name */
    public final a8.e f16717a;

    /* renamed from: b, reason: collision with root package name */
    public final s7.e f16718b;

    public x(a8.e eVar, s7.e eVar2) {
        this.f16717a = eVar;
        this.f16718b = eVar2;
    }

    @Override // p7.i
    /* renamed from: c, reason: merged with bridge method [inline-methods] */
    public r7.u<Bitmap> b(Uri uri, int i10, int i11, p7.g gVar) {
        r7.u<Drawable> b10 = this.f16717a.b(uri, i10, i11, gVar);
        if (b10 == null) {
            return null;
        }
        return n.a(this.f16718b, b10.get(), i10, i11);
    }

    @Override // p7.i
    /* renamed from: d, reason: merged with bridge method [inline-methods] */
    public boolean a(Uri uri, p7.g gVar) {
        return "android.resource".equals(uri.getScheme());
    }
}
