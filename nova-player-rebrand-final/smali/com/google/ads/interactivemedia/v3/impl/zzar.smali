.class final synthetic Lcom/google/ads/interactivemedia/v3/impl/zzar;
.super Ljava/lang/Object;
.source "com.google.ads.interactivemedia.v3:interactivemedia@@3.38.0"

# interfaces
.implements Lcom/google/ads/interactivemedia/v3/internal/zzte;


# instance fields
.field private final synthetic zza:Landroid/net/Uri$Builder;

.field private final synthetic zzb:Lcom/google/ads/interactivemedia/v3/internal/zzpl;

.field private final synthetic zzc:Landroidx/privacysandbox/ads/adservices/java/measurement/MeasurementManagerFutures;


# direct methods
.method synthetic constructor <init>(Landroid/net/Uri$Builder;Lcom/google/ads/interactivemedia/v3/internal/zzpl;Landroidx/privacysandbox/ads/adservices/java/measurement/MeasurementManagerFutures;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/ads/interactivemedia/v3/impl/zzar;->zza:Landroid/net/Uri$Builder;

    iput-object p2, p0, Lcom/google/ads/interactivemedia/v3/impl/zzar;->zzb:Lcom/google/ads/interactivemedia/v3/internal/zzpl;

    iput-object p3, p0, Lcom/google/ads/interactivemedia/v3/impl/zzar;->zzc:Landroidx/privacysandbox/ads/adservices/java/measurement/MeasurementManagerFutures;

    return-void
.end method


# virtual methods
.method public final synthetic zza(Ljava/lang/Object;)Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 5

    check-cast p1, Ljava/lang/Integer;

    const/4 v0, 0x1

    .line 1
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v1

    iget-object v2, p0, Lcom/google/ads/interactivemedia/v3/impl/zzar;->zzc:Landroidx/privacysandbox/ads/adservices/java/measurement/MeasurementManagerFutures;

    iget-object v3, p0, Lcom/google/ads/interactivemedia/v3/impl/zzar;->zza:Landroid/net/Uri$Builder;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/google/ads/interactivemedia/v3/impl/zzar;->zzb:Lcom/google/ads/interactivemedia/v3/internal/zzpl;

    .line 2
    invoke-virtual {v1}, Lcom/google/ads/interactivemedia/v3/internal/zzpl;->zza()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 5
    :try_start_0
    invoke-virtual {v3}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object p1

    invoke-virtual {v1}, Lcom/google/ads/interactivemedia/v3/internal/zzpl;->zzb()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/InputEvent;

    .line 6
    invoke-virtual {v2, p1, v0}, Landroidx/privacysandbox/ads/adservices/java/measurement/MeasurementManagerFutures;->registerSourceAsync(Landroid/net/Uri;Landroid/view/InputEvent;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 7
    invoke-static {p1}, Lcom/google/ads/interactivemedia/v3/internal/zzts;->zzc(Ljava/lang/Throwable;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object p1

    return-object p1

    .line 6
    :cond_0
    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const-string p1, "RegisterSourceAsync api status: %s"

    .line 3
    invoke-static {p1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/google/ads/interactivemedia/v3/internal/zzfc;->zzb(Ljava/lang/String;)V

    const/4 p1, 0x0

    .line 4
    invoke-static {p1}, Lcom/google/ads/interactivemedia/v3/internal/zzts;->zza(Ljava/lang/Object;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object p1

    return-object p1
.end method
