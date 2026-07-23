.class final Lcom/google/ads/interactivemedia/v3/impl/zzc;
.super Ljava/lang/Object;
.source "com.google.ads.interactivemedia.v3:interactivemedia@@3.38.0"

# interfaces
.implements Landroid/app/Application$ActivityLifecycleCallbacks;


# instance fields
.field final synthetic zza:Lcom/google/ads/interactivemedia/v3/impl/zzh;


# direct methods
.method constructor <init>(Lcom/google/ads/interactivemedia/v3/impl/zzh;)V
    .locals 0

    .line 1
    invoke-static {p1}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Lcom/google/ads/interactivemedia/v3/impl/zzc;->zza:Lcom/google/ads/interactivemedia/v3/impl/zzh;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onActivityCreated(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 0

    .line 0
    return-void
.end method

.method public final onActivityDestroyed(Landroid/app/Activity;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/impl/zzc;->zza:Lcom/google/ads/interactivemedia/v3/impl/zzh;

    invoke-virtual {v0}, Lcom/google/ads/interactivemedia/v3/impl/zzh;->zzi()Landroid/app/Activity;

    move-result-object v1

    if-ne v1, p1, :cond_0

    const/4 p1, 0x0

    invoke-virtual {v0, p1}, Lcom/google/ads/interactivemedia/v3/impl/zzh;->zzj(Landroid/app/Activity;)V

    .line 2
    invoke-virtual {v0}, Lcom/google/ads/interactivemedia/v3/impl/zzh;->zzc()V

    :cond_0
    return-void
.end method

.method public final onActivityPaused(Landroid/app/Activity;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/impl/zzc;->zza:Lcom/google/ads/interactivemedia/v3/impl/zzh;

    invoke-virtual {v0}, Lcom/google/ads/interactivemedia/v3/impl/zzh;->zzi()Landroid/app/Activity;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Lcom/google/ads/interactivemedia/v3/impl/zzh;->zzi()Landroid/app/Activity;

    move-result-object v1

    if-ne v1, p1, :cond_0

    goto :goto_0

    :cond_0
    return-void

    :cond_1
    :goto_0
    invoke-virtual {v0, p1}, Lcom/google/ads/interactivemedia/v3/impl/zzh;->zzj(Landroid/app/Activity;)V

    const-string p1, "inactive"

    .line 2
    const-string v1, ""

    invoke-virtual {v0, v1, v1, p1}, Lcom/google/ads/interactivemedia/v3/impl/zzh;->zzf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object p1

    new-instance v1, Lcom/google/ads/interactivemedia/v3/impl/zza;

    invoke-direct {v1, p0}, Lcom/google/ads/interactivemedia/v3/impl/zza;-><init>(Lcom/google/ads/interactivemedia/v3/impl/zzc;)V

    invoke-virtual {v0}, Lcom/google/ads/interactivemedia/v3/impl/zzh;->zzk()Lcom/google/ads/interactivemedia/v3/internal/zzub;

    move-result-object v0

    .line 3
    invoke-static {p1, v1, v0}, Lcom/google/ads/interactivemedia/v3/internal/zzts;->zzg(Lcom/google/common/util/concurrent/ListenableFuture;Lcom/google/ads/interactivemedia/v3/internal/zzpg;Ljava/util/concurrent/Executor;)Lcom/google/common/util/concurrent/ListenableFuture;

    return-void
.end method

.method public final onActivityResumed(Landroid/app/Activity;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/impl/zzc;->zza:Lcom/google/ads/interactivemedia/v3/impl/zzh;

    invoke-virtual {v0}, Lcom/google/ads/interactivemedia/v3/impl/zzh;->zzi()Landroid/app/Activity;

    move-result-object v1

    if-ne v1, p1, :cond_0

    const-string p1, "active"

    const-string v1, ""

    invoke-virtual {v0, v1, v1, p1}, Lcom/google/ads/interactivemedia/v3/impl/zzh;->zzf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object p1

    new-instance v1, Lcom/google/ads/interactivemedia/v3/impl/zzb;

    invoke-direct {v1, p0}, Lcom/google/ads/interactivemedia/v3/impl/zzb;-><init>(Lcom/google/ads/interactivemedia/v3/impl/zzc;)V

    invoke-virtual {v0}, Lcom/google/ads/interactivemedia/v3/impl/zzh;->zzk()Lcom/google/ads/interactivemedia/v3/internal/zzub;

    move-result-object v0

    .line 2
    invoke-static {p1, v1, v0}, Lcom/google/ads/interactivemedia/v3/internal/zzts;->zzg(Lcom/google/common/util/concurrent/ListenableFuture;Lcom/google/ads/interactivemedia/v3/internal/zzpg;Ljava/util/concurrent/Executor;)Lcom/google/common/util/concurrent/ListenableFuture;

    :cond_0
    return-void
.end method

.method public final onActivitySaveInstanceState(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 0

    .line 0
    return-void
.end method

.method public final onActivityStarted(Landroid/app/Activity;)V
    .locals 0

    .line 0
    return-void
.end method

.method public final onActivityStopped(Landroid/app/Activity;)V
    .locals 0

    .line 0
    return-void
.end method
