package o7;

import android.graphics.Bitmap;
import android.util.Log;
import androidx.recyclerview.widget.RecyclerView;
import com.google.android.material.progressindicator.BaseProgressIndicator;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.util.Arrays;
import java.util.Iterator;
import o7.a;

/* compiled from: StandardGifDecoder.java */
/* loaded from: classes.dex */
public class e implements a {

    /* renamed from: u, reason: collision with root package name */
    public static final String f11821u = "e";

    /* renamed from: a, reason: collision with root package name */
    public int[] f11822a;

    /* renamed from: b, reason: collision with root package name */
    public final int[] f11823b;

    /* renamed from: c, reason: collision with root package name */
    public final a.InterfaceC0295a f11824c;

    /* renamed from: d, reason: collision with root package name */
    public ByteBuffer f11825d;

    /* renamed from: e, reason: collision with root package name */
    public byte[] f11826e;

    /* renamed from: f, reason: collision with root package name */
    public short[] f11827f;

    /* renamed from: g, reason: collision with root package name */
    public byte[] f11828g;

    /* renamed from: h, reason: collision with root package name */
    public byte[] f11829h;

    /* renamed from: i, reason: collision with root package name */
    public byte[] f11830i;

    /* renamed from: j, reason: collision with root package name */
    public int[] f11831j;

    /* renamed from: k, reason: collision with root package name */
    public int f11832k;

    /* renamed from: l, reason: collision with root package name */
    public c f11833l;

    /* renamed from: m, reason: collision with root package name */
    public Bitmap f11834m;

    /* renamed from: n, reason: collision with root package name */
    public boolean f11835n;

    /* renamed from: o, reason: collision with root package name */
    public int f11836o;

    /* renamed from: p, reason: collision with root package name */
    public int f11837p;

    /* renamed from: q, reason: collision with root package name */
    public int f11838q;

    /* renamed from: r, reason: collision with root package name */
    public int f11839r;

    /* renamed from: s, reason: collision with root package name */
    public Boolean f11840s;

    /* renamed from: t, reason: collision with root package name */
    public Bitmap.Config f11841t;

    public e(a.InterfaceC0295a interfaceC0295a, c cVar, ByteBuffer byteBuffer, int i10) {
        this(interfaceC0295a);
        q(cVar, byteBuffer, i10);
    }

    @Override // o7.a
    public int a() {
        return this.f11832k;
    }

    @Override // o7.a
    public synchronized Bitmap b() {
        if (this.f11833l.f11806c <= 0 || this.f11832k < 0) {
            if (Log.isLoggable(f11821u, 3)) {
                StringBuilder sb2 = new StringBuilder();
                sb2.append("Unable to decode frame, frameCount=");
                sb2.append(this.f11833l.f11806c);
                sb2.append(", framePointer=");
                sb2.append(this.f11832k);
            }
            this.f11836o = 1;
        }
        int i10 = this.f11836o;
        if (i10 != 1 && i10 != 2) {
            this.f11836o = 0;
            if (this.f11826e == null) {
                this.f11826e = this.f11824c.c(BaseProgressIndicator.MAX_ALPHA);
            }
            b bVar = this.f11833l.f11808e.get(this.f11832k);
            int i11 = this.f11832k - 1;
            b bVar2 = i11 >= 0 ? this.f11833l.f11808e.get(i11) : null;
            int[] iArr = bVar.f11803k;
            if (iArr == null) {
                iArr = this.f11833l.f11804a;
            }
            this.f11822a = iArr;
            if (iArr == null) {
                if (Log.isLoggable(f11821u, 3)) {
                    StringBuilder sb3 = new StringBuilder();
                    sb3.append("No valid color table found for frame #");
                    sb3.append(this.f11832k);
                }
                this.f11836o = 1;
                return null;
            }
            if (bVar.f11798f) {
                System.arraycopy(iArr, 0, this.f11823b, 0, iArr.length);
                int[] iArr2 = this.f11823b;
                this.f11822a = iArr2;
                iArr2[bVar.f11800h] = 0;
                if (bVar.f11799g == 2 && this.f11832k == 0) {
                    this.f11840s = Boolean.TRUE;
                }
            }
            return r(bVar, bVar2);
        }
        if (Log.isLoggable(f11821u, 3)) {
            StringBuilder sb4 = new StringBuilder();
            sb4.append("Unable to decode frame, status=");
            sb4.append(this.f11836o);
        }
        return null;
    }

    @Override // o7.a
    public void c() {
        this.f11832k = (this.f11832k + 1) % this.f11833l.f11806c;
    }

