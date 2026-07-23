.class public final Lcom/google/android/gms/internal/ads/zzcts;
.super Lcom/google/android/gms/internal/ads/zzbew;
.source "com.google.android.gms:play-services-ads@@24.9.0"


# instance fields
.field private final zza:Lcom/google/android/gms/internal/ads/zzctr;

.field private final zzb:Lcom/google/android/gms/ads/internal/client/zzbx;

.field private final zzc:Lcom/google/android/gms/internal/ads/zzfer;

.field private zzd:Z

.field private final zze:Lcom/google/android/gms/internal/ads/zzdxz;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzctr;Lcom/google/android/gms/ads/internal/client/zzbx;Lcom/google/android/gms/internal/ads/zzfer;Lcom/google/android/gms/internal/ads/zzdxz;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzbew;-><init>()V

    .line 2
    sget-object v0, Lcom/google/android/gms/internal/ads/zzbhe;->zzbn:Lcom/google/android/gms/internal/ads/zzbgv;

    .line 3
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzbd;->zzc()Lcom/google/android/gms/internal/ads/zzbhc;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/zzbhc;->zzd(Lcom/google/android/gms/internal/ads/zzbgv;)Ljava/lang/Object;

    move-result-object v0

    .line 2
    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzcts;->zzd:Z

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzcts;->zza:Lcom/google/android/gms/internal/ads/zzctr;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzcts;->zzb:Lcom/google/android/gms/ads/internal/client/zzbx;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzcts;->zzc:Lcom/google/android/gms/internal/ads/zzfer;

    iput-object p4, p0, Lcom/google/android/gms/internal/ads/zzcts;->zze:Lcom/google/android/gms/internal/ads/zzdxz;

    return-void
.end method


# virtual methods
.method public final zze()Lcom/google/android/gms/ads/internal/client/zzbx;
    .locals 1

    .line 0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcts;->zzb:Lcom/google/android/gms/ads/internal/client/zzbx;

    return-object v0
.end method

.method public final zzf(Lcom/google/android/gms/dynamic/IObjectWrapper;Lcom/google/android/gms/internal/ads/zzbfe;)V
    .locals 2

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcts;->zzc:Lcom/google/android/gms/internal/ads/zzfer;

    invoke-virtual {v0, p2}, Lcom/google/android/gms/internal/ads/zzfer;->zzp(Lcom/google/android/gms/internal/ads/zzbfe;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcts;->zza:Lcom/google/android/gms/internal/ads/zzctr;

    .line 2
    invoke-static {p1}, Lcom/google/android/gms/dynamic/ObjectWrapper;->unwrap(Lcom/google/android/gms/dynamic/IObjectWrapper;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/Activity;

    iget-boolean v1, p0, Lcom/google/android/gms/internal/ads/zzcts;->zzd:Z

    invoke-virtual {v0, p1, p2, v1}, Lcom/google/android/gms/internal/ads/zzctr;->zzb(Landroid/app/Activity;Lcom/google/android/gms/internal/ads/zzbfe;Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 3
    sget p2, Lcom/google/android/gms/ads/internal/util/zze;->$r8$clinit:I

    const-string p2, "#007 Could not call remote method."

    .line 4
    invoke-static {p2, p1}, Lcom/google/android/gms/ads/internal/util/client/zzo;->zzl(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public final zzg()Lcom/google/android/gms/ads/internal/client/zzea;
    .locals 2

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/ads/zzbhe;->zzhG:Lcom/google/android/gms/internal/ads/zzbgv;

    .line 2
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzbd;->zzc()Lcom/google/android/gms/internal/ads/zzbhc;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/zzbhc;->zzd(Lcom/google/android/gms/internal/ads/zzbgv;)Ljava/lang/Object;

    move-result-object v0

    .line 1
    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcts;->zza:Lcom/google/android/gms/internal/ads/zzctr;

    .line 3
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzcwf;->zzn()Lcom/google/android/gms/internal/ads/zzday;

    move-result-object v0

    return-object v0
.end method

.method public final zzh(Z)V
    .locals 0

    .line 0
    iput-boolean p1, p0, Lcom/google/android/gms/internal/ads/zzcts;->zzd:Z

    return-void
.end method

.method public final zzi(Lcom/google/android/gms/ads/internal/client/zzdt;)V
    .locals 2

    .line 1
    const-string v0, "setOnPaidEventListener must be called on the main UI thread."

    invoke-static {v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkMainThread(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcts;->zzc:Lcom/google/android/gms/internal/ads/zzfer;

    if-eqz v0, :cond_1

    .line 2
    :try_start_0
    invoke-interface {p1}, Lcom/google/android/gms/ads/internal/client/zzdt;->zzf()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcts;->zze:Lcom/google/android/gms/internal/ads/zzdxz;

    .line 3
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzdxz;->zzb()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 4
    sget v1, Lcom/google/android/gms/ads/internal/util/zze;->$r8$clinit:I

    const-string v1, "Error in making CSI ping for reporting paid event callback"

    .line 5
    invoke-static {v1, v0}, Lcom/google/android/gms/ads/internal/util/client/zzo;->zze(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 3
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcts;->zzc:Lcom/google/android/gms/internal/ads/zzfer;

    .line 6
    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzfer;->zzr(Lcom/google/android/gms/ads/internal/client/zzdt;)V

    :cond_1
    return-void
.end method

.method public final zzj()Ljava/lang/String;
    .locals 2

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcts;->zzb:Lcom/google/android/gms/ads/internal/client/zzbx;

    invoke-interface {v0}, Lcom/google/android/gms/ads/internal/client/zzbx;->zzu()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 2
    sget v1, Lcom/google/android/gms/ads/internal/util/zze;->$r8$clinit:I

    const-string v1, "#007 Could not call remote method."

    .line 3
    invoke-static {v1, v0}, Lcom/google/android/gms/ads/internal/util/client/zzo;->zzl(Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 v0, 0x0

    return-object v0
.end method

.method public final zzk()J
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcts;->zza:Lcom/google/android/gms/internal/ads/zzctr;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzcwf;->zzo()Lcom/google/android/gms/internal/ads/zzczz;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzcwf;->zzo()Lcom/google/android/gms/internal/ads/zzczz;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzczz;->zza()J

    move-result-wide v0

    return-wide v0

    :cond_0
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public final zzl(J)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcts;->zza:Lcom/google/android/gms/internal/ads/zzctr;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzcwf;->zzo()Lcom/google/android/gms/internal/ads/zzczz;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzcwf;->zzo()Lcom/google/android/gms/internal/ads/zzczz;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/internal/ads/zzczz;->zzb(J)V

    :cond_0
    return-void
.end method
