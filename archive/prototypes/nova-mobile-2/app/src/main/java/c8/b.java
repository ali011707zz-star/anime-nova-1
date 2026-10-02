package c8;

import android.graphics.Bitmap;
import o7.a;

/* compiled from: GifBitmapProvider.java */
/* loaded from: classes.dex */
public final class b implements a.InterfaceC0295a {

    /* renamed from: a, reason: collision with root package name */
    public final s7.e f3727a;

    /* renamed from: b, reason: collision with root package name */
    public final s7.b f3728b;

    public b(s7.e eVar, s7.b bVar) {
        this.f3727a = eVar;
        this.f3728b = bVar;
    }

    @Override // o7.a.InterfaceC0295a
    public Bitmap a(int i10, int i11, Bitmap.Config config) {
        return this.f3727a.e(i10, i11, config);
    }

    @Override // o7.a.InterfaceC0295a
    public void b(byte[] bArr) {
        s7.b bVar = this.f3728b;
        if (bVar == null) {
            return;
        }
        bVar.d(bArr);
    }

    @Override // o7.a.InterfaceC0295a
    public byte[] c(int i10) {
        s7.b bVar = this.f3728b;
        if (bVar == null) {
            return new byte[i10];
        }
        return (byte[]) bVar.e(i10, byte[].class);
    }

    @Override // o7.a.InterfaceC0295a
    public void d(int[] iArr) {
        s7.b bVar = this.f3728b;
        if (bVar == null) {
            return;
        }
        bVar.d(iArr);
    }

    @Override // o7.a.InterfaceC0295a
    public int[] e(int i10) {
        s7.b bVar = this.f3728b;
        if (bVar == null) {
            return new int[i10];
        }
        return (int[]) bVar.e(i10, int[].class);
    }

    @Override // o7.a.InterfaceC0295a
    public void f(Bitmap bitmap) {
        this.f3727a.d(bitmap);
    }
}
