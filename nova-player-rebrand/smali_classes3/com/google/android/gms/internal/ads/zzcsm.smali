.class final Lcom/google/android/gms/internal/ads/zzcsm;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.9.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzboh;


# instance fields
.field final synthetic zza:Lcom/google/android/gms/internal/ads/zzcsn;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzcsn;)V
    .locals 0

    .line 1
    invoke-static {p1}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzcsm;->zza:Lcom/google/android/gms/internal/ads/zzcsn;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final zza(Ljava/lang/Object;Ljava/util/Map;)V
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzcsm;->zza:Lcom/google/android/gms/internal/ads/zzcsn;

    invoke-virtual {p1, p2}, Lcom/google/android/gms/internal/ads/zzcsn;->zze(Ljava/util/Map;)Z

    move-result p2

    if-nez p2, :cond_0

    return-void

    :cond_0
    new-instance p2, Lcom/google/android/gms/internal/ads/zzcsl;

    invoke-direct {p2, p0}, Lcom/google/android/gms/internal/ads/zzcsl;-><init>(Lcom/google/android/gms/internal/ads/zzcsm;)V

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzcsn;->zzf()Ljava/util/concurrent/Executor;

    move-result-object p1

    .line 2
    invoke-interface {p1, p2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method
