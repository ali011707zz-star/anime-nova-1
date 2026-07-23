.class public final Lcom/player/easy/widget/interstitial/CustomAdsInterstitial;
.super Ljava/lang/Object;
.source "CustomAdsInterstitial.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/player/easy/widget/interstitial/CustomAdsInterstitial$Companion;,
        Lcom/player/easy/widget/interstitial/CustomAdsInterstitial$InterstitialActivity;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000d\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u0005\n\u0002\u0010\u0008\n\u0002\u0018\u0002\n\u0002\u0008\u0007\u0018\u0000 /2\u00020\u0001:\u0002./B\u0017\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0004\u0008\u0006\u0010\u0007J-\u0010\u000e\u001a\u00020\u000f2\u001c\u0010\u0010\u001a\u0018\u0008\u0001\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u000f0\u0012\u0012\u0006\u0012\u0004\u0018\u00010\u00010\u0011H\u0000\u00a2\u0006\u0004\u0008\u0013\u0010\u0014J\u0008\u0010\u0015\u001a\u00020\u000fH\u0002J\u001e\u0010\u0016\u001a\u00020\u00172\u0006\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0018\u001a\u00020\u0019H\u0082@\u00a2\u0006\u0002\u0010\u001aJ\u0010\u0010\u001b\u001a\u00020\u001c2\u0006\u0010\u0002\u001a\u00020\u0003H\u0002J\u000e\u0010\u001d\u001a\u00020\u00002\u0006\u0010\u001e\u001a\u00020\u001fJ\u000e\u0010 \u001a\u00020\u00002\u0006\u0010!\u001a\u00020\"J\u000e\u0010#\u001a\u00020\u00002\u0006\u0010!\u001a\u00020\"J\u000e\u0010$\u001a\u00020\u00002\u0006\u0010%\u001a\u00020\"J\u000e\u0010&\u001a\u00020\u000f2\u0006\u0010\u0002\u001a\u00020\u0003J\u000c\u0010\'\u001a\u00020(*\u00020)H\u0002J\u000e\u0010*\u001a\u00020\u000f2\u0006\u0010\u0002\u001a\u00020\u0003J\"\u0010*\u001a\u00020\u000f2\u0006\u0010\u0002\u001a\u00020\u00032\u0008\u0008\u0001\u0010+\u001a\u00020(2\u0008\u0008\u0001\u0010,\u001a\u00020(J\u0006\u0010-\u001a\u00020\"R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u001b\u0010\u0008\u001a\u00020\t8BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u000c\u0010\r\u001a\u0004\u0008\n\u0010\u000b\u00a8\u00060"
    }
    d2 = {
        "Lcom/player/easy/widget/interstitial/CustomAdsInterstitial;",
        "",
        "context",
        "Landroid/content/Context;",
        "adConfig",
        "Lcom/player/easy/data/CustomAdConfig;",
        "<init>",
        "(Landroid/content/Context;Lcom/player/easy/data/CustomAdConfig;)V",
        "scopeHandler",
        "Lcom/player/easy/widget/interstitial/CoroutineScopeHandler;",
        "getScopeHandler",
        "()Lcom/player/easy/widget/interstitial/CoroutineScopeHandler;",
        "scopeHandler$delegate",
        "Lkotlin/Lazy;",
        "launch",
        "",
        "task",
        "Lkotlin/Function1;",
        "Lkotlin/coroutines/Continuation;",
        "launch$app_release",
        "(Lkotlin/jvm/functions/Function1;)V",
        "dispose",
        "getImageFromNetwork",
        "Lcoil/request/ImageResult;",
        "url",
        "",
        "(Landroid/content/Context;Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "getImageLoader",
        "Lcoil/ImageLoader;",
        "setAdListener",
        "listener",
        "Lcom/player/easy/widget/interstitial/CustomInterstitialAdListener;",
        "usePalette",
        "value",
        "",
        "hideNavigationBar",
        "exitOnBackPress",
        "exit",
        "loadAds",
        "getDominantColorForInterstitial",
        "",
        "Landroid/graphics/Bitmap;",
        "show",
        "enterAnim",
        "exitAnim",
        "isAdLoaded",
        "InterstitialActivity",
        "Companion",
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


# static fields
.field private static final Companion:Lcom/player/easy/widget/interstitial/CustomAdsInterstitial$Companion;

.field private static _adConfig:Lcom/player/easy/data/CustomAdConfig;

.field private static adListener:Lcom/player/easy/widget/interstitial/CustomInterstitialAdListener;

.field private static bitmap:Landroid/graphics/Bitmap;

.field private static closeButtonBackgroundColor:I

.field private static closeIconColor:I

.field private static exitOnBackPress:Z

.field private static hideNavigation:Z

.field private static isAdLoaded:Z

.field private static paletteColor:I

.field private static usePalette:Z


# instance fields
.field private final adConfig:Lcom/player/easy/data/CustomAdConfig;

.field private final scopeHandler$delegate:Lkotlin/Lazy;


# direct methods
.method public static synthetic $r8$lambda$lvhcOdtX8RGdPEmUsHQKiEZEnVc()Lcom/player/easy/widget/interstitial/CoroutineScopeHandler;
    .locals 1

    .line 0
    invoke-static {}, Lcom/player/easy/widget/interstitial/CustomAdsInterstitial;->scopeHandler_delegate$lambda$0()Lcom/player/easy/widget/interstitial/CoroutineScopeHandler;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/player/easy/widget/interstitial/CustomAdsInterstitial$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/player/easy/widget/interstitial/CustomAdsInterstitial$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/player/easy/widget/interstitial/CustomAdsInterstitial;->Companion:Lcom/player/easy/widget/interstitial/CustomAdsInterstitial$Companion;

    const/high16 v0, -0x1000000

    .line 232
    sput v0, Lcom/player/easy/widget/interstitial/CustomAdsInterstitial;->paletteColor:I

    const/4 v1, -0x1

    .line 233
    sput v1, Lcom/player/easy/widget/interstitial/CustomAdsInterstitial;->closeButtonBackgroundColor:I

    .line 234
    sput v0, Lcom/player/easy/widget/interstitial/CustomAdsInterstitial;->closeIconColor:I

    const/4 v0, 0x1

    .line 236
    sput-boolean v0, Lcom/player/easy/widget/interstitial/CustomAdsInterstitial;->hideNavigation:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/player/easy/data/CustomAdConfig;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "adConfig"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/player/easy/widget/interstitial/CustomAdsInterstitial;->adConfig:Lcom/player/easy/data/CustomAdConfig;

    .line 32
    new-instance p2, Lcom/player/easy/widget/interstitial/CustomAdsInterstitial$$ExternalSyntheticLambda0;

    invoke-direct {p2}, Lcom/player/easy/widget/interstitial/CustomAdsInterstitial$$ExternalSyntheticLambda0;-><init>()V

    invoke-static {p2}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p2

    iput-object p2, p0, Lcom/player/easy/widget/interstitial/CustomAdsInterstitial;->scopeHandler$delegate:Lkotlin/Lazy;

    .line 35
    instance-of p2, p1, Landroidx/fragment/app/FragmentActivity;

    if-eqz p2, :cond_0

    .line 36
    check-cast p1, Landroidx/fragment/app/FragmentActivity;

    invoke-virtual {p1}, Landroidx/activity/ComponentActivity;->getLifecycle()Landroidx/lifecycle/Lifecycle;

    move-result-object p1

    .line 37
    new-instance p2, Lcom/player/easy/widget/interstitial/CustomAdsInterstitial$1;

    invoke-direct {p2, p0}, Lcom/player/easy/widget/interstitial/CustomAdsInterstitial$1;-><init>(Lcom/player/easy/widget/interstitial/CustomAdsInterstitial;)V

    .line 36
    invoke-virtual {p1, p2}, Landroidx/lifecycle/Lifecycle;->addObserver(Landroidx/lifecycle/LifecycleObserver;)V

    return-void

    .line 48
    :cond_0
    sget-object p1, Ltimber/log/Timber;->Forest:Ltimber/log/Timber$Forest;

    const/4 p2, 0x0

    .line 49
    new-array p2, p2, [Ljava/lang/Object;

    .line 48
    const-string v0, "The supplied Context is not a FragmentActivity instance.\nPlease make sure to call dispose() method on your Ad instance."

    invoke-virtual {p1, v0, p2}, Ltimber/log/Timber$Forest;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public static final synthetic access$dispose(Lcom/player/easy/widget/interstitial/CustomAdsInterstitial;)V
    .locals 0

    .line 30
    invoke-direct {p0}, Lcom/player/easy/widget/interstitial/CustomAdsInterstitial;->dispose()V

    return-void
.end method

.method public static final synthetic access$getAdConfig$p(Lcom/player/easy/widget/interstitial/CustomAdsInterstitial;)Lcom/player/easy/data/CustomAdConfig;
    .locals 0

    .line 30
    iget-object p0, p0, Lcom/player/easy/widget/interstitial/CustomAdsInterstitial;->adConfig:Lcom/player/easy/data/CustomAdConfig;

    return-object p0
.end method

.method public static final synthetic access$getAdListener$cp()Lcom/player/easy/widget/interstitial/CustomInterstitialAdListener;
    .locals 1

    .line 30
    sget-object v0, Lcom/player/easy/widget/interstitial/CustomAdsInterstitial;->adListener:Lcom/player/easy/widget/interstitial/CustomInterstitialAdListener;

    return-object v0
.end method

.method public static final synthetic access$getBitmap$cp()Landroid/graphics/Bitmap;
    .locals 1

    .line 30
    sget-object v0, Lcom/player/easy/widget/interstitial/CustomAdsInterstitial;->bitmap:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public static final synthetic access$getCloseButtonBackgroundColor$cp()I
    .locals 1

    .line 30
    sget v0, Lcom/player/easy/widget/interstitial/CustomAdsInterstitial;->closeButtonBackgroundColor:I

    return v0
.end method

.method public static final synthetic access$getCloseIconColor$cp()I
    .locals 1

    .line 30
    sget v0, Lcom/player/easy/widget/interstitial/CustomAdsInterstitial;->closeIconColor:I

    return v0
.end method

.method public static final synthetic access$getCompanion$p()Lcom/player/easy/widget/interstitial/CustomAdsInterstitial$Companion;
    .locals 1

    .line 30
    sget-object v0, Lcom/player/easy/widget/interstitial/CustomAdsInterstitial;->Companion:Lcom/player/easy/widget/interstitial/CustomAdsInterstitial$Companion;

    return-object v0
.end method

.method public static final synthetic access$getDominantColorForInterstitial(Lcom/player/easy/widget/interstitial/CustomAdsInterstitial;Landroid/graphics/Bitmap;)I
    .locals 0

    .line 30
    invoke-direct {p0, p1}, Lcom/player/easy/widget/interstitial/CustomAdsInterstitial;->getDominantColorForInterstitial(Landroid/graphics/Bitmap;)I

    move-result p0

    return p0
.end method

.method public static final synthetic access$getExitOnBackPress$cp()Z
    .locals 1

    .line 30
    sget-boolean v0, Lcom/player/easy/widget/interstitial/CustomAdsInterstitial;->exitOnBackPress:Z

    return v0
.end method

.method public static final synthetic access$getHideNavigation$cp()Z
    .locals 1

    .line 30
    sget-boolean v0, Lcom/player/easy/widget/interstitial/CustomAdsInterstitial;->hideNavigation:Z

    return v0
.end method

.method public static final synthetic access$getImageFromNetwork(Lcom/player/easy/widget/interstitial/CustomAdsInterstitial;Landroid/content/Context;Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0

    .line 30
    invoke-direct {p0, p1, p2, p3}, Lcom/player/easy/widget/interstitial/CustomAdsInterstitial;->getImageFromNetwork(Landroid/content/Context;Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$getPaletteColor$cp()I
    .locals 1

    .line 30
    sget v0, Lcom/player/easy/widget/interstitial/CustomAdsInterstitial;->paletteColor:I

    return v0
.end method

.method public static final synthetic access$getUsePalette$cp()Z
    .locals 1

    .line 30
    sget-boolean v0, Lcom/player/easy/widget/interstitial/CustomAdsInterstitial;->usePalette:Z

    return v0
.end method

.method public static final synthetic access$get_adConfig$cp()Lcom/player/easy/data/CustomAdConfig;
    .locals 1

    .line 30
    sget-object v0, Lcom/player/easy/widget/interstitial/CustomAdsInterstitial;->_adConfig:Lcom/player/easy/data/CustomAdConfig;

    return-object v0
.end method

.method public static final synthetic access$setAdListener$cp(Lcom/player/easy/widget/interstitial/CustomInterstitialAdListener;)V
    .locals 0

    .line 30
    sput-object p0, Lcom/player/easy/widget/interstitial/CustomAdsInterstitial;->adListener:Lcom/player/easy/widget/interstitial/CustomInterstitialAdListener;

    return-void
.end method

.method public static final synthetic access$setAdLoaded$cp(Z)V
    .locals 0

    .line 30
    sput-boolean p0, Lcom/player/easy/widget/interstitial/CustomAdsInterstitial;->isAdLoaded:Z

    return-void
.end method

.method public static final synthetic access$setBitmap$cp(Landroid/graphics/Bitmap;)V
    .locals 0

    .line 30
    sput-object p0, Lcom/player/easy/widget/interstitial/CustomAdsInterstitial;->bitmap:Landroid/graphics/Bitmap;

    return-void
.end method

.method public static final synthetic access$setPaletteColor$cp(I)V
    .locals 0

    .line 30
    sput p0, Lcom/player/easy/widget/interstitial/CustomAdsInterstitial;->paletteColor:I

    return-void
.end method

.method public static final synthetic access$set_adConfig$cp(Lcom/player/easy/data/CustomAdConfig;)V
    .locals 0

    .line 30
    sput-object p0, Lcom/player/easy/widget/interstitial/CustomAdsInterstitial;->_adConfig:Lcom/player/easy/data/CustomAdConfig;

    return-void
.end method

.method private final dispose()V
    .locals 1

    .line 64
    invoke-direct {p0}, Lcom/player/easy/widget/interstitial/CustomAdsInterstitial;->getScopeHandler()Lcom/player/easy/widget/interstitial/CoroutineScopeHandler;

    move-result-object v0

    invoke-virtual {v0}, Lcom/player/easy/widget/interstitial/CoroutineScopeHandler;->dispose()V

    return-void
.end method

.method private final getDominantColorForInterstitial(Landroid/graphics/Bitmap;)I
    .locals 1

    const/4 v0, 0x1

    .line 137
    invoke-static {p1, v0, v0, v0}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object p1

    const-string v0, "createScaledBitmap(...)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 138
    invoke-virtual {p1, v0, v0}, Landroid/graphics/Bitmap;->getPixel(II)I

    move-result v0

    .line 139
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->recycle()V

    return v0
.end method

.method private final getImageFromNetwork(Landroid/content/Context;Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcoil/request/ImageResult;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 67
    invoke-direct {p0, p1}, Lcom/player/easy/widget/interstitial/CustomAdsInterstitial;->getImageLoader(Landroid/content/Context;)Lcoil/ImageLoader;

    move-result-object v0

    .line 68
    new-instance v1, Lcoil/request/ImageRequest$Builder;

    invoke-direct {v1, p1}, Lcoil/request/ImageRequest$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, p2}, Lcoil/request/ImageRequest$Builder;->data(Ljava/lang/Object;)Lcoil/request/ImageRequest$Builder;

    move-result-object p1

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Lcoil/request/ImageRequest$Builder;->allowHardware(Z)Lcoil/request/ImageRequest$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lcoil/request/ImageRequest$Builder;->build()Lcoil/request/ImageRequest;

    move-result-object p1

    invoke-interface {v0, p1, p3}, Lcoil/ImageLoader;->execute(Lcoil/request/ImageRequest;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method private final getImageLoader(Landroid/content/Context;)Lcoil/ImageLoader;
    .locals 1

    .line 72
    new-instance v0, Lcoil/ImageLoader$Builder;

    invoke-direct {v0, p1}, Lcoil/ImageLoader$Builder;-><init>(Landroid/content/Context;)V

    .line 73
    sget-object p1, Lcoil/request/CachePolicy;->DISABLED:Lcoil/request/CachePolicy;

    invoke-virtual {v0, p1}, Lcoil/ImageLoader$Builder;->diskCachePolicy(Lcoil/request/CachePolicy;)Lcoil/ImageLoader$Builder;

    move-result-object v0

    .line 74
    invoke-virtual {v0, p1}, Lcoil/ImageLoader$Builder;->memoryCachePolicy(Lcoil/request/CachePolicy;)Lcoil/ImageLoader$Builder;

    move-result-object p1

    const/4 v0, 0x1

    .line 75
    invoke-virtual {p1, v0}, Lcoil/ImageLoader$Builder;->crossfade(Z)Lcoil/ImageLoader$Builder;

    move-result-object p1

    .line 76
    invoke-virtual {p1}, Lcoil/ImageLoader$Builder;->build()Lcoil/ImageLoader;

    move-result-object p1

    return-object p1
.end method

.method private final getScopeHandler()Lcom/player/easy/widget/interstitial/CoroutineScopeHandler;
    .locals 1

    .line 32
    iget-object v0, p0, Lcom/player/easy/widget/interstitial/CustomAdsInterstitial;->scopeHandler$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/player/easy/widget/interstitial/CoroutineScopeHandler;

    return-object v0
.end method

.method private static final scopeHandler_delegate$lambda$0()Lcom/player/easy/widget/interstitial/CoroutineScopeHandler;
    .locals 1

    .line 32
    new-instance v0, Lcom/player/easy/widget/interstitial/CoroutineScopeHandler;

    invoke-direct {v0}, Lcom/player/easy/widget/interstitial/CoroutineScopeHandler;-><init>()V

    return-object v0
.end method


# virtual methods
.method public final exitOnBackPress(Z)Lcom/player/easy/widget/interstitial/CustomAdsInterstitial;
    .locals 0

    .line 107
    sput-boolean p1, Lcom/player/easy/widget/interstitial/CustomAdsInterstitial;->exitOnBackPress:Z

    return-object p0
.end method

.method public final hideNavigationBar(Z)Lcom/player/easy/widget/interstitial/CustomAdsInterstitial;
    .locals 0

    .line 96
    sput-boolean p1, Lcom/player/easy/widget/interstitial/CustomAdsInterstitial;->hideNavigation:Z

    return-object p0
.end method

.method public final isAdLoaded()Z
    .locals 1

    .line 161
    sget-boolean v0, Lcom/player/easy/widget/interstitial/CustomAdsInterstitial;->isAdLoaded:Z

    return v0
.end method

.method public final launch$app_release(Lkotlin/jvm/functions/Function1;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;+",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    const-string v0, "task"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 55
    invoke-direct {p0}, Lcom/player/easy/widget/interstitial/CustomAdsInterstitial;->getScopeHandler()Lcom/player/easy/widget/interstitial/CoroutineScopeHandler;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/player/easy/widget/interstitial/CoroutineScopeHandler;->launch(Lkotlin/jvm/functions/Function1;)Lkotlinx/coroutines/Job;

    return-void
.end method

.method public final loadAds(Landroid/content/Context;)V
    .locals 3

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 113
    sput-boolean v0, Lcom/player/easy/widget/interstitial/CustomAdsInterstitial;->isAdLoaded:Z

    .line 115
    iget-object v0, p0, Lcom/player/easy/widget/interstitial/CustomAdsInterstitial;->adConfig:Lcom/player/easy/data/CustomAdConfig;

    invoke-virtual {v0}, Lcom/player/easy/data/CustomAdConfig;->getImage_link()Ljava/lang/String;

    move-result-object v0

    .line 117
    new-instance v1, Lcom/player/easy/widget/interstitial/CustomAdsInterstitial$loadAds$1;

    const/4 v2, 0x0

    invoke-direct {v1, p0, p1, v0, v2}, Lcom/player/easy/widget/interstitial/CustomAdsInterstitial$loadAds$1;-><init>(Lcom/player/easy/widget/interstitial/CustomAdsInterstitial;Landroid/content/Context;Ljava/lang/String;Lkotlin/coroutines/Continuation;)V

    invoke-virtual {p0, v1}, Lcom/player/easy/widget/interstitial/CustomAdsInterstitial;->launch$app_release(Lkotlin/jvm/functions/Function1;)V

    return-void
.end method

.method public final setAdListener(Lcom/player/easy/widget/interstitial/CustomInterstitialAdListener;)Lcom/player/easy/widget/interstitial/CustomAdsInterstitial;
    .locals 1

    const-string v0, "listener"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 84
    sput-object p1, Lcom/player/easy/widget/interstitial/CustomAdsInterstitial;->adListener:Lcom/player/easy/widget/interstitial/CustomInterstitialAdListener;

    return-object p0
.end method

.method public final show(Landroid/content/Context;)V
    .locals 2

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 145
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/player/easy/widget/interstitial/CustomAdsInterstitial$InterstitialActivity;

    invoke-direct {v0, p1, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 146
    instance-of v0, p1, Landroidx/appcompat/app/AppCompatActivity;

    if-eqz v0, :cond_0

    check-cast p1, Landroidx/appcompat/app/AppCompatActivity;

    const/4 v0, 0x0

    invoke-virtual {p1, v0, v0}, Landroid/app/Activity;->overridePendingTransition(II)V

    :cond_0
    return-void
.end method

.method public final show(Landroid/content/Context;II)V
    .locals 2

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 151
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/player/easy/widget/interstitial/CustomAdsInterstitial$InterstitialActivity;

    invoke-direct {v0, p1, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 152
    instance-of v0, p1, Landroid/app/Activity;

    if-eqz v0, :cond_0

    check-cast p1, Landroid/app/Activity;

    invoke-virtual {p1, p2, p3}, Landroid/app/Activity;->overridePendingTransition(II)V

    return-void

    .line 154
    :cond_0
    sget-object p1, Ltimber/log/Timber;->Forest:Ltimber/log/Timber$Forest;

    const/4 p2, 0x0

    .line 155
    new-array p2, p2, [Ljava/lang/Object;

    .line 154
    const-string p3, "show(enterAnim, exitAnim) cannot be used because the Context is not an instance of Activity"

    invoke-virtual {p1, p3, p2}, Ltimber/log/Timber$Forest;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public final usePalette(Z)Lcom/player/easy/widget/interstitial/CustomAdsInterstitial;
    .locals 0

    .line 90
    sput-boolean p1, Lcom/player/easy/widget/interstitial/CustomAdsInterstitial;->usePalette:Z

    return-object p0
.end method
