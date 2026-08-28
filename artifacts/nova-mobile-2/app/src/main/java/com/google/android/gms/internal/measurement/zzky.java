package com.google.android.gms.internal.measurement;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: com.google.android.gms:play-services-measurement-base@@19.0.2 */
/* loaded from: classes.dex */
public final class zzky implements zzls {
    private static final zzle zza = new zzkw();
    private final zzle zzb;

    public zzky() {
        zzle zzleVar;
        zzle[] zzleVarArr = new zzle[2];
        zzleVarArr[0] = zzju.zza();
        try {
            zzleVar = (zzle) Class.forName("com.google.protobuf.DescriptorMessageInfoFactory").getDeclaredMethod("getInstance", new Class[0]).invoke(null, new Object[0]);
        } catch (Exception unused) {
            zzleVar = zza;
        }
        zzleVarArr[1] = zzleVar;
        zzkx zzkxVar = new zzkx(zzleVarArr);
        zzkh.zzf(zzkxVar, "messageInfoFactory");
        this.zzb = zzkxVar;
    }

    private static boolean zzb(zzld zzldVar) {
        return zzldVar.zzc() == 1;
    }

    @Override // com.google.android.gms.internal.measurement.zzls
    public final <T> zzlr<T> zza(Class<T> cls) {
        zzlt.zzG(cls);
        zzld zzb = this.zzb.zzb(cls);
        if (zzb.zzb()) {
            if (zzjz.class.isAssignableFrom(cls)) {
                return zzlk.zzc(zzlt.zzB(), zzjo.zzb(), zzb.zza());
            }
            return zzlk.zzc(zzlt.zzz(), zzjo.zza(), zzb.zza());
        }
        if (zzjz.class.isAssignableFrom(cls)) {
            if (zzb(zzb)) {
                return zzlj.zzk(cls, zzb, zzlm.zzb(), zzku.zzd(), zzlt.zzB(), zzjo.zzb(), zzlc.zzb());
            }
            return zzlj.zzk(cls, zzb, zzlm.zzb(), zzku.zzd(), zzlt.zzB(), null, zzlc.zzb());
        }
        if (zzb(zzb)) {
            return zzlj.zzk(cls, zzb, zzlm.zza(), zzku.zzc(), zzlt.zzz(), zzjo.zza(), zzlc.zza());
        }
        return zzlj.zzk(cls, zzb, zzlm.zza(), zzku.zzc(), zzlt.zzA(), null, zzlc.zza());
    }
}
