package com.google.android.gms.measurement.internal;

import android.util.Log;
import com.google.android.gms.internal.measurement.zzoh;
import java.util.HashSet;
import java.util.Iterator;
import s.a;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: com.google.android.gms:play-services-measurement@@19.0.2 */
/* loaded from: classes.dex */
public final class zzw extends zzx {
    public final /* synthetic */ zzz zza;
    private final com.google.android.gms.internal.measurement.zzej zzh;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public zzw(zzz zzzVar, String str, int i10, com.google.android.gms.internal.measurement.zzej zzejVar) {
        super(str, i10);
        this.zza = zzzVar;
        this.zzh = zzejVar;
    }

    @Override // com.google.android.gms.measurement.internal.zzx
    public final int zza() {
        return this.zzh.zzb();
    }

    @Override // com.google.android.gms.measurement.internal.zzx
    public final boolean zzb() {
        return this.zzh.zzo();
    }

    @Override // com.google.android.gms.measurement.internal.zzx
    public final boolean zzc() {
        return false;
    }

    /* JADX WARN: Removed duplicated region for block: B:37:0x03ef  */
    /* JADX WARN: Removed duplicated region for block: B:40:0x03fa A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:41:0x03fb  */
    /* JADX WARN: Removed duplicated region for block: B:61:0x03f2  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final boolean zzd(Long l10, Long l11, com.google.android.gms.internal.measurement.zzfo zzfoVar, long j10, zzap zzapVar, boolean z10) {
        Boolean zzi;
        zzoh.zzc();
        boolean zzs = this.zza.zzs.zzf().zzs(this.zzb, zzdy.zzY);
        long j11 = this.zzh.zzn() ? zzapVar.zze : j10;
        r5 = null;
        r5 = null;
        r5 = null;
        r5 = null;
        r5 = null;
        r5 = null;
        r5 = null;
        r5 = null;
        r5 = null;
        r5 = null;
        r5 = null;
        Boolean bool = null;
        if (Log.isLoggable(this.zza.zzs.zzay().zzq(), 2)) {
            this.zza.zzs.zzay().zzj().zzd("Evaluating filter. audience, filter, event", Integer.valueOf(this.zzc), this.zzh.zzp() ? Integer.valueOf(this.zzh.zzb()) : null, this.zza.zzs.zzj().zzd(this.zzh.zzg()));
            this.zza.zzs.zzay().zzj().zzb("Filter definition", this.zza.zzf.zzu().zzo(this.zzh));
        }
        if (!this.zzh.zzp() || this.zzh.zzb() > 256) {
            this.zza.zzs.zzay().zzk().zzc("Invalid event filter ID. appId, id", zzel.zzn(this.zzb), String.valueOf(this.zzh.zzp() ? Integer.valueOf(this.zzh.zzb()) : null));
            return false;
        }
        boolean z11 = this.zzh.zzk() || this.zzh.zzm() || this.zzh.zzn();
        if (z10 && !z11) {
            this.zza.zzs.zzay().zzj().zzc("Event filter already evaluated true and it is not associated with an enhanced audience. audience ID, filter ID", Integer.valueOf(this.zzc), this.zzh.zzp() ? Integer.valueOf(this.zzh.zzb()) : null);
            return true;
        }
        com.google.android.gms.internal.measurement.zzej zzejVar = this.zzh;
        String zzh = zzfoVar.zzh();
        if (zzejVar.zzo()) {
            Boolean zzh2 = zzx.zzh(j11, zzejVar.zzf());
            if (zzh2 != null) {
                if (!zzh2.booleanValue()) {
                    bool = Boolean.FALSE;
                }
            }
            this.zza.zzs.zzay().zzj().zzb("Event filter result", bool != null ? "null" : bool);
            if (bool != null) {
                return false;
            }
            Boolean bool2 = Boolean.TRUE;
            this.zzd = bool2;
            if (!bool.booleanValue()) {
                return true;
            }
            this.zze = bool2;
            if (z11 && zzfoVar.zzu()) {
                Long valueOf = Long.valueOf(zzfoVar.zzd());
                if (this.zzh.zzm()) {
                    if (zzs && this.zzh.zzo()) {
                        valueOf = l10;
                    }
                    this.zzg = valueOf;
                } else {
                    if (zzs && this.zzh.zzo()) {
                        valueOf = l11;
                    }
                    this.zzf = valueOf;
                }
            }
            return true;
        }
        HashSet hashSet = new HashSet();
        Iterator<com.google.android.gms.internal.measurement.zzel> it2 = zzejVar.zzh().iterator();
        while (true) {
            if (it2.hasNext()) {
                com.google.android.gms.internal.measurement.zzel next = it2.next();
                if (next.zze().isEmpty()) {
                    this.zza.zzs.zzay().zzk().zzb("null or empty param name in filter. event", this.zza.zzs.zzj().zzd(zzh));
                    break;
                }
                hashSet.add(next.zze());
            } else {
                a aVar = new a();
                Iterator<com.google.android.gms.internal.measurement.zzfs> it3 = zzfoVar.zzi().iterator();
                while (true) {
                    if (it3.hasNext()) {
                        com.google.android.gms.internal.measurement.zzfs next2 = it3.next();
                        if (hashSet.contains(next2.zzg())) {
                            if (next2.zzw()) {
                                aVar.put(next2.zzg(), next2.zzw() ? Long.valueOf(next2.zzd()) : null);
                            } else if (next2.zzu()) {
                                aVar.put(next2.zzg(), next2.zzu() ? Double.valueOf(next2.zza()) : null);
                            } else if (next2.zzy()) {
                                aVar.put(next2.zzg(), next2.zzh());
                            } else {
                                this.zza.zzs.zzay().zzk().zzc("Unknown value for param. event, param", this.zza.zzs.zzj().zzd(zzh), this.zza.zzs.zzj().zze(next2.zzg()));
                                break;
                            }
                        }
                    } else {
                        Iterator<com.google.android.gms.internal.measurement.zzel> it4 = zzejVar.zzh().iterator();
                        while (true) {
                            if (it4.hasNext()) {
                                com.google.android.gms.internal.measurement.zzel next3 = it4.next();
                                boolean z12 = next3.zzh() && next3.zzg();
                                String zze = next3.zze();
                                if (zze.isEmpty()) {
                                    this.zza.zzs.zzay().zzk().zzb("Event has empty param name. event", this.zza.zzs.zzj().zzd(zzh));
                                    break;
                                }
                                Object obj = aVar.get(zze);
                                if (obj instanceof Long) {
                                    if (!next3.zzi()) {
                                        this.zza.zzs.zzay().zzk().zzc("No number filter for long param. event, param", this.zza.zzs.zzj().zzd(zzh), this.zza.zzs.zzj().zze(zze));
                                        break;
                                    }
                                    Boolean zzh3 = zzx.zzh(((Long) obj).longValue(), next3.zzc());
                                    if (zzh3 == null) {
                                        break;
                                    }
                                    if (zzh3.booleanValue() == z12) {
                                        bool = Boolean.FALSE;
                                        break;
                                    }
                                } else if (obj instanceof Double) {
                                    if (!next3.zzi()) {
                                        this.zza.zzs.zzay().zzk().zzc("No number filter for double param. event, param", this.zza.zzs.zzj().zzd(zzh), this.zza.zzs.zzj().zze(zze));
                                        break;
                                    }
                                    Boolean zzg = zzx.zzg(((Double) obj).doubleValue(), next3.zzc());
                                    if (zzg == null) {
                                        break;
                                    }
                                    if (zzg.booleanValue() == z12) {
                                        bool = Boolean.FALSE;
                                        break;
                                    }
                                } else if (obj instanceof String) {
                                    if (next3.zzk()) {
                                        zzi = zzx.zzf((String) obj, next3.zzd(), this.zza.zzs.zzay());
                                    } else if (next3.zzi()) {
                                        String str = (String) obj;
                                        if (zzku.zzy(str)) {
                                            zzi = zzx.zzi(str, next3.zzc());
                                        } else {
                                            this.zza.zzs.zzay().zzk().zzc("Invalid param value for number filter. event, param", this.zza.zzs.zzj().zzd(zzh), this.zza.zzs.zzj().zze(zze));
                                            break;
                                        }
                                    } else {
                                        this.zza.zzs.zzay().zzk().zzc("No filter for String param. event, param", this.zza.zzs.zzj().zzd(zzh), this.zza.zzs.zzj().zze(zze));
                                        break;
                                    }
                                    if (zzi == null) {
                                        break;
                                    }
                                    if (zzi.booleanValue() == z12) {
                                        bool = Boolean.FALSE;
                                        break;
                                    }
                                } else if (obj == null) {
                                    this.zza.zzs.zzay().zzj().zzc("Missing param for filter. event, param", this.zza.zzs.zzj().zzd(zzh), this.zza.zzs.zzj().zze(zze));
                                    bool = Boolean.FALSE;
                                } else {
                                    this.zza.zzs.zzay().zzk().zzc("Unknown param type. event, param", this.zza.zzs.zzj().zzd(zzh), this.zza.zzs.zzj().zze(zze));
                                }
                            } else {
                                bool = Boolean.TRUE;
                                break;
                            }
                        }
                    }
                }
            }
        }
        this.zza.zzs.zzay().zzj().zzb("Event filter result", bool != null ? "null" : bool);
        if (bool != null) {
        }
    }
}
