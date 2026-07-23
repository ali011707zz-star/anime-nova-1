.class public Lcom/google/ads/mediation/facebook/FacebookRewardedInterstitialAd;
.super Lcom/google/ads/mediation/facebook/FacebookRewardedAd;
.source "FacebookRewardedInterstitialAd.java"


# direct methods
.method public constructor <init>(Lcom/google/android/gms/ads/mediation/MediationAdLoadCallback;Lcom/google/ads/mediation/facebook/MetaFactory;)V
    .locals 0

    .line 28
    invoke-direct {p0, p1, p2}, Lcom/google/ads/mediation/facebook/FacebookRewardedAd;-><init>(Lcom/google/android/gms/ads/mediation/MediationAdLoadCallback;Lcom/google/ads/mediation/facebook/MetaFactory;)V

    return-void
.end method


# virtual methods
.method getAdExperienceType()Lcom/facebook/ads/AdExperienceType;
    .locals 1

    .line 34
    sget-object v0, Lcom/facebook/ads/AdExperienceType;->AD_EXPERIENCE_TYPE_REWARDED_INTERSTITIAL:Lcom/facebook/ads/AdExperienceType;

    return-object v0
.end method
