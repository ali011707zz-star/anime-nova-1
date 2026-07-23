.class public final Lcom/google/android/gms/internal/ads/zzdaj;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.9.0"


# instance fields
.field private final zza:Lcom/google/android/gms/internal/ads/zzfnu;

.field private final zzb:Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;

.field private final zzc:Landroid/content/pm/ApplicationInfo;

.field private final zzd:Ljava/lang/String;

.field private final zze:Ljava/util/List;

.field private final zzf:Landroid/content/pm/PackageInfo;

.field private final zzg:Lcom/google/android/gms/internal/ads/zzika;

.field private final zzh:Ljava/lang/String;

.field private final zzi:Lcom/google/android/gms/internal/ads/zzfba;

.field private final zzj:Lcom/google/android/gms/ads/internal/util/zzg;

.field private final zzk:Lcom/google/android/gms/internal/ads/zzfjk;

.field private final zzl:I

.field private final zzm:Lcom/google/android/gms/internal/ads/zzdgy;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzfnu;Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;Landroid/content/pm/ApplicationInfo;Ljava/lang/String;Ljava/util/List;Landroid/content/pm/PackageInfo;Lcom/google/android/gms/internal/ads/zzika;Lcom/google/android/gms/ads/internal/util/zzg;Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzfba;Lcom/google/android/gms/internal/ads/zzfjk;Lcom/google/android/gms/internal/ads/zzdgy;I)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzdaj;->zza:Lcom/google/android/gms/internal/ads/zzfnu;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzdaj;->zzb:Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzdaj;->zzc:Landroid/content/pm/ApplicationInfo;

    iput-object p4, p0, Lcom/google/android/gms/internal/ads/zzdaj;->zzd:Ljava/lang/String;

    iput-object p5, p0, Lcom/google/android/gms/internal/ads/zzdaj;->zze:Ljava/util/List;

    iput-object p6, p0, Lcom/google/android/gms/internal/ads/zzdaj;->zzf:Landroid/content/pm/PackageInfo;

    iput-object p7, p0, Lcom/google/android/gms/internal/ads/zzdaj;->zzg:Lcom/google/android/gms/internal/ads/zzika;

    iput-object p9, p0, Lcom/google/android/gms/internal/ads/zzdaj;->zzh:Ljava/lang/String;

    iput-object p10, p0, Lcom/google/android/gms/internal/ads/zzdaj;->zzi:Lcom/google/android/gms/internal/ads/zzfba;

    iput-object p8, p0, Lcom/google/android/gms/internal/ads/zzdaj;->zzj:Lcom/google/android/gms/ads/internal/util/zzg;

    iput-object p11, p0, Lcom/google/android/gms/internal/ads/zzdaj;->zzk:Lcom/google/android/gms/internal/ads/zzfjk;

    iput-object p12, p0, Lcom/google/android/gms/internal/ads/zzdaj;->zzm:Lcom/google/android/gms/internal/ads/zzdgy;

    iput p13, p0, Lcom/google/android/gms/internal/ads/zzdaj;->zzl:I

    return-void
.end method