    @Override // o7.a
    public void clear() {
        this.f11833l = null;
        byte[] bArr = this.f11830i;
        if (bArr != null) {
            this.f11824c.b(bArr);
        }
        int[] iArr = this.f11831j;
        if (iArr != null) {
            this.f11824c.d(iArr);
        }
        Bitmap bitmap = this.f11834m;
        if (bitmap != null) {
            this.f11824c.f(bitmap);
        }
        this.f11834m = null;
        this.f11825d = null;
        this.f11840s = null;
        byte[] bArr2 = this.f11826e;
        if (bArr2 != null) {
            this.f11824c.b(bArr2);
        }
    }

    @Override // o7.a
    public int d() {
        return this.f11833l.f11806c;
    }

    @Override // o7.a
    public int e() {
        int i10;
        if (this.f11833l.f11806c <= 0 || (i10 = this.f11832k) < 0) {
            return 0;
        }
        return m(i10);
    }

    @Override // o7.a
    public int f() {
        return this.f11825d.limit() + this.f11830i.length + (this.f11831j.length * 4);
    }

    @Override // o7.a
    public void g(Bitmap.Config config) {
        if (config != Bitmap.Config.ARGB_8888 && config != Bitmap.Config.RGB_565) {
            throw new IllegalArgumentException("Unsupported format: " + config + ", must be one of " + Bitmap.Config.ARGB_8888 + " or " + Bitmap.Config.RGB_565);
        }
        this.f11841t = config;
    }

    @Override // o7.a
    public ByteBuffer getData() {
        return this.f11825d;
    }

    @Override // o7.a
    public void h() {
        this.f11832k = -1;
    }

    public final int i(int i10, int i11, int i12) {
        int i13 = 0;
        int i14 = 0;
        int i15 = 0;
        int i16 = 0;
        int i17 = 0;
        for (int i18 = i10; i18 < this.f11837p + i10; i18++) {
            byte[] bArr = this.f11830i;
            if (i18 >= bArr.length || i18 >= i11) {
                break;
            }
            int i19 = this.f11822a[bArr[i18] & 255];
            if (i19 != 0) {
                i13 += (i19 >> 24) & BaseProgressIndicator.MAX_ALPHA;
                i14 += (i19 >> 16) & BaseProgressIndicator.MAX_ALPHA;
                i15 += (i19 >> 8) & BaseProgressIndicator.MAX_ALPHA;
                i16 += i19 & BaseProgressIndicator.MAX_ALPHA;
                i17++;
            }
        }
        int i20 = i10 + i12;
        for (int i21 = i20; i21 < this.f11837p + i20; i21++) {
            byte[] bArr2 = this.f11830i;
            if (i21 >= bArr2.length || i21 >= i11) {
                break;
            }
            int i22 = this.f11822a[bArr2[i21] & 255];
            if (i22 != 0) {
                i13 += (i22 >> 24) & BaseProgressIndicator.MAX_ALPHA;
                i14 += (i22 >> 16) & BaseProgressIndicator.MAX_ALPHA;
                i15 += (i22 >> 8) & BaseProgressIndicator.MAX_ALPHA;
                i16 += i22 & BaseProgressIndicator.MAX_ALPHA;
                i17++;
            }
        }
        if (i17 == 0) {
            return 0;
        }
        return ((i13 / i17) << 24) | ((i14 / i17) << 16) | ((i15 / i17) << 8) | (i16 / i17);
    }

