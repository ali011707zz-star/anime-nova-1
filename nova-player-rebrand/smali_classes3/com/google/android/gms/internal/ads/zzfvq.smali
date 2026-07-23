.class public abstract Lcom/google/android/gms/internal/ads/zzfvq;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.9.0"


# direct methods
.method public static zza(Landroid/content/Context;ILcom/google/android/gms/internal/ads/zzbch;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzfvh;)Lcom/google/android/gms/internal/ads/zzfwv;
    .locals 8

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/ads/zzfvp;

    const/4 v2, 0x1

    const-string v6, "1"

    move-object v1, p0

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v7, p6

    invoke-direct/range {v0 .. v7}, Lcom/google/android/gms/internal/ads/zzfvp;-><init>(Landroid/content/Context;ILcom/google/android/gms/internal/ads/zzbch;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzfvh;)V

    const p0, 0xc350

    .line 2
    invoke-virtual {v0, p0}, Lcom/google/android/gms/internal/ads/zzfvp;->zza(I)Lcom/google/android/gms/internal/ads/zzfwv;

    move-result-object p0

    return-object p0
.end method
