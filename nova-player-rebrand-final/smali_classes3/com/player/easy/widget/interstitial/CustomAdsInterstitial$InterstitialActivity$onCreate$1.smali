.class public final Lcom/player/easy/widget/interstitial/CustomAdsInterstitial$InterstitialActivity$onCreate$1;
.super Landroidx/activity/OnBackPressedCallback;
.source "CustomAdsInterstitial.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/player/easy/widget/interstitial/CustomAdsInterstitial$InterstitialActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0011\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u0008\u0010\u0002\u001a\u00020\u0003H\u0016\u00a8\u0006\u0004"
    }
    d2 = {
        "com/player/easy/widget/interstitial/CustomAdsInterstitial$InterstitialActivity$onCreate$1",
        "Landroidx/activity/OnBackPressedCallback;",
        "handleOnBackPressed",
        "",
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
.field final synthetic this$0:Lcom/player/easy/widget/interstitial/CustomAdsInterstitial$InterstitialActivity;


# direct methods
.method constructor <init>(Lcom/player/easy/widget/interstitial/CustomAdsInterstitial$InterstitialActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/player/easy/widget/interstitial/CustomAdsInterstitial$InterstitialActivity$onCreate$1;->this$0:Lcom/player/easy/widget/interstitial/CustomAdsInterstitial$InterstitialActivity;

    const/4 p1, 0x1

    .line 171
    invoke-direct {p0, p1}, Landroidx/activity/OnBackPressedCallback;-><init>(Z)V

    return-void
.end method


# virtual methods
.method public handleOnBackPressed()V
    .locals 1

    .line 173
    invoke-static {}, Lcom/player/easy/widget/interstitial/CustomAdsInterstitial;->access$getExitOnBackPress$cp()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 174
    invoke-static {}, Lcom/player/easy/widget/interstitial/CustomAdsInterstitial;->access$getCompanion$p()Lcom/player/easy/widget/interstitial/CustomAdsInterstitial$Companion;

    const/4 v0, 0x0

    invoke-static {v0}, Lcom/player/easy/widget/interstitial/CustomAdsInterstitial;->access$setAdLoaded$cp(Z)V

    .line 175
    invoke-static {}, Lcom/player/easy/widget/interstitial/CustomAdsInterstitial;->access$getAdListener$cp()Lcom/player/easy/widget/interstitial/CustomInterstitialAdListener;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/player/easy/widget/interstitial/CustomInterstitialAdListener;->onAdClosed()V

    .line 176
    :cond_0
    iget-object v0, p0, Lcom/player/easy/widget/interstitial/CustomAdsInterstitial$InterstitialActivity$onCreate$1;->this$0:Lcom/player/easy/widget/interstitial/CustomAdsInterstitial$InterstitialActivity;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    :cond_1
    return-void
.end method
