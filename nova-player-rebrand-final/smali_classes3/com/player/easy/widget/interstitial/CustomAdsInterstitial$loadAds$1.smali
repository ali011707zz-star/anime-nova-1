.class final Lcom/player/easy/widget/interstitial/CustomAdsInterstitial$loadAds$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "CustomAdsInterstitial.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/player/easy/widget/interstitial/CustomAdsInterstitial;->loadAds(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/coroutines/jvm/internal/SuspendLambda;",
        "Lkotlin/jvm/functions/Function1<",
        "Lkotlin/coroutines/Continuation<",
        "-",
        "Lkotlin/Unit;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0006\n\u0000\n\u0002\u0010\u0002\u0010\u0000\u001a\u00020\u0001H\n"
    }
    d2 = {
        "<anonymous>",
        ""
    }
    k = 0x3
    mv = {
        0x2,
        0x2,
        0x0
    }
    xi = 0x30
.end annotation

.annotation runtime Lkotlin/coroutines/jvm/internal/DebugMetadata;
    c = "com.player.easy.widget.interstitial.CustomAdsInterstitial$loadAds$1"
    f = "CustomAdsInterstitial.kt"
    i = {}
    l = {
        0x76
    }
    m = "invokeSuspend"
    n = {}
    s = {}
    v = 0x1
.end annotation


# instance fields
.field final synthetic $context:Landroid/content/Context;

.field final synthetic $imageUrlToLoad:Ljava/lang/String;

.field label:I

.field final synthetic this$0:Lcom/player/easy/widget/interstitial/CustomAdsInterstitial;


