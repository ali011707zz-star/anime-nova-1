.class public final Lcom/facebook/ads/redexgen/X/Yt;
.super Lcom/facebook/ads/internal/api/AdNativeComponentView;
.source ""


# static fields
.field public static final A01:I


# instance fields
.field public final A00:Landroid/widget/ImageView;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 2539
    const/high16 v1, 0x3f800000    # 1.0f

    sget v0, Lcom/facebook/ads/redexgen/X/XX;->A02:F

    mul-float/2addr v0, v1

    float-to-int v0, v0

    sput v0, Lcom/facebook/ads/redexgen/X/Yt;->A01:I

    return-void
.end method

.method public constructor <init>(Lcom/facebook/ads/redexgen/X/gi;)V
    .locals 4

    .line 74571
    invoke-direct {p0, p1}, Lcom/facebook/ads/internal/api/AdNativeComponentView;-><init>(Landroid/content/Context;)V

    .line 74572
    new-instance v0, Lcom/facebook/ads/redexgen/X/ZI;

    invoke-direct {v0, p1}, Lcom/facebook/ads/redexgen/X/ZI;-><init>(Lcom/facebook/ads/redexgen/X/gi;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Yt;->A00:Landroid/widget/ImageView;

    .line 74573
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Yt;->A00:Landroid/widget/ImageView;

    sget-object v0, Landroid/widget/ImageView$ScaleType;->CENTER_CROP:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 74574
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Yt;->A00:Landroid/widget/ImageView;

    sget-object v0, Lcom/facebook/ads/redexgen/X/Xc;->A0B:Lcom/facebook/ads/redexgen/X/Xc;

    invoke-static {v1, v0}, Lcom/facebook/ads/redexgen/X/Xc;->A04(Landroid/view/View;Lcom/facebook/ads/redexgen/X/Xc;)V

    .line 74575
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/Yt;->A00:Landroid/widget/ImageView;

    const/4 v1, -0x1

    new-instance v0, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v0, v1, v1}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v2, v0}, Lcom/facebook/ads/redexgen/X/Yt;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 74576
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Yt;->A00:Landroid/widget/ImageView;

    const v0, -0x7f000001

    invoke-static {v1, v0}, Lcom/facebook/ads/redexgen/X/YB;->A0N(Landroid/view/View;I)V

    .line 74577
    sget v3, Lcom/facebook/ads/redexgen/X/Yt;->A01:I

    sget v2, Lcom/facebook/ads/redexgen/X/Yt;->A01:I

    sget v1, Lcom/facebook/ads/redexgen/X/Yt;->A01:I

    sget v0, Lcom/facebook/ads/redexgen/X/Yt;->A01:I

    invoke-virtual {p0, v3, v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Yt;->setPadding(IIII)V

    .line 74578
    return-void
.end method


# virtual methods
.method public getAdContentsView()Landroid/view/View;
    .locals 1

    .line 74579
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Yt;->A00:Landroid/widget/ImageView;

    return-object v0
.end method

.method public getImageCardView()Landroid/widget/ImageView;
    .locals 1

    .line 74580
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Yt;->A00:Landroid/widget/ImageView;

    return-object v0
.end method
