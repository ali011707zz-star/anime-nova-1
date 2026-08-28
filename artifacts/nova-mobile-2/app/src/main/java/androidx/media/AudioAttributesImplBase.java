package androidx.media;

import java.util.Arrays;

/* loaded from: classes.dex */
class AudioAttributesImplBase implements AudioAttributesImpl {

    /* renamed from: a, reason: collision with root package name */
    public int f2548a = 0;

    /* renamed from: b, reason: collision with root package name */
    public int f2549b = 0;

    /* renamed from: c, reason: collision with root package name */
    public int f2550c = 0;

    /* renamed from: d, reason: collision with root package name */
    public int f2551d = -1;

    public int a() {
        return this.f2549b;
    }

    public int b() {
        int i10 = this.f2550c;
        int c10 = c();
        if (c10 == 6) {
            i10 |= 4;
        } else if (c10 == 7) {
            i10 |= 1;
        }
        return i10 & 273;
    }

    public int c() {
        int i10 = this.f2551d;
        return i10 != -1 ? i10 : AudioAttributesCompat.a(false, this.f2550c, this.f2548a);
    }

    public int d() {
        return this.f2548a;
    }

    public boolean equals(Object obj) {
        if (!(obj instanceof AudioAttributesImplBase)) {
            return false;
        }
        AudioAttributesImplBase audioAttributesImplBase = (AudioAttributesImplBase) obj;
        return this.f2549b == audioAttributesImplBase.a() && this.f2550c == audioAttributesImplBase.b() && this.f2548a == audioAttributesImplBase.d() && this.f2551d == audioAttributesImplBase.f2551d;
    }

    public int hashCode() {
        return Arrays.hashCode(new Object[]{Integer.valueOf(this.f2549b), Integer.valueOf(this.f2550c), Integer.valueOf(this.f2548a), Integer.valueOf(this.f2551d)});
    }

    public String toString() {
        StringBuilder sb2 = new StringBuilder("AudioAttributesCompat:");
        if (this.f2551d != -1) {
            sb2.append(" stream=");
            sb2.append(this.f2551d);
            sb2.append(" derived");
        }
        sb2.append(" usage=");
        sb2.append(AudioAttributesCompat.b(this.f2548a));
        sb2.append(" content=");
        sb2.append(this.f2549b);
        sb2.append(" flags=0x");
        sb2.append(Integer.toHexString(this.f2550c).toUpperCase());
        return sb2.toString();
    }
}
