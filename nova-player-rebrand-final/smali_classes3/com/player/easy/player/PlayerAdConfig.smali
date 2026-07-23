.class public final Lcom/player/easy/player/PlayerAdConfig;
.super Ljava/lang/Object;
.source "PlayerAdConfig.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000^\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\t\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0007\u0018\u00002\u00020\u0001B\u001f\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0007\u00a2\u0006\u0004\u0008\u0008\u0010\tJ\u0008\u0010\u001f\u001a\u00020 H\u0002J\u0008\u0010!\u001a\u00020 H\u0002J\u0006\u0010\"\u001a\u00020 J\u000e\u0010#\u001a\u00020 2\u0006\u0010$\u001a\u00020%J\u000e\u0010&\u001a\u00020 2\u0006\u0010$\u001a\u00020\'J\u0006\u0010(\u001a\u00020 J\u0006\u0010)\u001a\u00020 J\u0010\u0010*\u001a\u00020 2\u0006\u0010$\u001a\u00020%H\u0002J\u0010\u0010+\u001a\u00020 2\u0006\u0010$\u001a\u00020%H\u0002J\u0010\u0010,\u001a\u00020 2\u0006\u0010$\u001a\u00020\'H\u0002J\u0010\u0010-\u001a\u00020 2\u0006\u0010$\u001a\u00020\'H\u0002R\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\n\u0010\u000bR\u0011\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000c\u0010\rR\u0011\u0010\u0006\u001a\u00020\u0007\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000e\u0010\u000fR\u000e\u0010\u0010\u001a\u00020\u0011X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0012\u001a\u00020\u0011X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0013\u001a\u00020\u0014X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0015\u001a\u00020\u0014X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0016\u001a\u0004\u0018\u00010\u0017X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0018\u001a\u0004\u0018\u00010\u0019X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u001a\u001a\u0004\u0018\u00010\u001bX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0016\u0010\u001c\u001a\n \u001e*\u0004\u0018\u00010\u001d0\u001dX\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006."
    }
    d2 = {
        "Lcom/player/easy/player/PlayerAdConfig;",
        "",
        "activity",
        "Landroid/app/Activity;",
        "adFrame",
        "Landroid/widget/LinearLayout;",
        "preferencesHelper",
        "Lcom/player/easy/data/preference/PreferencesHelper;",
        "<init>",
        "(Landroid/app/Activity;Landroid/widget/LinearLayout;Lcom/player/easy/data/preference/PreferencesHelper;)V",
        "getActivity",
        "()Landroid/app/Activity;",
        "getAdFrame",
        "()Landroid/widget/LinearLayout;",
        "getPreferencesHelper",
        "()Lcom/player/easy/data/preference/PreferencesHelper;",
        "adLoaded",
        "",
        "stopShowingAds",
        "maxCloseClickToStopShowingBannerAd",
        "",
        "numberOfCloseAdsPressed",
        "adView",
        "Lcom/google/android/gms/ads/AdView;",
        "admobInterstitialAd",
        "Lcom/google/android/gms/ads/interstitial/InterstitialAd;",
        "customInterstitialAd",
        "Lcom/player/easy/widget/interstitial/CustomAdsInterstitial;",
        "placeHolder",
        "Landroid/view/ViewGroup;",
        "kotlin.jvm.PlatformType",
        "showBannerAd",
        "",
        "hideBannerAd",
        "onClickOnAdClose",
        "initAdMob",
        "adConfig",
        "Lcom/player/easy/data/AdConfig;",
        "initCustomAds",
        "Lcom/player/easy/data/CustomAdConfig;",
        "onDestroy",
        "showAd",
        "initAdmobBannerAdRequest",
        "initAdmobInterstitialAdRequest",
        "initCustomBannerAdRequest",
        "initCustomInterstitialAdRequest",
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
        "SMAP\nPlayerAdConfig.kt\nKotlin\n*S Kotlin\n*F\n+ 1 PlayerAdConfig.kt\ncom/player/easy/player/PlayerAdConfig\n+ 2 View.kt\nandroidx/core/view/ViewKt\n+ 3 ImageRequest.kt\ncoil/request/ImageRequest$Builder\n*L\n1#1,283:1\n255#2:284\n257#2,2:285\n257#2,2:287\n257#2,2:289\n257#2,2:291\n257#2,2:302\n765#3,9:293\n*S KotlinDebug\n*F\n+ 1 PlayerAdConfig.kt\ncom/player/easy/player/PlayerAdConfig\n*L\n45#1:284\n47#1:285,2\n169#1:287,2\n171#1:289,2\n232#1:291,2\n52#1:302,2\n247#1:293,9\n*E\n"
    }
