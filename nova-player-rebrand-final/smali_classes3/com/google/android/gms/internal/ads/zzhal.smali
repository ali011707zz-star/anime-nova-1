.class final Lcom/google/android/gms/internal/ads/zzhal;
.super Lcom/google/android/gms/internal/ads/zzgzv;
.source "com.google.android.gms:play-services-ads@@24.9.0"


# instance fields
.field final synthetic zza:Lcom/google/android/gms/internal/ads/zzhan;

.field private final zzb:Lcom/google/android/gms/internal/ads/zzgyv;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzhan;Lcom/google/android/gms/internal/ads/zzgyv;)V
    .locals 0

    .line 1
    invoke-static {p1}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzhal;->zza:Lcom/google/android/gms/internal/ads/zzhan;

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzgzv;-><init>()V

    .line 2
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzhal;->zzb:Lcom/google/android/gms/internal/ads/zzgyv;

    return-void
.end method


# virtual methods
.method final bridge synthetic zza()Ljava/lang/Object;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzhal;->zzb:Lcom/google/android/gms/internal/ads/zzgyv;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzgyv;->zza()Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v1

    const-string v2, "AsyncCallable.call returned null instead of a Future. Did you mean to return immediateFuture(null)? %s"

    .line 2
    invoke-static {v1, v2, v0}, Lcom/google/android/gms/internal/ads/zzgrc;->zzl(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v1
.end method

.method final zzc()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzhal;->zzb:Lcom/google/android/gms/internal/ads/zzgyv;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method final zzd()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzhal;->zza:Lcom/google/android/gms/internal/ads/zzhan;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzgyh;->isDone()Z

    move-result v0

    return v0
.end method

.method final synthetic zzf(Ljava/lang/Object;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzhal;->zza:Lcom/google/android/gms/internal/ads/zzhan;

    check-cast p1, Lcom/google/common/util/concurrent/ListenableFuture;

    .line 2
    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzgyh;->zzk(Lcom/google/common/util/concurrent/ListenableFuture;)Z

    return-void
.end method

.method final zzg(Ljava/lang/Throwable;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzhal;->zza:Lcom/google/android/gms/internal/ads/zzhan;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzgyh;->zzb(Ljava/lang/Throwable;)Z

    return-void
.end method
