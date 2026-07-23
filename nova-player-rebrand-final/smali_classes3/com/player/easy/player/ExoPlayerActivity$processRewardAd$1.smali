.class public final Lcom/player/easy/player/ExoPlayerActivity$processRewardAd$1;
.super Lcom/google/android/gms/ads/rewarded/RewardedAdLoadCallback;
.source "ExoPlayerActivity.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/player/easy/player/ExoPlayerActivity;->processRewardAd(Lcom/player/easy/player/RemoteReward;Landroidx/lifecycle/MutableLiveData;ZZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001f\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u0010\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H\u0016J\u0010\u0010\u0006\u001a\u00020\u00032\u0006\u0010\u0007\u001a\u00020\u0008H\u0016\u00a8\u0006\t"
    }
    d2 = {
        "com/player/easy/player/ExoPlayerActivity$processRewardAd$1",
        "Lcom/google/android/gms/ads/rewarded/RewardedAdLoadCallback;",
        "onAdFailedToLoad",
        "",
        "adError",
        "Lcom/google/android/gms/ads/LoadAdError;",
        "onAdLoaded",
        "ad",
        "Lcom/google/android/gms/ads/rewarded/RewardedAd;",
        "app_release"
    }
    k = 0x1
    mv = {
        0x2,
        0x2,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field final synthetic $excludeAdConfig:Z

.field final synthetic $rewardAdState:Landroidx/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/MutableLiveData;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Landroidx/lifecycle/MutableLiveData;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/lifecycle/MutableLiveData;",
            "Z)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/player/easy/player/ExoPlayerActivity$processRewardAd$1;->$rewardAdState:Landroidx/lifecycle/MutableLiveData;

    iput-boolean p2, p0, Lcom/player/easy/player/ExoPlayerActivity$processRewardAd$1;->$excludeAdConfig:Z

    .line 842
    invoke-direct {p0}, Lcom/google/android/gms/ads/rewarded/RewardedAdLoadCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onAdFailedToLoad(Lcom/google/android/gms/ads/LoadAdError;)V
    .locals 3

    const-string v0, "adError"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 844
    sget-object v0, Ltimber/log/Timber;->Forest:Ltimber/log/Timber$Forest;

    invoke-virtual {p1}, Lcom/google/android/gms/ads/AdError;->getMessage()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Ltimber/log/Timber$Forest;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 845
    iget-object v0, p0, Lcom/player/easy/player/ExoPlayerActivity$processRewardAd$1;->$rewardAdState:Landroidx/lifecycle/MutableLiveData;

    new-instance v1, Lcom/player/easy/util/result/Result$Error;

    new-instance v2, Ljava/lang/Exception;

    invoke-virtual {p1}, Lcom/google/android/gms/ads/AdError;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v2, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    invoke-direct {v1, v2}, Lcom/player/easy/util/result/Result$Error;-><init>(Ljava/lang/Exception;)V

    invoke-virtual {v0, v1}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    return-void
.end method

.method public onAdLoaded(Lcom/google/android/gms/ads/rewarded/RewardedAd;)V
    .locals 3

    const-string v0, "ad"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 849
    sget-object v0, Ltimber/log/Timber;->Forest:Ltimber/log/Timber$Forest;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "Ad was loaded."

    invoke-virtual {v0, v2, v1}, Ltimber/log/Timber$Forest;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 850
    iget-object v0, p0, Lcom/player/easy/player/ExoPlayerActivity$processRewardAd$1;->$rewardAdState:Landroidx/lifecycle/MutableLiveData;

    new-instance v1, Lcom/player/easy/util/result/Result$Success;

    iget-boolean v2, p0, Lcom/player/easy/player/ExoPlayerActivity$processRewardAd$1;->$excludeAdConfig:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-static {p1, v2}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object p1

    invoke-direct {v1, p1}, Lcom/player/easy/util/result/Result$Success;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    .line 851
    iget-object p1, p0, Lcom/player/easy/player/ExoPlayerActivity$processRewardAd$1;->$rewardAdState:Landroidx/lifecycle/MutableLiveData;

    invoke-virtual {p1}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/player/easy/util/result/Result;

    if-eqz p1, :cond_0

    invoke-static {p1}, Lcom/player/easy/util/result/ResultKt;->getData(Lcom/player/easy/util/result/Result;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lkotlin/Pair;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lkotlin/Pair;->getFirst()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/ads/rewarded/RewardedAd;

    if-eqz p1, :cond_0

    .line 852
    new-instance v0, Lcom/player/easy/player/ExoPlayerActivity$processRewardAd$1$onAdLoaded$1;

    iget-object v1, p0, Lcom/player/easy/player/ExoPlayerActivity$processRewardAd$1;->$rewardAdState:Landroidx/lifecycle/MutableLiveData;

    iget-boolean v2, p0, Lcom/player/easy/player/ExoPlayerActivity$processRewardAd$1;->$excludeAdConfig:Z

    invoke-direct {v0, v1, v2}, Lcom/player/easy/player/ExoPlayerActivity$processRewardAd$1$onAdLoaded$1;-><init>(Landroidx/lifecycle/MutableLiveData;Z)V

    .line 851
    invoke-virtual {p1, v0}, Lcom/google/android/gms/ads/rewarded/RewardedAd;->setFullScreenContentCallback(Lcom/google/android/gms/ads/FullScreenContentCallback;)V

    :cond_0
    return-void
.end method

.method public bridge synthetic onAdLoaded(Ljava/lang/Object;)V
    .locals 0

    .line 842
    check-cast p1, Lcom/google/android/gms/ads/rewarded/RewardedAd;

    invoke-virtual {p0, p1}, Lcom/player/easy/player/ExoPlayerActivity$processRewardAd$1;->onAdLoaded(Lcom/google/android/gms/ads/rewarded/RewardedAd;)V

    return-void
.end method
