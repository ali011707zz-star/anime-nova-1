.class final synthetic Lcom/google/android/gms/ads/zzd;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads-api@@24.9.0"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic zza:Lcom/google/android/gms/ads/BaseAdView;

.field private final synthetic zzb:Lcom/google/android/gms/ads/AdRequest;


# direct methods
.method synthetic constructor <init>(Lcom/google/android/gms/ads/BaseAdView;Lcom/google/android/gms/ads/AdRequest;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/ads/zzd;->zza:Lcom/google/android/gms/ads/BaseAdView;

    iput-object p2, p0, Lcom/google/android/gms/ads/zzd;->zzb:Lcom/google/android/gms/ads/AdRequest;

    return-void
.end method


# virtual methods
.method public final synthetic run()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/ads/zzd;->zzb:Lcom/google/android/gms/ads/AdRequest;

    iget-object v1, p0, Lcom/google/android/gms/ads/zzd;->zza:Lcom/google/android/gms/ads/BaseAdView;

    :try_start_0
    iget-object v2, v1, Lcom/google/android/gms/ads/BaseAdView;->zza:Lcom/google/android/gms/ads/internal/client/zzen;

    iget-object v0, v0, Lcom/google/android/gms/ads/AdRequest;->zza:Lcom/google/android/gms/ads/internal/client/zzek;

    invoke-virtual {v2, v0}, Lcom/google/android/gms/ads/internal/client/zzen;->zzg(Lcom/google/android/gms/ads/internal/client/zzek;)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    .line 2
    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/gms/internal/ads/zzbyp;->zza(Landroid/content/Context;)Lcom/google/android/gms/internal/ads/zzbyr;

    move-result-object v1

    const-string v2, "BaseAdView.loadAd"

    .line 3
    invoke-interface {v1, v0, v2}, Lcom/google/android/gms/internal/ads/zzbyr;->zzh(Ljava/lang/Throwable;Ljava/lang/String;)V

    return-void
.end method
