.class final Lcom/google/android/gms/internal/ads/zzema;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.9.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzdmc;


# instance fields
.field private final zza:Landroid/content/Context;

.field private final zzb:Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;

.field private final zzc:Lcom/google/common/util/concurrent/ListenableFuture;

.field private final zzd:Lcom/google/android/gms/internal/ads/zzfir;

.field private final zze:Lcom/google/android/gms/internal/ads/zzcjl;

.field private final zzf:Lcom/google/android/gms/internal/ads/zzfjk;

.field private final zzg:Lcom/google/android/gms/internal/ads/zzbok;

.field private final zzh:Z

.field private final zzi:Lcom/google/android/gms/internal/ads/zzejf;

.field private final zzj:Lcom/google/android/gms/internal/ads/zzdxz;


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;Lcom/google/common/util/concurrent/ListenableFuture;Lcom/google/android/gms/internal/ads/zzfir;Lcom/google/android/gms/internal/ads/zzcjl;Lcom/google/android/gms/internal/ads/zzfjk;ZLcom/google/android/gms/internal/ads/zzbok;Lcom/google/android/gms/internal/ads/zzejf;Lcom/google/android/gms/internal/ads/zzdxz;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzema;->zza:Landroid/content/Context;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzema;->zzb:Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzema;->zzc:Lcom/google/common/util/concurrent/ListenableFuture;

    iput-object p4, p0, Lcom/google/android/gms/internal/ads/zzema;->zzd:Lcom/google/android/gms/internal/ads/zzfir;

    iput-object p5, p0, Lcom/google/android/gms/internal/ads/zzema;->zze:Lcom/google/android/gms/internal/ads/zzcjl;

    iput-object p6, p0, Lcom/google/android/gms/internal/ads/zzema;->zzf:Lcom/google/android/gms/internal/ads/zzfjk;

    iput-object p8, p0, Lcom/google/android/gms/internal/ads/zzema;->zzg:Lcom/google/android/gms/internal/ads/zzbok;

    iput-boolean p7, p0, Lcom/google/android/gms/internal/ads/zzema;->zzh:Z

    iput-object p9, p0, Lcom/google/android/gms/internal/ads/zzema;->zzi:Lcom/google/android/gms/internal/ads/zzejf;

    iput-object p10, p0, Lcom/google/android/gms/internal/ads/zzema;->zzj:Lcom/google/android/gms/internal/ads/zzdxz;

    return-void
.end method


