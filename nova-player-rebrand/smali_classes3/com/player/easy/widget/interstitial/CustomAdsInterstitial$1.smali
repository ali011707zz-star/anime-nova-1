.class public final Lcom/player/easy/widget/interstitial/CustomAdsInterstitial$1;
.super Ljava/lang/Object;
.source "CustomAdsInterstitial.kt"

# interfaces
.implements Landroidx/lifecycle/LifecycleObserver;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/player/easy/widget/interstitial/CustomAdsInterstitial;-><init>(Landroid/content/Context;Lcom/player/easy/data/CustomAdConfig;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0011\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u0008\u0010\u0002\u001a\u00020\u0003H\u0007\u00a8\u0006\u0004"
    }
    d2 = {
        "com/player/easy/widget/interstitial/CustomAdsInterstitial$1",
        "Landroidx/lifecycle/LifecycleObserver;",
        "destroy",
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
.field final synthetic this$0:Lcom/player/easy/widget/interstitial/CustomAdsInterstitial;


# direct methods
.method constructor <init>(Lcom/player/easy/widget/interstitial/CustomAdsInterstitial;)V
    .locals 0

    iput-object p1, p0, Lcom/player/easy/widget/interstitial/CustomAdsInterstitial$1;->this$0:Lcom/player/easy/widget/interstitial/CustomAdsInterstitial;

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final destroy()V
    .locals 3
    .annotation runtime Landroidx/lifecycle/OnLifecycleEvent;
        value = .enum Landroidx/lifecycle/Lifecycle$Event;->ON_DESTROY:Landroidx/lifecycle/Lifecycle$Event;
    .end annotation

    .line 40
    sget-object v0, Ltimber/log/Timber;->Forest:Ltimber/log/Timber$Forest;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "destroy custom CustomAdsInterstitial"

    invoke-virtual {v0, v2, v1}, Ltimber/log/Timber$Forest;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 41
    iget-object v0, p0, Lcom/player/easy/widget/interstitial/CustomAdsInterstitial$1;->this$0:Lcom/player/easy/widget/interstitial/CustomAdsInterstitial;

    invoke-static {v0}, Lcom/player/easy/widget/interstitial/CustomAdsInterstitial;->access$dispose(Lcom/player/easy/widget/interstitial/CustomAdsInterstitial;)V

    .line 42
    invoke-static {}, Lcom/player/easy/widget/interstitial/CustomAdsInterstitial;->access$getCompanion$p()Lcom/player/easy/widget/interstitial/CustomAdsInterstitial$Companion;

    const/4 v0, 0x0

    invoke-static {v0}, Lcom/player/easy/widget/interstitial/CustomAdsInterstitial;->access$set_adConfig$cp(Lcom/player/easy/data/CustomAdConfig;)V

    .line 43
    invoke-static {}, Lcom/player/easy/widget/interstitial/CustomAdsInterstitial;->access$getCompanion$p()Lcom/player/easy/widget/interstitial/CustomAdsInterstitial$Companion;

    invoke-static {v0}, Lcom/player/easy/widget/interstitial/CustomAdsInterstitial;->access$setAdListener$cp(Lcom/player/easy/widget/interstitial/CustomInterstitialAdListener;)V

    return-void
.end method
