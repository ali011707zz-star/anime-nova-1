.class public final Lcom/facebook/ads/redexgen/X/aN;
.super Landroid/widget/LinearLayout;
.source ""


# static fields
.field public static A05:[B

.field public static A06:[Ljava/lang/String;


# instance fields
.field public A00:Landroid/graphics/Bitmap;

.field public A01:Landroid/widget/ImageView;

.field public final A02:Landroid/graphics/Bitmap;

.field public final A03:Lcom/facebook/ads/redexgen/X/jd;

.field public final A04:Lcom/facebook/ads/redexgen/X/gi;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    .line 2604
    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "4iYy1NiEXPr50pSHLe"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "HBHFKoag"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "wA4Ui03I"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "2gIO3BT"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "OrT35hYFj4GxiCS6J9xeeeUbe1P"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "nGPsLdYcSrB888UHIbwtZyr3qehde"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "KYwyCcQkvGwH5Y"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "JT6Ig6jVa1kb71ozaZw7zaiPm8CFCh"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/aN;->A06:[Ljava/lang/String;

    invoke-static {}, Lcom/facebook/ads/redexgen/X/aN;->A03()V

    return-void
.end method

.method public constructor <init>(Lcom/facebook/ads/redexgen/X/gi;Lcom/facebook/ads/redexgen/X/aM;Lcom/facebook/ads/redexgen/X/jd;)V
    .locals 1

    .line 76441
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 76442
    sget-object v0, Lcom/facebook/ads/redexgen/X/YM;->A0W:Lcom/facebook/ads/redexgen/X/YM;

    .line 76443
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/YN;->A01(Lcom/facebook/ads/redexgen/X/YM;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/aN;->A02:Landroid/graphics/Bitmap;

    .line 76444
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/aN;->A04:Lcom/facebook/ads/redexgen/X/gi;

    .line 76445
    iput-object p3, p0, Lcom/facebook/ads/redexgen/X/aN;->A03:Lcom/facebook/ads/redexgen/X/jd;

    .line 76446
    invoke-static {p1, p2}, Lcom/facebook/ads/redexgen/X/aL;->A03(Lcom/facebook/ads/redexgen/X/gi;Lcom/facebook/ads/redexgen/X/aM;)V

    .line 76447
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/aN;->A02()V

    .line 76448
    return-void
.end method

.method public static A00(III)Ljava/lang/String;
    .locals 2

    sget-object v1, Lcom/facebook/ads/redexgen/X/aN;->A05:[B

    add-int v0, p0, p1

    invoke-static {v1, p0, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p0

    const/4 v1, 0x0

    :goto_0
    array-length v0, p0

    if-ge v1, v0, :cond_0

    aget-byte v0, p0, v1

    sub-int/2addr v0, p2

    add-int/lit8 v0, v0, -0x60

    int-to-byte v0, v0

    aput-byte v0, p0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p0}, Ljava/lang/String;-><init>([B)V

    return-object v0
.end method

.method private A01()V
    .locals 6

    .line 76449
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/aN;->getContext()Landroid/content/Context;

    move-result-object v1

    new-instance v0, Landroid/widget/ImageView;

    invoke-direct {v0, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/aN;->A01:Landroid/widget/ImageView;

    .line 76450
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/aN;->A01:Landroid/widget/ImageView;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/YB;->A0K(Landroid/view/View;)V

    .line 76451
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/aN;->A01:Landroid/widget/ImageView;

    sget-object v0, Landroid/widget/ImageView$ScaleType;->FIT_CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 76452
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/aN;->A01:Landroid/widget/ImageView;

    const/4 v0, 0x1

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setAdjustViewBounds(Z)V

    .line 76453
    sget v4, Lcom/facebook/ads/redexgen/X/XV;->A02:I

    .line 76454
    .local v0, "height":I
    const/4 v3, -0x2

    .line 76455
    .local v1, "width":I
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/aN;->A00:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    iget-object v5, p0, Lcom/facebook/ads/redexgen/X/aN;->A03:Lcom/facebook/ads/redexgen/X/jd;

    sget-object v2, Lcom/facebook/ads/redexgen/X/aN;->A06:[Ljava/lang/String;

    const/4 v0, 0x4

    aget-object v1, v2, v0

    const/4 v0, 0x7

    aget-object v0, v2, v0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eq v1, v0, :cond_3

    sget-object v2, Lcom/facebook/ads/redexgen/X/aN;->A06:[Ljava/lang/String;

    const-string v1, "x8xY3MB01JBdxcqqDL0wMDWxAwS"

    const/4 v0, 0x4

    aput-object v1, v2, v0

    const-string v1, "xOuUcUrUHCCBixtYHxFt84BQtGsdzP"

    const/4 v0, 0x7

    aput-object v1, v2, v0

    if-eqz v5, :cond_0

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/aN;->A03:Lcom/facebook/ads/redexgen/X/jd;

    .line 76456
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/NQ;->A0t()Lcom/facebook/ads/redexgen/X/Nb;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/aN;->A03:Lcom/facebook/ads/redexgen/X/jd;

    .line 76457
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/NQ;->A0t()Lcom/facebook/ads/redexgen/X/Nb;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Nb;->A04()I

    move-result v0

    if-lez v0, :cond_0

    .line 76458
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/aN;->A03:Lcom/facebook/ads/redexgen/X/jd;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/NQ;->A0t()Lcom/facebook/ads/redexgen/X/Nb;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Nb;->A04()I

    move-result v0

    int-to-float v1, v0

    sget v0, Lcom/facebook/ads/redexgen/X/XX;->A02:F

    mul-float/2addr v1, v0

    float-to-int v3, v1

    .line 76459
    const/4 v4, -0x2

    .line 76460
    :cond_0
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v2, v3, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 76461
    .local v2, "creditLineLayoutParams":Landroid/widget/LinearLayout$LayoutParams;
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/aN;->A00:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_1

    .line 76462
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/aN;->A01:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/aN;->A00:Landroid/graphics/Bitmap;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 76463
    :goto_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/aN;->A01:Landroid/widget/ImageView;

    invoke-virtual {p0, v0, v2}, Lcom/facebook/ads/redexgen/X/aN;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    sget-object v2, Lcom/facebook/ads/redexgen/X/aN;->A06:[Ljava/lang/String;

    const/4 v0, 0x1

    aget-object v1, v2, v0

    const/4 v0, 0x2

    aget-object v0, v2, v0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eq v1, v0, :cond_2

    .line 76464
    sget-object v2, Lcom/facebook/ads/redexgen/X/aN;->A06:[Ljava/lang/String;

    const-string v1, "pXE18ZtALSro7"

    const/4 v0, 0x3

    aput-object v1, v2, v0

    return-void

    .line 76465
    :cond_1
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/aN;->A01:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/aN;->A02:Landroid/graphics/Bitmap;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_0

    .line 76466
    :cond_2
    sget-object v2, Lcom/facebook/ads/redexgen/X/aN;->A06:[Ljava/lang/String;

    const-string v1, "iRqRQPIdY5QAhD"

    const/4 v0, 0x6

    aput-object v1, v2, v0

    const-string v1, "IqpqjnSjtnqm1TdvzBeDXrY2K4YMi"

    const/4 v0, 0x5

    aput-object v1, v2, v0

    return-void

    :cond_3
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
.end method

.method private A02()V
    .locals 5

    .line 76467
    const/4 v4, 0x0

    invoke-virtual {p0, v4}, Lcom/facebook/ads/redexgen/X/aN;->setOrientation(I)V

    .line 76468
    sget v3, Lcom/facebook/ads/redexgen/X/XV;->A0S:I

    sget v2, Lcom/facebook/ads/redexgen/X/XV;->A0I:I

    sget v1, Lcom/facebook/ads/redexgen/X/XV;->A0S:I

    sget v0, Lcom/facebook/ads/redexgen/X/XV;->A0I:I

    invoke-virtual {p0, v3, v2, v1, v0}, Lcom/facebook/ads/redexgen/X/aN;->setPadding(IIII)V

    .line 76469
    invoke-virtual {p0, v4}, Lcom/facebook/ads/redexgen/X/aN;->setClipToPadding(Z)V

    .line 76470
    const/16 v0, 0x11

    invoke-virtual {p0, v0}, Lcom/facebook/ads/redexgen/X/aN;->setGravity(I)V

    .line 76471
    const v0, 0x1affffff

    invoke-static {p0, v0}, Lcom/facebook/ads/redexgen/X/YB;->A0N(Landroid/view/View;I)V

    .line 76472
    sget v0, Lcom/facebook/ads/redexgen/X/XV;->A0C:I

    int-to-float v0, v0

    invoke-static {v0, p0}, Lcom/facebook/ads/redexgen/X/YB;->A0E(FLandroid/widget/LinearLayout;)V

    .line 76473
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/aN;->getDownloadedBitmap()V

    .line 76474
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/aN;->A01()V

    .line 76475
    return-void
.end method

.method public static A03()V
    .locals 1

    const/16 v0, 0xb

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/facebook/ads/redexgen/X/aN;->A05:[B

    return-void

    :array_0
    .array-data 1
        -0x22t
        -0x13t
        -0x20t
        -0x21t
        -0x1ct
        -0x11t
        -0x26t
        -0x19t
        -0x1ct
        -0x17t
        -0x20t
    .end array-data
.end method

.method private getDownloadedBitmap()V
    .locals 5

    .line 76486
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/aN;->A03:Lcom/facebook/ads/redexgen/X/jd;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/aN;->A03:Lcom/facebook/ads/redexgen/X/jd;

    .line 76487
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/NQ;->A0t()Lcom/facebook/ads/redexgen/X/Nb;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/aN;->A03:Lcom/facebook/ads/redexgen/X/jd;

    .line 76488
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/NQ;->A0t()Lcom/facebook/ads/redexgen/X/Nb;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Nb;->A05()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/aN;->A03:Lcom/facebook/ads/redexgen/X/jd;

    .line 76489
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/NQ;->A0t()Lcom/facebook/ads/redexgen/X/Nb;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Nb;->A04()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/aN;->A03:Lcom/facebook/ads/redexgen/X/jd;

    .line 76490
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/NQ;->A0t()Lcom/facebook/ads/redexgen/X/Nb;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Nb;->A03()I

    move-result v0

    if-lez v0, :cond_0

    .line 76491
    :try_start_0
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/aN;->A04:Lcom/facebook/ads/redexgen/X/gi;

    new-instance v0, Lcom/facebook/ads/redexgen/X/Sx;

    invoke-direct {v0, v1}, Lcom/facebook/ads/redexgen/X/Sx;-><init>(Lcom/facebook/ads/redexgen/X/T8;)V

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/aN;->A03:Lcom/facebook/ads/redexgen/X/jd;

    .line 76492
    invoke-virtual {v1}, Lcom/facebook/ads/redexgen/X/NQ;->A0t()Lcom/facebook/ads/redexgen/X/Nb;

    move-result-object v1

    invoke-virtual {v1}, Lcom/facebook/ads/redexgen/X/Nb;->A05()Ljava/lang/String;

    move-result-object v4

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/aN;->A03:Lcom/facebook/ads/redexgen/X/jd;

    .line 76493
    invoke-virtual {v1}, Lcom/facebook/ads/redexgen/X/NQ;->A0t()Lcom/facebook/ads/redexgen/X/Nb;

    move-result-object v1

    invoke-virtual {v1}, Lcom/facebook/ads/redexgen/X/Nb;->A03()I

    move-result v1

    int-to-float v2, v1

    sget v1, Lcom/facebook/ads/redexgen/X/XX;->A02:F

    mul-float/2addr v2, v1

    float-to-int v3, v2

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/aN;->A03:Lcom/facebook/ads/redexgen/X/jd;

    .line 76494
    invoke-virtual {v1}, Lcom/facebook/ads/redexgen/X/NQ;->A0t()Lcom/facebook/ads/redexgen/X/Nb;

    move-result-object v1

    invoke-virtual {v1}, Lcom/facebook/ads/redexgen/X/Nb;->A04()I

    move-result v1

    int-to-float v2, v1

    sget v1, Lcom/facebook/ads/redexgen/X/XX;->A02:F

    mul-float/2addr v2, v1

    float-to-int v1, v2

    .line 76495
    invoke-virtual {v0, v4, v3, v1}, Lcom/facebook/ads/redexgen/X/Sx;->A0O(Ljava/lang/String;II)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/aN;->A00:Landroid/graphics/Bitmap;

    goto :goto_0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 76496
    :catch_0
    move-exception v1

    .line 76497
    .local v0, "ex":Ljava/lang/Exception;
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/aN;->A04:Lcom/facebook/ads/redexgen/X/gi;

    .line 76498
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/T8;->A08()Lcom/facebook/ads/redexgen/X/Tc;

    move-result-object v4

    new-instance v3, Lcom/facebook/ads/redexgen/X/Te;

    invoke-direct {v3, v1}, Lcom/facebook/ads/redexgen/X/Te;-><init>(Ljava/lang/Throwable;)V

    .line 76499
    const/4 v2, 0x0

    const/16 v1, 0xb

    const/16 v0, 0x1b

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/aN;->A00(III)Ljava/lang/String;

    move-result-object v1

    const/16 v0, 0xf3c

    invoke-interface {v4, v1, v0, v3}, Lcom/facebook/ads/redexgen/X/Tc;->ABC(Ljava/lang/String;ILcom/facebook/ads/redexgen/X/Te;)V

    .line 76500
    .end local v0    # "ex":Ljava/lang/Exception;
    :cond_0
    :goto_0
    return-void
.end method


# virtual methods
.method public final A04()V
    .locals 4

    .line 76476
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/aN;->getDownloadedBitmap()V

    .line 76477
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/aN;->A01:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/aN;->A00:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/aN;->A03:Lcom/facebook/ads/redexgen/X/jd;

    sget-object v1, Lcom/facebook/ads/redexgen/X/aN;->A06:[Ljava/lang/String;

    const/4 v0, 0x3

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v0, 0x1b

    if-eq v1, v0, :cond_1

    sget-object v2, Lcom/facebook/ads/redexgen/X/aN;->A06:[Ljava/lang/String;

    const-string v1, "jEdvzIR"

    const/4 v0, 0x3

    aput-object v1, v2, v0

    if-eqz v3, :cond_0

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/aN;->A03:Lcom/facebook/ads/redexgen/X/jd;

    .line 76478
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/NQ;->A0t()Lcom/facebook/ads/redexgen/X/Nb;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/aN;->A03:Lcom/facebook/ads/redexgen/X/jd;

    .line 76479
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/NQ;->A0t()Lcom/facebook/ads/redexgen/X/Nb;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Nb;->A04()I

    move-result v0

    if-lez v0, :cond_0

    .line 76480
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/aN;->A03:Lcom/facebook/ads/redexgen/X/jd;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/NQ;->A0t()Lcom/facebook/ads/redexgen/X/Nb;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Nb;->A04()I

    move-result v0

    int-to-float v1, v0

    sget v0, Lcom/facebook/ads/redexgen/X/XX;->A02:F

    mul-float/2addr v1, v0

    float-to-int v2, v1

    .line 76481
    .local v0, "width":I
    const/4 v0, -0x2

    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v1, v2, v0}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 76482
    .local v1, "creditLineLayoutParams":Landroid/widget/LinearLayout$LayoutParams;
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/aN;->A01:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 76483
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/aN;->A01:Landroid/widget/ImageView;

    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 76484
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/aN;->A01:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/aN;->A00:Landroid/graphics/Bitmap;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 76485
    .end local v0    # "width":I
    .end local v1    # "creditLineLayoutParams":Landroid/widget/LinearLayout$LayoutParams;
    :cond_0
    return-void

    :cond_1
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
.end method

.method public setBackgroundColor(I)V
    .locals 0

    .line 76501
    invoke-static {p0, p1}, Lcom/facebook/ads/redexgen/X/YB;->A0N(Landroid/view/View;I)V

    .line 76502
    return-void
.end method
