.class public final Lcom/google/android/gms/ads/VideoOptions$Builder;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads-api@@24.9.0"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/ads/VideoOptions;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private zza:Z

.field private zzb:Z

.field private zzc:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/ads/VideoOptions$Builder;->zza:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/ads/VideoOptions$Builder;->zzb:Z

    iput-boolean v0, p0, Lcom/google/android/gms/ads/VideoOptions$Builder;->zzc:Z

    return-void
.end method


# virtual methods
.method public build()Lcom/google/android/gms/ads/VideoOptions;
    .locals 2

    .line 0
    new-instance v0, Lcom/google/android/gms/ads/VideoOptions;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/android/gms/ads/VideoOptions;-><init>(Lcom/google/android/gms/ads/VideoOptions$Builder;[B)V

    return-object v0
.end method

.method public setClickToExpandRequested(Z)Lcom/google/android/gms/ads/VideoOptions$Builder;
    .locals 0

    .line 0
    iput-boolean p1, p0, Lcom/google/android/gms/ads/VideoOptions$Builder;->zzc:Z

    return-object p0
.end method

.method public setCustomControlsRequested(Z)Lcom/google/android/gms/ads/VideoOptions$Builder;
    .locals 0

    .line 0
    iput-boolean p1, p0, Lcom/google/android/gms/ads/VideoOptions$Builder;->zzb:Z

    return-object p0
.end method

.method public setStartMuted(Z)Lcom/google/android/gms/ads/VideoOptions$Builder;
    .locals 0

    .line 0
    iput-boolean p1, p0, Lcom/google/android/gms/ads/VideoOptions$Builder;->zza:Z

    return-object p0
.end method

.method final synthetic zza()Z
    .locals 1

    .line 0
    iget-boolean v0, p0, Lcom/google/android/gms/ads/VideoOptions$Builder;->zza:Z

    return v0
.end method

.method final synthetic zzb()Z
    .locals 1

    .line 0
    iget-boolean v0, p0, Lcom/google/android/gms/ads/VideoOptions$Builder;->zzb:Z

    return v0
.end method

.method final synthetic zzc()Z
    .locals 1

    .line 0
    iget-boolean v0, p0, Lcom/google/android/gms/ads/VideoOptions$Builder;->zzc:Z

    return v0
.end method
