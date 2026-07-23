.class public Lcom/google/android/gms/ads/internal/client/LiteSdkInfo;
.super Lcom/google/android/gms/ads/internal/client/zzcx;
.source "com.google.android.gms:play-services-ads-api@@24.9.0"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/ads/internal/client/zzcx;-><init>()V

    return-void
.end method


# virtual methods
.method public getAdapterCreator()Lcom/google/android/gms/internal/ads/zzbtt;
    .locals 1

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/ads/zzbtp;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzbtp;-><init>()V

    return-object v0
.end method

.method public getLiteSdkVersion()Lcom/google/android/gms/ads/internal/client/zzfc;
    .locals 3

    .line 1
    new-instance v0, Lcom/google/android/gms/ads/internal/client/zzfc;

    const v1, 0xf2ea478

    const-string v2, "24.9.0"

    .line 2
    invoke-direct {v0, v1, v1, v2}, Lcom/google/android/gms/ads/internal/client/zzfc;-><init>(IILjava/lang/String;)V

    return-object v0
.end method
