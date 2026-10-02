package o7;

import android.graphics.Bitmap;
import java.nio.ByteBuffer;

/* compiled from: GifDecoder.java */
/* loaded from: classes.dex */
public interface a {

    /* compiled from: GifDecoder.java */
    /* renamed from: o7.a$a, reason: collision with other inner class name */
    /* loaded from: classes.dex */
    public interface InterfaceC0295a {
        Bitmap a(int i10, int i11, Bitmap.Config config);

        void b(byte[] bArr);

        byte[] c(int i10);

        void d(int[] iArr);

        int[] e(int i10);

        void f(Bitmap bitmap);
    }

    int a();

    Bitmap b();

    void c();

    void clear();

    int d();

    int e();

    int f();

    void g(Bitmap.Config config);

    ByteBuffer getData();

    void h();
}
