.class public abstract Lcom/google/android/gms/ads/zzb;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads-api@@24.9.0"


# static fields
.field private static volatile zza:Lcom/google/android/gms/ads/internal/client/zzck;


# direct methods
.method public static zza(Landroid/content/Context;)Lcom/google/android/gms/ads/internal/client/zzck;
    .locals 3

    .line 1
    sget-object v0, Lcom/google/android/gms/ads/zzb;->zza:Lcom/google/android/gms/ads/internal/client/zzck;

    if-nez v0, :cond_1

    const-class v0, Lcom/google/android/gms/ads/zzb;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/google/android/gms/ads/zzb;->zza:Lcom/google/android/gms/ads/internal/client/zzck;

    if-nez v1, :cond_0

    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzbb;->zzb()Lcom/google/android/gms/ads/internal/client/zzaz;

    move-result-object v1

    new-instance v2, Lcom/google/android/gms/internal/ads/zzbtp;

    invoke-direct {v2}, Lcom/google/android/gms/internal/ads/zzbtp;-><init>()V

    invoke-virtual {v1, p0, v2}, Lcom/google/android/gms/ads/internal/client/zzaz;->zzd(Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzbtt;)Lcom/google/android/gms/ads/internal/client/zzck;

    move-result-object p0

    sput-object p0, Lcom/google/android/gms/ads/zzb;->zza:Lcom/google/android/gms/ads/internal/client/zzck;

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    .line 2
    :cond_0
    :goto_0
    monitor-exit v0

    goto :goto_2

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :cond_1
    :goto_2
    sget-object p0, Lcom/google/android/gms/ads/zzb;->zza:Lcom/google/android/gms/ads/internal/client/zzck;

    return-object p0
.end method
