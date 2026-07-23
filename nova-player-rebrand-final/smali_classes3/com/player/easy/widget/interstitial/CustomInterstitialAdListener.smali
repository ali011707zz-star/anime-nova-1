.class public interface abstract Lcom/player/easy/widget/interstitial/CustomInterstitialAdListener;
.super Ljava/lang/Object;
.source "CustomInterstitialAdListener.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\u0008f\u0018\u00002\u00020\u0001J\u0008\u0010\u0002\u001a\u00020\u0003H&J\u0008\u0010\u0004\u001a\u00020\u0003H&J\u0008\u0010\u0005\u001a\u00020\u0003H&J\u0014\u0010\u0006\u001a\u00020\u00032\n\u0010\u0007\u001a\u00060\u0008j\u0002`\tH&\u00a8\u0006\n\u00c0\u0006\u0003"
    }
    d2 = {
        "Lcom/player/easy/widget/interstitial/CustomInterstitialAdListener;",
        "",
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


# virtual methods
.method public abstract onAdClosed()V
.end method

.method public abstract onAdFailedToLoad(Ljava/lang/Exception;)V
.end method

.method public abstract onAdLoaded()V
.end method

.method public abstract onAdShown()V
.end method
