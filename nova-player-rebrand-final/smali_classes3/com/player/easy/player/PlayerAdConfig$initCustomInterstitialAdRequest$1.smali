.class public final Lcom/player/easy/player/PlayerAdConfig$initCustomInterstitialAdRequest$1;
.super Ljava/lang/Object;
.source "PlayerAdConfig.kt"

# interfaces
.implements Lcom/player/easy/widget/interstitial/CustomInterstitialAdListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/player/easy/player/PlayerAdConfig;->initCustomInterstitialAdRequest(Lcom/player/easy/data/CustomAdConfig;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001d\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u0008\u0010\u0002\u001a\u00020\u0003H\u0016J\u0008\u0010\u0004\u001a\u00020\u0003H\u0016J\u0008\u0010\u0005\u001a\u00020\u0003H\u0016J\u0014\u0010\u0006\u001a\u00020\u00032\n\u0010\u0007\u001a\u00060\u0008j\u0002`\tH\u0016\u00a8\u0006\n"
    }
    d2 = {
        "com/player/easy/player/PlayerAdConfig$initCustomInterstitialAdRequest$1",
        "Lcom/player/easy/widget/interstitial/CustomInterstitialAdListener;",
        "onAdLoaded",
        "",
        "onAdClosed",
        "onAdShown",
        "onAdFailedToLoad",
        "exception",
        "Ljava/lang/Exception;",
        "Lkotlin/Exception;",
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

    iput-object p1, p0, Lcom/player/easy/player/PlayerAdConfig$initCustomInterstitialAdRequest$1;->this$0:Lcom/player/easy/player/PlayerAdConfig;

    .line 261
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAdClosed()V
    .locals 3

    .line 267
    sget-object v0, Ltimber/log/Timber;->Forest:Ltimber/log/Timber$Forest;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "onAdClosed"

    invoke-virtual {v0, v2, v1}, Ltimber/log/Timber$Forest;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 268
    iget-object v0, p0, Lcom/player/easy/player/PlayerAdConfig$initCustomInterstitialAdRequest$1;->this$0:Lcom/player/easy/player/PlayerAdConfig;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/player/easy/player/PlayerAdConfig;->access$setCustomInterstitialAd$p(Lcom/player/easy/player/PlayerAdConfig;Lcom/player/easy/widget/interstitial/CustomAdsInterstitial;)V

    return-void
.end method

.method public onAdFailedToLoad(Ljava/lang/Exception;)V
    .locals 1

    const-string v0, "exception"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 276
    sget-object v0, Ltimber/log/Timber;->Forest:Ltimber/log/Timber$Forest;

    invoke-virtual {v0, p1}, Ltimber/log/Timber$Forest;->e(Ljava/lang/Throwable;)V

    return-void
.end method

.method public onAdLoaded()V
    .locals 3

    .line 263
    sget-object v0, Ltimber/log/Timber;->Forest:Ltimber/log/Timber$Forest;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "onAdLoaded"

    invoke-virtual {v0, v2, v1}, Ltimber/log/Timber$Forest;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public onAdShown()V
    .locals 3

    .line 272
    sget-object v0, Ltimber/log/Timber;->Forest:Ltimber/log/Timber$Forest;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "onAdShown"

    invoke-virtual {v0, v2, v1}, Ltimber/log/Timber$Forest;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method
