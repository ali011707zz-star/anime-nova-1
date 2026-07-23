.class public final Lcom/player/easy/player/ExoPlayerActivity$processRewardAd$1$onAdLoaded$1;
.super Lcom/google/android/gms/ads/FullScreenContentCallback;
.source "ExoPlayerActivity.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/player/easy/player/ExoPlayerActivity$processRewardAd$1;->onAdLoaded(Lcom/google/android/gms/ads/rewarded/RewardedAd;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0019\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u0008\u0010\u0002\u001a\u00020\u0003H\u0016J\u0010\u0010\u0004\u001a\u00020\u00032\u0006\u0010\u0005\u001a\u00020\u0006H\u0016\u00a8\u0006\u0007"
    }
    d2 = {
        "com/player/easy/player/ExoPlayerActivity$processRewardAd$1$onAdLoaded$1",
        "Lcom/google/android/gms/ads/FullScreenContentCallback;",
        "onAdDismissedFullScreenContent",
        "",
        "onAdFailedToShowFullScreenContent",
        "p0",
        "Lcom/google/android/gms/ads/AdError;",
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

    iput-object p1, p0, Lcom/player/easy/player/ExoPlayerActivity$processRewardAd$1$onAdLoaded$1;->$rewardAdState:Landroidx/lifecycle/MutableLiveData;

    iput-boolean p2, p0, Lcom/player/easy/player/ExoPlayerActivity$processRewardAd$1$onAdLoaded$1;->$excludeAdConfig:Z

    .line 852
    invoke-direct {p0}, Lcom/google/android/gms/ads/FullScreenContentCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onAdDismissedFullScreenContent()V
    .locals 4

    .line 854
    iget-object v0, p0, Lcom/player/easy/player/ExoPlayerActivity$processRewardAd$1$onAdLoaded$1;->$rewardAdState:Landroidx/lifecycle/MutableLiveData;

    new-instance v1, Lcom/player/easy/util/result/Result$Success;

    iget-boolean v2, p0, Lcom/player/easy/player/ExoPlayerActivity$processRewardAd$1$onAdLoaded$1;->$excludeAdConfig:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v3, v2}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/player/easy/util/result/Result$Success;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    return-void
.end method

.method public onAdFailedToShowFullScreenContent(Lcom/google/android/gms/ads/AdError;)V
    .locals 3

    const-string v0, "p0"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 858
    iget-object p1, p0, Lcom/player/easy/player/ExoPlayerActivity$processRewardAd$1$onAdLoaded$1;->$rewardAdState:Landroidx/lifecycle/MutableLiveData;

    new-instance v0, Lcom/player/easy/util/result/Result$Success;

    iget-boolean v1, p0, Lcom/player/easy/player/ExoPlayerActivity$processRewardAd$1$onAdLoaded$1;->$excludeAdConfig:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v2, v1}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/player/easy/util/result/Result$Success;-><init>(Ljava/lang/Object;)V

    invoke-virtual {p1, v0}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    return-void
.end method
