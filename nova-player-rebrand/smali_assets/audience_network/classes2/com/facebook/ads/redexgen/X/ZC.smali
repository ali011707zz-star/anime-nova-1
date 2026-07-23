.class public final Lcom/facebook/ads/redexgen/X/ZC;
.super Landroid/widget/LinearLayout;
.source ""


# static fields
.field public static final A03:I

.field public static final A04:I


# instance fields
.field public final A00:Landroid/widget/ImageView;

.field public final A01:Lcom/facebook/ads/redexgen/X/Og;

.field public final A02:Lcom/facebook/ads/redexgen/X/gi;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 2553
    const/high16 v1, 0x41200000    # 10.0f

    sget v0, Lcom/facebook/ads/redexgen/X/XX;->A02:F

    mul-float/2addr v0, v1

    float-to-int v0, v0

    sput v0, Lcom/facebook/ads/redexgen/X/ZC;->A03:I

    .line 2554
    const/high16 v1, 0x41c00000    # 24.0f

    sget v0, Lcom/facebook/ads/redexgen/X/XX;->A02:F

    mul-float/2addr v0, v1

    float-to-int v0, v0

    sput v0, Lcom/facebook/ads/redexgen/X/ZC;->A04:I

    return-void
.end method

.method public constructor <init>(Lcom/facebook/ads/redexgen/X/gi;)V
    .locals 1

    .line 74853
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 74854
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/ZC;->A02:Lcom/facebook/ads/redexgen/X/gi;

    .line 74855
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/T8;->A02()Lcom/facebook/ads/redexgen/X/ge;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Oh;->A00(Lcom/facebook/ads/redexgen/X/ge;)Lcom/facebook/ads/redexgen/X/Og;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/ZC;->A01:Lcom/facebook/ads/redexgen/X/Og;

    .line 74856
    new-instance v0, Landroid/widget/ImageView;

    invoke-direct {v0, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/ZC;->A00:Landroid/widget/ImageView;

    .line 74857
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/ZC;->A02()V

    .line 74858
    return-void
.end method

.method public static synthetic A00(Lcom/facebook/ads/redexgen/X/ZC;)Lcom/facebook/ads/redexgen/X/Og;
    .locals 0

    .line 74859
    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/ZC;->A01:Lcom/facebook/ads/redexgen/X/Og;

    return-object p0
.end method

.method public static synthetic A01(Lcom/facebook/ads/redexgen/X/ZC;)Lcom/facebook/ads/redexgen/X/gi;
    .locals 0

    .line 74860
    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/ZC;->A02:Lcom/facebook/ads/redexgen/X/gi;

    return-object p0
.end method

.method private A02()V
    .locals 4

    .line 74861
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/ZC;->A00:Landroid/widget/ImageView;

    sget-object v0, Lcom/facebook/ads/redexgen/X/YM;->A10:Lcom/facebook/ads/redexgen/X/YM;

    invoke-static {v1, v0}, Lcom/facebook/ads/redexgen/X/ZC;->A03(Landroid/widget/ImageView;Lcom/facebook/ads/redexgen/X/YM;)V

    .line 74862
    sget v3, Lcom/facebook/ads/redexgen/X/ZC;->A03:I

    sget v0, Lcom/facebook/ads/redexgen/X/ZC;->A03:I

    div-int/lit8 v2, v0, 0x3

    sget v1, Lcom/facebook/ads/redexgen/X/ZC;->A03:I

    sget v0, Lcom/facebook/ads/redexgen/X/ZC;->A03:I

    div-int/lit8 v0, v0, 0x3

    invoke-virtual {p0, v3, v2, v1, v0}, Lcom/facebook/ads/redexgen/X/ZC;->setPadding(IIII)V

    .line 74863
    sget v2, Lcom/facebook/ads/redexgen/X/ZC;->A04:I

    sget v0, Lcom/facebook/ads/redexgen/X/ZC;->A04:I

    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v1, v2, v0}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 74864
    .local v0, "adChoicesIconParams":Landroid/widget/LinearLayout$LayoutParams;
    const/16 v0, 0x10

    iput v0, v1, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 74865
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/ZC;->A00:Landroid/widget/ImageView;

    invoke-virtual {p0, v0, v1}, Lcom/facebook/ads/redexgen/X/ZC;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 74866
    return-void
.end method

.method public static A03(Landroid/widget/ImageView;Lcom/facebook/ads/redexgen/X/YM;)V
    .locals 1

    .line 74867
    sget-object v0, Landroid/widget/ImageView$ScaleType;->FIT_CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 74868
    invoke-static {p1}, Lcom/facebook/ads/redexgen/X/YN;->A01(Lcom/facebook/ads/redexgen/X/YM;)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 74869
    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setColorFilter(I)V

    .line 74870
    return-void
.end method


# virtual methods
.method public setAdDetails(Lcom/facebook/ads/redexgen/X/Nm;Ljava/lang/String;Lcom/facebook/ads/redexgen/X/VI;Lcom/facebook/ads/redexgen/X/Yh;)V
    .locals 6

    .line 74871
    new-instance v0, Lcom/facebook/ads/redexgen/X/ZB;

    move-object v1, p0

    move-object v3, p4

    move-object v2, p3

    move-object v4, p2

    move-object v5, p1

    invoke-direct/range {v0 .. v5}, Lcom/facebook/ads/redexgen/X/ZB;-><init>(Lcom/facebook/ads/redexgen/X/ZC;Lcom/facebook/ads/redexgen/X/VI;Lcom/facebook/ads/redexgen/X/Yh;Ljava/lang/String;Lcom/facebook/ads/redexgen/X/Nm;)V

    invoke-virtual {p0, v0}, Lcom/facebook/ads/redexgen/X/ZC;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 74872
    return-void
.end method

.method public setIconColors(I)V
    .locals 1

    .line 74873
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/ZC;->A00:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setColorFilter(I)V

    .line 74874
    return-void
.end method
