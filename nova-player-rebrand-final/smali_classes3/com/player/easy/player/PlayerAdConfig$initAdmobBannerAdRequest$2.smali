.class public final Lcom/player/easy/player/PlayerAdConfig$initAdmobBannerAdRequest$2;
.super Lcom/google/android/gms/ads/AdListener;
.source "PlayerAdConfig.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/player/easy/player/PlayerAdConfig;->initAdmobBannerAdRequest(Lcom/player/easy/data/AdConfig;)V
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
        "com/player/easy/player/PlayerAdConfig$initAdmobBannerAdRequest$2",
        "Lcom/google/android/gms/ads/AdListener;",
        "onAdLoaded",
        "",
        "onAdFailedToLoad",
        "p0",
        "Lcom/google/android/gms/ads/LoadAdError;",
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

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nPlayerAdConfig.kt\nKotlin\n*S Kotlin\n*F\n+ 1 PlayerAdConfig.kt\ncom/player/easy/player/PlayerAdConfig$initAdmobBannerAdRequest$2\n+ 2 View.kt\nandroidx/core/view/ViewKt\n*L\n1#1,283:1\n257#2,2:284\n*S KotlinDebug\n*F\n+ 1 PlayerAdConfig.kt\ncom/player/easy/player/PlayerAdConfig$initAdmobBannerAdRequest$2\n*L\n195#1:284,2\n*E\n"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/player/easy/player/PlayerAdConfig;


# direct methods
.method constructor <init>(Lcom/player/easy/player/PlayerAdConfig;)V
    .locals 0

    iput-object p1, p0, Lcom/player/easy/player/PlayerAdConfig$initAdmobBannerAdRequest$2;->this$0:Lcom/player/easy/player/PlayerAdConfig;

    .line 193
    invoke-direct {p0}, Lcom/google/android/gms/ads/AdListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onAdFailedToLoad(Lcom/google/android/gms/ads/LoadAdError;)V
    .locals 1

    const-string v0, "p0"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 200
    iget-object p1, p0, Lcom/player/easy/player/PlayerAdConfig$initAdmobBannerAdRequest$2;->this$0:Lcom/player/easy/player/PlayerAdConfig;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/player/easy/player/PlayerAdConfig;->access$setAdLoaded$p(Lcom/player/easy/player/PlayerAdConfig;Z)V

    return-void
.end method

.method public onAdLoaded()V
    .locals 2

    .line 195
    iget-object v0, p0, Lcom/player/easy/player/PlayerAdConfig$initAdmobBannerAdRequest$2;->this$0:Lcom/player/easy/player/PlayerAdConfig;

    invoke-static {v0}, Lcom/player/easy/player/PlayerAdConfig;->access$getPlaceHolder$p(Lcom/player/easy/player/PlayerAdConfig;)Landroid/view/ViewGroup;

    move-result-object v0

    const-string v1, "access$getPlaceHolder$p(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v1, 0x8

    .line 284
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 196
    iget-object v0, p0, Lcom/player/easy/player/PlayerAdConfig$initAdmobBannerAdRequest$2;->this$0:Lcom/player/easy/player/PlayerAdConfig;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/player/easy/player/PlayerAdConfig;->access$setAdLoaded$p(Lcom/player/easy/player/PlayerAdConfig;Z)V

    return-void
.end method
