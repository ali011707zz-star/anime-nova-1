.class public final Lcom/google/android/gms/ads/nativead/NativeAdOptions;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads-api@@24.9.0"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/ads/nativead/NativeAdOptions$Builder;
    }
.end annotation


# instance fields
.field private final zza:Z

.field private final zzb:I

.field private final zzc:Z

.field private final zzd:I

.field private final zze:Lcom/google/android/gms/ads/VideoOptions;

.field private final zzf:Z

.field private final zzg:Z

.field private final zzh:I

.field private final zzi:I


# direct methods
.method synthetic constructor <init>(Lcom/google/android/gms/ads/nativead/NativeAdOptions$Builder;[B)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Lcom/google/android/gms/ads/nativead/NativeAdOptions$Builder;->zza()Z

    move-result p2

    iput-boolean p2, p0, Lcom/google/android/gms/ads/nativead/NativeAdOptions;->zza:Z

    invoke-virtual {p1}, Lcom/google/android/gms/ads/nativead/NativeAdOptions$Builder;->zzb()I

    move-result p2

    iput p2, p0, Lcom/google/android/gms/ads/nativead/NativeAdOptions;->zzb:I

    invoke-virtual {p1}, Lcom/google/android/gms/ads/nativead/NativeAdOptions$Builder;->zzc()Z

    move-result p2

    iput-boolean p2, p0, Lcom/google/android/gms/ads/nativead/NativeAdOptions;->zzc:Z

    invoke-virtual {p1}, Lcom/google/android/gms/ads/nativead/NativeAdOptions$Builder;->zze()I

    move-result p2

    iput p2, p0, Lcom/google/android/gms/ads/nativead/NativeAdOptions;->zzd:I

    invoke-virtual {p1}, Lcom/google/android/gms/ads/nativead/NativeAdOptions$Builder;->zzd()Lcom/google/android/gms/ads/VideoOptions;

    move-result-object p2

    iput-object p2, p0, Lcom/google/android/gms/ads/nativead/NativeAdOptions;->zze:Lcom/google/android/gms/ads/VideoOptions;

    invoke-virtual {p1}, Lcom/google/android/gms/ads/nativead/NativeAdOptions$Builder;->zzf()Z

    move-result p2

    iput-boolean p2, p0, Lcom/google/android/gms/ads/nativead/NativeAdOptions;->zzf:Z

    invoke-virtual {p1}, Lcom/google/android/gms/ads/nativead/NativeAdOptions$Builder;->zzg()Z

    move-result p2

    iput-boolean p2, p0, Lcom/google/android/gms/ads/nativead/NativeAdOptions;->zzg:Z

    invoke-virtual {p1}, Lcom/google/android/gms/ads/nativead/NativeAdOptions$Builder;->zzh()I

    move-result p2

    iput p2, p0, Lcom/google/android/gms/ads/nativead/NativeAdOptions;->zzh:I

    invoke-virtual {p1}, Lcom/google/android/gms/ads/nativead/NativeAdOptions$Builder;->zzj()I

    move-result p1

    iput p1, p0, Lcom/google/android/gms/ads/nativead/NativeAdOptions;->zzi:I

    return-void
.end method


# virtual methods
.method public getAdChoicesPlacement()I
    .locals 1

    .line 0
    iget v0, p0, Lcom/google/android/gms/ads/nativead/NativeAdOptions;->zzd:I

    return v0
.end method

.method public getMediaAspectRatio()I
    .locals 1

    .line 0
    iget v0, p0, Lcom/google/android/gms/ads/nativead/NativeAdOptions;->zzb:I

    return v0
.end method

.method public getVideoOptions()Lcom/google/android/gms/ads/VideoOptions;
    .locals 1

    .line 0
    iget-object v0, p0, Lcom/google/android/gms/ads/nativead/NativeAdOptions;->zze:Lcom/google/android/gms/ads/VideoOptions;

    return-object v0
.end method

.method public shouldRequestMultipleImages()Z
    .locals 1

    .line 0
    iget-boolean v0, p0, Lcom/google/android/gms/ads/nativead/NativeAdOptions;->zzc:Z

    return v0
.end method

.method public shouldReturnUrlsForImageAssets()Z
    .locals 1

    .line 0
    iget-boolean v0, p0, Lcom/google/android/gms/ads/nativead/NativeAdOptions;->zza:Z

    return v0
.end method

.method public final zza()Z
    .locals 1

    .line 0
    iget-boolean v0, p0, Lcom/google/android/gms/ads/nativead/NativeAdOptions;->zzf:Z

    return v0
.end method

.method public final zzb()I
    .locals 1

    .line 0
    iget v0, p0, Lcom/google/android/gms/ads/nativead/NativeAdOptions;->zzh:I

    return v0
.end method

.method public final zzc()Z
    .locals 1

    .line 0
    iget-boolean v0, p0, Lcom/google/android/gms/ads/nativead/NativeAdOptions;->zzg:Z

    return v0
.end method

.method public final zzd()I
    .locals 1

    .line 0
    iget v0, p0, Lcom/google/android/gms/ads/nativead/NativeAdOptions;->zzi:I

    return v0
.end method
