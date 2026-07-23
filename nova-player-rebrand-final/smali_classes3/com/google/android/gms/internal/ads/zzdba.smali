.class public final Lcom/google/android/gms/internal/ads/zzdba;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.9.0"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final zza(Landroid/content/Context;Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;Lcom/google/android/gms/internal/ads/zzfir;Lcom/google/android/gms/internal/ads/zzcca;)Lcom/google/android/gms/internal/ads/zzcce;
    .locals 6

    .line 1
    iget-object v3, p2, Lcom/google/android/gms/internal/ads/zzfir;->zzA:Lcom/google/android/gms/internal/ads/zzccb;

    const/4 v0, 0x0

    if-eqz v3, :cond_1

    .line 2
    iget-object p2, p2, Lcom/google/android/gms/internal/ads/zzfir;->zzs:Lcom/google/android/gms/internal/ads/zzfiw;

    if-nez p2, :cond_0

    :goto_0
    move-object v4, v0

    goto :goto_1

    .line 3
    :cond_0
    iget-object v0, p2, Lcom/google/android/gms/internal/ads/zzfiw;->zzb:Ljava/lang/String;

    goto :goto_0

    :goto_1
    new-instance v0, Lcom/google/android/gms/internal/ads/zzcbz;

    move-object v1, p0

    move-object v2, p1

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/ads/zzcbz;-><init>(Landroid/content/Context;Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;Lcom/google/android/gms/internal/ads/zzccb;Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzcca;)V

    :cond_1
    return-object v0
.end method