.end annotation


# instance fields
.field private final activity:Landroid/app/Activity;

.field private final adFrame:Landroid/widget/LinearLayout;

.field private adLoaded:Z

.field private adView:Lcom/google/android/gms/ads/AdView;

.field private admobInterstitialAd:Lcom/google/android/gms/ads/interstitial/InterstitialAd;

.field private customInterstitialAd:Lcom/player/easy/widget/interstitial/CustomAdsInterstitial;

.field private maxCloseClickToStopShowingBannerAd:I

.field private numberOfCloseAdsPressed:I

.field private final placeHolder:Landroid/view/ViewGroup;

.field private final preferencesHelper:Lcom/player/easy/data/preference/PreferencesHelper;

.field private stopShowingAds:Z


# direct methods
.method public static synthetic $r8$lambda$M-zAWa9cORG942EgA2K00GYgSNM(Lcom/player/easy/player/PlayerAdConfig;)V
    .locals 0

    .line 0
    invoke-static {p0}, Lcom/player/easy/player/PlayerAdConfig;->hideBannerAd$lambda$0(Lcom/player/easy/player/PlayerAdConfig;)V

    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;Landroid/widget/LinearLayout;Lcom/player/easy/data/preference/PreferencesHelper;)V
    .locals 1

    const-string v0, "activity"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "adFrame"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "preferencesHelper"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    iput-object p1, p0, Lcom/player/easy/player/PlayerAdConfig;->activity:Landroid/app/Activity;

    .line 29
    iput-object p2, p0, Lcom/player/easy/player/PlayerAdConfig;->adFrame:Landroid/widget/LinearLayout;

    .line 30
    iput-object p3, p0, Lcom/player/easy/player/PlayerAdConfig;->preferencesHelper:Lcom/player/easy/data/preference/PreferencesHelper;

    const p1, 0x7fffffff

    .line 35
    iput p1, p0, Lcom/player/easy/player/PlayerAdConfig;->maxCloseClickToStopShowingBannerAd:I

    .line 42
    sget p1, Lcom/player/easy/R$id;->placeHolder:I

    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup;

    iput-object p1, p0, Lcom/player/easy/player/PlayerAdConfig;->placeHolder:Landroid/view/ViewGroup;

    return-void
.end method

.method public static final synthetic access$getPlaceHolder$p(Lcom/player/easy/player/PlayerAdConfig;)Landroid/view/ViewGroup;
    .locals 0

    .line 27
    iget-object p0, p0, Lcom/player/easy/player/PlayerAdConfig;->placeHolder:Landroid/view/ViewGroup;

    return-object p0
.end method

.method public static final synthetic access$setAdLoaded$p(Lcom/player/easy/player/PlayerAdConfig;Z)V
    .locals 0

    .line 27
    iput-boolean p1, p0, Lcom/player/easy/player/PlayerAdConfig;->adLoaded:Z

    return-void
.end method

.method public static final synthetic access$setAdmobInterstitialAd$p(Lcom/player/easy/player/PlayerAdConfig;Lcom/google/android/gms/ads/interstitial/InterstitialAd;)V
    .locals 0

    .line 27
    iput-object p1, p0, Lcom/player/easy/player/PlayerAdConfig;->admobInterstitialAd:Lcom/google/android/gms/ads/interstitial/InterstitialAd;

    return-void
.end method

.method public static final synthetic access$setCustomInterstitialAd$p(Lcom/player/easy/player/PlayerAdConfig;Lcom/player/easy/widget/interstitial/CustomAdsInterstitial;)V
    .locals 0

    .line 27
    iput-object p1, p0, Lcom/player/easy/player/PlayerAdConfig;->customInterstitialAd:Lcom/player/easy/widget/interstitial/CustomAdsInterstitial;

    return-void
.end method

