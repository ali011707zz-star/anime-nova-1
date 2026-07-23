.class final Lcom/google/android/gms/internal/ads/zzgyh$zzb;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.9.0"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final zza:Lcom/google/android/gms/internal/ads/zzgyh;

.field final zzb:Lcom/google/common/util/concurrent/ListenableFuture;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzgyh;Lcom/google/common/util/concurrent/ListenableFuture;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzgyh$zzb;->zza:Lcom/google/android/gms/internal/ads/zzgyh;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzgyh$zzb;->zzb:Lcom/google/common/util/concurrent/ListenableFuture;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzgyh$zzb;->zza:Lcom/google/android/gms/internal/ads/zzgyh;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzgyi;->valueField:Ljava/lang/Object;

    if-eq v0, p0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzgyh$zzb;->zzb:Lcom/google/common/util/concurrent/ListenableFuture;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzgyh$zzb;->zza:Lcom/google/android/gms/internal/ads/zzgyh;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzgyh;->zzn(Lcom/google/common/util/concurrent/ListenableFuture;)Ljava/lang/Object;

    move-result-object v0

    .line 2
    invoke-static {v1, p0, v0}, Lcom/google/android/gms/internal/ads/zzgyi;->zzr(Lcom/google/android/gms/internal/ads/zzgyi;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzgyh$zzb;->zza:Lcom/google/android/gms/internal/ads/zzgyh;

    const/4 v1, 0x0

    .line 3
    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/zzgyh;->zzo(Lcom/google/android/gms/internal/ads/zzgyh;Z)V

    :cond_1
    :goto_0
    return-void
.end method
