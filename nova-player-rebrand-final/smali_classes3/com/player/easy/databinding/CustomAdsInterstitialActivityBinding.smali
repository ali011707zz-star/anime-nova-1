.class public final Lcom/player/easy/databinding/CustomAdsInterstitialActivityBinding;
.super Ljava/lang/Object;
.source "CustomAdsInterstitialActivityBinding.java"

# interfaces
.implements Landroidx/viewbinding/ViewBinding;


# instance fields
.field public final interstitialButtonClose:Landroid/widget/ImageButton;

.field public final interstitialButtonCloseCard:Landroidx/cardview/widget/CardView;

.field public final interstitialImage:Landroid/widget/ImageView;

.field public final interstitialParent:Landroid/widget/RelativeLayout;

.field private final rootView:Landroid/widget/RelativeLayout;


# direct methods
.method private constructor <init>(Landroid/widget/RelativeLayout;Landroid/widget/ImageButton;Landroidx/cardview/widget/CardView;Landroid/widget/ImageView;Landroid/widget/RelativeLayout;)V
    .locals 0

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    iput-object p1, p0, Lcom/player/easy/databinding/CustomAdsInterstitialActivityBinding;->rootView:Landroid/widget/RelativeLayout;

    .line 40
    iput-object p2, p0, Lcom/player/easy/databinding/CustomAdsInterstitialActivityBinding;->interstitialButtonClose:Landroid/widget/ImageButton;

    .line 41
    iput-object p3, p0, Lcom/player/easy/databinding/CustomAdsInterstitialActivityBinding;->interstitialButtonCloseCard:Landroidx/cardview/widget/CardView;

    .line 42
    iput-object p4, p0, Lcom/player/easy/databinding/CustomAdsInterstitialActivityBinding;->interstitialImage:Landroid/widget/ImageView;

    .line 43
    iput-object p5, p0, Lcom/player/easy/databinding/CustomAdsInterstitialActivityBinding;->interstitialParent:Landroid/widget/RelativeLayout;

    return-void
.end method

.method public static bind(Landroid/view/View;)Lcom/player/easy/databinding/CustomAdsInterstitialActivityBinding;
    .locals 8

    .line 73
    sget v0, Lcom/player/easy/R$id;->interstitial_button_close:I

    .line 74
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v4, v1

    check-cast v4, Landroid/widget/ImageButton;

    if-eqz v4, :cond_0

    .line 79
    sget v0, Lcom/player/easy/R$id;->interstitial_button_close_card:I

    .line 80
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v5, v1

    check-cast v5, Landroidx/cardview/widget/CardView;

    if-eqz v5, :cond_0

    .line 85
    sget v0, Lcom/player/easy/R$id;->interstitial_image:I

    .line 86
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v6, v1

    check-cast v6, Landroid/widget/ImageView;

    if-eqz v6, :cond_0

    .line 91
    move-object v3, p0

    check-cast v3, Landroid/widget/RelativeLayout;

    .line 93
    new-instance v2, Lcom/player/easy/databinding/CustomAdsInterstitialActivityBinding;

    move-object v7, v3

    invoke-direct/range {v2 .. v7}, Lcom/player/easy/databinding/CustomAdsInterstitialActivityBinding;-><init>(Landroid/widget/RelativeLayout;Landroid/widget/ImageButton;Landroidx/cardview/widget/CardView;Landroid/widget/ImageView;Landroid/widget/RelativeLayout;)V

    return-object v2

    .line 97
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object p0

    .line 98
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Missing required view with ID: "

    invoke-virtual {v1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static inflate(Landroid/view/LayoutInflater;)Lcom/player/easy/databinding/CustomAdsInterstitialActivityBinding;
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 54
    invoke-static {p0, v0, v1}, Lcom/player/easy/databinding/CustomAdsInterstitialActivityBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/player/easy/databinding/CustomAdsInterstitialActivityBinding;

    move-result-object p0

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/player/easy/databinding/CustomAdsInterstitialActivityBinding;
    .locals 2

    .line 60
    sget v0, Lcom/player/easy/R$layout;->custom_ads_interstitial_activity:I

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    if-eqz p2, :cond_0

    .line 62
    invoke-virtual {p1, p0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 64
    :cond_0
    invoke-static {p0}, Lcom/player/easy/databinding/CustomAdsInterstitialActivityBinding;->bind(Landroid/view/View;)Lcom/player/easy/databinding/CustomAdsInterstitialActivityBinding;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public bridge synthetic getRoot()Landroid/view/View;
    .locals 1

    .line 20
    invoke-virtual {p0}, Lcom/player/easy/databinding/CustomAdsInterstitialActivityBinding;->getRoot()Landroid/widget/RelativeLayout;

    move-result-object v0

    return-object v0
.end method

.method public getRoot()Landroid/widget/RelativeLayout;
    .locals 1

    .line 49
    iget-object v0, p0, Lcom/player/easy/databinding/CustomAdsInterstitialActivityBinding;->rootView:Landroid/widget/RelativeLayout;

    return-object v0
.end method
