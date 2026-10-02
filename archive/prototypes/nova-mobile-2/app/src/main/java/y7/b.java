package y7;

import android.graphics.Bitmap;
import android.graphics.drawable.BitmapDrawable;
import java.io.File;

/* compiled from: BitmapDrawableEncoder.java */
/* loaded from: classes.dex */
public class b implements p7.j<BitmapDrawable> {

    /* renamed from: a, reason: collision with root package name */
    public final s7.e f16641a;

    /* renamed from: b, reason: collision with root package name */
    public final p7.j<Bitmap> f16642b;

    public b(s7.e eVar, p7.j<Bitmap> jVar) {
        this.f16641a = eVar;
        this.f16642b = jVar;
    }

    @Override // p7.j
    public p7.c a(p7.g gVar) {
        return this.f16642b.a(gVar);
    }

    @Override // p7.d
    /* renamed from: c, reason: merged with bridge method [inline-methods] */
    public boolean b(r7.u<BitmapDrawable> uVar, File file, p7.g gVar) {
        return this.f16642b.b(new e(uVar.get().getBitmap(), this.f16641a), file, gVar);
    }
}
