package o7;

import android.util.Log;
import com.google.android.gms.common.api.Api;
import java.nio.BufferUnderflowException;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.util.Arrays;

/* compiled from: GifHeaderParser.java */
/* loaded from: classes.dex */
public class d {

    /* renamed from: b, reason: collision with root package name */
    public ByteBuffer f11818b;

    /* renamed from: c, reason: collision with root package name */
    public c f11819c;

    /* renamed from: a, reason: collision with root package name */
    public final byte[] f11817a = new byte[256];

    /* renamed from: d, reason: collision with root package name */
    public int f11820d = 0;

    public void a() {
        this.f11818b = null;
        this.f11819c = null;
    }

    public final boolean b() {
        return this.f11819c.f11805b != 0;
    }

    public c c() {
        if (this.f11818b != null) {
            if (b()) {
                return this.f11819c;
            }
            k();
            if (!b()) {
                h();
                c cVar = this.f11819c;
                if (cVar.f11806c < 0) {
                    cVar.f11805b = 1;
                }
            }
            return this.f11819c;
        }
        throw new IllegalStateException("You must call setData() before parseHeader()");
    }

    public final int d() {
        try {
            return this.f11818b.get() & 255;
        } catch (Exception unused) {
            this.f11819c.f11805b = 1;
            return 0;
        }
    }

    public final void e() {
        this.f11819c.f11807d.f11793a = n();
        this.f11819c.f11807d.f11794b = n();
        this.f11819c.f11807d.f11795c = n();
        this.f11819c.f11807d.f11796d = n();
        int d10 = d();
        boolean z10 = (d10 & 128) != 0;
        int pow = (int) Math.pow(2.0d, (d10 & 7) + 1);
        b bVar = this.f11819c.f11807d;
        bVar.f11797e = (d10 & 64) != 0;
        if (z10) {
            bVar.f11803k = g(pow);
        } else {
            bVar.f11803k = null;
        }
        this.f11819c.f11807d.f11802j = this.f11818b.position();
        r();
        if (b()) {
            return;
        }
        c cVar = this.f11819c;
        cVar.f11806c++;
        cVar.f11808e.add(cVar.f11807d);
    }

    public final void f() {
        int d10 = d();
        this.f11820d = d10;
        if (d10 <= 0) {
            return;
        }
        int i10 = 0;
        int i11 = 0;
        while (true) {
            try {
                i11 = this.f11820d;
                if (i10 >= i11) {
                    return;
                }
                i11 -= i10;
                this.f11818b.get(this.f11817a, i10, i11);
                i10 += i11;
            } catch (Exception unused) {
                if (Log.isLoggable("GifHeaderParser", 3)) {
                    StringBuilder sb2 = new StringBuilder();
                    sb2.append("Error Reading Block n: ");
                    sb2.append(i10);
                    sb2.append(" count: ");
                    sb2.append(i11);
                    sb2.append(" blockSize: ");
                    sb2.append(this.f11820d);
                }
                this.f11819c.f11805b = 1;
                return;
            }
        }
    }

    public final int[] g(int i10) {
        byte[] bArr = new byte[i10 * 3];
        int[] iArr = null;
        try {
            this.f11818b.get(bArr);
            iArr = new int[256];
            int i11 = 0;
            int i12 = 0;
            while (i11 < i10) {
                int i13 = i12 + 1;
                int i14 = i13 + 1;
                int i15 = i14 + 1;
                int i16 = i11 + 1;
                iArr[i11] = ((bArr[i12] & 255) << 16) | (-16777216) | ((bArr[i13] & 255) << 8) | (bArr[i14] & 255);
                i12 = i15;
                i11 = i16;
            }
        } catch (BufferUnderflowException unused) {
            this.f11819c.f11805b = 1;
        }
        return iArr;
    }

    public final void h() {
        i(Api.BaseClientBuilder.API_PRIORITY_OTHER);
    }

    public final void i(int i10) {
        boolean z10 = false;
        while (!z10 && !b() && this.f11819c.f11806c <= i10) {
            int d10 = d();
            if (d10 == 33) {
                int d11 = d();
                if (d11 == 1) {
                    q();
                } else if (d11 == 249) {
                    this.f11819c.f11807d = new b();
                    j();
                } else if (d11 == 254) {
                    q();
                } else if (d11 != 255) {
                    q();
                } else {
                    f();
                    StringBuilder sb2 = new StringBuilder();
                    for (int i11 = 0; i11 < 11; i11++) {
                        sb2.append((char) this.f11817a[i11]);
                    }
                    if (sb2.toString().equals("NETSCAPE2.0")) {
                        m();
                    } else {
                        q();
                    }
                }
            } else if (d10 == 44) {
                c cVar = this.f11819c;
                if (cVar.f11807d == null) {
                    cVar.f11807d = new b();
                }
                e();
            } else if (d10 != 59) {
                this.f11819c.f11805b = 1;
            } else {
                z10 = true;
            }
        }
    }

    public final void j() {
        d();
        int d10 = d();
        b bVar = this.f11819c.f11807d;
        int i10 = (d10 & 28) >> 2;
        bVar.f11799g = i10;
        if (i10 == 0) {
            bVar.f11799g = 1;
        }
        bVar.f11798f = (d10 & 1) != 0;
        int n10 = n();
        if (n10 < 2) {
            n10 = 10;
        }
        b bVar2 = this.f11819c.f11807d;
        bVar2.f11801i = n10 * 10;
        bVar2.f11800h = d();
        d();
    }

    public final void k() {
        StringBuilder sb2 = new StringBuilder();
        for (int i10 = 0; i10 < 6; i10++) {
            sb2.append((char) d());
        }
        if (!sb2.toString().startsWith("GIF")) {
            this.f11819c.f11805b = 1;
            return;
        }
        l();
        if (!this.f11819c.f11811h || b()) {
            return;
        }
        c cVar = this.f11819c;
        cVar.f11804a = g(cVar.f11812i);
        c cVar2 = this.f11819c;
        cVar2.f11815l = cVar2.f11804a[cVar2.f11813j];
    }

    public final void l() {
        this.f11819c.f11809f = n();
        this.f11819c.f11810g = n();
        int d10 = d();
        c cVar = this.f11819c;
        cVar.f11811h = (d10 & 128) != 0;
        cVar.f11812i = (int) Math.pow(2.0d, (d10 & 7) + 1);
        this.f11819c.f11813j = d();
        this.f11819c.f11814k = d();
    }

    public final void m() {
        do {
            f();
            byte[] bArr = this.f11817a;
            if (bArr[0] == 1) {
                this.f11819c.f11816m = ((bArr[2] & 255) << 8) | (bArr[1] & 255);
            }
            if (this.f11820d <= 0) {
                return;
            }
        } while (!b());
    }

    public final int n() {
        return this.f11818b.getShort();
    }

    public final void o() {
        this.f11818b = null;
        Arrays.fill(this.f11817a, (byte) 0);
        this.f11819c = new c();
        this.f11820d = 0;
    }

    public d p(ByteBuffer byteBuffer) {
        o();
        ByteBuffer asReadOnlyBuffer = byteBuffer.asReadOnlyBuffer();
        this.f11818b = asReadOnlyBuffer;
        asReadOnlyBuffer.position(0);
        this.f11818b.order(ByteOrder.LITTLE_ENDIAN);
        return this;
    }

    public final void q() {
        int d10;
        do {
            d10 = d();
            this.f11818b.position(Math.min(this.f11818b.position() + d10, this.f11818b.limit()));
        } while (d10 > 0);
    }

    public final void r() {
        d();
        q();
    }
}
