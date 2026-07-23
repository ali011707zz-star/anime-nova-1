.class public final Lcom/google/android/gms/internal/ads/zzezr;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.9.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzfax;


# instance fields
.field private final zza:Landroid/content/Context;

.field private final zzb:Lcom/google/android/gms/internal/ads/zzgzy;

.field private final zzc:Lcom/google/android/gms/internal/ads/zzfjk;

.field private final zzd:Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzgzy;Lcom/google/android/gms/internal/ads/zzfjk;Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzezr;->zza:Landroid/content/Context;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzezr;->zzb:Lcom/google/android/gms/internal/ads/zzgzy;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzezr;->zzc:Lcom/google/android/gms/internal/ads/zzfjk;

    iput-object p4, p0, Lcom/google/android/gms/internal/ads/zzezr;->zzd:Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;

    return-void
.end method


# virtual methods
.method public final zza()Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 2

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/ads/zzezq;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/ads/zzezq;-><init>(Lcom/google/android/gms/internal/ads/zzezr;)V

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzezr;->zzb:Lcom/google/android/gms/internal/ads/zzgzy;

    invoke-interface {v1, v0}, Lcom/google/android/gms/internal/ads/zzgzy;->zzc(Ljava/util/concurrent/Callable;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v0

    return-object v0
.end method

.method public final zzb()I
    .locals 1

    .line 0
    const/16 v0, 0x35

    return v0
.end method

.method final synthetic zzc()Lcom/google/android/gms/internal/ads/zzezs;
    .locals 9

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzezr;->zza:Landroid/content/Context;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzezr;->zzc:Lcom/google/android/gms/internal/ads/zzfjk;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzfjk;->zza()Z

    move-result v7

    new-instance v1, Lcom/google/android/gms/internal/ads/zzgah;

    invoke-direct {v1}, Lcom/google/android/gms/internal/ads/zzgah;-><init>()V

    new-instance v2, Lcom/google/android/gms/internal/ads/zzgah;

    invoke-direct {v2}, Lcom/google/android/gms/internal/ads/zzgah;-><init>()V

    const/4 v3, 0x1

    if-eqz v7, :cond_0

    .line 2
    sget-object v4, Lcom/google/android/gms/internal/ads/zzbhe;->zzdV:Lcom/google/android/gms/internal/ads/zzbgv;

    .line 3
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzbd;->zzc()Lcom/google/android/gms/internal/ads/zzbhc;

    move-result-object v5

    invoke-virtual {v5, v4}, Lcom/google/android/gms/internal/ads/zzbhc;->zzd(Lcom/google/android/gms/internal/ads/zzbgv;)Ljava/lang/Object;

    move-result-object v4

    .line 2
    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-nez v4, :cond_0

    new-instance v0, Lcom/google/android/gms/internal/ads/zzezs;

    invoke-direct {v0, v3}, Lcom/google/android/gms/internal/ads/zzezs;-><init>(Z)V

    return-object v0

    :catch_0
    move-exception v0

    goto/16 :goto_1

    :cond_0
    if-nez v7, :cond_1

    .line 4
    sget-object v4, Lcom/google/android/gms/internal/ads/zzbhe;->zzdR:Lcom/google/android/gms/internal/ads/zzbgv;

    .line 5
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzbd;->zzc()Lcom/google/android/gms/internal/ads/zzbhc;

    move-result-object v5

    invoke-virtual {v5, v4}, Lcom/google/android/gms/internal/ads/zzbhc;->zzd(Lcom/google/android/gms/internal/ads/zzbgv;)Ljava/lang/Object;

    move-result-object v4

    .line 4
    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-nez v4, :cond_2

    :cond_1
    if-eqz v7, :cond_3

    sget-object v4, Lcom/google/android/gms/internal/ads/zzbhe;->zzdT:Lcom/google/android/gms/internal/ads/zzbgv;

    .line 6
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzbd;->zzc()Lcom/google/android/gms/internal/ads/zzbhc;

    move-result-object v5

    invoke-virtual {v5, v4}, Lcom/google/android/gms/internal/ads/zzbhc;->zzd(Lcom/google/android/gms/internal/ads/zzbgv;)Ljava/lang/Object;

    move-result-object v4

    .line 7
    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 8
    :cond_2
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzgal;->zzh(Landroid/content/Context;)Lcom/google/android/gms/internal/ads/zzgal;

    move-result-object v1

    sget-object v4, Lcom/google/android/gms/internal/ads/zzbhe;->zzec:Lcom/google/android/gms/internal/ads/zzbgv;

    .line 9
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzbd;->zzc()Lcom/google/android/gms/internal/ads/zzbhc;

    move-result-object v5

    invoke-virtual {v5, v4}, Lcom/google/android/gms/internal/ads/zzbhc;->zzd(Lcom/google/android/gms/internal/ads/zzbgv;)Ljava/lang/Object;

    move-result-object v4

    .line 10
    check-cast v4, Ljava/lang/Long;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    .line 11
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzt;->zzh()Lcom/google/android/gms/internal/ads/zzcdu;

    move-result-object v6

    invoke-virtual {v6}, Lcom/google/android/gms/internal/ads/zzcdu;->zzo()Lcom/google/android/gms/ads/internal/util/zzg;

    move-result-object v6

    invoke-interface {v6}, Lcom/google/android/gms/ads/internal/util/zzg;->zzx()Z

    move-result v6

    .line 12
    invoke-virtual {v1, v4, v5, v6}, Lcom/google/android/gms/internal/ads/zzgal;->zzi(JZ)Lcom/google/android/gms/internal/ads/zzgah;

    move-result-object v1

    .line 13
    :cond_3
    sget-object v4, Lcom/google/android/gms/internal/ads/zzbhe;->zzdZ:Lcom/google/android/gms/internal/ads/zzbgv;

    .line 14
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzbd;->zzc()Lcom/google/android/gms/internal/ads/zzbhc;

    move-result-object v5

    invoke-virtual {v5, v4}, Lcom/google/android/gms/internal/ads/zzbhc;->zzd(Lcom/google/android/gms/internal/ads/zzbgv;)Ljava/lang/Object;

    move-result-object v4

    .line 13
    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-eqz v4, :cond_4

    iget-object v4, p0, Lcom/google/android/gms/internal/ads/zzezr;->zzd:Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;

    iget v4, v4, Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;->clientJarVersion:I

    sget-object v5, Lcom/google/android/gms/internal/ads/zzbhe;->zzdY:Lcom/google/android/gms/internal/ads/zzbgv;

    .line 15
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzbd;->zzc()Lcom/google/android/gms/internal/ads/zzbhc;

    move-result-object v6

    invoke-virtual {v6, v5}, Lcom/google/android/gms/internal/ads/zzbhc;->zzd(Lcom/google/android/gms/internal/ads/zzbgv;)Ljava/lang/Object;

    move-result-object v5

    .line 16
    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    if-ge v4, v5, :cond_4

    .line 17
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzgam;->zzh(Landroid/content/Context;)Lcom/google/android/gms/internal/ads/zzgam;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/android/gms/internal/ads/zzgam;->zzj()V

    :cond_4
    if-nez v7, :cond_5

    sget-object v4, Lcom/google/android/gms/internal/ads/zzbhe;->zzdS:Lcom/google/android/gms/internal/ads/zzbgv;

    .line 18
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzbd;->zzc()Lcom/google/android/gms/internal/ads/zzbhc;

    move-result-object v5

    invoke-virtual {v5, v4}, Lcom/google/android/gms/internal/ads/zzbhc;->zzd(Lcom/google/android/gms/internal/ads/zzbgv;)Ljava/lang/Object;

    move-result-object v4

    .line 19
    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-nez v4, :cond_6

    :cond_5
    if-eqz v7, :cond_8

    sget-object v4, Lcom/google/android/gms/internal/ads/zzbhe;->zzdU:Lcom/google/android/gms/internal/ads/zzbgv;

    .line 20
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzbd;->zzc()Lcom/google/android/gms/internal/ads/zzbhc;

    move-result-object v5

    invoke-virtual {v5, v4}, Lcom/google/android/gms/internal/ads/zzbhc;->zzd(Lcom/google/android/gms/internal/ads/zzbgv;)Ljava/lang/Object;

    move-result-object v4

    .line 21
    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-eqz v4, :cond_8

    .line 22
    :cond_6
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzgam;->zzh(Landroid/content/Context;)Lcom/google/android/gms/internal/ads/zzgam;

    move-result-object v4

    .line 23
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzgai;->zza(Landroid/content/Context;)Lcom/google/android/gms/internal/ads/zzgai;

    move-result-object v0

    iget-object v5, p0, Lcom/google/android/gms/internal/ads/zzezr;->zzd:Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;

    iget v5, v5, Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;->clientJarVersion:I

    sget-object v6, Lcom/google/android/gms/internal/ads/zzbhe;->zzdY:Lcom/google/android/gms/internal/ads/zzbgv;

    .line 24
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzbd;->zzc()Lcom/google/android/gms/internal/ads/zzbhc;

    move-result-object v8

    invoke-virtual {v8, v6}, Lcom/google/android/gms/internal/ads/zzbhc;->zzd(Lcom/google/android/gms/internal/ads/zzbgv;)Ljava/lang/Object;

    move-result-object v6

    .line 25
    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    if-lt v5, v6, :cond_7

    sget-object v2, Lcom/google/android/gms/internal/ads/zzbhe;->zzed:Lcom/google/android/gms/internal/ads/zzbgv;

    .line 26
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzbd;->zzc()Lcom/google/android/gms/internal/ads/zzbhc;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/google/android/gms/internal/ads/zzbhc;->zzd(Lcom/google/android/gms/internal/ads/zzbgv;)Ljava/lang/Object;

    move-result-object v2

    .line 27
    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    .line 28
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzt;->zzh()Lcom/google/android/gms/internal/ads/zzcdu;

    move-result-object v5

    invoke-virtual {v5}, Lcom/google/android/gms/internal/ads/zzcdu;->zzo()Lcom/google/android/gms/ads/internal/util/zzg;

    move-result-object v5

    invoke-interface {v5}, Lcom/google/android/gms/ads/internal/util/zzg;->zzx()Z

    move-result v5

    .line 29
    invoke-virtual {v4, v2, v3, v5}, Lcom/google/android/gms/internal/ads/zzgam;->zzi(JZ)Lcom/google/android/gms/internal/ads/zzgah;

    move-result-object v2

    .line 30
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzgai;->zzc()Z

    move-result v3

    .line 31
    :cond_7
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzgai;->zze()Z

    move-result v0

    move v6, v0

    move-object v4, v2

    move v5, v3

    goto :goto_0

    :cond_8
    move-object v4, v2

    move v5, v3

    move v6, v5

    :goto_0
    new-instance v2, Lcom/google/android/gms/internal/ads/zzezs;

    move-object v3, v1

    invoke-direct/range {v2 .. v7}, Lcom/google/android/gms/internal/ads/zzezs;-><init>(Lcom/google/android/gms/internal/ads/zzgah;Lcom/google/android/gms/internal/ads/zzgah;ZZZ)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v2

    :goto_1
    const-string v1, "PerAppIdSignal"

    .line 32
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzt;->zzh()Lcom/google/android/gms/internal/ads/zzcdu;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Lcom/google/android/gms/internal/ads/zzcdu;->zzg(Ljava/lang/Throwable;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzezr;->zzc:Lcom/google/android/gms/internal/ads/zzfjk;

    new-instance v1, Lcom/google/android/gms/internal/ads/zzezs;

    .line 33
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzfjk;->zza()Z

    move-result v0

    invoke-direct {v1, v0}, Lcom/google/android/gms/internal/ads/zzezs;-><init>(Z)V

    return-object v1
.end method
