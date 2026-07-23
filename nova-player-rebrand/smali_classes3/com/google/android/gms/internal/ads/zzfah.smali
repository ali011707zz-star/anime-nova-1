.class public final Lcom/google/android/gms/internal/ads/zzfah;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.9.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzfax;


# instance fields
.field private final zza:Lcom/google/android/gms/internal/ads/zzccq;

.field private final zzb:Lcom/google/android/gms/internal/ads/zzgzy;

.field private final zzc:Landroid/content/Context;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzccq;Lcom/google/android/gms/internal/ads/zzgzy;Landroid/content/Context;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzfah;->zza:Lcom/google/android/gms/internal/ads/zzccq;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzfah;->zzb:Lcom/google/android/gms/internal/ads/zzgzy;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzfah;->zzc:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public final zza()Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 2

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/ads/zzfag;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/ads/zzfag;-><init>(Lcom/google/android/gms/internal/ads/zzfah;)V

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzfah;->zzb:Lcom/google/android/gms/internal/ads/zzgzy;

    invoke-interface {v1, v0}, Lcom/google/android/gms/internal/ads/zzgzy;->zzc(Ljava/util/concurrent/Callable;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v0

    return-object v0
.end method

.method public final zzb()I
    .locals 1

    .line 0
    const/16 v0, 0x22

    return v0
.end method

.method final synthetic zzc()Lcom/google/android/gms/internal/ads/zzfai;
    .locals 10

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfah;->zza:Lcom/google/android/gms/internal/ads/zzccq;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzfah;->zzc:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzccq;->zza(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_0

    new-instance v3, Lcom/google/android/gms/internal/ads/zzfai;

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-direct/range {v3 .. v8}, Lcom/google/android/gms/internal/ads/zzfai;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;)V

    return-object v3

    .line 2
    :cond_0
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzccq;->zzh(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    const-string v3, ""

    if-nez v2, :cond_1

    move-object v5, v3

    goto :goto_0

    :cond_1
    move-object v5, v2

    .line 3
    :goto_0
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzccq;->zzi(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_2

    move-object v6, v3

    goto :goto_1

    :cond_2
    move-object v6, v2

    .line 4
    :goto_1
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzccq;->zzj(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_3

    move-object v7, v3

    goto :goto_2

    :cond_3
    move-object v7, v2

    :goto_2
    const/4 v2, 0x1

    .line 5
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzccq;->zza(Landroid/content/Context;)Z

    move-result v0

    const/4 v1, 0x0

    if-eq v2, v0, :cond_4

    move-object v0, v1

    goto :goto_3

    .line 6
    :cond_4
    const-string v0, "fa"

    .line 5
    :goto_3
    const-string v2, "TIME_OUT"

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 6
    sget-object v1, Lcom/google/android/gms/internal/ads/zzbhe;->zzaR:Lcom/google/android/gms/internal/ads/zzbgv;

    .line 7
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzbd;->zzc()Lcom/google/android/gms/internal/ads/zzbhc;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/google/android/gms/internal/ads/zzbhc;->zzd(Lcom/google/android/gms/internal/ads/zzbgv;)Ljava/lang/Object;

    move-result-object v1

    .line 6
    check-cast v1, Ljava/lang/Long;

    :cond_5
    move-object v9, v1

    if-nez v0, :cond_6

    move-object v8, v3

    goto :goto_4

    :cond_6
    move-object v8, v0

    :goto_4
    new-instance v4, Lcom/google/android/gms/internal/ads/zzfai;

    invoke-direct/range {v4 .. v9}, Lcom/google/android/gms/internal/ads/zzfai;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;)V

    return-object v4
.end method
