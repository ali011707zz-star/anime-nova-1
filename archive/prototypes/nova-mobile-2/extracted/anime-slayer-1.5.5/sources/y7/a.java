package y7;

import android.content.res.Resources;
import android.graphics.Bitmap;
import android.graphics.drawable.BitmapDrawable;
import java.io.IOException;

/* compiled from: BitmapDrawableDecoder.java */
/* loaded from: classes.dex */
public class a<DataType> implements p7.i<DataType, BitmapDrawable> {

    /* renamed from: a, reason: collision with root package name */
    public final p7.i<DataType, Bitmap> f16638a;

    /* renamed from: b, reason: collision with root package name */
    public final Resources f16639b;

    public a(Resources resources, p7.i<DataType, Bitmap> iVar) {
        this.f16639b = (Resources) l8.j.d(resources);
        this.f16638a = (p7.i) l8.j.d(iVar);
    }

    @Override // p7.i
    public boolean a(DataType datatype, p7.g gVar) throws IOException {
        return this.f16638a.a(datatype, gVar);
    }

    @Override // p7.i
    public r7.u<BitmapDrawable> b(DataType datatype, int i10, int i11, p7.g gVar) throws IOException {
        return u.e(this.f16639b, this.f16638a.b(datatype, i10, i11, gVar));
    }
}