    public final void j(b bVar) {
        int i10;
        int i11;
        int i12;
        int i13;
        int i14;
        int[] iArr = this.f11831j;
        int i15 = bVar.f11796d;
        int i16 = this.f11837p;
        int i17 = i15 / i16;
        int i18 = bVar.f11794b / i16;
        int i19 = bVar.f11795c / i16;
        int i20 = bVar.f11793a / i16;
        boolean z10 = this.f11832k == 0;
        int i21 = this.f11839r;
        int i22 = this.f11838q;
        byte[] bArr = this.f11830i;
        int[] iArr2 = this.f11822a;
        Boolean bool = this.f11840s;
        int i23 = 8;
        int i24 = 0;
        int i25 = 0;
        int i26 = 1;
        while (i24 < i17) {
            Boolean bool2 = bool;
            if (bVar.f11797e) {
                if (i25 >= i17) {
                    i10 = i17;
                    int i27 = i26 + 1;
                    if (i27 == 2) {
                        i26 = i27;
                        i25 = 4;
                    } else if (i27 == 3) {
                        i26 = i27;
                        i25 = 2;
                        i23 = 4;
                    } else if (i27 != 4) {
                        i26 = i27;
                    } else {
                        i26 = i27;
                        i25 = 1;
                        i23 = 2;
                    }
                } else {
                    i10 = i17;
                }
                i11 = i25 + i23;
            } else {
                i10 = i17;
                i11 = i25;
                i25 = i24;
            }
            int i28 = i25 + i18;
            boolean z11 = i16 == 1;
            if (i28 < i22) {
                int i29 = i28 * i21;
                int i30 = i29 + i20;
                int i31 = i30 + i19;
                int i32 = i29 + i21;
                if (i32 < i31) {
                    i31 = i32;
                }
                i12 = i11;
                int i33 = i24 * i16 * bVar.f11795c;
                if (z11) {
                    int i34 = i30;
                    while (i34 < i31) {
                        int i35 = i18;
                        int i36 = iArr2[bArr[i33] & 255];
                        if (i36 != 0) {
                            iArr[i34] = i36;
                        } else if (z10 && bool2 == null) {
                            bool2 = Boolean.TRUE;
                        }
                        i33 += i16;
                        i34++;
                        i18 = i35;
                    }
                } else {
                    i14 = i18;
                    int i37 = ((i31 - i30) * i16) + i33;
                    int i38 = i30;
                    while (true) {
                        i13 = i19;
                        if (i38 < i31) {
                            int i39 = i(i33, i37, bVar.f11795c);
                            if (i39 != 0) {
                                iArr[i38] = i39;
                            } else if (z10 && bool2 == null) {
                                bool2 = Boolean.TRUE;
                            }
                            i33 += i16;
                            i38++;
                            i19 = i13;
                        }
                    }
                    bool = bool2;
                    i24++;
                    i18 = i14;
                    i19 = i13;
                    i17 = i10;
                    i25 = i12;
                }
            } else {
                i12 = i11;
            }
            i14 = i18;
            i13 = i19;
            bool = bool2;
            i24++;
            i18 = i14;
            i19 = i13;
            i17 = i10;
            i25 = i12;
        }
        Boolean bool3 = bool;
        if (this.f11840s == null) {
            this.f11840s = Boolean.valueOf(bool3 == null ? false : bool3.booleanValue());
        }
    }

