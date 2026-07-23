.class public final Lcom/google/ads/interactivemedia/v3/impl/zzas;
.super Ljava/lang/Object;
.source "com.google.ads.interactivemedia.v3:interactivemedia@@3.38.0"


# instance fields
.field private final zza:Landroidx/privacysandbox/ads/adservices/java/measurement/MeasurementManagerFutures;

.field private final zzb:Ljava/util/concurrent/Executor;


# direct methods
.method constructor <init>(Landroidx/privacysandbox/ads/adservices/java/measurement/MeasurementManagerFutures;Ljava/util/concurrent/Executor;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/ads/interactivemedia/v3/impl/zzas;->zza:Landroidx/privacysandbox/ads/adservices/java/measurement/MeasurementManagerFutures;

    iput-object p2, p0, Lcom/google/ads/interactivemedia/v3/impl/zzas;->zzb:Ljava/util/concurrent/Executor;

    return-void
.end method


# virtual methods
.method public final zza(Landroid/net/Uri;Landroid/net/Uri;Lcom/google/ads/interactivemedia/v3/internal/zzpl;)Landroid/net/Uri;
    .locals 5

    .line 1
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    .line 2
    invoke-virtual {p1}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v1

    if-nez p2, :cond_0

    .line 3
    invoke-virtual {v1}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object p1

    return-object p1

    :cond_0
    const-string v2, "ase"

    .line 4
    invoke-virtual {p1, v2}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v2, "3"

    invoke-static {p1, v2}, Lj$/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    .line 5
    invoke-virtual {v1}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object p1

    return-object p1

    .line 6
    :cond_1
    invoke-virtual {p3}, Lcom/google/ads/interactivemedia/v3/internal/zzpl;->zza()Z

    move-result p1

    const-string v2, "nis"

    if-nez p1, :cond_2

    const-string p1, "11"

    .line 7
    invoke-virtual {v1, v2, p1}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 8
    invoke-virtual {v1}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object p1

    return-object p1

    :cond_2
    iget-object p1, p0, Lcom/google/ads/interactivemedia/v3/impl/zzas;->zza:Landroidx/privacysandbox/ads/adservices/java/measurement/MeasurementManagerFutures;

    if-nez p1, :cond_3

    const-string p1, "10"

    .line 9
    invoke-virtual {v1, v2, p1}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 10
    invoke-virtual {v1}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object p1

    return-object p1

    .line 11
    :cond_3
    invoke-virtual {p2}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object p2

    .line 12
    const-string v3, "uk"

    invoke-virtual {v1, v3, v0}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 13
    invoke-virtual {p2, v3, v0}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 14
    const-string v0, "12"

    invoke-virtual {p2, v2, v0}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    const-string v3, "asr"

    const-string v4, "1"

    .line 15
    invoke-virtual {p2, v3, v4}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 16
    :try_start_0
    invoke-virtual {p1}, Landroidx/privacysandbox/ads/adservices/java/measurement/MeasurementManagerFutures;->getMeasurementApiStatusAsync()Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v3

    .line 17
    invoke-static {v3}, Lcom/google/ads/interactivemedia/v3/internal/zztk;->zzw(Lcom/google/common/util/concurrent/ListenableFuture;)Lcom/google/ads/interactivemedia/v3/internal/zztk;

    move-result-object v3

    new-instance v4, Lcom/google/ads/interactivemedia/v3/impl/zzar;

    invoke-direct {v4, p2, p3, p1}, Lcom/google/ads/interactivemedia/v3/impl/zzar;-><init>(Landroid/net/Uri$Builder;Lcom/google/ads/interactivemedia/v3/internal/zzpl;Landroidx/privacysandbox/ads/adservices/java/measurement/MeasurementManagerFutures;)V

    iget-object p1, p0, Lcom/google/ads/interactivemedia/v3/impl/zzas;->zzb:Ljava/util/concurrent/Executor;

    .line 18
    invoke-static {v3, v4, p1}, Lcom/google/ads/interactivemedia/v3/internal/zzts;->zzf(Lcom/google/common/util/concurrent/ListenableFuture;Lcom/google/ads/interactivemedia/v3/internal/zzte;Ljava/util/concurrent/Executor;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object p2

    check-cast p2, Lcom/google/ads/interactivemedia/v3/internal/zztk;

    new-instance p3, Lcom/google/ads/interactivemedia/v3/impl/zzaq;

    .line 19
    invoke-direct {p3, p0}, Lcom/google/ads/interactivemedia/v3/impl/zzaq;-><init>(Lcom/google/ads/interactivemedia/v3/impl/zzas;)V

    invoke-static {p2, p3, p1}, Lcom/google/ads/interactivemedia/v3/internal/zzts;->zzi(Lcom/google/common/util/concurrent/ListenableFuture;Lcom/google/ads/interactivemedia/v3/internal/zztp;Ljava/util/concurrent/Executor;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 22
    invoke-virtual {v1, v2, v0}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 23
    invoke-virtual {v1}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object p1

    return-object p1

    :catch_0
    const-string p1, "9"

    .line 20
    invoke-virtual {v1, v2, p1}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 21
    invoke-virtual {v1}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object p1

    return-object p1
.end method
