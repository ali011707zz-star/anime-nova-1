.class public final Lcom/google/android/gms/ads/nonagon/util/logging/csi/CsiUrlBuilder_Factory;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.9.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzikg;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static create()Lcom/google/android/gms/ads/nonagon/util/logging/csi/CsiUrlBuilder_Factory;
    .locals 1

    .line 0
    sget-object v0, Lcom/google/android/gms/ads/nonagon/util/logging/csi/zza;->zza:Lcom/google/android/gms/ads/nonagon/util/logging/csi/CsiUrlBuilder_Factory;

    return-object v0
.end method

.method public static newInstance()Lcom/google/android/gms/ads/nonagon/util/logging/csi/CsiUrlBuilder;
    .locals 1

    .line 1
    new-instance v0, Lcom/google/android/gms/ads/nonagon/util/logging/csi/CsiUrlBuilder;

    invoke-direct {v0}, Lcom/google/android/gms/ads/nonagon/util/logging/csi/CsiUrlBuilder;-><init>()V

    return-object v0
.end method


# virtual methods
.method public get()Lcom/google/android/gms/ads/nonagon/util/logging/csi/CsiUrlBuilder;
    .locals 1

    .line 1
    invoke-static {}, Lcom/google/android/gms/ads/nonagon/util/logging/csi/CsiUrlBuilder_Factory;->newInstance()Lcom/google/android/gms/ads/nonagon/util/logging/csi/CsiUrlBuilder;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic zzb()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/ads/nonagon/util/logging/csi/CsiUrlBuilder_Factory;->get()Lcom/google/android/gms/ads/nonagon/util/logging/csi/CsiUrlBuilder;

    move-result-object v0

    return-object v0
.end method
