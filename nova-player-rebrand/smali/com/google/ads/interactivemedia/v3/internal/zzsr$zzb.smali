.class final Lcom/google/ads/interactivemedia/v3/internal/zzsr$zzb;
.super Ljava/lang/Object;
.source "com.google.ads.interactivemedia.v3:interactivemedia@@3.38.0"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/lang/Runnable;"
    }
.end annotation


# instance fields
.field final zza:Lcom/google/ads/interactivemedia/v3/internal/zzsr;

.field final zzb:Lcom/google/common/util/concurrent/ListenableFuture;


# direct methods
.method constructor <init>(Lcom/google/ads/interactivemedia/v3/internal/zzsr;Lcom/google/common/util/concurrent/ListenableFuture;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/ads/interactivemedia/v3/internal/zzsr$zzb;->zza:Lcom/google/ads/interactivemedia/v3/internal/zzsr;

    iput-object p2, p0, Lcom/google/ads/interactivemedia/v3/internal/zzsr$zzb;->zzb:Lcom/google/common/util/concurrent/ListenableFuture;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/zzsr$zzb;->zza:Lcom/google/ads/interactivemedia/v3/internal/zzsr;

    iget-object v0, v0, Lcom/google/ads/interactivemedia/v3/internal/zzss;->valueField:Ljava/lang/Object;

    if-eq v0, p0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/zzsr$zzb;->zzb:Lcom/google/common/util/concurrent/ListenableFuture;

    iget-object v1, p0, Lcom/google/ads/interactivemedia/v3/internal/zzsr$zzb;->zza:Lcom/google/ads/interactivemedia/v3/internal/zzsr;

    invoke-static {v0}, Lcom/google/ads/interactivemedia/v3/internal/zzsr;->zzn(Lcom/google/common/util/concurrent/ListenableFuture;)Ljava/lang/Object;

    move-result-object v0

    .line 2
    invoke-static {v1, p0, v0}, Lcom/google/ads/interactivemedia/v3/internal/zzss;->zzr(Lcom/google/ads/interactivemedia/v3/internal/zzss;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/zzsr$zzb;->zza:Lcom/google/ads/interactivemedia/v3/internal/zzsr;

    const/4 v1, 0x0

    .line 3
    invoke-static {v0, v1}, Lcom/google/ads/interactivemedia/v3/internal/zzsr;->zzo(Lcom/google/ads/interactivemedia/v3/internal/zzsr;Z)V

    :cond_1
    :goto_0
    return-void
.end method
