package com.google.android.gms.internal.measurement;

import com.google.android.material.progressindicator.BaseProgressIndicator;
import java.io.IOException;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: com.google.android.gms:play-services-measurement-base@@19.0.2 */
/* loaded from: classes.dex */
public final class zzjd extends zzjg {
    private final byte[] zzb;
    private final int zzc;
    private int zzd;

    public zzjd(byte[] bArr, int i10, int i11) {
        super(null);
        if (bArr == null) {
            throw new NullPointerException("buffer");
        }
        int length = bArr.length;
        if (((length - i11) | i11) >= 0) {
            this.zzb = bArr;
            this.zzd = 0;
            this.zzc = i11;
            return;
        }
        throw new IllegalArgumentException(String.format("Array range is invalid. Buffer.length=%d, offset=%d, length=%d", Integer.valueOf(length), 0, Integer.valueOf(i11)));
    }

    @Override // com.google.android.gms.internal.measurement.zzjg
    public final int zza() {
        return this.zzc - this.zzd;
    }

    @Override // com.google.android.gms.internal.measurement.zzjg
    public final void zzb(byte b10) throws IOException {
        try {
            byte[] bArr = this.zzb;
            int i10 = this.zzd;
            this.zzd = i10 + 1;
            bArr[i10] = b10;
        } catch (IndexOutOfBoundsException e10) {
            throw new zzje(String.format("Pos: %d, limit: %d, len: %d", Integer.valueOf(this.zzd), Integer.valueOf(this.zzc), 1), e10);
        }
    }

    public final void zzc(byte[] bArr, int i10, int i11) throws IOException {
        try {
            System.arraycopy(bArr, 0, this.zzb, this.zzd, i11);
            this.zzd += i11;
        } catch (IndexOutOfBoundsException e10) {
            throw new zzje(String.format("Pos: %d, limit: %d, len: %d", Integer.valueOf(this.zzd), Integer.valueOf(this.zzc), Integer.valueOf(i11)), e10);
        }
    }

    @Override // com.google.android.gms.internal.measurement.zzjg
    public final void zzd(int i10, boolean z10) throws IOException {
        zzq(i10 << 3);
        zzb(z10 ? (byte) 1 : (byte) 0);
    }

    @Override // com.google.android.gms.internal.measurement.zzjg
    public final void zze(int i10, zziy zziyVar) throws IOException {
        zzq((i10 << 3) | 2);
        zzq(zziyVar.zzd());
        zziyVar.zzh(this);
    }

    @Override // com.google.android.gms.internal.measurement.zzjg
    public final void zzf(int i10, int i11) throws IOException {
        zzq((i10 << 3) | 5);
        zzg(i11);
    }

    @Override // com.google.android.gms.internal.measurement.zzjg
    public final void zzg(int i10) throws IOException {
        try {
            byte[] bArr = this.zzb;
            int i11 = this.zzd;
            int i12 = i11 + 1;
            this.zzd = i12;
            bArr[i11] = (byte) (i10 & BaseProgressIndicator.MAX_ALPHA);
            int i13 = i12 + 1;
            this.zzd = i13;
            bArr[i12] = (byte) ((i10 >> 8) & BaseProgressIndicator.MAX_ALPHA);
            int i14 = i13 + 1;
            this.zzd = i14;
            bArr[i13] = (byte) ((i10 >> 16) & BaseProgressIndicator.MAX_ALPHA);
            this.zzd = i14 + 1;
            bArr[i14] = (byte) ((i10 >> 24) & BaseProgressIndicator.MAX_ALPHA);
        } catch (IndexOutOfBoundsException e10) {
            throw new zzje(String.format("Pos: %d, limit: %d, len: %d", Integer.valueOf(this.zzd), Integer.valueOf(this.zzc), 1), e10);
        }
    }

    @Override // com.google.android.gms.internal.measurement.zzjg
    public final void zzh(int i10, long j10) throws IOException {
        zzq((i10 << 3) | 1);
        zzi(j10);
    }

    @Override // com.google.android.gms.internal.measurement.zzjg
    public final void zzi(long j10) throws IOException {
        try {
            byte[] bArr = this.zzb;
            int i10 = this.zzd;
            int i11 = i10 + 1;
            this.zzd = i11;
            bArr[i10] = (byte) (((int) j10) & BaseProgressIndicator.MAX_ALPHA);
            int i12 = i11 + 1;
            this.zzd = i12;
            bArr[i11] = (byte) (((int) (j10 >> 8)) & BaseProgressIndicator.MAX_ALPHA);
            int i13 = i12 + 1;
            this.zzd = i13;
            bArr[i12] = (byte) (((int) (j10 >> 16)) & BaseProgressIndicator.MAX_ALPHA);
            int i14 = i13 + 1;
            this.zzd = i14;
            bArr[i13] = (byte) (((int) (j10 >> 24)) & BaseProgressIndicator.MAX_ALPHA);
            int i15 = i14 + 1;
            this.zzd = i15;
            bArr[i14] = (byte) (((int) (j10 >> 32)) & BaseProgressIndicator.MAX_ALPHA);
            int i16 = i15 + 1;
            this.zzd = i16;
            bArr[i15] = (byte) (((int) (j10 >> 40)) & BaseProgressIndicator.MAX_ALPHA);
            int i17 = i16 + 1;
            this.zzd = i17;
            bArr[i16] = (byte) (((int) (j10 >> 48)) & BaseProgressIndicator.MAX_ALPHA);
            this.zzd = i17 + 1;
            bArr[i17] = (byte) (((int) (j10 >> 56)) & BaseProgressIndicator.MAX_ALPHA);
        } catch (IndexOutOfBoundsException e10) {
            throw new zzje(String.format("Pos: %d, limit: %d, len: %d", Integer.valueOf(this.zzd), Integer.valueOf(this.zzc), 1), e10);
        }
    }

