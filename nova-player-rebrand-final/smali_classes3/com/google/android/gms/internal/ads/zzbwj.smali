.class final Lcom/google/android/gms/internal/ads/zzbwj;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.9.0"

# interfaces
.implements Lcom/google/android/gms/ads/internal/overlay/zzr;


# instance fields
.field final synthetic zza:Lcom/google/android/gms/internal/ads/zzbwl;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzbwl;)V
    .locals 0

    .line 1
    invoke-static {p1}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzbwj;->zza:Lcom/google/android/gms/internal/ads/zzbwl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final zzdS()V
    .locals 1

    .line 1
    const-string v0, "Delay close AdMobCustomTabsAdapter overlay."

    invoke-static {v0}, Lcom/google/android/gms/ads/internal/util/client/zzo;->zzd(Ljava/lang/String;)V

    return-void
.end method

.method public final zzdT(I)V
    .locals 1

    .line 1
    const-string p1, "AdMobCustomTabsAdapter overlay is closed."

    invoke-static {p1}, Lcom/google/android/gms/ads/internal/util/client/zzo;->zzd(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzbwj;->zza:Lcom/google/android/gms/internal/ads/zzbwl;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzbwl;->zzb()Lcom/google/android/gms/ads/mediation/MediationInterstitialListener;

    move-result-object v0

    .line 2
    invoke-interface {v0, p1}, Lcom/google/android/gms/ads/mediation/MediationInterstitialListener;->onAdClosed(Lcom/google/android/gms/ads/mediation/MediationInterstitialAdapter;)V

    return-void
.end method

.method public final zzdo()V
    .locals 1

    .line 1
    const-string v0, "AdMobCustomTabsAdapter overlay is created."

    invoke-static {v0}, Lcom/google/android/gms/ads/internal/util/client/zzo;->zzd(Ljava/lang/String;)V

    return-void
.end method

.method public final zzdp()V
    .locals 1

    .line 1
    const-string v0, "AdMobCustomTabsAdapter overlay is started."

    invoke-static {v0}, Lcom/google/android/gms/ads/internal/util/client/zzo;->zzd(Ljava/lang/String;)V

    return-void
.end method

.method public final zzdq()V
    .locals 1

    .line 1
    const-string v0, "AdMobCustomTabsAdapter overlay is restarted."

    invoke-static {v0}, Lcom/google/android/gms/ads/internal/util/client/zzo;->zzd(Ljava/lang/String;)V

    return-void
.end method

.method public final zzdv()V
    .locals 0

    .line 0
    return-void
.end method

.method public final zzdw()V
    .locals 1

    .line 1
    const-string v0, "AdMobCustomTabsAdapter overlay is paused."

    invoke-static {v0}, Lcom/google/android/gms/ads/internal/util/client/zzo;->zzd(Ljava/lang/String;)V

    return-void
.end method

.method public final zzdx()V
    .locals 1

    .line 1
    const-string v0, "AdMobCustomTabsAdapter overlay is resumed."

    invoke-static {v0}, Lcom/google/android/gms/ads/internal/util/client/zzo;->zzd(Ljava/lang/String;)V

    return-void
.end method

.method public final zzdy()V
    .locals 1

    .line 1
    const-string v0, "AdMobCustomTabsAdapter overlay is stopped."

    invoke-static {v0}, Lcom/google/android/gms/ads/internal/util/client/zzo;->zzd(Ljava/lang/String;)V

    return-void
.end method

.method public final zzdz()V
    .locals 1

    .line 1
    const-string v0, "AdMobCustomTabsAdapter overlay is destroyed."

    invoke-static {v0}, Lcom/google/android/gms/ads/internal/util/client/zzo;->zzd(Ljava/lang/String;)V

    return-void
.end method

.method public final zzh()V
    .locals 2

    .line 1
    const-string v0, "Opening AdMobCustomTabsAdapter overlay."

    invoke-static {v0}, Lcom/google/android/gms/ads/internal/util/client/zzo;->zzd(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbwj;->zza:Lcom/google/android/gms/internal/ads/zzbwl;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzbwl;->zzb()Lcom/google/android/gms/ads/mediation/MediationInterstitialListener;

    move-result-object v1

    .line 2
    invoke-interface {v1, v0}, Lcom/google/android/gms/ads/mediation/MediationInterstitialListener;->onAdOpened(Lcom/google/android/gms/ads/mediation/MediationInterstitialAdapter;)V

    return-void
.end method
