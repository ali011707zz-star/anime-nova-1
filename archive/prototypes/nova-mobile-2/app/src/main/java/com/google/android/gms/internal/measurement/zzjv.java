package com.google.android.gms.internal.measurement;

import com.google.android.gms.internal.measurement.zzjv;
import com.google.android.gms.internal.measurement.zzjz;
import java.io.IOException;

/* compiled from: com.google.android.gms:play-services-measurement-base@@19.0.2 */
/* loaded from: classes.dex */
public class zzjv<MessageType extends zzjz<MessageType, BuilderType>, BuilderType extends zzjv<MessageType, BuilderType>> extends zzig<MessageType, BuilderType> {
    public MessageType zza;
    public boolean zzb = false;
    private final MessageType zzc;

    public zzjv(MessageType messagetype) {
        this.zzc = messagetype;
        this.zza = (MessageType) messagetype.zzl(4, null, null);
    }

    private static final void zza(MessageType messagetype, MessageType messagetype2) {
        zzlo.zza().zzb(messagetype.getClass()).zzg(messagetype, messagetype2);
    }

    public final MessageType zzaA() {
        MessageType zzaC = zzaC();
        boolean z10 = true;
        byte byteValue = ((Byte) zzaC.zzl(1, null, null)).byteValue();
        if (byteValue != 1) {
            if (byteValue == 0) {
                z10 = false;
            } else {
                boolean zzj = zzlo.zza().zzb(zzaC.getClass()).zzj(zzaC);
                zzaC.zzl(2, true != zzj ? null : zzaC, null);
                z10 = zzj;
            }
        }
        if (z10) {
            return zzaC;
        }
        throw new zzmh(zzaC);
    }

    @Override // com.google.android.gms.internal.measurement.zzlf
    /* renamed from: zzaB, reason: merged with bridge method [inline-methods] */
    public MessageType zzaC() {
        if (this.zzb) {
            return this.zza;
        }
        MessageType messagetype = this.zza;
        zzlo.zza().zzb(messagetype.getClass()).zzf(messagetype);
        this.zzb = true;
        return this.zza;
    }

    public void zzaE() {
        MessageType messagetype = (MessageType) this.zza.zzl(4, null, null);
        zza(messagetype, this.zza);
        this.zza = messagetype;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.google.android.gms.internal.measurement.zzig
    public final /* bridge */ /* synthetic */ zzig zzar(zzih zzihVar) {
        zzay((zzjz) zzihVar);
        return this;
    }

    @Override // com.google.android.gms.internal.measurement.zzig
    public final /* bridge */ /* synthetic */ zzig zzas(byte[] bArr, int i10, int i11) throws zzkj {
        zzaz(bArr, 0, i11, zzjl.zza());
        return this;
    }

    @Override // com.google.android.gms.internal.measurement.zzig
    public final /* bridge */ /* synthetic */ zzig zzat(byte[] bArr, int i10, int i11, zzjl zzjlVar) throws zzkj {
        zzaz(bArr, 0, i11, zzjlVar);
        return this;
    }

    @Override // com.google.android.gms.internal.measurement.zzig
    /* renamed from: zzax, reason: merged with bridge method [inline-methods] and merged with bridge method [inline-methods] */
    public final BuilderType zzaq() {
        BuilderType buildertype = (BuilderType) this.zzc.zzl(5, null, null);
        buildertype.zzay(zzaC());
        return buildertype;
    }

    public final BuilderType zzay(MessageType messagetype) {
        if (this.zzb) {
            zzaE();
            this.zzb = false;
        }
        zza(this.zza, messagetype);
        return this;
    }

    public final BuilderType zzaz(byte[] bArr, int i10, int i11, zzjl zzjlVar) throws zzkj {
        if (this.zzb) {
            zzaE();
            this.zzb = false;
        }
        try {
            zzlo.zza().zzb(this.zza.getClass()).zzh(this.zza, bArr, 0, i11, new zzik(zzjlVar));
            return this;
        } catch (zzkj e10) {
            throw e10;
        } catch (IOException e11) {
            throw new RuntimeException("Reading from byte array should not throw IOException.", e11);
        } catch (IndexOutOfBoundsException unused) {
            throw zzkj.zzf();
        }
    }

    @Override // com.google.android.gms.internal.measurement.zzlh
    public final /* bridge */ /* synthetic */ zzlg zzbL() {
        return this.zzc;
    }
}
