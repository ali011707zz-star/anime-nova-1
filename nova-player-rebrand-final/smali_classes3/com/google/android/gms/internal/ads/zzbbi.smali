.class public final Lcom/google/android/gms/internal/ads/zzbbi;
.super Lcom/google/android/gms/internal/ads/zzbby;
.source "com.google.android.gms:play-services-ads@@24.9.0"


# instance fields
.field private final zzh:Lcom/google/android/gms/internal/ads/zzbac;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzbak;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzawg;IILcom/google/android/gms/internal/ads/zzbac;)V
    .locals 7

    .line 1
    const-string v3, "JGpzBcqG4jzyQyzoEbT5NvLNZXRWAW3o2QUKET83n6Q="

    const/16 v6, 0x5e

    const-string v2, "mt+WJZ1rsk0A64GmF9v+ldp/SXHcK6tYIctDM1+NeYG+QzoGvdHV21P9oFWIcCVk"

    move-object v0, p0

    move-object v1, p1

    move-object v4, p4

    move v5, p5

    invoke-direct/range {v0 .. v6}, Lcom/google/android/gms/internal/ads/zzbby;-><init>(Lcom/google/android/gms/internal/ads/zzbak;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzawg;II)V

    iput-object p7, v0, Lcom/google/android/gms/internal/ads/zzbbi;->zzh:Lcom/google/android/gms/internal/ads/zzbac;

    return-void
.end method


# virtual methods
.method protected final zza()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbby;->zze:Ljava/lang/reflect/Method;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzbbi;->zzh:Lcom/google/android/gms/internal/ads/zzbac;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzbac;->zzb()Ljava/util/List;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v1, v2, v3

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzbby;->zzd:Lcom/google/android/gms/internal/ads/zzawg;

    .line 2
    monitor-enter v1

    :try_start_0
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzawu;->zza(I)I

    move-result v0

    .line 3
    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/zzawg;->zzaj(I)Lcom/google/android/gms/internal/ads/zzawg;

    .line 4
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
