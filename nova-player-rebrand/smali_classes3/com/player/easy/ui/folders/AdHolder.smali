.class public final Lcom/player/easy/ui/folders/AdHolder;
.super Leu/davidea/viewholders/FlexibleViewHolder;
.source "AdHolder.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000:\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u0002\n\u0000\u0018\u00002\u00020\u0001B\u001b\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\n\u0010\u0004\u001a\u0006\u0012\u0002\u0008\u00030\u0005\u00a2\u0006\u0004\u0008\u0006\u0010\u0007J\u0006\u0010\u001a\u001a\u00020\u001bR\u0015\u0010\u0004\u001a\u0006\u0012\u0002\u0008\u00030\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0008\u0010\tR\u000e\u0010\n\u001a\u00020\u000bX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u000c\u001a\u0004\u0018\u00010\rX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u001a\u0010\u000e\u001a\u00020\u000fX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0010\u0010\u0011\"\u0004\u0008\u0012\u0010\u0013R\u001b\u0010\u0014\u001a\u00020\u00158BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u0018\u0010\u0019\u001a\u0004\u0008\u0016\u0010\u0017\u00a8\u0006\u001c"
    }
    d2 = {
        "Lcom/player/easy/ui/folders/AdHolder;",
        "Leu/davidea/viewholders/FlexibleViewHolder;",
        "view",
        "Landroid/view/View;",
        "adapter",
        "Leu/davidea/flexibleadapter/FlexibleAdapter;",
        "<init>",
        "(Landroid/view/View;Leu/davidea/flexibleadapter/FlexibleAdapter;)V",
        "getAdapter",
        "()Leu/davidea/flexibleadapter/FlexibleAdapter;",
        "binding",
        "Lcom/player/easy/databinding/AdHolderBinding;",
        "adView",
        "Lcom/google/android/gms/ads/AdView;",
        "adLoaded",
        "",
        "getAdLoaded",
        "()Z",
        "setAdLoaded",
        "(Z)V",
        "json",
        "Lkotlinx/serialization/json/Json;",
        "getJson",
        "()Lkotlinx/serialization/json/Json;",
        "json$delegate",
        "Lkotlin/Lazy;",
        "bind",
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

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nAdHolder.kt\nKotlin\n*S Kotlin\n*F\n+ 1 AdHolder.kt\ncom/player/easy/ui/folders/AdHolder\n+ 2 Injekt.kt\nuy/kohesive/injekt/InjektKt\n+ 3 Json.kt\nkotlinx/serialization/json/Json\n+ 4 View.kt\nandroidx/core/view/ViewKt\n*L\n1#1,89:1\n17#2:90\n222#3:91\n299#4,2:92\n257#4,2:94\n*S KotlinDebug\n*F\n+ 1 AdHolder.kt\ncom/player/easy/ui/folders/AdHolder\n*L\n28#1:90\n35#1:91\n85#1:92,2\n86#1:94,2\n*E\n"
    }
.end annotation


# instance fields
.field private adLoaded:Z

.field private adView:Lcom/google/android/gms/ads/AdView;

.field private final adapter:Leu/davidea/flexibleadapter/FlexibleAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Leu/davidea/flexibleadapter/FlexibleAdapter;"
        }
    .end annotation
.end field

.field private final binding:Lcom/player/easy/databinding/AdHolderBinding;

.field private final json$delegate:Lkotlin/Lazy;


