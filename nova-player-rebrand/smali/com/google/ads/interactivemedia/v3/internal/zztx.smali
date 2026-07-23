.class final Lcom/google/ads/interactivemedia/v3/internal/zztx;
.super Ljava/util/concurrent/locks/AbstractOwnableSynchronizer;
.source "com.google.ads.interactivemedia.v3:interactivemedia@@3.38.0"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final zza:Lcom/google/ads/interactivemedia/v3/internal/zztz;


# direct methods
.method synthetic constructor <init>(Lcom/google/ads/interactivemedia/v3/internal/zztz;[B)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/util/concurrent/locks/AbstractOwnableSynchronizer;-><init>()V

    iput-object p1, p0, Lcom/google/ads/interactivemedia/v3/internal/zztx;->zza:Lcom/google/ads/interactivemedia/v3/internal/zztz;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 0

    .line 0
    return-void
.end method

.method public final toString()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/zztx;->zza:Lcom/google/ads/interactivemedia/v3/internal/zztz;

    invoke-virtual {v0}, Lcom/google/ads/interactivemedia/v3/internal/zztz;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method final synthetic zza(Ljava/lang/Thread;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Ljava/util/concurrent/locks/AbstractOwnableSynchronizer;->setExclusiveOwnerThread(Ljava/lang/Thread;)V

    return-void
.end method
