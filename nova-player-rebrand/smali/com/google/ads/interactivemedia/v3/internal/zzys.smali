.class public abstract Lcom/google/ads/interactivemedia/v3/internal/zzys;
.super Lcom/google/ads/interactivemedia/v3/internal/zzvp;
.source "com.google.ads.interactivemedia.v3:interactivemedia@@3.38.0"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "A:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/ads/interactivemedia/v3/internal/zzvp<",
        "TT;>;"
    }
.end annotation


# instance fields
.field private final zza:Lcom/google/ads/interactivemedia/v3/internal/zzyv;


# direct methods
.method constructor <init>(Lcom/google/ads/interactivemedia/v3/internal/zzyv;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/google/ads/interactivemedia/v3/internal/zzvp;-><init>()V

    iput-object p1, p0, Lcom/google/ads/interactivemedia/v3/internal/zzys;->zza:Lcom/google/ads/interactivemedia/v3/internal/zzyv;

    return-void
.end method


# virtual methods
.method public final read(Lcom/google/ads/interactivemedia/v3/internal/zzabb;)Ljava/lang/Object;
    .locals 3

    .line 1
    invoke-virtual {p1}, Lcom/google/ads/interactivemedia/v3/internal/zzabb;->zzr()I

    move-result v0

    const/16 v1, 0x9

    if-ne v0, v1, :cond_0

    .line 2
    invoke-virtual {p1}, Lcom/google/ads/interactivemedia/v3/internal/zzabb;->zzi()V

    const/4 p1, 0x0

    return-object p1

    .line 3
    :cond_0
    invoke-virtual {p0}, Lcom/google/ads/interactivemedia/v3/internal/zzys;->zza()Ljava/lang/Object;

    move-result-object v0

    iget-object v1, p0, Lcom/google/ads/interactivemedia/v3/internal/zzys;->zza:Lcom/google/ads/interactivemedia/v3/internal/zzyv;

    .line 4
    iget-object v1, v1, Lcom/google/ads/interactivemedia/v3/internal/zzyv;->zzb:Ljava/util/Map;

    .line 5
    :try_start_0
    invoke-virtual {p1}, Lcom/google/ads/interactivemedia/v3/internal/zzabb;->zzc()V

    .line 6
    :goto_0
    invoke-virtual {p1}, Lcom/google/ads/interactivemedia/v3/internal/zzabb;->zze()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 7
    invoke-virtual {p1}, Lcom/google/ads/interactivemedia/v3/internal/zzabb;->zzf()Ljava/lang/String;

    move-result-object v2

    .line 8
    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/ads/interactivemedia/v3/internal/zzyt;

    if-nez v2, :cond_1

    .line 9
    invoke-virtual {p1}, Lcom/google/ads/interactivemedia/v3/internal/zzabb;->zzn()V

    goto :goto_0

    :catch_0
    move-exception p1

    goto :goto_1

    :catch_1
    move-exception p1

    goto :goto_2

    .line 10
    :cond_1
    invoke-virtual {p0, v0, p1, v2}, Lcom/google/ads/interactivemedia/v3/internal/zzys;->zzb(Ljava/lang/Object;Lcom/google/ads/interactivemedia/v3/internal/zzabb;Lcom/google/ads/interactivemedia/v3/internal/zzyt;)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 11
    :cond_2
    invoke-virtual {p1}, Lcom/google/ads/interactivemedia/v3/internal/zzabb;->zzd()V

    .line 12
    invoke-virtual {p0, v0}, Lcom/google/ads/interactivemedia/v3/internal/zzys;->zzc(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 13
    :goto_1
    invoke-static {p1}, Lcom/google/ads/interactivemedia/v3/internal/zzaap;->zzk(Ljava/lang/IllegalAccessException;)Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1

    :goto_2
    new-instance v0, Lcom/google/ads/interactivemedia/v3/internal/zzvk;

    .line 14
    invoke-direct {v0, p1}, Lcom/google/ads/interactivemedia/v3/internal/zzvk;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method public final write(Lcom/google/ads/interactivemedia/v3/internal/zzabd;Ljava/lang/Object;)V
    .locals 2

    if-nez p2, :cond_0

    .line 1
    invoke-virtual {p1}, Lcom/google/ads/interactivemedia/v3/internal/zzabd;->zzm()Lcom/google/ads/interactivemedia/v3/internal/zzabd;

    return-void

    .line 2
    :cond_0
    invoke-virtual {p1}, Lcom/google/ads/interactivemedia/v3/internal/zzabd;->zzd()Lcom/google/ads/interactivemedia/v3/internal/zzabd;

    :try_start_0
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/zzys;->zza:Lcom/google/ads/interactivemedia/v3/internal/zzyv;

    .line 3
    iget-object v0, v0, Lcom/google/ads/interactivemedia/v3/internal/zzyv;->zzc:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/ads/interactivemedia/v3/internal/zzyt;

    .line 4
    invoke-virtual {v1, p1, p2}, Lcom/google/ads/interactivemedia/v3/internal/zzyt;->zza(Lcom/google/ads/interactivemedia/v3/internal/zzabd;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    goto :goto_1

    .line 5
    :cond_1
    invoke-virtual {p1}, Lcom/google/ads/interactivemedia/v3/internal/zzabd;->zze()Lcom/google/ads/interactivemedia/v3/internal/zzabd;

    return-void

    .line 6
    :goto_1
    invoke-static {p1}, Lcom/google/ads/interactivemedia/v3/internal/zzaap;->zzk(Ljava/lang/IllegalAccessException;)Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1
.end method

.method abstract zza()Ljava/lang/Object;
.end method

.method abstract zzb(Ljava/lang/Object;Lcom/google/ads/interactivemedia/v3/internal/zzabb;Lcom/google/ads/interactivemedia/v3/internal/zzyt;)V
.end method

.method abstract zzc(Ljava/lang/Object;)Ljava/lang/Object;
.end method
