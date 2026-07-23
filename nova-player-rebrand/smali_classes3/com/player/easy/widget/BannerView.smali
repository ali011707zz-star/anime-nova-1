.class public final Lcom/player/easy/widget/BannerView;
.super Landroid/widget/FrameLayout;
.source "BannerView.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00008\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0003\u0018\u00002\u00020\u0001B\u001d\u0008\u0007\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\n\u0008\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u0005\u00a2\u0006\u0004\u0008\u0006\u0010\u0007J\u0006\u0010\u0015\u001a\u00020\u0016J\u0018\u0010\u0017\u001a\u00020\u00162\u0006\u0010\u0018\u001a\u00020\u00192\u0006\u0010\u001a\u001a\u00020\u0019H\u0014J\u000e\u0010\u001b\u001a\u00020\u00162\u0006\u0010\u000f\u001a\u00020\u0010R\u0011\u0010\u0008\u001a\u00020\t\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\n\u0010\u000bR\u0011\u0010\u000c\u001a\u00020\u0001\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\r\u0010\u000eR\u001c\u0010\u000f\u001a\u0004\u0018\u00010\u0010X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0011\u0010\u0012\"\u0004\u0008\u0013\u0010\u0014\u00a8\u0006\u001c"
    }
    d2 = {
        "Lcom/player/easy/widget/BannerView;",
        "Landroid/widget/FrameLayout;",
        "context",
        "Landroid/content/Context;",
        "attr",
        "Landroid/util/AttributeSet;",
        "<init>",
        "(Landroid/content/Context;Landroid/util/AttributeSet;)V",
        "imageView",
        "Landroid/widget/ImageView;",
        "getImageView",
        "()Landroid/widget/ImageView;",
        "adRectangle",
        "getAdRectangle",
        "()Landroid/widget/FrameLayout;",
        "model",
        "Lcom/player/easy/data/CustomAdConfig;",
        "getModel",
        "()Lcom/player/easy/data/CustomAdConfig;",
        "setModel",
        "(Lcom/player/easy/data/CustomAdConfig;)V",
        "setCustomPadding",
        "",
        "onMeasure",
        "widthMeasureSpec",
        "",
        "heightMeasureSpec",
        "setData",
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
.field private final adRectangle:Landroid/widget/FrameLayout;

.field private final imageView:Landroid/widget/ImageView;

.field private model:Lcom/player/easy/data/CustomAdConfig;


# direct methods
.method public static synthetic $r8$lambda$dVexP3TjJcp1Kr822IccsEMjBJA(Lcom/player/easy/widget/BannerView;Landroid/content/Context;Landroid/view/View;)V
    .locals 0

    .line 0
    invoke-static {p0, p1, p2}, Lcom/player/easy/widget/BannerView;->_init_$lambda$0(Lcom/player/easy/widget/BannerView;Landroid/content/Context;Landroid/view/View;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .annotation build Lkotlin/jvm/JvmOverloads;
    .end annotation

    .line 0
    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    const/4 v1, 0x2

    invoke-direct {p0, p1, v0, v1, v0}, Lcom/player/easy/widget/BannerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 4
    .annotation build Lkotlin/jvm/JvmOverloads;
    .end annotation

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 15
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 24
    new-instance p2, Landroid/widget/ImageView;

    invoke-direct {p2, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/player/easy/widget/BannerView;->imageView:Landroid/widget/ImageView;

    .line 25
    sget-object v0, Landroid/widget/ImageView$ScaleType;->FIT_XY:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {p2, v0}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 27
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v1, -0x1

    invoke-direct {v0, v1, v1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 28
    invoke-virtual {p0, p2, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 30
    new-instance p2, Landroid/widget/FrameLayout;

    invoke-direct {p2, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/player/easy/widget/BannerView;->adRectangle:Landroid/widget/FrameLayout;

    .line 31
    sget v0, Lcom/player/easy/R$drawable;->ad_rectangle:I

    invoke-virtual {p2, v0}, Landroid/view/View;->setBackgroundResource(I)V

    const/4 v0, 0x4

    .line 32
    invoke-static {v0}, Lcom/player/easy/util/system/ContextExtensionsKt;->getDpToPx(I)I

    move-result v1

    invoke-static {v0}, Lcom/player/easy/util/system/ContextExtensionsKt;->getDpToPx(I)I

    move-result v0

    const/4 v2, 0x0

    invoke-virtual {p2, v1, v2, v0, v2}, Landroid/view/View;->setPadding(IIII)V

    .line 33
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    const/16 v1, 0xe

    invoke-static {v1}, Lcom/player/easy/util/system/ContextExtensionsKt;->getDpToPx(I)I

    move-result v1

    const/4 v3, -0x2

    invoke-direct {v0, v3, v1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 34
    invoke-virtual {p0, p2, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 36
    new-instance v0, Landroid/widget/TextView;

    invoke-direct {v0, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 37
    const-string v1, "Ad"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 38
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setIncludeFontPadding(Z)V

    const/high16 v1, -0x1000000

    .line 39
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    const/high16 v1, 0x41300000    # 11.0f

    .line 40
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextSize(F)V

    .line 41
    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v1, v3, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    const/16 v2, 0x11

    .line 42
    iput v2, v1, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 43
    invoke-virtual {p2, v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 45
    new-instance p2, Lcom/player/easy/widget/BannerView$$ExternalSyntheticLambda0;

    invoke-direct {p2, p0, p1}, Lcom/player/easy/widget/BannerView$$ExternalSyntheticLambda0;-><init>(Lcom/player/easy/widget/BannerView;Landroid/content/Context;)V

    invoke-virtual {p0, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public synthetic constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    const/4 p2, 0x0

    .line 15
    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/player/easy/widget/BannerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method private static final _init_$lambda$0(Lcom/player/easy/widget/BannerView;Landroid/content/Context;Landroid/view/View;)V
    .locals 0

    .line 46
    iget-object p0, p0, Lcom/player/easy/widget/BannerView;->model:Lcom/player/easy/data/CustomAdConfig;

    if-nez p0, :cond_0

    goto :goto_0

    .line 47
    :cond_0
    invoke-virtual {p0}, Lcom/player/easy/data/CustomAdConfig;->getLink_to_product()Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_2

    invoke-interface {p2}, Ljava/lang/CharSequence;->length()I

    move-result p2

    if-nez p2, :cond_1

    goto :goto_0

    .line 48
    :cond_1
    invoke-virtual {p0}, Lcom/player/easy/data/CustomAdConfig;->getLink_to_product()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/player/easy/util/system/ContextExtensionsKt;->openInBrowser(Landroid/content/Context;Ljava/lang/String;)V

    :cond_2
    :goto_0
    return-void
.end method


# virtual methods
.method public final getAdRectangle()Landroid/widget/FrameLayout;
    .locals 1

    .line 19
    iget-object v0, p0, Lcom/player/easy/widget/BannerView;->adRectangle:Landroid/widget/FrameLayout;

    return-object v0
.end method

.method public final getImageView()Landroid/widget/ImageView;
    .locals 1

    .line 18
    iget-object v0, p0, Lcom/player/easy/widget/BannerView;->imageView:Landroid/widget/ImageView;

    return-object v0
.end method

.method public final getModel()Lcom/player/easy/data/CustomAdConfig;
    .locals 1

    .line 21
    iget-object v0, p0, Lcom/player/easy/widget/BannerView;->model:Lcom/player/easy/data/CustomAdConfig;

    return-object v0
.end method

.method protected onMeasure(II)V
    .locals 1

    const/16 p2, 0x32

    .line 58
    invoke-static {p2}, Lcom/player/easy/util/system/ContextExtensionsKt;->getDpToPx(I)I

    move-result p2

    const/high16 v0, 0x40000000    # 2.0f

    invoke-static {p2, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onMeasure(II)V

    return-void
.end method

.method public final setCustomPadding()V
    .locals 3

    const/16 v0, 0x10

    .line 54
    invoke-static {v0}, Lcom/player/easy/util/system/ContextExtensionsKt;->getDpToPx(I)I

    move-result v1

    invoke-static {v0}, Lcom/player/easy/util/system/ContextExtensionsKt;->getDpToPx(I)I

    move-result v0

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2, v0, v2}, Landroid/view/View;->setPadding(IIII)V

    return-void
.end method

.method public final setData(Lcom/player/easy/data/CustomAdConfig;)V
    .locals 1

    const-string v0, "model"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 62
    iput-object p1, p0, Lcom/player/easy/widget/BannerView;->model:Lcom/player/easy/data/CustomAdConfig;

    return-void
.end method

.method public final setModel(Lcom/player/easy/data/CustomAdConfig;)V
    .locals 0

    .line 21
    iput-object p1, p0, Lcom/player/easy/widget/BannerView;->model:Lcom/player/easy/data/CustomAdConfig;

    return-void
.end method