# virtual methods
.method public final zza(Landroid/os/Bundle;)Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdaj;->zzm:Lcom/google/android/gms/internal/ads/zzdgy;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzdgy;->zza()V

    .line 2
    sget-object v0, Lcom/google/android/gms/internal/ads/zzfno;->zza:Lcom/google/android/gms/internal/ads/zzfno;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzdaj;->zza:Lcom/google/android/gms/internal/ads/zzfnu;

    .line 3
    invoke-static {v1}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Lcom/google/android/gms/internal/ads/zzdah;

    new-instance v3, Landroid/os/Bundle;

    .line 4
    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    new-instance v4, Landroid/os/Bundle;

    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    invoke-direct {v2, v3, v4}, Lcom/google/android/gms/internal/ads/zzdah;-><init>(Landroid/os/Bundle;Landroid/os/Bundle;)V

    iget v3, p0, Lcom/google/android/gms/internal/ads/zzdaj;->zzl:I

    const/4 v4, 0x2

    if-ne v3, v4, :cond_0

    const/4 v3, 0x1

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    :goto_0
    iget-object v4, p0, Lcom/google/android/gms/internal/ads/zzdaj;->zzi:Lcom/google/android/gms/internal/ads/zzfba;

    .line 5
    invoke-virtual {v4, v2, p1, v3}, Lcom/google/android/gms/internal/ads/zzfba;->zza(Ljava/lang/Object;Landroid/os/Bundle;Z)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object p1

    .line 6
    invoke-static {p1, v0, v1}, Lcom/google/android/gms/internal/ads/zzfnf;->zza(Lcom/google/common/util/concurrent/ListenableFuture;Ljava/lang/Object;Lcom/google/android/gms/internal/ads/zzfnm;)Lcom/google/android/gms/internal/ads/zzfnl;

    move-result-object p1

    .line 7
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzfnl;->zzi()Lcom/google/android/gms/internal/ads/zzfnb;

    move-result-object p1

    return-object p1
.end method