    @Override // com.google.android.gms.internal.measurement.zzjg
    public final void zzj(int i10, int i11) throws IOException {
        zzq(i10 << 3);
        zzk(i11);
    }

    @Override // com.google.android.gms.internal.measurement.zzjg
    public final void zzk(int i10) throws IOException {
        if (i10 >= 0) {
            zzq(i10);
        } else {
            zzs(i10);
        }
    }

    @Override // com.google.android.gms.internal.measurement.zzjg
    public final void zzl(byte[] bArr, int i10, int i11) throws IOException {
        zzc(bArr, 0, i11);
    }

    @Override // com.google.android.gms.internal.measurement.zzjg
    public final void zzm(int i10, String str) throws IOException {
        zzq((i10 << 3) | 2);
        zzn(str);
    }

    public final void zzn(String str) throws IOException {
        int i10 = this.zzd;
        try {
            int zzA = zzjg.zzA(str.length() * 3);
            int zzA2 = zzjg.zzA(str.length());
            if (zzA2 == zzA) {
                int i11 = i10 + zzA2;
                this.zzd = i11;
                int zzb = zzmx.zzb(str, this.zzb, i11, this.zzc - i11);
                this.zzd = i10;
                zzq((zzb - i10) - zzA2);
                this.zzd = zzb;
                return;
            }
            zzq(zzmx.zzc(str));
            byte[] bArr = this.zzb;
            int i12 = this.zzd;
            this.zzd = zzmx.zzb(str, bArr, i12, this.zzc - i12);
        } catch (zzmw e10) {
            this.zzd = i10;
            zzE(str, e10);
        } catch (IndexOutOfBoundsException e11) {
            throw new zzje(e11);
        }
    }

    @Override // com.google.android.gms.internal.measurement.zzjg
    public final void zzo(int i10, int i11) throws IOException {
        zzq((i10 << 3) | i11);
    }

    @Override // com.google.android.gms.internal.measurement.zzjg
    public final void zzp(int i10, int i11) throws IOException {
        zzq(i10 << 3);
        zzq(i11);
    }

    @Override // com.google.android.gms.internal.measurement.zzjg
    public final void zzq(int i10) throws IOException {
        boolean z10;
        z10 = zzjg.zzc;
        if (z10) {
            int i11 = zzij.zza;
        }
        while ((i10 & (-128)) != 0) {
            try {
                byte[] bArr = this.zzb;
                int i12 = this.zzd;
                this.zzd = i12 + 1;
                bArr[i12] = (byte) ((i10 & 127) | 128);
                i10 >>>= 7;
            } catch (IndexOutOfBoundsException e10) {
                throw new zzje(String.format("Pos: %d, limit: %d, len: %d", Integer.valueOf(this.zzd), Integer.valueOf(this.zzc), 1), e10);
            }
        }
        byte[] bArr2 = this.zzb;
        int i13 = this.zzd;
        this.zzd = i13 + 1;
        bArr2[i13] = (byte) i10;
    }

    @Override // com.google.android.gms.internal.measurement.zzjg
    public final void zzr(int i10, long j10) throws IOException {
        zzq(i10 << 3);
        zzs(j10);
    }

    @Override // com.google.android.gms.internal.measurement.zzjg
    public final void zzs(long j10) throws IOException {
        boolean z10;
        z10 = zzjg.zzc;
        if (z10 && this.zzc - this.zzd >= 10) {
            while ((j10 & (-128)) != 0) {
                byte[] bArr = this.zzb;
                int i10 = this.zzd;
                this.zzd = i10 + 1;
                zzms.zzn(bArr, i10, (byte) ((((int) j10) & 127) | 128));
                j10 >>>= 7;
            }
            byte[] bArr2 = this.zzb;
            int i11 = this.zzd;
            this.zzd = i11 + 1;
            zzms.zzn(bArr2, i11, (byte) j10);
            return;
        }
        while ((j10 & (-128)) != 0) {
            try {
                byte[] bArr3 = this.zzb;
                int i12 = this.zzd;
                this.zzd = i12 + 1;
                bArr3[i12] = (byte) ((((int) j10) & 127) | 128);
                j10 >>>= 7;
            } catch (IndexOutOfBoundsException e10) {
                throw new zzje(String.format("Pos: %d, limit: %d, len: %d", Integer.valueOf(this.zzd), Integer.valueOf(this.zzc), 1), e10);
            }
        }
        byte[] bArr4 = this.zzb;
        int i13 = this.zzd;
        this.zzd = i13 + 1;
        bArr4[i13] = (byte) j10;
    }
}
