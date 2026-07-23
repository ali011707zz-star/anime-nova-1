.class final synthetic Lcom/google/android/gms/internal/ads/zzeca;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.9.0"

# interfaces
.implements Lcom/google/android/gms/ads/nativead/NativeAd$OnNativeAdLoadedListener;


# instance fields
.field private final synthetic zza:Lcom/google/android/gms/internal/ads/zzecc;

.field private final synthetic zzb:Ljava/lang/String;


# direct methods
.method synthetic constructor <init>(Lcom/google/android/gms/internal/ads/zzecc;Ljava/lang/String;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzeca;->zza:Lcom/google/android/gms/internal/ads/zzecc;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzeca;->zzb:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final synthetic onNativeAdLoaded(Lcom/google/android/gms/ads/nativead/NativeAd;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzeca;->zza:Lcom/google/android/gms/internal/ads/zzecc;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzeca;->zzb:Ljava/lang/String;

    invoke-virtual {v0, v1, p1}, Lcom/google/android/gms/internal/ads/zzecc;->zzf(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method