# direct methods
.method public constructor <init>(Landroid/view/View;Leu/davidea/flexibleadapter/FlexibleAdapter;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "Leu/davidea/flexibleadapter/FlexibleAdapter;",
            ")V"
        }
    .end annotation

    const-string v0, "view"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "adapter"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 21
    invoke-direct {p0, p1, p2}, Leu/davidea/viewholders/FlexibleViewHolder;-><init>(Landroid/view/View;Leu/davidea/flexibleadapter/FlexibleAdapter;)V

    iput-object p2, p0, Lcom/player/easy/ui/folders/AdHolder;->adapter:Leu/davidea/flexibleadapter/FlexibleAdapter;

    .line 23
    invoke-static {p1}, Lcom/player/easy/databinding/AdHolderBinding;->bind(Landroid/view/View;)Lcom/player/easy/databinding/AdHolderBinding;

    move-result-object p2

    const-string v0, "bind(...)"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p2, p0, Lcom/player/easy/ui/folders/AdHolder;->binding:Lcom/player/easy/databinding/AdHolderBinding;

    .line 90
    sget-object p2, Lcom/player/easy/ui/folders/AdHolder$special$$inlined$injectLazy$1;->INSTANCE:Lcom/player/easy/ui/folders/AdHolder$special$$inlined$injectLazy$1;

    invoke-static {p2}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p2

    .line 28
    iput-object p2, p0, Lcom/player/easy/ui/folders/AdHolder;->json$delegate:Lkotlin/Lazy;

    .line 31
    sget-object p2, Lcom/google/firebase/Firebase;->INSTANCE:Lcom/google/firebase/Firebase;

    invoke-static {p2}, Lcom/google/firebase/remoteconfig/RemoteConfigKt;->getRemoteConfig(Lcom/google/firebase/Firebase;)Lcom/google/firebase/remoteconfig/FirebaseRemoteConfig;

    move-result-object p2

    const-string v0, "show_inline_banner_ads_in_folders"

    invoke-virtual {p2, v0}, Lcom/google/firebase/remoteconfig/FirebaseRemoteConfig;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    const-string v0, "getString(...)"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 33
    invoke-interface {p2}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-lez v0, :cond_0

    .line 35
    :try_start_0
    invoke-direct {p0}, Lcom/player/easy/ui/folders/AdHolder;->getJson()Lkotlinx/serialization/json/Json;

    move-result-object v0

    .line 91
    invoke-virtual {v0}, Lkotlinx/serialization/json/Json;->getSerializersModule()Lkotlinx/serialization/modules/SerializersModule;

    sget-object v1, Lcom/player/easy/ui/folders/RemoteBanner;->Companion:Lcom/player/easy/ui/folders/RemoteBanner$Companion;

    invoke-virtual {v1}, Lcom/player/easy/ui/folders/RemoteBanner$Companion;->serializer()Lkotlinx/serialization/KSerializer;

    move-result-object v1

    check-cast v1, Lkotlinx/serialization/DeserializationStrategy;

    invoke-virtual {v0, v1, p2}, Lkotlinx/serialization/json/Json;->decodeFromString(Lkotlinx/serialization/DeserializationStrategy;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p2

    .line 37
    sget-object v0, Ltimber/log/Timber;->Forest:Ltimber/log/Timber$Forest;

    invoke-virtual {v0, p2}, Ltimber/log/Timber$Forest;->e(Ljava/lang/Throwable;)V

    :cond_0
    const/4 p2, 0x0

    .line 41
    :goto_0
    sget-object v0, Lcom/player/easy/BuildVars;->INSTANCE:Lcom/player/easy/BuildVars;

    invoke-virtual {v0}, Lcom/player/easy/BuildVars;->isHuaweiStoreApp()Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    move-object v1, p2

    check-cast v1, Lcom/player/easy/ui/folders/RemoteBanner;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lcom/player/easy/ui/folders/RemoteBanner;->getHuawei_enable()Z

    move-result v3

    if-ne v3, v2, :cond_1

    invoke-virtual {v1}, Lcom/player/easy/ui/folders/RemoteBanner;->getShow()Z

    move-result v1

    if-nez v1, :cond_2

    .line 42
    :cond_1
    invoke-virtual {v0}, Lcom/player/easy/BuildVars;->isHuaweiStoreApp()Z

    move-result v0

    if-nez v0, :cond_3

    move-object v0, p2

    check-cast v0, Lcom/player/easy/ui/folders/RemoteBanner;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lcom/player/easy/ui/folders/RemoteBanner;->getShow()Z

    move-result v0

    if-ne v0, v2, :cond_3

    .line 43
    :cond_2
    move-object v0, p2

    check-cast v0, Lcom/player/easy/ui/folders/RemoteBanner;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lcom/player/easy/ui/folders/RemoteBanner;->getBanner_unit_id()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_3

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-lez v1, :cond_3

    .line 45
    new-instance v1, Lcom/google/android/gms/ads/AdView;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-direct {v1, p1}, Lcom/google/android/gms/ads/AdView;-><init>(Landroid/content/Context;)V

    .line 46
    sget-object p1, Lcom/google/android/gms/ads/AdSize;->MEDIUM_RECTANGLE:Lcom/google/android/gms/ads/AdSize;

    invoke-virtual {v1, p1}, Lcom/google/android/gms/ads/BaseAdView;->setAdSize(Lcom/google/android/gms/ads/AdSize;)V

    .line 51
    invoke-static {p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v0}, Lcom/player/easy/ui/folders/RemoteBanner;->getBanner_unit_id()Ljava/lang/String;

    move-result-object p1

    .line 47
    invoke-virtual {v1, p1}, Lcom/google/android/gms/ads/BaseAdView;->setAdUnitId(Ljava/lang/String;)V

    .line 54
    new-instance p1, Landroid/widget/FrameLayout$LayoutParams;

    const/4 p2, -0x1

    const/4 v0, -0x2

    invoke-direct {p1, p2, v0}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    const/16 p2, 0x10

    .line 58
    iput p2, p1, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 60
    invoke-virtual {v1, p1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 62
    iget-object p1, p0, Lcom/player/easy/ui/folders/AdHolder;->binding:Lcom/player/easy/databinding/AdHolderBinding;

    invoke-virtual {p1}, Lcom/player/easy/databinding/AdHolderBinding;->getRoot()Landroid/widget/FrameLayout;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 63
    iput-object v1, p0, Lcom/player/easy/ui/folders/AdHolder;->adView:Lcom/google/android/gms/ads/AdView;

    .line 65
    new-instance p1, Lcom/google/android/gms/ads/AdRequest$Builder;

    invoke-direct {p1}, Lcom/google/android/gms/ads/AdRequest$Builder;-><init>()V

    invoke-virtual {p1}, Lcom/google/android/gms/ads/AdRequest$Builder;->build()Lcom/google/android/gms/ads/AdRequest;

    move-result-object p1

    const-string p2, "build(...)"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 67
    new-instance p2, Lcom/player/easy/ui/folders/AdHolder$1;

    invoke-direct {p2, p0}, Lcom/player/easy/ui/folders/AdHolder$1;-><init>(Lcom/player/easy/ui/folders/AdHolder;)V

    .line 66
    invoke-virtual {v1, p2}, Lcom/google/android/gms/ads/BaseAdView;->setAdListener(Lcom/google/android/gms/ads/AdListener;)V

    .line 80
    invoke-virtual {v1, p1}, Lcom/google/android/gms/ads/BaseAdView;->loadAd(Lcom/google/android/gms/ads/AdRequest;)V

    :cond_3
    return-void
.end method

.method private final getJson()Lkotlinx/serialization/json/Json;
    .locals 1

    .line 28
    iget-object v0, p0, Lcom/player/easy/ui/folders/AdHolder;->json$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkotlinx/serialization/json/Json;

    return-object v0
.end method


# virtual methods
.method public final bind()V
    .locals 4

    .line 85
    iget-object v0, p0, Lcom/player/easy/ui/folders/AdHolder;->binding:Lcom/player/easy/databinding/AdHolderBinding;

    iget-object v0, v0, Lcom/player/easy/databinding/AdHolderBinding;->adPlaceHolderText:Landroid/widget/TextView;

    const-string v1, "adPlaceHolderText"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iget-boolean v1, p0, Lcom/player/easy/ui/folders/AdHolder;->adLoaded:Z

    const/4 v2, 0x0

    const/16 v3, 0x8

    if-eqz v1, :cond_0

    move v1, v3

    goto :goto_0

    :cond_0
    move v1, v2

    .line 92
    :goto_0
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 86
    iget-object v0, p0, Lcom/player/easy/ui/folders/AdHolder;->adView:Lcom/google/android/gms/ads/AdView;

    if-eqz v0, :cond_2

    iget-boolean v1, p0, Lcom/player/easy/ui/folders/AdHolder;->adLoaded:Z

    if-eqz v1, :cond_1

    goto :goto_1

    :cond_1
    move v2, v3

    .line 94
    :goto_1
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    :cond_2
    return-void
.end method

.method public final getAdLoaded()Z
    .locals 1

    .line 26
    iget-boolean v0, p0, Lcom/player/easy/ui/folders/AdHolder;->adLoaded:Z

    return v0
.end method

.method public final getAdapter()Leu/davidea/flexibleadapter/FlexibleAdapter;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Leu/davidea/flexibleadapter/FlexibleAdapter;"
        }
    .end annotation

    .line 21
    iget-object v0, p0, Lcom/player/easy/ui/folders/AdHolder;->adapter:Leu/davidea/flexibleadapter/FlexibleAdapter;

    return-object v0
.end method

.method public final setAdLoaded(Z)V
    .locals 0

    .line 26
    iput-boolean p1, p0, Lcom/player/easy/ui/folders/AdHolder;->adLoaded:Z

    return-void
.end method
