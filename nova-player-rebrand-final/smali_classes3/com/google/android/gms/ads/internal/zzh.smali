.class final Lcom/google/android/gms/ads/internal/zzh;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.9.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzfwf;


# instance fields
.field final synthetic zza:Lcom/google/android/gms/ads/internal/zzk;


# direct methods
.method constructor <init>(Lcom/google/android/gms/ads/internal/zzk;)V
    .locals 0

    .line 1
    invoke-static {p1}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Lcom/google/android/gms/ads/internal/zzh;->zza:Lcom/google/android/gms/ads/internal/zzk;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final zza(IJ)V
    .locals 2

    .line 1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sub-long/2addr v0, p2

    iget-object p2, p0, Lcom/google/android/gms/ads/internal/zzh;->zza:Lcom/google/android/gms/ads/internal/zzk;

    invoke-virtual {p2}, Lcom/google/android/gms/ads/internal/zzk;->zzo()Lcom/google/android/gms/internal/ads/zzfvh;

    move-result-object p2

    invoke-virtual {p2, p1, v0, v1}, Lcom/google/android/gms/internal/ads/zzfvh;->zzb(IJ)Lcom/google/android/gms/tasks/Task;

    return-void
.end method

.method public final zzb(IJLjava/lang/String;)V
    .locals 2

    .line 1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sub-long/2addr v0, p2

    iget-object p2, p0, Lcom/google/android/gms/ads/internal/zzh;->zza:Lcom/google/android/gms/ads/internal/zzk;

    invoke-virtual {p2}, Lcom/google/android/gms/ads/internal/zzk;->zzo()Lcom/google/android/gms/internal/ads/zzfvh;

    move-result-object p2

    .line 2
    invoke-virtual {p2, p1, v0, v1, p4}, Lcom/google/android/gms/internal/ads/zzfvh;->zzf(IJLjava/lang/String;)Lcom/google/android/gms/tasks/Task;

    return-void
.end method
