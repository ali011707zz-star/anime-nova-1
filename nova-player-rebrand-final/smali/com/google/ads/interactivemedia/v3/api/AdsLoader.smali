.class public interface abstract Lcom/google/ads/interactivemedia/v3/api/AdsLoader;
.super Ljava/lang/Object;
.source "com.google.ads.interactivemedia.v3:interactivemedia@@3.38.0"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/ads/interactivemedia/v3/api/AdsLoader$AdsLoadedListener;
    }
.end annotation


# virtual methods
.method public abstract addAdErrorListener(Lcom/google/ads/interactivemedia/v3/api/AdErrorEvent$AdErrorListener;)V
.end method

.method public abstract addAdsLoadedListener(Lcom/google/ads/interactivemedia/v3/api/AdsLoader$AdsLoadedListener;)V
.end method

.method public abstract release()V
.end method

.method public abstract removeAdErrorListener(Lcom/google/ads/interactivemedia/v3/api/AdErrorEvent$AdErrorListener;)V
.end method

.method public abstract removeAdsLoadedListener(Lcom/google/ads/interactivemedia/v3/api/AdsLoader$AdsLoadedListener;)V
.end method

.method public abstract requestAds(Lcom/google/ads/interactivemedia/v3/api/AdsRequest;)V
.end method

.method public abstract requestStream(Lcom/google/ads/interactivemedia/v3/api/StreamRequest;)Ljava/lang/String;
.end method
