.class public final Lcom/facebook/ads/redexgen/X/bm;
.super Landroid/widget/LinearLayout;
.source ""


# static fields
.field public static final A06:I


# instance fields
.field public A00:I

.field public final A01:I

.field public final A02:I

.field public final A03:I

.field public final A04:Lcom/facebook/ads/redexgen/X/gi;

.field public final A05:[Lcom/facebook/ads/redexgen/X/bn;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 2653
    const/high16 v1, 0x40800000    # 4.0f

    sget v0, Lcom/facebook/ads/redexgen/X/XX;->A02:F

    mul-float/2addr v0, v1

    float-to-int v0, v0

    sput v0, Lcom/facebook/ads/redexgen/X/bm;->A06:I

    return-void
.end method

.method public constructor <init>(Lcom/facebook/ads/redexgen/X/gi;IIII)V
    .locals 3

    .line 78422
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 78423
    sget v0, Lcom/facebook/ads/redexgen/X/bm;->A06:I

    iput v0, p0, Lcom/facebook/ads/redexgen/X/bm;->A00:I

    .line 78424
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/bm;->A04:Lcom/facebook/ads/redexgen/X/gi;

    .line 78425
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/facebook/ads/redexgen/X/bm;->setOrientation(I)V

    .line 78426
    iput p2, p0, Lcom/facebook/ads/redexgen/X/bm;->A03:I

    .line 78427
    iput p4, p0, Lcom/facebook/ads/redexgen/X/bm;->A01:I

    .line 78428
    iput p5, p0, Lcom/facebook/ads/redexgen/X/bm;->A02:I

    .line 78429
    new-array v0, p3, [Lcom/facebook/ads/redexgen/X/bn;

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/bm;->A05:[Lcom/facebook/ads/redexgen/X/bn;

    .line 78430
    const/4 v2, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v2, p3, :cond_0

    .line 78431
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/bm;->A05:[Lcom/facebook/ads/redexgen/X/bn;

    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/bm;->A00()Lcom/facebook/ads/redexgen/X/bn;

    move-result-object v0

    aput-object v0, v1, v2

    .line 78432
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/bm;->A05:[Lcom/facebook/ads/redexgen/X/bn;

    aget-object v0, v0, v2

    invoke-virtual {p0, v0}, Lcom/facebook/ads/redexgen/X/bm;->addView(Landroid/view/View;)V

    .line 78433
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 78434
    .end local v0    # "i":I
    :cond_0
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/bm;->A01()V

    .line 78435
    return-void
.end method

.method private A00()Lcom/facebook/ads/redexgen/X/bn;
    .locals 4

    .line 78436
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/bm;->A04:Lcom/facebook/ads/redexgen/X/gi;

    iget v1, p0, Lcom/facebook/ads/redexgen/X/bm;->A01:I

    iget v0, p0, Lcom/facebook/ads/redexgen/X/bm;->A02:I

    new-instance v3, Lcom/facebook/ads/redexgen/X/bn;

    invoke-direct {v3, v2, v1, v0}, Lcom/facebook/ads/redexgen/X/bn;-><init>(Lcom/facebook/ads/redexgen/X/gi;II)V

    .line 78437
    .local v0, "starRatingView":Lcom/facebook/ads/redexgen/X/bn;
    iget v2, p0, Lcom/facebook/ads/redexgen/X/bm;->A03:I

    iget v0, p0, Lcom/facebook/ads/redexgen/X/bm;->A03:I

    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v1, v2, v0}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 78438
    .local v1, "starRatingViewParams":Landroid/widget/LinearLayout$LayoutParams;
    const/16 v0, 0x10

    iput v0, v1, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 78439
    invoke-virtual {v3, v1}, Lcom/facebook/ads/redexgen/X/bn;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 78440
    return-object v3
.end method

.method private A01()V
    .locals 3

    .line 78441
    const/4 v2, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/bm;->A05:[Lcom/facebook/ads/redexgen/X/bn;

    array-length v0, v0

    if-ge v2, v0, :cond_1

    .line 78442
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/bm;->A05:[Lcom/facebook/ads/redexgen/X/bn;

    aget-object v0, v0, v2

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/bn;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout$LayoutParams;

    .line 78443
    if-nez v2, :cond_0

    const/4 v0, 0x0

    :goto_1
    iput v0, v1, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 78444
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 78445
    :cond_0
    iget v0, p0, Lcom/facebook/ads/redexgen/X/bm;->A00:I

    goto :goto_1

    .line 78446
    .end local v0    # "i":I
    :cond_1
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/bm;->requestLayout()V

    .line 78447
    return-void
.end method

.method private A02(F)V
    .locals 3

    .line 78448
    const/4 v2, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/bm;->A05:[Lcom/facebook/ads/redexgen/X/bn;

    array-length v0, v0

    if-ge v2, v0, :cond_1

    .line 78449
    int-to-float v0, v2

    sub-float v1, p1, v0

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result v1

    .line 78450
    .local v1, "fillRatio":F
    const/4 v0, 0x0

    cmpg-float v0, v1, v0

    if-gez v0, :cond_0

    .line 78451
    const/4 v1, 0x0

    .line 78452
    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/bm;->A05:[Lcom/facebook/ads/redexgen/X/bn;

    aget-object v0, v0, v2

    invoke-virtual {v0, v1}, Lcom/facebook/ads/redexgen/X/bn;->setFillRatio(F)V

    .line 78453
    .end local v1    # "fillRatio":F
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 78454
    .end local v0    # "i":I
    :cond_1
    return-void
.end method


# virtual methods
.method public setItemSpacing(I)V
    .locals 0

    .line 78455
    iput p1, p0, Lcom/facebook/ads/redexgen/X/bm;->A00:I

    .line 78456
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/bm;->A01()V

    .line 78457
    return-void
.end method

.method public setRating(F)V
    .locals 0

    .line 78458
    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/bm;->A02(F)V

    .line 78459
    return-void
.end method
