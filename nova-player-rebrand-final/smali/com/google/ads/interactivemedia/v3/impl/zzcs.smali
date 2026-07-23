.class final Lcom/google/ads/interactivemedia/v3/impl/zzcs;
.super Ljava/lang/Object;
.source "com.google.ads.interactivemedia.v3:interactivemedia@@3.38.0"

# interfaces
.implements Lcom/google/ads/interactivemedia/v3/impl/zzcr;


# instance fields
.field private final zza:Lcom/google/ads/interactivemedia/v3/internal/zzmr;

.field private final zzb:Z


# direct methods
.method constructor <init>(Landroid/content/Context;Z)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/google/ads/interactivemedia/v3/internal/zzmy;

    invoke-direct {v0, p1}, Lcom/google/ads/interactivemedia/v3/internal/zzmy;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/google/ads/interactivemedia/v3/impl/zzcs;->zza:Lcom/google/ads/interactivemedia/v3/internal/zzmr;

    iput-boolean p2, p0, Lcom/google/ads/interactivemedia/v3/impl/zzcs;->zzb:Z

    return-void
.end method


# virtual methods
.method public final zza(Lcom/google/ads/interactivemedia/v3/impl/data/NetworkRequestData;)Lcom/google/ads/interactivemedia/v3/impl/data/NetworkResponseData;
    .locals 6

    const/16 v0, 0x64

    .line 1
    :try_start_0
    invoke-virtual {p1}, Lcom/google/ads/interactivemedia/v3/impl/data/NetworkRequestData;->requestType()Lcom/google/ads/interactivemedia/v3/impl/data/NetworkRequestData$RequestType;

    move-result-object v1

    sget-object v2, Lcom/google/ads/interactivemedia/v3/impl/data/NetworkRequestData$RequestType;->GET:Lcom/google/ads/interactivemedia/v3/impl/data/NetworkRequestData$RequestType;

    if-ne v1, v2, :cond_0

    const/4 v3, 0x0

    goto :goto_0

    :cond_0
    const/4 v3, 0x1

    .line 2
    :goto_0
    invoke-virtual {p1}, Lcom/google/ads/interactivemedia/v3/impl/data/NetworkRequestData;->url()Ljava/lang/String;

    move-result-object v4

    .line 3
    invoke-virtual {p1}, Lcom/google/ads/interactivemedia/v3/impl/data/NetworkRequestData;->content()Ljava/lang/String;

    move-result-object v5

    if-eqz v4, :cond_2

    if-eq v1, v2, :cond_1

    if-nez v5, :cond_1

    goto :goto_1

    .line 9
    :cond_1
    iget-object v1, p0, Lcom/google/ads/interactivemedia/v3/impl/zzcs;->zza:Lcom/google/ads/interactivemedia/v3/internal/zzmr;

    iget-boolean v2, p0, Lcom/google/ads/interactivemedia/v3/impl/zzcs;->zzb:Z

    .line 4
    invoke-interface {v1, v4, v3, v5, v2}, Lcom/google/ads/interactivemedia/v3/internal/zzmr;->zzb(Ljava/lang/String;ILjava/lang/String;Z)Lcom/google/android/gms/tasks/Task;

    move-result-object v1

    .line 5
    invoke-virtual {p1}, Lcom/google/ads/interactivemedia/v3/impl/data/NetworkRequestData;->connectionTimeoutMs()I

    move-result v2

    invoke-virtual {p1}, Lcom/google/ads/interactivemedia/v3/impl/data/NetworkRequestData;->readTimeoutMs()I

    move-result v3

    add-int/2addr v2, v3

    sget-object v3, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    int-to-long v4, v2

    .line 6
    invoke-static {v1, v4, v5, v3}, Lcom/google/android/gms/tasks/Tasks;->await(Lcom/google/android/gms/tasks/Task;JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 7
    invoke-virtual {p1}, Lcom/google/ads/interactivemedia/v3/impl/data/NetworkRequestData;->id()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v1}, Lcom/google/ads/interactivemedia/v3/impl/data/NetworkResponseData;->forResponse(Ljava/lang/String;Ljava/lang/String;)Lcom/google/ads/interactivemedia/v3/impl/data/NetworkResponseData;

    move-result-object p1

    return-object p1

    :catch_0
    move-exception v1

    goto :goto_2

    .line 8
    :cond_2
    :goto_1
    invoke-virtual {p1}, Lcom/google/ads/interactivemedia/v3/impl/data/NetworkRequestData;->id()Ljava/lang/String;

    move-result-object v1

    .line 9
    invoke-static {v1, v0}, Lcom/google/ads/interactivemedia/v3/impl/data/NetworkResponseData;->forError(Ljava/lang/String;I)Lcom/google/ads/interactivemedia/v3/impl/data/NetworkResponseData;

    move-result-object p1
    :try_end_0
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    .line 10
    :goto_2
    invoke-virtual {v1}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v1

    instance-of v2, v1, Lcom/google/ads/interactivemedia/v3/internal/zzms;

    if-eqz v2, :cond_3

    .line 11
    check-cast v1, Lcom/google/ads/interactivemedia/v3/internal/zzms;

    invoke-virtual {v1}, Lcom/google/ads/interactivemedia/v3/internal/zzms;->zza()I

    move-result v0

    .line 12
    invoke-virtual {p1}, Lcom/google/ads/interactivemedia/v3/impl/data/NetworkRequestData;->id()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, v0}, Lcom/google/ads/interactivemedia/v3/impl/data/NetworkResponseData;->forError(Ljava/lang/String;I)Lcom/google/ads/interactivemedia/v3/impl/data/NetworkResponseData;

    move-result-object p1

    return-object p1

    .line 13
    :cond_3
    instance-of v1, v1, Lcom/google/android/gms/common/api/ApiException;

    if-eqz v1, :cond_4

    .line 14
    invoke-virtual {p1}, Lcom/google/ads/interactivemedia/v3/impl/data/NetworkRequestData;->id()Ljava/lang/String;

    move-result-object p1

    const/16 v0, 0x66

    .line 15
    invoke-static {p1, v0}, Lcom/google/ads/interactivemedia/v3/impl/data/NetworkResponseData;->forError(Ljava/lang/String;I)Lcom/google/ads/interactivemedia/v3/impl/data/NetworkResponseData;

    move-result-object p1

    return-object p1

    .line 16
    :cond_4
    invoke-virtual {p1}, Lcom/google/ads/interactivemedia/v3/impl/data/NetworkRequestData;->id()Ljava/lang/String;

    move-result-object p1

    .line 17
    invoke-static {p1, v0}, Lcom/google/ads/interactivemedia/v3/impl/data/NetworkResponseData;->forError(Ljava/lang/String;I)Lcom/google/ads/interactivemedia/v3/impl/data/NetworkResponseData;

    move-result-object p1

    return-object p1

    .line 18
    :catch_1
    invoke-virtual {p1}, Lcom/google/ads/interactivemedia/v3/impl/data/NetworkRequestData;->id()Ljava/lang/String;

    move-result-object p1

    const/16 v0, 0x65

    .line 19
    invoke-static {p1, v0}, Lcom/google/ads/interactivemedia/v3/impl/data/NetworkResponseData;->forError(Ljava/lang/String;I)Lcom/google/ads/interactivemedia/v3/impl/data/NetworkResponseData;

    move-result-object p1

    return-object p1
.end method