    public final void k(b bVar) {
        b bVar2 = bVar;
        int[] iArr = this.f11831j;
        int i10 = bVar2.f11796d;
        int i11 = bVar2.f11794b;
        int i12 = bVar2.f11795c;
        int i13 = bVar2.f11793a;
        boolean z10 = this.f11832k == 0;
        int i14 = this.f11839r;
        byte[] bArr = this.f11830i;
        int[] iArr2 = this.f11822a;
        int i15 = 0;
        byte b10 = -1;
        while (i15 < i10) {
            int i16 = (i15 + i11) * i14;
            int i17 = i16 + i13;
            int i18 = i17 + i12;
            int i19 = i16 + i14;
            if (i19 < i18) {
                i18 = i19;
            }
            int i20 = bVar2.f11795c * i15;
            int i21 = i17;
            while (i21 < i18) {
                byte b11 = bArr[i20];
                int i22 = i10;
                int i23 = b11 & 255;
                if (i23 != b10) {
                    int i24 = iArr2[i23];
                    if (i24 != 0) {
                        iArr[i21] = i24;
                    } else {
                        b10 = b11;
                    }
                }
                i20++;
                i21++;
                i10 = i22;
            }
            i15++;
            bVar2 = bVar;
        }
        Boolean bool = this.f11840s;
        this.f11840s = Boolean.valueOf((bool != null && bool.booleanValue()) || (this.f11840s == null && z10 && b10 != -1));
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r7v10 */
    /* JADX WARN: Type inference failed for: r7v11 */
    /* JADX WARN: Type inference failed for: r7v12 */
    /* JADX WARN: Type inference failed for: r7v15, types: [short] */
    /* JADX WARN: Type inference failed for: r7v17 */
    public final void l(b bVar) {
        int i10;
        int i11;
        short s10;
        e eVar = this;
        if (bVar != null) {
            eVar.f11825d.position(bVar.f11802j);
        }
        if (bVar == null) {
            c cVar = eVar.f11833l;
            i10 = cVar.f11809f;
            i11 = cVar.f11810g;
        } else {
            i10 = bVar.f11795c;
            i11 = bVar.f11796d;
        }
        int i12 = i10 * i11;
        byte[] bArr = eVar.f11830i;
        if (bArr == null || bArr.length < i12) {
            eVar.f11830i = eVar.f11824c.c(i12);
        }
        byte[] bArr2 = eVar.f11830i;
        if (eVar.f11827f == null) {
            eVar.f11827f = new short[RecyclerView.e0.FLAG_APPEARED_IN_PRE_LAYOUT];
        }
        short[] sArr = eVar.f11827f;
        if (eVar.f11828g == null) {
            eVar.f11828g = new byte[RecyclerView.e0.FLAG_APPEARED_IN_PRE_LAYOUT];
        }
        byte[] bArr3 = eVar.f11828g;
        if (eVar.f11829h == null) {
            eVar.f11829h = new byte[4097];
        }
        byte[] bArr4 = eVar.f11829h;
        int p10 = p();
        int i13 = 1 << p10;
        int i14 = i13 + 1;
        int i15 = i13 + 2;
        int i16 = p10 + 1;
        int i17 = (1 << i16) - 1;
        int i18 = 0;
        for (int i19 = 0; i19 < i13; i19++) {
            sArr[i19] = 0;
            bArr3[i19] = (byte) i19;
        }
        byte[] bArr5 = eVar.f11826e;
        int i20 = i16;
        int i21 = i15;
        int i22 = i17;
        int i23 = 0;
        int i24 = 0;
        int i25 = 0;
        int i26 = 0;
        int i27 = 0;
        int i28 = -1;
        int i29 = 0;
        int i30 = 0;
        while (true) {
            if (i18 >= i12) {
                break;
            }
            if (i23 == 0) {
                i23 = o();
                if (i23 <= 0) {
                    eVar.f11836o = 3;
                    break;
                }
                i24 = 0;
            }
            i26 += (bArr5[i24] & 255) << i25;
            i24++;
            i23--;
            int i31 = i25 + 8;
            int i32 = i21;
            int i33 = i20;
            int i34 = i28;
            int i35 = i16;
            int i36 = i29;
            while (true) {
                if (i31 < i33) {
                    i28 = i34;
                    i21 = i32;
                    i25 = i31;
                    eVar = this;
                    i29 = i36;
                    i16 = i35;
                    i20 = i33;
                    break;
                }
                int i37 = i15;
                int i38 = i26 & i22;
                i26 >>= i33;
                i31 -= i33;
                if (i38 == i13) {
                    i22 = i17;
                    i33 = i35;
                    i32 = i37;
                    i15 = i32;
                    i34 = -1;
                } else {
                    if (i38 == i14) {
                        i25 = i31;
                        i29 = i36;
                        i21 = i32;
                        i16 = i35;
                        i15 = i37;
                        i28 = i34;
                        i20 = i33;
                        eVar = this;
                        break;
                    }
                    if (i34 == -1) {
                        bArr2[i27] = bArr3[i38];
                        i27++;
                        i18++;
                        i34 = i38;
                        i36 = i34;
                        i15 = i37;
                        i31 = i31;
                    } else {
                        if (i38 >= i32) {
                            bArr4[i30] = (byte) i36;
                            i30++;
                            s10 = i34;
                        } else {
                            s10 = i38;
                        }
                        while (s10 >= i13) {
                            bArr4[i30] = bArr3[s10];
                            i30++;
                            s10 = sArr[s10];
                        }
                        i36 = bArr3[s10] & 255;
                        byte b10 = (byte) i36;
                        bArr2[i27] = b10;
                        while (true) {
                            i27++;
                            i18++;
                            if (i30 <= 0) {
                                break;
                            }
                            i30--;
                            bArr2[i27] = bArr4[i30];
                        }
                        byte[] bArr6 = bArr4;
                        if (i32 < 4096) {
                            sArr[i32] = (short) i34;
                            bArr3[i32] = b10;
                            i32++;
                            if ((i32 & i22) == 0 && i32 < 4096) {
                                i33++;
                                i22 += i32;
                            }
                        }
                        i34 = i38;
                        i15 = i37;
                        i31 = i31;
                        bArr4 = bArr6;
                    }
                }
            }
        }
        Arrays.fill(bArr2, i27, i12, (byte) 0);
    }

    public int m(int i10) {
        if (i10 >= 0) {
            c cVar = this.f11833l;
            if (i10 < cVar.f11806c) {
                return cVar.f11808e.get(i10).f11801i;
            }
        }
        return -1;
    }

    public final Bitmap n() {
        Boolean bool = this.f11840s;
        Bitmap a10 = this.f11824c.a(this.f11839r, this.f11838q, (bool == null || bool.booleanValue()) ? Bitmap.Config.ARGB_8888 : this.f11841t);
        a10.setHasAlpha(true);
        return a10;
    }

    public final int o() {
        int p10 = p();
        if (p10 <= 0) {
            return p10;
        }
        ByteBuffer byteBuffer = this.f11825d;
        byteBuffer.get(this.f11826e, 0, Math.min(p10, byteBuffer.remaining()));
        return p10;
    }

    public final int p() {
        return this.f11825d.get() & 255;
    }

    public synchronized void q(c cVar, ByteBuffer byteBuffer, int i10) {
        if (i10 > 0) {
            int highestOneBit = Integer.highestOneBit(i10);
            this.f11836o = 0;
            this.f11833l = cVar;
            this.f11832k = -1;
            ByteBuffer asReadOnlyBuffer = byteBuffer.asReadOnlyBuffer();
            this.f11825d = asReadOnlyBuffer;
            asReadOnlyBuffer.position(0);
            this.f11825d.order(ByteOrder.LITTLE_ENDIAN);
            this.f11835n = false;
            Iterator<b> it2 = cVar.f11808e.iterator();
            while (true) {
                if (!it2.hasNext()) {
                    break;
                } else if (it2.next().f11799g == 3) {
                    this.f11835n = true;
                    break;
                }
            }
            this.f11837p = highestOneBit;
            int i11 = cVar.f11809f;
            this.f11839r = i11 / highestOneBit;
            int i12 = cVar.f11810g;
            this.f11838q = i12 / highestOneBit;
            this.f11830i = this.f11824c.c(i11 * i12);
            this.f11831j = this.f11824c.e(this.f11839r * this.f11838q);
        } else {
            throw new IllegalArgumentException("Sample size must be >=0, not: " + i10);
        }
    }

    public final Bitmap r(b bVar, b bVar2) {
        int i10;
        int i11;
        Bitmap bitmap;
        int[] iArr = this.f11831j;
        int i12 = 0;
        if (bVar2 == null) {
            Bitmap bitmap2 = this.f11834m;
            if (bitmap2 != null) {
                this.f11824c.f(bitmap2);
            }
            this.f11834m = null;
            Arrays.fill(iArr, 0);
        }
        if (bVar2 != null && bVar2.f11799g == 3 && this.f11834m == null) {
            Arrays.fill(iArr, 0);
        }
        if (bVar2 != null && (i11 = bVar2.f11799g) > 0) {
            if (i11 == 2) {
                if (!bVar.f11798f) {
                    c cVar = this.f11833l;
                    int i13 = cVar.f11815l;
                    if (bVar.f11803k == null || cVar.f11813j != bVar.f11800h) {
                        i12 = i13;
                    }
                }
                int i14 = bVar2.f11796d;
                int i15 = this.f11837p;
                int i16 = i14 / i15;
                int i17 = bVar2.f11794b / i15;
                int i18 = bVar2.f11795c / i15;
                int i19 = bVar2.f11793a / i15;
                int i20 = this.f11839r;
                int i21 = (i17 * i20) + i19;
                int i22 = (i16 * i20) + i21;
                while (i21 < i22) {
                    int i23 = i21 + i18;
                    for (int i24 = i21; i24 < i23; i24++) {
                        iArr[i24] = i12;
                    }
                    i21 += this.f11839r;
                }
            } else if (i11 == 3 && (bitmap = this.f11834m) != null) {
                int i25 = this.f11839r;
                bitmap.getPixels(iArr, 0, i25, 0, 0, i25, this.f11838q);
            }
        }
        l(bVar);
        if (!bVar.f11797e && this.f11837p == 1) {
            k(bVar);
        } else {
            j(bVar);
        }
        if (this.f11835n && ((i10 = bVar.f11799g) == 0 || i10 == 1)) {
            if (this.f11834m == null) {
                this.f11834m = n();
            }
            Bitmap bitmap3 = this.f11834m;
            int i26 = this.f11839r;
            bitmap3.setPixels(iArr, 0, i26, 0, 0, i26, this.f11838q);
        }
        Bitmap n10 = n();
        int i27 = this.f11839r;
        n10.setPixels(iArr, 0, i27, 0, 0, i27, this.f11838q);
        return n10;
    }

    public e(a.InterfaceC0295a interfaceC0295a) {
        this.f11823b = new int[256];
        this.f11841t = Bitmap.Config.ARGB_8888;
        this.f11824c = interfaceC0295a;
        this.f11833l = new c();
    }
}
