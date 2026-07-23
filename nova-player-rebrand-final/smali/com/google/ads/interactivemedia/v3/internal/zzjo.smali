.class public final Lcom/google/ads/interactivemedia/v3/internal/zzjo;
.super Ljava/lang/Object;
.source "com.google.ads.interactivemedia.v3:interactivemedia@@3.38.0"

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field private final zza:Lcom/google/ads/interactivemedia/v3/internal/zziv;

.field private final zzb:Lcom/google/ads/interactivemedia/v3/internal/zzad;


# direct methods
.method public constructor <init>(Lcom/google/ads/interactivemedia/v3/internal/zziv;Lcom/google/ads/interactivemedia/v3/internal/zzad;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/ads/interactivemedia/v3/internal/zzjo;->zza:Lcom/google/ads/interactivemedia/v3/internal/zziv;

    iput-object p2, p0, Lcom/google/ads/interactivemedia/v3/internal/zzjo;->zzb:Lcom/google/ads/interactivemedia/v3/internal/zzad;

    return-void
.end method


# virtual methods
.method public final bridge synthetic call()Ljava/lang/Object;
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/zzjo;->zza:Lcom/google/ads/interactivemedia/v3/internal/zziv;

    invoke-virtual {v0}, Lcom/google/ads/interactivemedia/v3/internal/zziv;->zzm()Ljava/util/concurrent/Future;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 2
    invoke-virtual {v0}, Lcom/google/ads/interactivemedia/v3/internal/zziv;->zzm()Ljava/util/concurrent/Future;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;

    .line 3
    :cond_0
    invoke-virtual {v0}, Lcom/google/ads/interactivemedia/v3/internal/zziv;->zzl()Lcom/google/ads/interactivemedia/v3/internal/zzba;

    move-result-object v0

    if-eqz v0, :cond_1

    :try_start_0
    iget-object v1, p0, Lcom/google/ads/interactivemedia/v3/internal/zzjo;->zzb:Lcom/google/ads/interactivemedia/v3/internal/zzad;

    .line 4
    monitor-enter v1
    :try_end_0
    .catch Lcom/google/ads/interactivemedia/v3/internal/zzadd; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 5
    :try_start_1
    invoke-virtual {v0}, Lcom/google/ads/interactivemedia/v3/internal/zzabg;->zzaq()[B

    move-result-object v0

    invoke-static {}, Lcom/google/ads/interactivemedia/v3/internal/zzace;->zza()Lcom/google/ads/interactivemedia/v3/internal/zzace;

    move-result-object v2

    array-length v3, v0

    const/4 v4, 0x0

    .line 6
    invoke-virtual {v1, v0, v4, v3, v2}, Lcom/google/ads/interactivemedia/v3/internal/zzaco;->zzan([BIILcom/google/ads/interactivemedia/v3/internal/zzace;)Lcom/google/ads/interactivemedia/v3/internal/zzaco;

    .line 7
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v0
    :try_end_2
    .catch Lcom/google/ads/interactivemedia/v3/internal/zzadd; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    :cond_1
    :goto_0
    const/4 v0, 0x0

    return-object v0
.end method