# direct methods
.method constructor <init>(Lcom/player/easy/widget/interstitial/CustomAdsInterstitial;Landroid/content/Context;Ljava/lang/String;Lkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/player/easy/widget/interstitial/CustomAdsInterstitial;",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/player/easy/widget/interstitial/CustomAdsInterstitial$loadAds$1;",
            ">;)V"
        }
    .end annotation

    .line 0
    iput-object p1, p0, Lcom/player/easy/widget/interstitial/CustomAdsInterstitial$loadAds$1;->this$0:Lcom/player/easy/widget/interstitial/CustomAdsInterstitial;

    iput-object p2, p0, Lcom/player/easy/widget/interstitial/CustomAdsInterstitial$loadAds$1;->$context:Landroid/content/Context;

    iput-object p3, p0, Lcom/player/easy/widget/interstitial/CustomAdsInterstitial$loadAds$1;->$imageUrlToLoad:Ljava/lang/String;

    const/4 p1, 0x1

    invoke-direct {p0, p1, p4}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/coroutines/Continuation<",
            "*>;)",
            "Lkotlin/coroutines/Continuation<",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    .line 0
    new-instance v0, Lcom/player/easy/widget/interstitial/CustomAdsInterstitial$loadAds$1;

    iget-object v1, p0, Lcom/player/easy/widget/interstitial/CustomAdsInterstitial$loadAds$1;->this$0:Lcom/player/easy/widget/interstitial/CustomAdsInterstitial;

    iget-object v2, p0, Lcom/player/easy/widget/interstitial/CustomAdsInterstitial$loadAds$1;->$context:Landroid/content/Context;

    iget-object v3, p0, Lcom/player/easy/widget/interstitial/CustomAdsInterstitial$loadAds$1;->$imageUrlToLoad:Ljava/lang/String;

    invoke-direct {v0, v1, v2, v3, p1}, Lcom/player/easy/widget/interstitial/CustomAdsInterstitial$loadAds$1;-><init>(Lcom/player/easy/widget/interstitial/CustomAdsInterstitial;Landroid/content/Context;Ljava/lang/String;Lkotlin/coroutines/Continuation;)V

    return-object v0
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 0
    check-cast p1, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1}, Lcom/player/easy/widget/interstitial/CustomAdsInterstitial$loadAds$1;->invoke(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invoke(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 0
    invoke-virtual {p0, p1}, Lcom/player/easy/widget/interstitial/CustomAdsInterstitial$loadAds$1;->create(Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lcom/player/easy/widget/interstitial/CustomAdsInterstitial$loadAds$1;

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p1, v0}, Lcom/player/easy/widget/interstitial/CustomAdsInterstitial$loadAds$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v0

    .line 117
    iget v1, p0, Lcom/player/easy/widget/interstitial/CustomAdsInterstitial$loadAds$1;->label:I

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    if-ne v1, v2, :cond_0

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 118
    iget-object p1, p0, Lcom/player/easy/widget/interstitial/CustomAdsInterstitial$loadAds$1;->this$0:Lcom/player/easy/widget/interstitial/CustomAdsInterstitial;

    iget-object v1, p0, Lcom/player/easy/widget/interstitial/CustomAdsInterstitial$loadAds$1;->$context:Landroid/content/Context;

    iget-object v3, p0, Lcom/player/easy/widget/interstitial/CustomAdsInterstitial$loadAds$1;->$imageUrlToLoad:Ljava/lang/String;

    iput v2, p0, Lcom/player/easy/widget/interstitial/CustomAdsInterstitial$loadAds$1;->label:I

    invoke-static {p1, v1, v3, p0}, Lcom/player/easy/widget/interstitial/CustomAdsInterstitial;->access$getImageFromNetwork(Lcom/player/easy/widget/interstitial/CustomAdsInterstitial;Landroid/content/Context;Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_2

    return-object v0

    .line 117
    :cond_2
    :goto_0
    check-cast p1, Lcoil/request/ImageResult;

    .line 119
    instance-of v0, p1, Lcoil/request/SuccessResult;

    if-eqz v0, :cond_5

    .line 120
    invoke-static {}, Lcom/player/easy/widget/interstitial/CustomAdsInterstitial;->access$getCompanion$p()Lcom/player/easy/widget/interstitial/CustomAdsInterstitial$Companion;

    check-cast p1, Lcoil/request/SuccessResult;

    invoke-virtual {p1}, Lcoil/request/SuccessResult;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    const-string v0, "null cannot be cast to non-null type android.graphics.drawable.BitmapDrawable"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p1}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object p1

    invoke-static {p1}, Lcom/player/easy/widget/interstitial/CustomAdsInterstitial;->access$setBitmap$cp(Landroid/graphics/Bitmap;)V

    .line 121
    invoke-static {}, Lcom/player/easy/widget/interstitial/CustomAdsInterstitial;->access$getUsePalette$cp()Z

    move-result p1

    if-eqz p1, :cond_3

    invoke-static {}, Lcom/player/easy/widget/interstitial/CustomAdsInterstitial;->access$getBitmap$cp()Landroid/graphics/Bitmap;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 122
    invoke-static {}, Lcom/player/easy/widget/interstitial/CustomAdsInterstitial;->access$getCompanion$p()Lcom/player/easy/widget/interstitial/CustomAdsInterstitial$Companion;

    iget-object p1, p0, Lcom/player/easy/widget/interstitial/CustomAdsInterstitial$loadAds$1;->this$0:Lcom/player/easy/widget/interstitial/CustomAdsInterstitial;

    invoke-static {}, Lcom/player/easy/widget/interstitial/CustomAdsInterstitial;->access$getBitmap$cp()Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-static {p1, v0}, Lcom/player/easy/widget/interstitial/CustomAdsInterstitial;->access$getDominantColorForInterstitial(Lcom/player/easy/widget/interstitial/CustomAdsInterstitial;Landroid/graphics/Bitmap;)I

    move-result p1

    invoke-static {p1}, Lcom/player/easy/widget/interstitial/CustomAdsInterstitial;->access$setPaletteColor$cp(I)V

    .line 124
    :cond_3
    invoke-static {}, Lcom/player/easy/widget/interstitial/CustomAdsInterstitial;->access$getAdListener$cp()Lcom/player/easy/widget/interstitial/CustomInterstitialAdListener;

    move-result-object p1

    if-eqz p1, :cond_4

    invoke-interface {p1}, Lcom/player/easy/widget/interstitial/CustomInterstitialAdListener;->onAdLoaded()V

    .line 125
    :cond_4
    invoke-static {}, Lcom/player/easy/widget/interstitial/CustomAdsInterstitial;->access$getCompanion$p()Lcom/player/easy/widget/interstitial/CustomAdsInterstitial$Companion;

    invoke-static {v2}, Lcom/player/easy/widget/interstitial/CustomAdsInterstitial;->access$setAdLoaded$cp(Z)V

    goto :goto_1

    .line 127
    :cond_5
    instance-of v0, p1, Lcoil/request/ErrorResult;

    if-eqz v0, :cond_7

    .line 128
    invoke-static {}, Lcom/player/easy/widget/interstitial/CustomAdsInterstitial;->access$getAdListener$cp()Lcom/player/easy/widget/interstitial/CustomInterstitialAdListener;

    move-result-object v0

    if-eqz v0, :cond_6

    new-instance v1, Ljava/lang/Exception;

    check-cast p1, Lcoil/request/ErrorResult;

    invoke-virtual {p1}, Lcoil/request/ErrorResult;->getThrowable()Ljava/lang/Throwable;

    move-result-object p1

    invoke-direct {v1, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/Throwable;)V

    invoke-interface {v0, v1}, Lcom/player/easy/widget/interstitial/CustomInterstitialAdListener;->onAdFailedToLoad(Ljava/lang/Exception;)V

    .line 129
    :cond_6
    invoke-static {}, Lcom/player/easy/widget/interstitial/CustomAdsInterstitial;->access$getCompanion$p()Lcom/player/easy/widget/interstitial/CustomAdsInterstitial$Companion;

    const/4 p1, 0x0

    invoke-static {p1}, Lcom/player/easy/widget/interstitial/CustomAdsInterstitial;->access$setAdLoaded$cp(Z)V

    .line 132
    :goto_1
    invoke-static {}, Lcom/player/easy/widget/interstitial/CustomAdsInterstitial;->access$getCompanion$p()Lcom/player/easy/widget/interstitial/CustomAdsInterstitial$Companion;

    iget-object p1, p0, Lcom/player/easy/widget/interstitial/CustomAdsInterstitial$loadAds$1;->this$0:Lcom/player/easy/widget/interstitial/CustomAdsInterstitial;

    invoke-static {p1}, Lcom/player/easy/widget/interstitial/CustomAdsInterstitial;->access$getAdConfig$p(Lcom/player/easy/widget/interstitial/CustomAdsInterstitial;)Lcom/player/easy/data/CustomAdConfig;

    move-result-object p1

    invoke-static {p1}, Lcom/player/easy/widget/interstitial/CustomAdsInterstitial;->access$set_adConfig$cp(Lcom/player/easy/data/CustomAdConfig;)V

    .line 133
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1

    .line 118
    :cond_7
    new-instance p1, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {p1}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw p1
.end method
