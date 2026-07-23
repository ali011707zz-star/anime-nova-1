.class public final Lcom/google/android/gms/internal/ads/zzaze;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.9.0"


# instance fields
.field final zza:Z

.field final zzb:Ljava/lang/String;

.field final zzc:Lcom/google/android/gms/internal/ads/zzavz;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzavi;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzavi;->zza()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzaze;->zzb:Ljava/lang/String;

    .line 2
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzavi;->zzb()Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzaze;->zza:Z

    .line 3
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzavi;->zzc()Lcom/google/android/gms/internal/ads/zzavz;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzaze;->zzc:Lcom/google/android/gms/internal/ads/zzavz;

    .line 4
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzavi;->zzd()Lcom/google/android/gms/internal/ads/zzawf;

    return-void
.end method
