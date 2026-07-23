.class public final Lcom/google/ads/interactivemedia/v3/internal/zztr;
.super Ljava/lang/Object;
.source "com.google.ads.interactivemedia.v3:interactivemedia@@3.38.0"


# instance fields
.field private final zza:Lcom/google/ads/interactivemedia/v3/internal/zzqu;


# direct methods
.method synthetic constructor <init>(ZLcom/google/ads/interactivemedia/v3/internal/zzqu;[B)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/google/ads/interactivemedia/v3/internal/zztr;->zza:Lcom/google/ads/interactivemedia/v3/internal/zzqu;

    return-void
.end method


# virtual methods
.method public final zza(Ljava/util/concurrent/Callable;Ljava/util/concurrent/Executor;)Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 3

    .line 1
    new-instance v0, Lcom/google/ads/interactivemedia/v3/internal/zzth;

    iget-object v1, p0, Lcom/google/ads/interactivemedia/v3/internal/zztr;->zza:Lcom/google/ads/interactivemedia/v3/internal/zzqu;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, p2, p1}, Lcom/google/ads/interactivemedia/v3/internal/zzth;-><init>(Lcom/google/ads/interactivemedia/v3/internal/zzqp;ZLjava/util/concurrent/Executor;Ljava/util/concurrent/Callable;)V

    return-object v0
.end method
