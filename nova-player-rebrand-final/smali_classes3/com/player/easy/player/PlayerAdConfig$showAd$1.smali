.class public final Lcom/player/easy/player/PlayerAdConfig$showAd$1;
.super Lcom/google/android/gms/ads/FullScreenContentCallback;
.source "PlayerAdConfig.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/player/easy/player/PlayerAdConfig;->showAd()V
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
        "com/player/easy/player/PlayerAdConfig$showAd$1",
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
.field final synthetic this$0:Lcom/player/easy/player/PlayerAdConfig;


# direct methods
.method constructor <init>(Lcom/player/easy/player/PlayerAdConfig;)V
    .locals 0

    iput-object p1, p0, Lcom/player/easy/player/PlayerAdConfig$showAd$1;->this$0:Lcom/player/easy/player/PlayerAdConfig;

    .line 153
    invoke-direct {p0}, Lcom/google/android/gms/ads/FullScreenContentCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onAdDismissedFullScreenContent()V
    .locals 2

    .line 155
    iget-object v0, p0, Lcom/player/easy/player/PlayerAdConfig$showAd$1;->this$0:Lcom/player/easy/player/PlayerAdConfig;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/player/easy/player/PlayerAdConfig;->access$setAdmobInterstitialAd$p(Lcom/player/easy/player/PlayerAdConfig;Lcom/google/android/gms/ads/interstitial/InterstitialAd;)V

    return-void
.end method

.method public onAdFailedToShowFullScreenContent(Lcom/google/android/gms/ads/AdError;)V
    .locals 1

    const-string v0, "p0"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 159
    iget-object p1, p0, Lcom/player/easy/player/PlayerAdConfig$showAd$1;->this$0:Lcom/player/easy/player/PlayerAdConfig;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/player/easy/player/PlayerAdConfig;->access$setAdmobInterstitialAd$p(Lcom/player/easy/player/PlayerAdConfig;Lcom/google/android/gms/ads/interstitial/InterstitialAd;)V

    return-void
.end method
