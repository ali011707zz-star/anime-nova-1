.class public final Lcom/google/android/gms/ads/formats/NativeAdOptions$Builder;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads-api@@24.9.0"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/ads/formats/NativeAdOptions;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private zza:Z

.field private zzb:I

.field private zzc:I

.field private zzd:Z

.field private zze:Lcom/google/android/gms/ads/VideoOptions;

.field private zzf:I

.field private zzg:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/ads/formats/NativeAdOptions$Builder;->zza:Z

    const/4 v1, -0x1

    iput v1, p0, Lcom/google/android/gms/ads/formats/NativeAdOptions$Builder;->zzb:I

    iput v0, p0, Lcom/google/android/gms/ads/formats/NativeAdOptions$Builder;->zzc:I

    iput-boolean v0, p0, Lcom/google/android/gms/ads/formats/NativeAdOptions$Builder;->zzd:Z

    const/4 v1, 0x1

    iput v1, p0, Lcom/google/android/gms/ads/formats/NativeAdOptions$Builder;->zzf:I

    iput-boolean v0, p0, Lcom/google/android/gms/ads/formats/NativeAdOptions$Builder;->zzg:Z

    return-void
.end method


# virtual methods
.method public build()Lcom/google/android/gms/ads/formats/NativeAdOptions;
    .locals 2

    .line 0
    new-instance v0, Lcom/google/android/gms/ads/formats/NativeAdOptions;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/android/gms/ads/formats/NativeAdOptions;-><init>(Lcom/google/android/gms/ads/formats/NativeAdOptions$Builder;[B)V

    return-object v0
.end method

.method public setAdChoicesPlacement(I)Lcom/google/android/gms/ads/formats/NativeAdOptions$Builder;
    .locals 0

    .line 0
    iput p1, p0, Lcom/google/android/gms/ads/formats/NativeAdOptions$Builder;->zzf:I

    return-object p0
.end method

.method public setImageOrientation(I)Lcom/google/android/gms/ads/formats/NativeAdOptions$Builder;
    .locals 0

    .line 0
    iput p1, p0, Lcom/google/android/gms/ads/formats/NativeAdOptions$Builder;->zzb:I

    return-object p0
.end method

.method public setMediaAspectRatio(I)Lcom/google/android/gms/ads/formats/NativeAdOptions$Builder;
    .locals 0

    .line 0
    iput p1, p0, Lcom/google/android/gms/ads/formats/NativeAdOptions$Builder;->zzc:I

    return-object p0
.end method

.method public setRequestCustomMuteThisAd(Z)Lcom/google/android/gms/ads/formats/NativeAdOptions$Builder;
    .locals 0

    .line 0
    iput-boolean p1, p0, Lcom/google/android/gms/ads/formats/NativeAdOptions$Builder;->zzg:Z

    return-object p0
.end method

.method public setRequestMultipleImages(Z)Lcom/google/android/gms/ads/formats/NativeAdOptions$Builder;
    .locals 0

    .line 0
    iput-boolean p1, p0, Lcom/google/android/gms/ads/formats/NativeAdOptions$Builder;->zzd:Z

    return-object p0
.end method

.method public setReturnUrlsForImageAssets(Z)Lcom/google/android/gms/ads/formats/NativeAdOptions$Builder;
    .locals 0

    .line 0
    iput-boolean p1, p0, Lcom/google/android/gms/ads/formats/NativeAdOptions$Builder;->zza:Z

    return-object p0
.end method

.method public setVideoOptions(Lcom/google/android/gms/ads/VideoOptions;)Lcom/google/android/gms/ads/formats/NativeAdOptions$Builder;
    .locals 0

    .line 0
    iput-object p1, p0, Lcom/google/android/gms/ads/formats/NativeAdOptions$Builder;->zze:Lcom/google/android/gms/ads/VideoOptions;

    return-object p0
.end method

.method final synthetic zza()Z
    .locals 1

    .line 0
    iget-boolean v0, p0, Lcom/google/android/gms/ads/formats/NativeAdOptions$Builder;->zza:Z

    return v0
.end method

.method final synthetic zzb()I
    .locals 1

    .line 0
    iget v0, p0, Lcom/google/android/gms/ads/formats/NativeAdOptions$Builder;->zzb:I

    return v0
.end method

.method final synthetic zzc()I
    .locals 1

    .line 0
    iget v0, p0, Lcom/google/android/gms/ads/formats/NativeAdOptions$Builder;->zzc:I

    return v0
.end method

.method final synthetic zzd()Z
    .locals 1

    .line 0
    iget-boolean v0, p0, Lcom/google/android/gms/ads/formats/NativeAdOptions$Builder;->zzd:Z

    return v0
.end method

.method final synthetic zze()Lcom/google/android/gms/ads/VideoOptions;
    .locals 1

    .line 0
    iget-object v0, p0, Lcom/google/android/gms/ads/formats/NativeAdOptions$Builder;->zze:Lcom/google/android/gms/ads/VideoOptions;

    return-object v0
.end method

.method final synthetic zzf()I
    .locals 1

    .line 0
    iget v0, p0, Lcom/google/android/gms/ads/formats/NativeAdOptions$Builder;->zzf:I

    return v0
.end method

.method final synthetic zzg()Z
    .locals 1

    .line 0
    iget-boolean v0, p0, Lcom/google/android/gms/ads/formats/NativeAdOptions$Builder;->zzg:Z

    return v0
.end method
