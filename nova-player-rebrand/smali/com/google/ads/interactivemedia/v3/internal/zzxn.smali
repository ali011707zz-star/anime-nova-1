.class public final Lcom/google/ads/interactivemedia/v3/internal/zzxn;
.super Ljava/lang/Object;
.source "com.google.ads.interactivemedia.v3:interactivemedia@@3.38.0"


# direct methods
.method public static zza(Lcom/google/ads/interactivemedia/v3/internal/zzabb;)Lcom/google/ads/interactivemedia/v3/internal/zzvc;
    .locals 2

    .line 1
    :try_start_0
    invoke-virtual {p0}, Lcom/google/ads/interactivemedia/v3/internal/zzabb;->zzr()I
    :try_end_0
    .catch Ljava/io/EOFException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Lcom/google/ads/interactivemedia/v3/internal/zzabe; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_1

    const/4 v0, 0x0

    .line 2
    :try_start_1
    sget-object v1, Lcom/google/ads/interactivemedia/v3/internal/zzaak;->zzV:Lcom/google/ads/interactivemedia/v3/internal/zzvp;

    invoke-virtual {v1, p0}, Lcom/google/ads/interactivemedia/v3/internal/zzvp;->read(Lcom/google/ads/interactivemedia/v3/internal/zzabb;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/ads/interactivemedia/v3/internal/zzvc;
    :try_end_1
    .catch Ljava/io/EOFException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lcom/google/ads/interactivemedia/v3/internal/zzabe; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1

    return-object p0

    :catch_0
    move-exception p0

    goto :goto_0

    :catch_1
    move-exception p0

    .line 4
    new-instance v0, Lcom/google/ads/interactivemedia/v3/internal/zzvk;

    .line 3
    invoke-direct {v0, p0}, Lcom/google/ads/interactivemedia/v3/internal/zzvk;-><init>(Ljava/lang/Throwable;)V

    throw v0

    :catch_2
    move-exception p0

    .line 5
    new-instance v0, Lcom/google/ads/interactivemedia/v3/internal/zzvd;

    .line 4
    invoke-direct {v0, p0}, Lcom/google/ads/interactivemedia/v3/internal/zzvd;-><init>(Ljava/lang/Throwable;)V

    throw v0

    :catch_3
    move-exception p0

    .line 2
    new-instance v0, Lcom/google/ads/interactivemedia/v3/internal/zzvk;

    .line 5
    invoke-direct {v0, p0}, Lcom/google/ads/interactivemedia/v3/internal/zzvk;-><init>(Ljava/lang/Throwable;)V

    throw v0

    :catch_4
    move-exception p0

    const/4 v0, 0x1

    :goto_0
    if-eqz v0, :cond_0

    .line 2
    sget-object p0, Lcom/google/ads/interactivemedia/v3/internal/zzve;->zza:Lcom/google/ads/interactivemedia/v3/internal/zzve;

    return-object p0

    .line 3
    :cond_0
    new-instance v0, Lcom/google/ads/interactivemedia/v3/internal/zzvk;

    .line 6
    invoke-direct {v0, p0}, Lcom/google/ads/interactivemedia/v3/internal/zzvk;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method public static zzb(Ljava/lang/Appendable;)Ljava/io/Writer;
    .locals 1

    .line 1
    new-instance v0, Lcom/google/ads/interactivemedia/v3/internal/zzxm;

    invoke-direct {v0, p0}, Lcom/google/ads/interactivemedia/v3/internal/zzxm;-><init>(Ljava/lang/Appendable;)V

    return-object v0
.end method
