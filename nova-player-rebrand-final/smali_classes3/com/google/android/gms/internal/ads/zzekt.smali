.class final Lcom/google/android/gms/internal/ads/zzekt;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.9.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzdmc;


# instance fields
.field private final zza:Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;

.field private final zzb:Lcom/google/common/util/concurrent/ListenableFuture;

.field private final zzc:Lcom/google/android/gms/internal/ads/zzfir;

.field private final zzd:Lcom/google/android/gms/internal/ads/zzcjl;

.field private final zze:Lcom/google/android/gms/internal/ads/zzfjk;

.field private final zzf:Lcom/google/android/gms/internal/ads/zzbok;

.field private final zzg:Z

.field private final zzh:Lcom/google/android/gms/internal/ads/zzejf;

.field private final zzi:Lcom/google/android/gms/internal/ads/zzdxz;


# direct methods
.method constructor <init>(Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;Lcom/google/common/util/concurrent/ListenableFuture;Lcom/google/android/gms/internal/ads/zzfir;Lcom/google/android/gms/internal/ads/zzcjl;Lcom/google/android/gms/internal/ads/zzfjk;ZLcom/google/android/gms/internal/ads/zzbok;Lcom/google/android/gms/internal/ads/zzejf;Lcom/google/android/gms/internal/ads/zzdxz;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzekt;->zza:Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzekt;->zzb:Lcom/google/common/util/concurrent/ListenableFuture;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzekt;->zzc:Lcom/google/android/gms/internal/ads/zzfir;

    iput-object p4, p0, Lcom/google/android/gms/internal/ads/zzekt;->zzd:Lcom/google/android/gms/internal/ads/zzcjl;

    iput-object p5, p0, Lcom/google/android/gms/internal/ads/zzekt;->zze:Lcom/google/android/gms/internal/ads/zzfjk;

    iput-boolean p6, p0, Lcom/google/android/gms/internal/ads/zzekt;->zzg:Z

    iput-object p7, p0, Lcom/google/android/gms/internal/ads/zzekt;->zzf:Lcom/google/android/gms/internal/ads/zzbok;

    iput-object p8, p0, Lcom/google/android/gms/internal/ads/zzekt;->zzh:Lcom/google/android/gms/internal/ads/zzejf;

    iput-object p9, p0, Lcom/google/android/gms/internal/ads/zzekt;->zzi:Lcom/google/android/gms/internal/ads/zzdxz;

    return-void
.end method


# virtual methods
.method public final zza(ZLandroid/content/Context;Lcom/google/android/gms/internal/ads/zzdbs;)V
    .locals 17

    move-object/from16 v0, p0

    .line 1
    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzekt;->zzb:Lcom/google/common/util/concurrent/ListenableFuture;

    invoke-static {v1}, Lcom/google/android/gms/internal/ads/zzgzo;->zzt(Ljava/util/concurrent/Future;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/ads/zzcti;

    iget-object v6, v0, Lcom/google/android/gms/internal/ads/zzekt;->zzd:Lcom/google/android/gms/internal/ads/zzcjl;

    const/4 v2, 0x1

    .line 2
    invoke-interface {v6, v2}, Lcom/google/android/gms/internal/ads/zzcjl;->zzag(Z)V

    .line 3
    new-instance v7, Lcom/google/android/gms/ads/internal/zzl;

    iget-boolean v3, v0, Lcom/google/android/gms/internal/ads/zzekt;->zzg:Z

    if-eqz v3, :cond_0

    iget-object v4, v0, Lcom/google/android/gms/internal/ads/zzekt;->zzf:Lcom/google/android/gms/internal/ads/zzbok;

    .line 4
    invoke-virtual {v4, v2}, Lcom/google/android/gms/internal/ads/zzbok;->zzc(Z)Z

    move-result v4

    move v8, v4

    goto :goto_0

    :cond_0
    move v8, v2

    :goto_0
    const/4 v4, 0x0

    if-eqz v3, :cond_1

    iget-object v5, v0, Lcom/google/android/gms/internal/ads/zzekt;->zzf:Lcom/google/android/gms/internal/ads/zzbok;

    invoke-virtual {v5}, Lcom/google/android/gms/internal/ads/zzbok;->zzd()Z

    move-result v5

    if-eqz v5, :cond_1

    move v10, v2

    goto :goto_1

    :cond_1
    move v10, v4

    :goto_1
    if-eqz v3, :cond_2

    iget-object v3, v0, Lcom/google/android/gms/internal/ads/zzekt;->zzf:Lcom/google/android/gms/internal/ads/zzbok;

    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/zzbok;->zze()F

    move-result v3

    :goto_2
    move v11, v3

    goto :goto_3

    :cond_2
    const/4 v3, 0x0

    goto :goto_2

    :goto_3
    iget-object v3, v0, Lcom/google/android/gms/internal/ads/zzekt;->zzc:Lcom/google/android/gms/internal/ads/zzfir;

    .line 5
    iget-boolean v14, v3, Lcom/google/android/gms/internal/ads/zzfir;->zzO:Z

    const/4 v15, 0x0

    const/4 v9, 0x1

    const/4 v12, -0x1

    move/from16 v13, p1

    invoke-direct/range {v7 .. v15}, Lcom/google/android/gms/ads/internal/zzl;-><init>(ZZZFIZZZ)V

    if-eqz p3, :cond_3

    .line 6
    invoke-virtual/range {p3 .. p3}, Lcom/google/android/gms/internal/ads/zzdbs;->zzb()V

    .line 7
    :cond_3
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzt;->zzb()Lcom/google/android/gms/ads/internal/overlay/zzn;

    new-instance v4, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;

    .line 8
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzcti;->zzj()Lcom/google/android/gms/internal/ads/zzdlr;

    move-result-object v1

    .line 9
    iget v5, v3, Lcom/google/android/gms/internal/ads/zzfir;->zzQ:I

    const/4 v8, -0x1

    if-eq v5, v8, :cond_4

    goto :goto_4

    .line 15
    :cond_4
    iget-object v8, v0, Lcom/google/android/gms/internal/ads/zzekt;->zze:Lcom/google/android/gms/internal/ads/zzfjk;

    iget-object v8, v8, Lcom/google/android/gms/internal/ads/zzfjk;->zzk:Lcom/google/android/gms/ads/internal/client/zzx;

    if-eqz v8, :cond_6

    iget v8, v8, Lcom/google/android/gms/ads/internal/client/zzx;->zza:I

    if-ne v8, v2, :cond_5

    const/4 v5, 0x7

    goto :goto_4

    :cond_5
    const/4 v9, 0x2

    if-ne v8, v9, :cond_6

    const/4 v5, 0x6

    goto :goto_4

    .line 10
    :cond_6
    sget v8, Lcom/google/android/gms/ads/internal/util/zze;->$r8$clinit:I

    const-string v8, "Error setting app open orientation; no targeting orientation available."

    .line 11
    invoke-static {v8}, Lcom/google/android/gms/ads/internal/util/client/zzo;->zzd(Ljava/lang/String;)V

    .line 9
    :goto_4
    iget-object v8, v0, Lcom/google/android/gms/internal/ads/zzekt;->zza:Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;

    .line 12
    iget-object v9, v3, Lcom/google/android/gms/internal/ads/zzfir;->zzB:Ljava/lang/String;

    iget-object v10, v3, Lcom/google/android/gms/internal/ads/zzfir;->zzs:Lcom/google/android/gms/internal/ads/zzfiw;

    iget-object v11, v10, Lcom/google/android/gms/internal/ads/zzfiw;->zzb:Ljava/lang/String;

    iget-object v12, v10, Lcom/google/android/gms/internal/ads/zzfiw;->zza:Ljava/lang/String;

    iget-object v10, v0, Lcom/google/android/gms/internal/ads/zzekt;->zze:Lcom/google/android/gms/internal/ads/zzfjk;

    .line 13
    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/zzfir;->zzb()Z

    move-result v3

    if-eqz v3, :cond_7

    iget-object v3, v0, Lcom/google/android/gms/internal/ads/zzekt;->zzh:Lcom/google/android/gms/internal/ads/zzejf;

    :goto_5
    move-object v15, v3

    goto :goto_6

    :cond_7
    const/4 v3, 0x0

    goto :goto_5

    :goto_6
    iget-object v13, v10, Lcom/google/android/gms/internal/ads/zzfjk;->zzg:Ljava/lang/String;

    .line 14
    invoke-interface {v6}, Lcom/google/android/gms/internal/ads/zzcge;->zzn()Ljava/lang/String;

    move-result-object v16

    const/4 v3, 0x0

    move-object v10, v7

    move v7, v5

    const/4 v5, 0x0

    move-object v14, v4

    move-object v4, v1

    move v1, v2

    move-object v2, v14

    move-object/from16 v14, p3

    invoke-direct/range {v2 .. v16}, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;-><init>(Lcom/google/android/gms/ads/internal/client/zza;Lcom/google/android/gms/ads/internal/overlay/zzr;Lcom/google/android/gms/ads/internal/overlay/zzad;Lcom/google/android/gms/internal/ads/zzcjl;ILcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;Ljava/lang/String;Lcom/google/android/gms/ads/internal/zzl;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzdbs;Lcom/google/android/gms/internal/ads/zzbxl;Ljava/lang/String;)V

    iget-object v3, v0, Lcom/google/android/gms/internal/ads/zzekt;->zzi:Lcom/google/android/gms/internal/ads/zzdxz;

    move-object/from16 v4, p2

    .line 15
    invoke-static {v4, v2, v1, v3}, Lcom/google/android/gms/ads/internal/overlay/zzn;->zza(Landroid/content/Context;Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;ZLcom/google/android/gms/internal/ads/zzdxz;)V

    return-void
.end method

.method public final zzb()Lcom/google/android/gms/internal/ads/zzfir;
    .locals 1

    .line 0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzekt;->zzc:Lcom/google/android/gms/internal/ads/zzfir;

    return-object v0
.end method
