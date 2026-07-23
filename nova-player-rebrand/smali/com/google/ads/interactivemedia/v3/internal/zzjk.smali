.class public final Lcom/google/ads/interactivemedia/v3/internal/zzjk;
.super Lcom/google/ads/interactivemedia/v3/internal/zzkj;
.source "com.google.ads.interactivemedia.v3:interactivemedia@@3.38.0"


# direct methods
.method public constructor <init>(Lcom/google/ads/interactivemedia/v3/internal/zziv;Ljava/lang/String;Ljava/lang/String;Lcom/google/ads/interactivemedia/v3/internal/zzad;II)V
    .locals 7

    .line 1
    const-string/jumbo v3, "z6GzXqyR8kvBYJKVLhMc9mqmsbq6ZkNeWqgTkONnpqg="

    const/4 v6, 0x5

    const-string v2, "0k0HoJtCvAtrnTz0UbiSqrs0BGKzSTMoo+ZxCfyJrLcMn8tbsvf/NG2/ui2bKbWP"

    move-object v0, p0

    move-object v1, p1

    move-object v4, p4

    move v5, p5

    invoke-direct/range {v0 .. v6}, Lcom/google/ads/interactivemedia/v3/internal/zzkj;-><init>(Lcom/google/ads/interactivemedia/v3/internal/zziv;Ljava/lang/String;Ljava/lang/String;Lcom/google/ads/interactivemedia/v3/internal/zzad;II)V

    return-void
.end method


# virtual methods
.method protected final zza()V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/zzkj;->zzd:Lcom/google/ads/interactivemedia/v3/internal/zzad;

    const-wide/16 v1, -0x1

    invoke-virtual {v0, v1, v2}, Lcom/google/ads/interactivemedia/v3/internal/zzad;->zzd(J)Lcom/google/ads/interactivemedia/v3/internal/zzad;

    .line 2
    invoke-virtual {v0, v1, v2}, Lcom/google/ads/interactivemedia/v3/internal/zzad;->zze(J)Lcom/google/ads/interactivemedia/v3/internal/zzad;

    iget-object v1, p0, Lcom/google/ads/interactivemedia/v3/internal/zzkj;->zze:Ljava/lang/reflect/Method;

    iget-object v2, p0, Lcom/google/ads/interactivemedia/v3/internal/zzkj;->zza:Lcom/google/ads/interactivemedia/v3/internal/zziv;

    .line 3
    invoke-virtual {v2}, Lcom/google/ads/interactivemedia/v3/internal/zziv;->zzb()Landroid/content/Context;

    move-result-object v2

    const/4 v3, 0x1

    new-array v4, v3, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v2, v4, v5

    const/4 v2, 0x0

    invoke-virtual {v1, v2, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [I

    .line 4
    monitor-enter v0

    .line 5
    :try_start_0
    aget v2, v1, v5

    int-to-long v4, v2

    invoke-virtual {v0, v4, v5}, Lcom/google/ads/interactivemedia/v3/internal/zzad;->zzd(J)Lcom/google/ads/interactivemedia/v3/internal/zzad;

    .line 6
    aget v2, v1, v3

    int-to-long v2, v2

    invoke-virtual {v0, v2, v3}, Lcom/google/ads/interactivemedia/v3/internal/zzad;->zze(J)Lcom/google/ads/interactivemedia/v3/internal/zzad;

    const/4 v2, 0x2

    .line 7
    aget v1, v1, v2

    const/high16 v2, -0x80000000

    if-eq v1, v2, :cond_0

    int-to-long v1, v1

    .line 8
    invoke-virtual {v0, v1, v2}, Lcom/google/ads/interactivemedia/v3/internal/zzad;->zzM(J)Lcom/google/ads/interactivemedia/v3/internal/zzad;

    goto :goto_0

    :catchall_0
    move-exception v1

    goto :goto_1

    .line 9
    :cond_0
    :goto_0
    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