.method private final hideBannerAd()V
    .locals 3

    .line 52
    iget-object v0, p0, Lcom/player/easy/player/PlayerAdConfig;->adFrame:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const-wide/16 v1, 0xfa

    invoke-virtual {v0, v1, v2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    new-instance v1, Lcom/player/easy/player/PlayerAdConfig$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/player/easy/player/PlayerAdConfig$$ExternalSyntheticLambda0;-><init>(Lcom/player/easy/player/PlayerAdConfig;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->withEndAction(Ljava/lang/Runnable;)Landroid/view/ViewPropertyAnimator;

    return-void
.end method

.method private static final hideBannerAd$lambda$0(Lcom/player/easy/player/PlayerAdConfig;)V
    .locals 1

    .line 52
    iget-object p0, p0, Lcom/player/easy/player/PlayerAdConfig;->adFrame:Landroid/widget/LinearLayout;

    const/16 v0, 0x8

    .line 302
    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method private final initAdmobBannerAdRequest(Lcom/player/easy/data/AdConfig;)V
    .locals 3

    .line 179
    new-instance v0, Lcom/google/android/gms/ads/AdView;

    iget-object v1, p0, Lcom/player/easy/player/PlayerAdConfig;->activity:Landroid/app/Activity;

    invoke-direct {v0, v1}, Lcom/google/android/gms/ads/AdView;-><init>(Landroid/content/Context;)V

    .line 180
    sget-object v1, Lcom/google/android/gms/ads/AdSize;->BANNER:Lcom/google/android/gms/ads/AdSize;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/ads/BaseAdView;->setAdSize(Lcom/google/android/gms/ads/AdSize;)V

    .line 185
    invoke-virtual {p1}, Lcom/player/easy/data/AdConfig;->getAd_unit_id()Ljava/lang/String;

    move-result-object p1

    .line 181
    invoke-virtual {v0, p1}, Lcom/google/android/gms/ads/BaseAdView;->setAdUnitId(Ljava/lang/String;)V

    .line 178
    iput-object v0, p0, Lcom/player/easy/player/PlayerAdConfig;->adView:Lcom/google/android/gms/ads/AdView;

    .line 189
    iget-object p1, p0, Lcom/player/easy/player/PlayerAdConfig;->adFrame:Landroid/widget/LinearLayout;

    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v2, -0x2

    invoke-direct {v1, v2, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    const/4 v2, 0x0

    invoke-virtual {p1, v0, v2, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 191
    new-instance p1, Lcom/google/android/gms/ads/AdRequest$Builder;

    invoke-direct {p1}, Lcom/google/android/gms/ads/AdRequest$Builder;-><init>()V

    invoke-virtual {p1}, Lcom/google/android/gms/ads/AdRequest$Builder;->build()Lcom/google/android/gms/ads/AdRequest;

    move-result-object p1

    const-string v0, "build(...)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 192
    iget-object v0, p0, Lcom/player/easy/player/PlayerAdConfig;->adView:Lcom/google/android/gms/ads/AdView;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 193
    new-instance v1, Lcom/player/easy/player/PlayerAdConfig$initAdmobBannerAdRequest$2;

    invoke-direct {v1, p0}, Lcom/player/easy/player/PlayerAdConfig$initAdmobBannerAdRequest$2;-><init>(Lcom/player/easy/player/PlayerAdConfig;)V

    .line 192
    invoke-virtual {v0, v1}, Lcom/google/android/gms/ads/BaseAdView;->setAdListener(Lcom/google/android/gms/ads/AdListener;)V

    .line 203
    iget-object v0, p0, Lcom/player/easy/player/PlayerAdConfig;->adView:Lcom/google/android/gms/ads/AdView;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v0, p1}, Lcom/google/android/gms/ads/BaseAdView;->loadAd(Lcom/google/android/gms/ads/AdRequest;)V

    return-void
.end method

.method private final initAdmobInterstitialAdRequest(Lcom/player/easy/data/AdConfig;)V
    .locals 3

    .line 208
    :try_start_0
    new-instance v0, Lcom/google/android/gms/ads/AdRequest$Builder;

    invoke-direct {v0}, Lcom/google/android/gms/ads/AdRequest$Builder;-><init>()V

    invoke-virtual {v0}, Lcom/google/android/gms/ads/AdRequest$Builder;->build()Lcom/google/android/gms/ads/AdRequest;

    move-result-object v0

    const-string v1, "build(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 210
    invoke-virtual {p1}, Lcom/player/easy/data/AdConfig;->getAd_unit_id()Ljava/lang/String;

    move-result-object p1

    .line 212
    iget-object v1, p0, Lcom/player/easy/player/PlayerAdConfig;->activity:Landroid/app/Activity;

    .line 215
    new-instance v2, Lcom/player/easy/player/PlayerAdConfig$initAdmobInterstitialAdRequest$1;

    invoke-direct {v2, p0}, Lcom/player/easy/player/PlayerAdConfig$initAdmobInterstitialAdRequest$1;-><init>(Lcom/player/easy/player/PlayerAdConfig;)V

    .line 211
    invoke-static {v1, p1, v0, v2}, Lcom/google/android/gms/ads/interstitial/InterstitialAd;->load(Landroid/content/Context;Ljava/lang/String;Lcom/google/android/gms/ads/AdRequest;Lcom/google/android/gms/ads/interstitial/InterstitialAdLoadCallback;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 226
    sget-object v0, Ltimber/log/Timber;->Forest:Ltimber/log/Timber$Forest;

    invoke-virtual {v0, p1}, Ltimber/log/Timber$Forest;->e(Ljava/lang/Throwable;)V

    return-void
.end method

.method private final initCustomBannerAdRequest(Lcom/player/easy/data/CustomAdConfig;)V
    .locals 5

    .line 231
    invoke-direct {p0}, Lcom/player/easy/player/PlayerAdConfig;->showBannerAd()V

    .line 232
    iget-object v0, p0, Lcom/player/easy/player/PlayerAdConfig;->placeHolder:Landroid/view/ViewGroup;

    const-string v1, "placeHolder"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v1, 0x8

    .line 291
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 233
    new-instance v0, Lcom/player/easy/widget/BannerView;

    iget-object v1, p0, Lcom/player/easy/player/PlayerAdConfig;->activity:Landroid/app/Activity;

    const/4 v2, 0x0

    const/4 v3, 0x2

    invoke-direct {v0, v1, v2, v3, v2}, Lcom/player/easy/widget/BannerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 234
    invoke-virtual {v0, p1}, Lcom/player/easy/widget/BannerView;->setData(Lcom/player/easy/data/CustomAdConfig;)V

    .line 236
    iget-object v1, p0, Lcom/player/easy/player/PlayerAdConfig;->adFrame:Landroid/widget/LinearLayout;

    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    const/16 v3, 0x140

    invoke-static {v3}, Lcom/player/easy/util/system/ContextExtensionsKt;->getDpToPx(I)I

    move-result v3

    const/4 v4, -0x2

    invoke-direct {v2, v3, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const/4 v3, 0x0

    invoke-virtual {v1, v0, v3, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 238
    invoke-virtual {v0}, Lcom/player/easy/widget/BannerView;->getImageView()Landroid/widget/ImageView;

    move-result-object v1

    invoke-static {v1}, Lcoil/ImageViews;->clear(Landroid/widget/ImageView;)V

    .line 240
    new-instance v1, Lcoil/ImageLoader$Builder;

    iget-object v2, p0, Lcom/player/easy/player/PlayerAdConfig;->activity:Landroid/app/Activity;

    invoke-direct {v1, v2}, Lcoil/ImageLoader$Builder;-><init>(Landroid/content/Context;)V

    .line 241
    sget-object v2, Lcoil/request/CachePolicy;->DISABLED:Lcoil/request/CachePolicy;

    invoke-virtual {v1, v2}, Lcoil/ImageLoader$Builder;->diskCachePolicy(Lcoil/request/CachePolicy;)Lcoil/ImageLoader$Builder;

    move-result-object v1

    .line 242
    invoke-virtual {v1, v2}, Lcoil/ImageLoader$Builder;->memoryCachePolicy(Lcoil/request/CachePolicy;)Lcoil/ImageLoader$Builder;

    move-result-object v1

    .line 243
    invoke-virtual {v1}, Lcoil/ImageLoader$Builder;->build()Lcoil/ImageLoader;

    move-result-object v1

    .line 245
    new-instance v2, Lcoil/request/ImageRequest$Builder;

    iget-object v3, p0, Lcom/player/easy/player/PlayerAdConfig;->activity:Landroid/app/Activity;

    invoke-direct {v2, v3}, Lcoil/request/ImageRequest$Builder;-><init>(Landroid/content/Context;)V

    .line 246
    invoke-virtual {p1}, Lcom/player/easy/data/CustomAdConfig;->getImage_link()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Lcoil/request/ImageRequest$Builder;->data(Ljava/lang/Object;)Lcoil/request/ImageRequest$Builder;

    move-result-object p1

    .line 297
    new-instance v2, Lcom/player/easy/player/PlayerAdConfig$initCustomBannerAdRequest$$inlined$target$default$1;

    invoke-direct {v2, v0, p0}, Lcom/player/easy/player/PlayerAdConfig$initCustomBannerAdRequest$$inlined$target$default$1;-><init>(Lcom/player/easy/widget/BannerView;Lcom/player/easy/player/PlayerAdConfig;)V

    invoke-virtual {p1, v2}, Lcoil/request/ImageRequest$Builder;->target(Lcoil/target/Target;)Lcoil/request/ImageRequest$Builder;

    move-result-object p1

    .line 254
    invoke-virtual {p1}, Lcoil/request/ImageRequest$Builder;->build()Lcoil/request/ImageRequest;

    move-result-object p1

    .line 255
    invoke-interface {v1, p1}, Lcoil/ImageLoader;->enqueue(Lcoil/request/ImageRequest;)Lcoil/request/Disposable;

    return-void
.end method

.method private final initCustomInterstitialAdRequest(Lcom/player/easy/data/CustomAdConfig;)V
    .locals 2

    .line 259
    new-instance v0, Lcom/player/easy/widget/interstitial/CustomAdsInterstitial;

    iget-object v1, p0, Lcom/player/easy/player/PlayerAdConfig;->activity:Landroid/app/Activity;

    invoke-direct {v0, v1, p1}, Lcom/player/easy/widget/interstitial/CustomAdsInterstitial;-><init>(Landroid/content/Context;Lcom/player/easy/data/CustomAdConfig;)V

    iput-object v0, p0, Lcom/player/easy/player/PlayerAdConfig;->customInterstitialAd:Lcom/player/easy/widget/interstitial/CustomAdsInterstitial;

    .line 260
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 261
    new-instance p1, Lcom/player/easy/player/PlayerAdConfig$initCustomInterstitialAdRequest$1;

    invoke-direct {p1, p0}, Lcom/player/easy/player/PlayerAdConfig$initCustomInterstitialAdRequest$1;-><init>(Lcom/player/easy/player/PlayerAdConfig;)V

    .line 260
    invoke-virtual {v0, p1}, Lcom/player/easy/widget/interstitial/CustomAdsInterstitial;->setAdListener(Lcom/player/easy/widget/interstitial/CustomInterstitialAdListener;)Lcom/player/easy/widget/interstitial/CustomAdsInterstitial;

    .line 280
    iget-object p1, p0, Lcom/player/easy/player/PlayerAdConfig;->customInterstitialAd:Lcom/player/easy/widget/interstitial/CustomAdsInterstitial;

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/player/easy/player/PlayerAdConfig;->activity:Landroid/app/Activity;

    invoke-virtual {p1, v0}, Lcom/player/easy/widget/interstitial/CustomAdsInterstitial;->loadAds(Landroid/content/Context;)V

    return-void
.end method

.method private final showBannerAd()V
    .locals 3

    .line 45
    iget-object v0, p0, Lcom/player/easy/player/PlayerAdConfig;->adFrame:Landroid/widget/LinearLayout;

    .line 284
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 46
    :cond_0
    iget-object v0, p0, Lcom/player/easy/player/PlayerAdConfig;->adFrame:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    .line 47
    iget-object v0, p0, Lcom/player/easy/player/PlayerAdConfig;->adFrame:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    .line 285
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 48
    iget-object v0, p0, Lcom/player/easy/player/PlayerAdConfig;->adFrame:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const-wide/16 v1, 0xfa

    invoke-virtual {v0, v1, v2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    return-void
.end method


# virtual methods
.method public final getActivity()Landroid/app/Activity;
    .locals 1

    .line 28
    iget-object v0, p0, Lcom/player/easy/player/PlayerAdConfig;->activity:Landroid/app/Activity;

    return-object v0
.end method

.method public final getAdFrame()Landroid/widget/LinearLayout;
    .locals 1

    .line 29
    iget-object v0, p0, Lcom/player/easy/player/PlayerAdConfig;->adFrame:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method public final getPreferencesHelper()Lcom/player/easy/data/preference/PreferencesHelper;
    .locals 1

    .line 30
    iget-object v0, p0, Lcom/player/easy/player/PlayerAdConfig;->preferencesHelper:Lcom/player/easy/data/preference/PreferencesHelper;

    return-object v0
.end method

.method public final initAdMob(Lcom/player/easy/data/AdConfig;)V
    .locals 1

    const-string v0, "adConfig"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 68
    invoke-virtual {p1}, Lcom/player/easy/data/AdType;->getMax_close_click_to_hide_banner_ad()I

    move-result v0

    iput v0, p0, Lcom/player/easy/player/PlayerAdConfig;->maxCloseClickToStopShowingBannerAd:I

    .line 69
    invoke-static {p1}, Lcom/player/easy/data/IpInformationKt;->isBannerFormat(Lcom/player/easy/data/AdConfig;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 70
    invoke-direct {p0, p1}, Lcom/player/easy/player/PlayerAdConfig;->initAdmobBannerAdRequest(Lcom/player/easy/data/AdConfig;)V

    return-void

    .line 72
    :cond_0
    invoke-direct {p0, p1}, Lcom/player/easy/player/PlayerAdConfig;->initAdmobInterstitialAdRequest(Lcom/player/easy/data/AdConfig;)V

    return-void
.end method

.method public final initCustomAds(Lcom/player/easy/data/CustomAdConfig;)V
    .locals 1

    const-string v0, "adConfig"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 77
    invoke-virtual {p1}, Lcom/player/easy/data/AdType;->getMax_close_click_to_hide_banner_ad()I

    move-result v0

    iput v0, p0, Lcom/player/easy/player/PlayerAdConfig;->maxCloseClickToStopShowingBannerAd:I

    .line 78
    invoke-static {p1}, Lcom/player/easy/data/IpInformationKt;->isBannerFormat(Lcom/player/easy/data/CustomAdConfig;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 79
    invoke-direct {p0, p1}, Lcom/player/easy/player/PlayerAdConfig;->initCustomBannerAdRequest(Lcom/player/easy/data/CustomAdConfig;)V

    return-void

    .line 81
    :cond_0
    invoke-direct {p0, p1}, Lcom/player/easy/player/PlayerAdConfig;->initCustomInterstitialAdRequest(Lcom/player/easy/data/CustomAdConfig;)V

    return-void
.end method

.method public final onClickOnAdClose()V
    .locals 3

    .line 56
    invoke-direct {p0}, Lcom/player/easy/player/PlayerAdConfig;->hideBannerAd()V

    .line 57
    iget v0, p0, Lcom/player/easy/player/PlayerAdConfig;->numberOfCloseAdsPressed:I

    const/4 v1, 0x1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/player/easy/player/PlayerAdConfig;->numberOfCloseAdsPressed:I

    .line 58
    iget v2, p0, Lcom/player/easy/player/PlayerAdConfig;->maxCloseClickToStopShowingBannerAd:I

    if-ne v0, v2, :cond_1

    .line 59
    iput-boolean v1, p0, Lcom/player/easy/player/PlayerAdConfig;->stopShowingAds:Z

    .line 61
    :try_start_0
    iget-object v0, p0, Lcom/player/easy/player/PlayerAdConfig;->adView:Lcom/google/android/gms/ads/AdView;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/google/android/gms/ads/BaseAdView;->destroy()V

    :cond_0
    const/4 v0, 0x0

    .line 62
    iput-object v0, p0, Lcom/player/easy/player/PlayerAdConfig;->adView:Lcom/google/android/gms/ads/AdView;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_1
    return-void
.end method

.method public final onDestroy()V
    .locals 1

    .line 142
    :try_start_0
    iget-object v0, p0, Lcom/player/easy/player/PlayerAdConfig;->adView:Lcom/google/android/gms/ads/AdView;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/google/android/gms/ads/BaseAdView;->destroy()V

    :cond_0
    const/4 v0, 0x0

    .line 143
    iput-object v0, p0, Lcom/player/easy/player/PlayerAdConfig;->adView:Lcom/google/android/gms/ads/AdView;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method public final showAd()V
    .locals 3

    .line 148
    iget-object v0, p0, Lcom/player/easy/player/PlayerAdConfig;->preferencesHelper:Lcom/player/easy/data/preference/PreferencesHelper;

    invoke-virtual {v0}, Lcom/player/easy/data/preference/PreferencesHelper;->isAdFreeActive()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 149
    :cond_0
    iget-boolean v0, p0, Lcom/player/easy/player/PlayerAdConfig;->stopShowingAds:Z

    if-eqz v0, :cond_1

    :goto_0
    return-void

    .line 151
    :cond_1
    iget-object v0, p0, Lcom/player/easy/player/PlayerAdConfig;->admobInterstitialAd:Lcom/google/android/gms/ads/interstitial/InterstitialAd;

    const/4 v1, 0x1

    if-eqz v0, :cond_3

    .line 153
    new-instance v2, Lcom/player/easy/player/PlayerAdConfig$showAd$1;

    invoke-direct {v2, p0}, Lcom/player/easy/player/PlayerAdConfig$showAd$1;-><init>(Lcom/player/easy/player/PlayerAdConfig;)V

    .line 152
    invoke-virtual {v0, v2}, Lcom/google/android/gms/ads/interstitial/InterstitialAd;->setFullScreenContentCallback(Lcom/google/android/gms/ads/FullScreenContentCallback;)V

    .line 162
    iget-object v0, p0, Lcom/player/easy/player/PlayerAdConfig;->admobInterstitialAd:Lcom/google/android/gms/ads/interstitial/InterstitialAd;

    if-eqz v0, :cond_2

    iget-object v2, p0, Lcom/player/easy/player/PlayerAdConfig;->activity:Landroid/app/Activity;

    invoke-virtual {v0, v2}, Lcom/google/android/gms/ads/interstitial/InterstitialAd;->show(Landroid/app/Activity;)V

    .line 163
    :cond_2
    iput-boolean v1, p0, Lcom/player/easy/player/PlayerAdConfig;->stopShowingAds:Z

    return-void

    .line 164
    :cond_3
    iget-object v0, p0, Lcom/player/easy/player/PlayerAdConfig;->customInterstitialAd:Lcom/player/easy/widget/interstitial/CustomAdsInterstitial;

    if-eqz v0, :cond_5

    invoke-virtual {v0}, Lcom/player/easy/widget/interstitial/CustomAdsInterstitial;->isAdLoaded()Z

    move-result v0

    if-ne v0, v1, :cond_5

    .line 165
    iget-object v0, p0, Lcom/player/easy/player/PlayerAdConfig;->customInterstitialAd:Lcom/player/easy/widget/interstitial/CustomAdsInterstitial;

    if-eqz v0, :cond_4

    iget-object v2, p0, Lcom/player/easy/player/PlayerAdConfig;->activity:Landroid/app/Activity;

    invoke-virtual {v0, v2}, Lcom/player/easy/widget/interstitial/CustomAdsInterstitial;->show(Landroid/content/Context;)V

    .line 166
    :cond_4
    iput-boolean v1, p0, Lcom/player/easy/player/PlayerAdConfig;->stopShowingAds:Z

    return-void

    .line 168
    :cond_5
    iget-boolean v0, p0, Lcom/player/easy/player/PlayerAdConfig;->adLoaded:Z

    const-string v1, "placeHolder"

    if-eqz v0, :cond_6

    .line 169
    iget-object v0, p0, Lcom/player/easy/player/PlayerAdConfig;->placeHolder:Landroid/view/ViewGroup;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v1, 0x8

    .line 287
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1

    .line 171
    :cond_6
    iget-object v0, p0, Lcom/player/easy/player/PlayerAdConfig;->placeHolder:Landroid/view/ViewGroup;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v1, 0x0

    .line 289
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 173
    :goto_1
    invoke-direct {p0}, Lcom/player/easy/player/PlayerAdConfig;->showBannerAd()V

    return-void
.end method
