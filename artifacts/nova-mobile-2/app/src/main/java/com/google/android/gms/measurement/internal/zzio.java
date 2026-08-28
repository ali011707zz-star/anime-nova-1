package com.google.android.gms.measurement.internal;

import android.app.Activity;
import android.os.Bundle;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.common.util.VisibleForTesting;
import com.google.android.gms.measurement.api.AppMeasurementSdk;
import com.twitter.sdk.android.core.identity.AuthHandler;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;

/* compiled from: com.google.android.gms:play-services-measurement-impl@@19.0.2 */
/* loaded from: classes.dex */
public final class zzio extends zzf {

    @VisibleForTesting
    public zzih zza;
    private volatile zzih zzb;
    private volatile zzih zzc;
    private final Map<Activity, zzih> zzd;
    private Activity zze;
    private volatile boolean zzf;
    private volatile zzih zzg;
    private zzih zzh;
    private boolean zzi;
    private final Object zzj;
    private zzih zzk;
    private String zzl;

    public zzio(zzfv zzfvVar) {
        super(zzfvVar);
        this.zzj = new Object();
        this.zzd = new ConcurrentHashMap();
    }

    private final void zzA(Activity activity, zzih zzihVar, boolean z10) {
        zzih zzihVar2;
        zzih zzihVar3 = this.zzb == null ? this.zzc : this.zzb;
        if (zzihVar.zzb == null) {
            zzihVar2 = new zzih(zzihVar.zza, activity != null ? zzl(activity.getClass(), "Activity") : null, zzihVar.zzc, zzihVar.zze, zzihVar.zzf);
        } else {
            zzihVar2 = zzihVar;
        }
        this.zzc = this.zzb;
        this.zzb = zzihVar2;
        this.zzs.zzaz().zzp(new zzij(this, zzihVar2, zzihVar3, this.zzs.zzav().elapsedRealtime(), z10));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void zzB(zzih zzihVar, zzih zzihVar2, long j10, boolean z10, Bundle bundle) {
        Bundle bundle2;
        long j11;
        long j12;
        zzg();
        boolean z11 = false;
        boolean z12 = (zzihVar2 != null && zzihVar2.zzc == zzihVar.zzc && zzkz.zzak(zzihVar2.zzb, zzihVar.zzb) && zzkz.zzak(zzihVar2.zza, zzihVar.zza)) ? false : true;
        if (z10 && this.zza != null) {
            z11 = true;
        }
        if (z12) {
            if (bundle != null) {
                bundle2 = new Bundle(bundle);
            } else {
                bundle2 = new Bundle();
            }
            Bundle bundle3 = bundle2;
            zzkz.zzJ(zzihVar, bundle3, true);
            if (zzihVar2 != null) {
                String str = zzihVar2.zza;
                if (str != null) {
                    bundle3.putString("_pn", str);
                }
                String str2 = zzihVar2.zzb;
                if (str2 != null) {
                    bundle3.putString("_pc", str2);
                }
                bundle3.putLong("_pi", zzihVar2.zzc);
            }
            if (z11) {
                zzkb zzkbVar = this.zzs.zzu().zzb;
                long j13 = j10 - zzkbVar.zzb;
                zzkbVar.zzb = j10;
                if (j13 > 0) {
                    this.zzs.zzv().zzH(bundle3, j13);
                }
            }
            if (!this.zzs.zzf().zzu()) {
                bundle3.putLong("_mst", 1L);
            }
            String str3 = true != zzihVar.zze ? "auto" : "app";
            long currentTimeMillis = this.zzs.zzav().currentTimeMillis();
            if (zzihVar.zze) {
                j11 = currentTimeMillis;
                long j14 = zzihVar.zzf;
                if (j14 != 0) {
                    j12 = j14;
                    this.zzs.zzq().zzH(str3, "_vs", j12, bundle3);
                }
            } else {
                j11 = currentTimeMillis;
            }
            j12 = j11;
            this.zzs.zzq().zzH(str3, "_vs", j12, bundle3);
        }
        if (z11) {
            zzC(this.zza, true, j10);
        }
        this.zza = zzihVar;
        if (zzihVar.zze) {
            this.zzh = zzihVar;
        }
        this.zzs.zzt().zzG(zzihVar);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void zzC(zzih zzihVar, boolean z10, long j10) {
        this.zzs.zzd().zzf(this.zzs.zzav().elapsedRealtime());
        if (!this.zzs.zzu().zzb.zzd(zzihVar != null && zzihVar.zzd, z10, j10) || zzihVar == null) {
            return;
        }
        zzihVar.zzd = false;
    }

    public static /* bridge */ /* synthetic */ void zzp(zzio zzioVar, Bundle bundle, zzih zzihVar, zzih zzihVar2, long j10) {
        bundle.remove(AuthHandler.EXTRA_SCREEN_NAME);
        bundle.remove("screen_class");
        zzioVar.zzB(zzihVar, zzihVar2, j10, true, zzioVar.zzs.zzv().zzy(null, "screen_view", bundle, null, false));
    }

    private final zzih zzz(Activity activity) {
        Preconditions.checkNotNull(activity);
        zzih zzihVar = this.zzd.get(activity);
        if (zzihVar == null) {
            zzih zzihVar2 = new zzih(null, zzl(activity.getClass(), "Activity"), this.zzs.zzv().zzq());
            this.zzd.put(activity, zzihVar2);
            zzihVar = zzihVar2;
        }
        return this.zzg != null ? this.zzg : zzihVar;
    }

    @Override // com.google.android.gms.measurement.internal.zzf
    public final boolean zzf() {
        return false;
    }

    public final zzih zzi() {
        return this.zzb;
    }

    public final zzih zzj(boolean z10) {
        zza();
        zzg();
        if (!z10) {
            return this.zza;
        }
        zzih zzihVar = this.zza;
        return zzihVar != null ? zzihVar : this.zzh;
    }

    @VisibleForTesting
    public final String zzl(Class<?> cls, String str) {
        String canonicalName = cls.getCanonicalName();
        if (canonicalName == null) {
            return "Activity";
        }
        String[] split = canonicalName.split("\\.");
        int length = split.length;
        String str2 = length > 0 ? split[length - 1] : "";
        int length2 = str2.length();
        this.zzs.zzf();
        if (length2 <= 100) {
            return str2;
        }
        this.zzs.zzf();
        return str2.substring(0, 100);
    }

    public final void zzr(Activity activity, Bundle bundle) {
        Bundle bundle2;
        if (!this.zzs.zzf().zzu() || bundle == null || (bundle2 = bundle.getBundle("com.google.app_measurement.screen_service")) == null) {
            return;
        }
        this.zzd.put(activity, new zzih(bundle2.getString(AppMeasurementSdk.ConditionalUserProperty.NAME), bundle2.getString("referrer_name"), bundle2.getLong("id")));
    }

    public final void zzs(Activity activity) {
        synchronized (this.zzj) {
            if (activity == this.zze) {
                this.zze = null;
            }
        }
        if (this.zzs.zzf().zzu()) {
            this.zzd.remove(activity);
        }
    }

    public final void zzt(Activity activity) {
        synchronized (this.zzj) {
            this.zzi = false;
            this.zzf = true;
        }
        long elapsedRealtime = this.zzs.zzav().elapsedRealtime();
        if (!this.zzs.zzf().zzu()) {
            this.zzb = null;
            this.zzs.zzaz().zzp(new zzil(this, elapsedRealtime));
        } else {
            zzih zzz = zzz(activity);
            this.zzc = this.zzb;
            this.zzb = null;
            this.zzs.zzaz().zzp(new zzim(this, zzz, elapsedRealtime));
        }
    }

    public final void zzu(Activity activity) {
        synchronized (this.zzj) {
            this.zzi = true;
            if (activity != this.zze) {
                synchronized (this.zzj) {
                    this.zze = activity;
                    this.zzf = false;
                }
                if (this.zzs.zzf().zzu()) {
                    this.zzg = null;
                    this.zzs.zzaz().zzp(new zzin(this));
                }
            }
        }
        if (!this.zzs.zzf().zzu()) {
            this.zzb = this.zzg;
            this.zzs.zzaz().zzp(new zzik(this));
        } else {
            zzA(activity, zzz(activity), false);
            zzd zzd = this.zzs.zzd();
            zzd.zzs.zzaz().zzp(new zzc(zzd, zzd.zzs.zzav().elapsedRealtime()));
        }
    }

    public final void zzv(Activity activity, Bundle bundle) {
        zzih zzihVar;
        if (!this.zzs.zzf().zzu() || bundle == null || (zzihVar = this.zzd.get(activity)) == null) {
            return;
        }
        Bundle bundle2 = new Bundle();
        bundle2.putLong("id", zzihVar.zzc);
        bundle2.putString(AppMeasurementSdk.ConditionalUserProperty.NAME, zzihVar.zza);
        bundle2.putString("referrer_name", zzihVar.zzb);
        bundle.putBundle("com.google.app_measurement.screen_service", bundle2);
    }

    /* JADX WARN: Code restructure failed: missing block: B:26:0x0088, code lost:
    
        if (r1 <= 100) goto L31;
     */
    /* JADX WARN: Code restructure failed: missing block: B:33:0x00b4, code lost:
    
        if (r1 <= 100) goto L39;
     */
    @Deprecated
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final void zzw(Activity activity, String str, String str2) {
        if (!this.zzs.zzf().zzu()) {
            this.zzs.zzay().zzl().zza("setCurrentScreen cannot be called while screen reporting is disabled.");
            return;
        }
        zzih zzihVar = this.zzb;
        if (zzihVar == null) {
            this.zzs.zzay().zzl().zza("setCurrentScreen cannot be called while no activity active");
            return;
        }
        if (this.zzd.get(activity) == null) {
            this.zzs.zzay().zzl().zza("setCurrentScreen must be called with an activity in the activity lifecycle");
            return;
        }
        if (str2 == null) {
            str2 = zzl(activity.getClass(), "Activity");
        }
        boolean zzak = zzkz.zzak(zzihVar.zzb, str2);
        boolean zzak2 = zzkz.zzak(zzihVar.zza, str);
        if (zzak && zzak2) {
            this.zzs.zzay().zzl().zza("setCurrentScreen cannot be called with the same class and name");
            return;
        }
        if (str != null) {
            if (str.length() > 0) {
                int length = str.length();
                this.zzs.zzf();
            }
            this.zzs.zzay().zzl().zzb("Invalid screen name length in setCurrentScreen. Length", Integer.valueOf(str.length()));
            return;
        }
        if (str2 != null) {
            if (str2.length() > 0) {
                int length2 = str2.length();
                this.zzs.zzf();
            }
            this.zzs.zzay().zzl().zzb("Invalid class name length in setCurrentScreen. Length", Integer.valueOf(str2.length()));
            return;
        }
        this.zzs.zzay().zzj().zzc("Setting current screen to name, class", str == null ? "null" : str, str2);
        zzih zzihVar2 = new zzih(str, str2, this.zzs.zzv().zzq());
        this.zzd.put(activity, zzihVar2);
        zzA(activity, zzihVar2, true);
    }

    /* JADX WARN: Code restructure failed: missing block: B:15:0x0031, code lost:
    
        if (r2 > 100) goto L15;
     */
    /* JADX WARN: Code restructure failed: missing block: B:24:0x0063, code lost:
    
        if (r4 > 100) goto L24;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final void zzx(Bundle bundle, long j10) {
        String str;
        synchronized (this.zzj) {
            if (!this.zzi) {
                this.zzs.zzay().zzl().zza("Cannot log screen view event when the app is in the background.");
                return;
            }
            String string = bundle.getString(AuthHandler.EXTRA_SCREEN_NAME);
            if (string != null) {
                if (string.length() > 0) {
                    int length = string.length();
                    this.zzs.zzf();
                }
                this.zzs.zzay().zzl().zzb("Invalid screen name length for screen view. Length", Integer.valueOf(string.length()));
                return;
            }
            String string2 = bundle.getString("screen_class");
            if (string2 != null) {
                if (string2.length() > 0) {
                    int length2 = string2.length();
                    this.zzs.zzf();
                }
                this.zzs.zzay().zzl().zzb("Invalid screen class length for screen view. Length", Integer.valueOf(string2.length()));
                return;
            }
            if (string2 == null) {
                Activity activity = this.zze;
                str = activity != null ? zzl(activity.getClass(), "Activity") : "Activity";
            } else {
                str = string2;
            }
            zzih zzihVar = this.zzb;
            if (this.zzf && zzihVar != null) {
                this.zzf = false;
                boolean zzak = zzkz.zzak(zzihVar.zzb, str);
                boolean zzak2 = zzkz.zzak(zzihVar.zza, string);
                if (zzak && zzak2) {
                    this.zzs.zzay().zzl().zza("Ignoring call to log screen view event with duplicate parameters.");
                    return;
                }
            }
            this.zzs.zzay().zzj().zzc("Logging screen view with name, class", string == null ? "null" : string, str == null ? "null" : str);
            zzih zzihVar2 = this.zzb == null ? this.zzc : this.zzb;
            zzih zzihVar3 = new zzih(string, str, this.zzs.zzv().zzq(), true, j10);
            this.zzb = zzihVar3;
            this.zzc = zzihVar2;
            this.zzg = zzihVar3;
            this.zzs.zzaz().zzp(new zzii(this, bundle, zzihVar3, zzihVar2, this.zzs.zzav().elapsedRealtime()));
        }
    }

    public final void zzy(String str, zzih zzihVar) {
        zzg();
        synchronized (this) {
            String str2 = this.zzl;
            if (str2 == null || str2.equals(str) || zzihVar != null) {
                this.zzl = str;
                this.zzk = zzihVar;
            }
        }
    }
}
