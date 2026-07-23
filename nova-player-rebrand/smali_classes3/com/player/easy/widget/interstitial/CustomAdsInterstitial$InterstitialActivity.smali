.class public final Lcom/player/easy/widget/interstitial/CustomAdsInterstitial$InterstitialActivity;
.super Landroidx/appcompat/app/AppCompatActivity;
.source "CustomAdsInterstitial.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/player/easy/widget/interstitial/CustomAdsInterstitial;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "InterstitialActivity"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0018\u00002\u00020\u0001B\u0007\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u0012\u0010\u0004\u001a\u00020\u00052\u0008\u0010\u0006\u001a\u0004\u0018\u00010\u0007H\u0014J\u0008\u0010\u0008\u001a\u00020\u0005H\u0002\u00a8\u0006\t"
    }
    d2 = {
        "Lcom/player/easy/widget/interstitial/CustomAdsInterstitial$InterstitialActivity;",
        "Landroidx/appcompat/app/AppCompatActivity;",
        "<init>",
        "()V",
        "onCreate",
        "",
        "savedInstanceState",
        "Landroid/os/Bundle;",
        "fullscreen",
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


# direct methods
.method public static synthetic $r8$lambda$RXd2ngn9X2B13NcTd9xGMZJitIY(Lcom/player/easy/widget/interstitial/CustomAdsInterstitial$InterstitialActivity;Landroid/view/View;)V
    .locals 0

    .line 0
    invoke-static {p0, p1}, Lcom/player/easy/widget/interstitial/CustomAdsInterstitial$InterstitialActivity;->onCreate$lambda$0$0(Lcom/player/easy/widget/interstitial/CustomAdsInterstitial$InterstitialActivity;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$vnS62qxOc-J0hkP3JkQkM-kYp-A(Lcom/player/easy/widget/interstitial/CustomAdsInterstitial$InterstitialActivity;Landroid/view/View;)V
    .locals 0

    .line 0
    invoke-static {p0, p1}, Lcom/player/easy/widget/interstitial/CustomAdsInterstitial$InterstitialActivity;->onCreate$lambda$1$1(Lcom/player/easy/widget/interstitial/CustomAdsInterstitial$InterstitialActivity;Landroid/view/View;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 164
    invoke-direct {p0}, Landroidx/appcompat/app/AppCompatActivity;-><init>()V

    return-void
.end method

.method private final fullscreen()V
    .locals 2

    .line 217
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    const-string v1, "getDecorView(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 219
    invoke-static {}, Lcom/player/easy/widget/interstitial/CustomAdsInterstitial;->access$getHideNavigation$cp()Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v1, 0x1002

    goto :goto_0

    :cond_0
    const/16 v1, 0x1000

    .line 222
    :goto_0
    invoke-virtual {v0, v1}, Landroid/view/View;->setSystemUiVisibility(I)V

    return-void
.end method

.method private static final onCreate$lambda$0$0(Lcom/player/easy/widget/interstitial/CustomAdsInterstitial$InterstitialActivity;Landroid/view/View;)V
    .locals 0

    .line 194
    invoke-static {}, Lcom/player/easy/widget/interstitial/CustomAdsInterstitial;->access$getCompanion$p()Lcom/player/easy/widget/interstitial/CustomAdsInterstitial$Companion;

    const/4 p1, 0x0

    invoke-static {p1}, Lcom/player/easy/widget/interstitial/CustomAdsInterstitial;->access$setAdLoaded$cp(Z)V

    .line 195
    invoke-static {}, Lcom/player/easy/widget/interstitial/CustomAdsInterstitial;->access$get_adConfig$cp()Lcom/player/easy/data/CustomAdConfig;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/player/easy/data/CustomAdConfig;->getLink_to_product()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-static {p0, p1}, Lcom/player/easy/util/system/ContextExtensionsKt;->openInBrowser(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method private static final onCreate$lambda$1$1(Lcom/player/easy/widget/interstitial/CustomAdsInterstitial$InterstitialActivity;Landroid/view/View;)V
    .locals 0

    .line 209
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 210
    invoke-static {}, Lcom/player/easy/widget/interstitial/CustomAdsInterstitial;->access$getCompanion$p()Lcom/player/easy/widget/interstitial/CustomAdsInterstitial$Companion;

    const/4 p0, 0x0

    invoke-static {p0}, Lcom/player/easy/widget/interstitial/CustomAdsInterstitial;->access$setAdLoaded$cp(Z)V

    .line 211
    invoke-static {}, Lcom/player/easy/widget/interstitial/CustomAdsInterstitial;->access$getAdListener$cp()Lcom/player/easy/widget/interstitial/CustomInterstitialAdListener;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-interface {p0}, Lcom/player/easy/widget/interstitial/CustomInterstitialAdListener;->onAdClosed()V

    :cond_0
    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3

    .line 166
    invoke-direct {p0}, Lcom/player/easy/widget/interstitial/CustomAdsInterstitial$InterstitialActivity;->fullscreen()V

    .line 167
    invoke-super {p0, p1}, Landroidx/fragment/app/FragmentActivity;->onCreate(Landroid/os/Bundle;)V

    .line 169
    invoke-virtual {p0}, Landroidx/activity/ComponentActivity;->getOnBackPressedDispatcher()Landroidx/activity/OnBackPressedDispatcher;

    move-result-object p1

    .line 171
    new-instance v0, Lcom/player/easy/widget/interstitial/CustomAdsInterstitial$InterstitialActivity$onCreate$1;

    invoke-direct {v0, p0}, Lcom/player/easy/widget/interstitial/CustomAdsInterstitial$InterstitialActivity$onCreate$1;-><init>(Lcom/player/easy/widget/interstitial/CustomAdsInterstitial$InterstitialActivity;)V

    .line 169
    invoke-virtual {p1, p0, v0}, Landroidx/activity/OnBackPressedDispatcher;->addCallback(Landroidx/lifecycle/LifecycleOwner;Landroidx/activity/OnBackPressedCallback;)V

    .line 182
    invoke-static {}, Lcom/player/easy/widget/interstitial/CustomAdsInterstitial;->access$getAdListener$cp()Lcom/player/easy/widget/interstitial/CustomInterstitialAdListener;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-interface {p1}, Lcom/player/easy/widget/interstitial/CustomInterstitialAdListener;->onAdShown()V

    .line 183
    :cond_0
    sget p1, Lcom/player/easy/R$layout;->custom_ads_interstitial_activity:I

    invoke-virtual {p0, p1}, Landroid/app/Activity;->setContentView(I)V

    .line 184
    sget p1, Lcom/player/easy/R$id;->interstitial_parent:I

    invoke-virtual {p0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/RelativeLayout;

    .line 185
    sget v0, Lcom/player/easy/R$id;->interstitial_image:I

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 186
    sget v1, Lcom/player/easy/R$id;->interstitial_button_close:I

    invoke-virtual {p0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageButton;

    .line 188
    invoke-static {}, Lcom/player/easy/widget/interstitial/CustomAdsInterstitial;->access$getPaletteColor$cp()I

    move-result v2

    invoke-virtual {p1, v2}, Landroid/view/View;->setBackgroundColor(I)V

    .line 191
    invoke-static {}, Lcom/player/easy/widget/interstitial/CustomAdsInterstitial;->access$getBitmap$cp()Landroid/graphics/Bitmap;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 192
    invoke-static {}, Lcom/player/easy/widget/interstitial/CustomAdsInterstitial;->access$get_adConfig$cp()Lcom/player/easy/data/CustomAdConfig;

    move-result-object p1

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/player/easy/data/CustomAdConfig;->getLink_to_product()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    if-eqz p1, :cond_3

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result p1

    if-nez p1, :cond_2

    goto :goto_1

    .line 193
    :cond_2
    new-instance p1, Lcom/player/easy/widget/interstitial/CustomAdsInterstitial$InterstitialActivity$$ExternalSyntheticLambda0;

    invoke-direct {p1, p0}, Lcom/player/easy/widget/interstitial/CustomAdsInterstitial$InterstitialActivity$$ExternalSyntheticLambda0;-><init>(Lcom/player/easy/widget/interstitial/CustomAdsInterstitial$InterstitialActivity;)V

    invoke-virtual {v0, p1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 202
    :cond_3
    :goto_1
    new-instance p1, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {p1}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    const/4 v0, 0x1

    .line 203
    invoke-virtual {p1, v0}, Landroid/graphics/drawable/GradientDrawable;->setShape(I)V

    const/16 v0, 0x8

    .line 204
    new-array v0, v0, [F

    fill-array-data v0, :array_0

    invoke-virtual {p1, v0}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadii([F)V

    .line 205
    invoke-static {}, Lcom/player/easy/widget/interstitial/CustomAdsInterstitial;->access$getCloseButtonBackgroundColor$cp()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    .line 201
    invoke-virtual {v1, p1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 207
    invoke-static {}, Lcom/player/easy/widget/interstitial/CustomAdsInterstitial;->access$getCloseIconColor$cp()I

    move-result p1

    sget-object v0, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v1, p1, v0}, Landroid/widget/ImageView;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 208
    new-instance p1, Lcom/player/easy/widget/interstitial/CustomAdsInterstitial$InterstitialActivity$$ExternalSyntheticLambda1;

    invoke-direct {p1, p0}, Lcom/player/easy/widget/interstitial/CustomAdsInterstitial$InterstitialActivity$$ExternalSyntheticLambda1;-><init>(Lcom/player/easy/widget/interstitial/CustomAdsInterstitial$InterstitialActivity;)V

    invoke-virtual {v1, p1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void

    :array_0
    .array-data 4
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
    .end array-data
.end method