# virtual methods
.method public final zza(ZLandroid/content/Context;Lcom/google/android/gms/internal/ads/zzdbs;)V
    .locals 17

    move-object/from16 v0, p0

    .line 1
    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzema;->zzc:Lcom/google/common/util/concurrent/ListenableFuture;

    invoke-static {v1}, Lcom/google/android/gms/internal/ads/zzgzo;->zzt(Ljava/util/concurrent/Future;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/ads/zzdko;

    iget-object v6, v0, Lcom/google/android/gms/internal/ads/zzema;->zze:Lcom/google/android/gms/internal/ads/zzcjl;

    const/4 v2, 0x1

    .line 2
    invoke-interface {v6, v2}, Lcom/google/android/gms/internal/ads/zzcjl;->zzag(Z)V

    .line 3
    new-instance v7, Lcom/google/android/gms/ads/internal/zzl;

    iget-boolean v3, v0, Lcom/google/android/gms/internal/ads/zzema;->zzh:Z

    const/4 v4, 0x0

    if-eqz v3, :cond_0

    iget-object v5, v0, Lcom/google/android/gms/internal/ads/zzema;->zzg:Lcom/google/android/gms/internal/ads/zzbok;

    .line 4
    invoke-virtual {v5, v4}, Lcom/google/android/gms/internal/ads/zzbok;->zzc(Z)Z

    move-result v5

    move v8, v5

    goto :goto_0

    :cond_0
    move v8, v4

    .line 5
    :goto_0
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzt;->zzc()Lcom/google/android/gms/ads/internal/util/zzs;

    iget-object v5, v0, Lcom/google/android/gms/internal/ads/zzema;->zza:Landroid/content/Context;

    invoke-static {v5}, Lcom/google/android/gms/ads/internal/util/zzs;->zzN(Landroid/content/Context;)Z

    move-result v9

    if-eqz v3, :cond_1

    iget-object v5, v0, Lcom/google/android/gms/internal/ads/zzema;->zzg:Lcom/google/android/gms/internal/ads/zzbok;

    invoke-virtual {v5}, Lcom/google/android/gms/internal/ads/zzbok;->zzd()Z

    move-result v5

    if-eqz v5, :cond_1

    move v10, v2

    goto :goto_1

    :cond_1
    move v10, v4

    :goto_1
    if-eqz v3, :cond_2

    iget-object v3, v0, Lcom/google/android/gms/internal/ads/zzema;->zzg:Lcom/google/android/gms/internal/ads/zzbok;

    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/zzbok;->zze()F

    move-result v3

    :goto_2
    move v11, v3

    goto :goto_3

    :cond_2
    const/4 v3, 0x0

    goto :goto_2

    :goto_3
    iget-object v3, v0, Lcom/google/android/gms/internal/ads/zzema;->zzd:Lcom/google/android/gms/internal/ads/zzfir;

    .line 6
    iget-boolean v14, v3, Lcom/google/android/gms/internal/ads/zzfir;->zzO:Z

    const/4 v15, 0x0

    const/4 v12, -0x1

    move/from16 v13, p1

    invoke-direct/range {v7 .. v15}, Lcom/google/android/gms/ads/internal/zzl;-><init>(ZZZFIZZZ)V

    if-eqz p3, :cond_3

    .line 7
    invoke-virtual/range {p3 .. p3}, Lcom/google/android/gms/internal/ads/zzdbs;->zzb()V

    .line 8
    :cond_3
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzt;->zzb()Lcom/google/android/gms/ads/internal/overlay/zzn;

    move v4, v2

    new-instance v2, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;

    .line 9
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzdko;->zzj()Lcom/google/android/gms/internal/ads/zzdlr;

    move-result-object v1

    move-object v10, v7

    iget v7, v3, Lcom/google/android/gms/internal/ads/zzfir;->zzQ:I

    iget-object v8, v0, Lcom/google/android/gms/internal/ads/zzema;->zzb:Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;

    iget-object v9, v3, Lcom/google/android/gms/internal/ads/zzfir;->zzB:Ljava/lang/String;

    iget-object v5, v3, Lcom/google/android/gms/internal/ads/zzfir;->zzs:Lcom/google/android/gms/internal/ads/zzfiw;

    iget-object v11, v5, Lcom/google/android/gms/internal/ads/zzfiw;->zzb:Ljava/lang/String;

    iget-object v12, v5, Lcom/google/android/gms/internal/ads/zzfiw;->zza:Ljava/lang/String;

    iget-object v5, v0, Lcom/google/android/gms/internal/ads/zzema;->zzf:Lcom/google/android/gms/internal/ads/zzfjk;

    .line 10
    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/zzfir;->zzb()Z

    move-result v3

    if-eqz v3, :cond_4

    iget-object v3, v0, Lcom/google/android/gms/internal/ads/zzema;->zzi:Lcom/google/android/gms/internal/ads/zzejf;

    :goto_4
    move-object v15, v3

    goto :goto_5

    :cond_4
    const/4 v3, 0x0

    goto :goto_4

    :goto_5
    iget-object v13, v5, Lcom/google/android/gms/internal/ads/zzfjk;->zzg:Ljava/lang/String;

    .line 11
    invoke-interface {v6}, Lcom/google/android/gms/internal/ads/zzcge;->zzn()Ljava/lang/String;

    move-result-object v16

    const/4 v3, 0x0

    const/4 v5, 0x0

    move v14, v4

    move-object v4, v1

    move v1, v14

    move-object/from16 v14, p3

    invoke-direct/range {v2 .. v16}, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;-><init>(Lcom/google/android/gms/ads/internal/client/zza;Lcom/google/android/gms/ads/internal/overlay/zzr;Lcom/google/android/gms/ads/internal/overlay/zzad;Lcom/google/android/gms/internal/ads/zzcjl;ILcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;Ljava/lang/String;Lcom/google/android/gms/ads/internal/zzl;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzdbs;Lcom/google/android/gms/internal/ads/zzbxl;Ljava/lang/String;)V

    iget-object v3, v0, Lcom/google/android/gms/internal/ads/zzema;->zzj:Lcom/google/android/gms/internal/ads/zzdxz;

    move-object/from16 v4, p2

    .line 12
    invoke-static {v4, v2, v1, v3}, Lcom/google/android/gms/ads/internal/overlay/zzn;->zza(Landroid/content/Context;Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;ZLcom/google/android/gms/internal/ads/zzdxz;)V

    return-void
.end method

.method public final zzb()Lcom/google/android/gms/internal/ads/zzfir;
    .locals 1

    .line 0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzema;->zzd:Lcom/google/android/gms/internal/ads/zzfir;

    return-object v0
.end method