.method public final zzb()Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 7

    .line 1
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 2
    sget-object v1, Lcom/google/android/gms/internal/ads/zzbhe;->zzcK:Lcom/google/android/gms/internal/ads/zzbgv;

    .line 3
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzbd;->zzc()Lcom/google/android/gms/internal/ads/zzbhc;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/google/android/gms/internal/ads/zzbhc;->zzd(Lcom/google/android/gms/internal/ads/zzbgv;)Ljava/lang/Object;

    move-result-object v1

    .line 2
    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzdaj;->zzk:Lcom/google/android/gms/internal/ads/zzfjk;

    iget-object v1, v1, Lcom/google/android/gms/internal/ads/zzfjk;->zzt:Landroid/os/Bundle;

    if-eqz v1, :cond_0

    .line 4
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    :cond_0
    const-string v1, "ls"

    .line 5
    invoke-virtual {v0, v1, v2}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 6
    :cond_1
    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ads/zzdaj;->zza(Landroid/os/Bundle;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v1

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzdaj;->zza:Lcom/google/android/gms/internal/ads/zzfnu;

    .line 7
    sget-object v4, Lcom/google/android/gms/internal/ads/zzfno;->zzb:Lcom/google/android/gms/internal/ads/zzfno;

    iget-object v5, p0, Lcom/google/android/gms/internal/ads/zzdaj;->zzg:Lcom/google/android/gms/internal/ads/zzika;

    .line 8
    invoke-interface {v5}, Lcom/google/android/gms/internal/ads/zzika;->zzb()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/google/common/util/concurrent/ListenableFuture;

    const/4 v6, 0x2

    new-array v6, v6, [Lcom/google/common/util/concurrent/ListenableFuture;

    aput-object v1, v6, v2

    const/4 v2, 0x1

    aput-object v5, v6, v2

    invoke-virtual {v3, v4, v6}, Lcom/google/android/gms/internal/ads/zzfnm;->zzb(Ljava/lang/Object;[Lcom/google/common/util/concurrent/ListenableFuture;)Lcom/google/android/gms/internal/ads/zzfnd;

    move-result-object v2

    new-instance v3, Lcom/google/android/gms/internal/ads/zzdai;

    invoke-direct {v3, p0, v1, v0}, Lcom/google/android/gms/internal/ads/zzdai;-><init>(Lcom/google/android/gms/internal/ads/zzdaj;Lcom/google/common/util/concurrent/ListenableFuture;Landroid/os/Bundle;)V

    .line 9
    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/ads/zzfnd;->zza(Ljava/util/concurrent/Callable;)Lcom/google/android/gms/internal/ads/zzfnl;

    move-result-object v0

    .line 10
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzfnl;->zzi()Lcom/google/android/gms/internal/ads/zzfnb;

    move-result-object v0

    return-object v0
.end method

.method final synthetic zzc(Lcom/google/common/util/concurrent/ListenableFuture;Landroid/os/Bundle;)Lcom/google/android/gms/internal/ads/zzbzu;
    .locals 18

    move-object/from16 v0, p0

    .line 1
    invoke-interface/range {p1 .. p1}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/ads/zzdah;

    .line 2
    new-instance v2, Lcom/google/android/gms/internal/ads/zzbzu;

    iget-object v3, v1, Lcom/google/android/gms/internal/ads/zzdah;->zza:Landroid/os/Bundle;

    iget-object v4, v0, Lcom/google/android/gms/internal/ads/zzdaj;->zzg:Lcom/google/android/gms/internal/ads/zzika;

    .line 3
    invoke-interface {v4}, Lcom/google/android/gms/internal/ads/zzika;->zzb()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/common/util/concurrent/ListenableFuture;

    invoke-interface {v4}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;

    move-result-object v4

    move-object v9, v4

    check-cast v9, Ljava/lang/String;

    sget-object v4, Lcom/google/android/gms/internal/ads/zzbhe;->zzhV:Lcom/google/android/gms/internal/ads/zzbgv;

    .line 4
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzbd;->zzc()Lcom/google/android/gms/internal/ads/zzbhc;

    move-result-object v5

    invoke-virtual {v5, v4}, Lcom/google/android/gms/internal/ads/zzbhc;->zzd(Lcom/google/android/gms/internal/ads/zzbgv;)Ljava/lang/Object;

    move-result-object v4

    .line 5
    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    const/4 v5, 0x0

    if-eqz v4, :cond_0

    iget-object v4, v0, Lcom/google/android/gms/internal/ads/zzdaj;->zzj:Lcom/google/android/gms/ads/internal/util/zzg;

    .line 6
    invoke-interface {v4}, Lcom/google/android/gms/ads/internal/util/zzg;->zzx()Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 v5, 0x1

    :cond_0
    move v13, v5

    iget-object v10, v0, Lcom/google/android/gms/internal/ads/zzdaj;->zzh:Ljava/lang/String;

    iget-object v8, v0, Lcom/google/android/gms/internal/ads/zzdaj;->zzf:Landroid/content/pm/PackageInfo;

    iget-object v7, v0, Lcom/google/android/gms/internal/ads/zzdaj;->zze:Ljava/util/List;

    iget-object v6, v0, Lcom/google/android/gms/internal/ads/zzdaj;->zzd:Ljava/lang/String;

    iget-object v5, v0, Lcom/google/android/gms/internal/ads/zzdaj;->zzc:Landroid/content/pm/ApplicationInfo;

    iget-object v4, v0, Lcom/google/android/gms/internal/ads/zzdaj;->zzb:Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;

    iget-object v11, v0, Lcom/google/android/gms/internal/ads/zzdaj;->zzk:Lcom/google/android/gms/internal/ads/zzfjk;

    .line 7
    invoke-virtual {v11}, Lcom/google/android/gms/internal/ads/zzfjk;->zza()Z

    move-result v14

    iget-object v1, v1, Lcom/google/android/gms/internal/ads/zzdah;->zzb:Landroid/os/Bundle;

    iget v11, v0, Lcom/google/android/gms/internal/ads/zzdaj;->zzl:I

    move/from16 v17, v11

    const/4 v11, 0x0

    const/4 v12, 0x0

    move-object/from16 v15, p2

    move-object/from16 v16, v1

    invoke-direct/range {v2 .. v17}, Lcom/google/android/gms/internal/ads/zzbzu;-><init>(Landroid/os/Bundle;Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;Landroid/content/pm/ApplicationInfo;Ljava/lang/String;Ljava/util/List;Landroid/content/pm/PackageInfo;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzflg;Ljava/lang/String;ZZLandroid/os/Bundle;Landroid/os/Bundle;I)V

    return-object v2
.end method
