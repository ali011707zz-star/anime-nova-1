.class final Lcom/google/ads/interactivemedia/v3/internal/zzui;
.super Ljava/lang/Object;
.source "com.google.ads.interactivemedia.v3:interactivemedia@@3.38.0"


# direct methods
.method static zza(Ljava/lang/Throwable;)V
    .locals 0

    .line 1
    instance-of p0, p0, Ljava/lang/InterruptedException;

    if-eqz p0, :cond_0

    .line 2
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Thread;->interrupt()V

    :cond_0
    return-void
.end method

.method static zzb(Ljava/lang/Throwable;)V
    .locals 1

    .line 1
    instance-of v0, p0, Ljava/lang/Error;

    if-eqz v0, :cond_1

    instance-of v0, p0, Ljava/lang/StackOverflowError;

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    check-cast p0, Ljava/lang/Error;

    throw p0

    :cond_1
    return-void
.end method
