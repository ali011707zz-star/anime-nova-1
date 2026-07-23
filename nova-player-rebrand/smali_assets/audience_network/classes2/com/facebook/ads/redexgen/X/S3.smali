.class public final Lcom/facebook/ads/redexgen/X/S3;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/facebook/ads/internal/api/NativeAdScrollViewApi;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/ads/redexgen/X/hA;,
        Lcom/facebook/ads/redexgen/X/h9;
    }
.end annotation


# static fields
.field public static A07:[B

.field public static A08:[Ljava/lang/String;


# instance fields
.field public final A00:I

.field public final A01:Lcom/facebook/ads/NativeAdScrollView$AdViewProvider;

.field public final A02:Lcom/facebook/ads/NativeAdView$Type;

.field public final A03:Lcom/facebook/ads/NativeAdViewAttributes;

.field public final A04:Lcom/facebook/ads/NativeAdsManager;

.field public final A05:Lcom/facebook/ads/redexgen/X/h9;

.field public final A06:Lcom/facebook/ads/redexgen/X/gi;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    .line 1638
    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "nVlKDJKKuSIwTlTd16ukFrbX3MHjOHdA"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, ""

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "ICm0nIVybe3UlAuBnNKxRWg2mc3pSWnS"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, ""

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "SSXPkfr4Ttu5KI5IplEjDPNbu7CwAkh6"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "a5Au6kTC9kTmWkoQnewo7jq8"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "NRpBzWywFD0YlyTuhproyOYpEldGp2Hb"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "m"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/S3;->A08:[Ljava/lang/String;

    invoke-static {}, Lcom/facebook/ads/redexgen/X/S3;->A07()V

    return-void
.end method

.method public constructor <init>(Lcom/facebook/ads/NativeAdScrollView;Landroid/content/Context;Lcom/facebook/ads/NativeAdsManager;Lcom/facebook/ads/NativeAdScrollView$AdViewProvider;ILcom/facebook/ads/NativeAdView$Type;Lcom/facebook/ads/NativeAdViewAttributes;I)V
    .locals 4

    .line 63451
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 63452
    invoke-virtual {p3}, Lcom/facebook/ads/NativeAdsManager;->isLoaded()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 63453
    if-nez p6, :cond_0

    if-nez p4, :cond_0

    if-lez p5, :cond_3

    .line 63454
    :cond_0
    invoke-static {p2}, Lcom/facebook/ads/redexgen/X/Rp;->A03(Landroid/content/Context;)Lcom/facebook/ads/redexgen/X/gi;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/S3;->A06:Lcom/facebook/ads/redexgen/X/gi;

    .line 63455
    iput-object p3, p0, Lcom/facebook/ads/redexgen/X/S3;->A04:Lcom/facebook/ads/NativeAdsManager;

    .line 63456
    iput-object p7, p0, Lcom/facebook/ads/redexgen/X/S3;->A03:Lcom/facebook/ads/NativeAdViewAttributes;

    .line 63457
    iput-object p4, p0, Lcom/facebook/ads/redexgen/X/S3;->A01:Lcom/facebook/ads/NativeAdScrollView$AdViewProvider;

    .line 63458
    iput-object p6, p0, Lcom/facebook/ads/redexgen/X/S3;->A02:Lcom/facebook/ads/NativeAdView$Type;

    .line 63459
    iput p8, p0, Lcom/facebook/ads/redexgen/X/S3;->A00:I

    .line 63460
    new-instance v3, Lcom/facebook/ads/redexgen/X/hA;

    invoke-direct {v3, p0}, Lcom/facebook/ads/redexgen/X/hA;-><init>(Lcom/facebook/ads/redexgen/X/S3;)V

    .line 63461
    .local v0, "pagerAdapter":Lcom/facebook/ads/redexgen/X/hA;
    new-instance v0, Lcom/facebook/ads/redexgen/X/h9;

    invoke-direct {v0, p2}, Lcom/facebook/ads/redexgen/X/h9;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/S3;->A05:Lcom/facebook/ads/redexgen/X/h9;

    .line 63462
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/S3;->A02:Lcom/facebook/ads/NativeAdView$Type;

    if-eqz v0, :cond_2

    .line 63463
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/S3;->A05:Lcom/facebook/ads/redexgen/X/h9;

    sget v1, Lcom/facebook/ads/redexgen/X/XX;->A02:F

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/S3;->A02:Lcom/facebook/ads/NativeAdView$Type;

    invoke-virtual {v0}, Lcom/facebook/ads/NativeAdView$Type;->getHeight()I

    move-result v0

    int-to-float v0, v0

    mul-float/2addr v1, v0

    float-to-int v0, v1

    invoke-static {v2, v0}, Lcom/facebook/ads/redexgen/X/h9;->A01(Lcom/facebook/ads/redexgen/X/h9;I)V

    .line 63464
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/S3;->A05:Lcom/facebook/ads/redexgen/X/h9;

    invoke-virtual {v0, v3}, Lcom/facebook/ads/redexgen/X/Pv;->setAdapter(Lcom/facebook/ads/redexgen/X/PS;)V

    .line 63465
    const/16 v0, 0x14

    invoke-virtual {p0, v0}, Lcom/facebook/ads/redexgen/X/S3;->setInset(I)V

    .line 63466
    invoke-virtual {v3}, Lcom/facebook/ads/redexgen/X/hA;->A09()V

    .line 63467
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/S3;->A05:Lcom/facebook/ads/redexgen/X/h9;

    invoke-virtual {p1, v0}, Lcom/facebook/ads/NativeAdScrollView;->addView(Landroid/view/View;)V

    .line 63468
    return-void

    .line 63469
    :cond_2
    if-lez p5, :cond_1

    .line 63470
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/S3;->A05:Lcom/facebook/ads/redexgen/X/h9;

    sget v0, Lcom/facebook/ads/redexgen/X/XX;->A02:F

    float-to-int v0, v0

    mul-int/2addr v0, p5

    invoke-static {v1, v0}, Lcom/facebook/ads/redexgen/X/h9;->A01(Lcom/facebook/ads/redexgen/X/h9;I)V

    goto :goto_0

    .line 63471
    :cond_3
    const/4 v2, 0x0

    const/16 v1, 0x4a

    const/4 v0, 0x3

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/S3;->A06(III)Ljava/lang/String;

    move-result-object v1

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 63472
    .end local v0    # "pagerAdapter":Lcom/facebook/ads/redexgen/X/hA;
    :cond_4
    const/16 v2, 0x4a

    const/16 v1, 0x1b

    const/16 v0, 0x8

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/S3;->A06(III)Ljava/lang/String;

    move-result-object v1

    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static synthetic A00(Lcom/facebook/ads/redexgen/X/S3;)I
    .locals 0

    .line 63473
    iget p0, p0, Lcom/facebook/ads/redexgen/X/S3;->A00:I

    return p0
.end method

.method public static synthetic A01(Lcom/facebook/ads/redexgen/X/S3;)Lcom/facebook/ads/NativeAdScrollView$AdViewProvider;
    .locals 0

    .line 63474
    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/S3;->A01:Lcom/facebook/ads/NativeAdScrollView$AdViewProvider;

    return-object p0
.end method

.method public static synthetic A02(Lcom/facebook/ads/redexgen/X/S3;)Lcom/facebook/ads/NativeAdView$Type;
    .locals 0

    .line 63475
    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/S3;->A02:Lcom/facebook/ads/NativeAdView$Type;

    return-object p0
.end method

.method public static synthetic A03(Lcom/facebook/ads/redexgen/X/S3;)Lcom/facebook/ads/NativeAdViewAttributes;
    .locals 0

    .line 63476
    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/S3;->A03:Lcom/facebook/ads/NativeAdViewAttributes;

    return-object p0
.end method

.method public static synthetic A04(Lcom/facebook/ads/redexgen/X/S3;)Lcom/facebook/ads/NativeAdsManager;
    .locals 0

    .line 63477
    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/S3;->A04:Lcom/facebook/ads/NativeAdsManager;

    return-object p0
.end method

.method public static synthetic A05(Lcom/facebook/ads/redexgen/X/S3;)Lcom/facebook/ads/redexgen/X/gi;
    .locals 0

    .line 63478
    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/S3;->A06:Lcom/facebook/ads/redexgen/X/gi;

    return-object p0
.end method

.method public static A06(III)Ljava/lang/String;
    .locals 2

    sget-object v1, Lcom/facebook/ads/redexgen/X/S3;->A07:[B

    add-int v0, p0, p1

    invoke-static {v1, p0, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p0

    const/4 v1, 0x0

    :goto_0
    array-length v0, p0

    if-ge v1, v0, :cond_0

    aget-byte v0, p0, v1

    xor-int/2addr v0, p2

    xor-int/lit8 v0, v0, 0x72

    int-to-byte v0, v0

    aput-byte v0, p0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p0}, Ljava/lang/String;-><init>([B)V

    return-object v0
.end method

.method public static A07()V
    .locals 4

    const/16 v0, 0x65

    new-array v3, v0, [B

    fill-array-data v3, :array_0

    sget-object v2, Lcom/facebook/ads/redexgen/X/S3;->A08:[Ljava/lang/String;

    const/4 v0, 0x6

    aget-object v1, v2, v0

    const/4 v0, 0x0

    aget-object v2, v2, v0

    const/16 v0, 0xe

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v1, v0, :cond_0

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_0
    sget-object v2, Lcom/facebook/ads/redexgen/X/S3;->A08:[Ljava/lang/String;

    const-string v1, "Ml52sYoz4FZavAZNhfJ3fi3jnwDnZY4L"

    const/4 v0, 0x2

    aput-object v1, v2, v0

    const-string v1, "tWqTcrLKFqppCUd7uCsjOJfAn0Jrdt0w"

    const/4 v0, 0x4

    aput-object v1, v2, v0

    sput-object v3, Lcom/facebook/ads/redexgen/X/S3;->A07:[B

    return-void

    :array_0
    .array-data 1
        0x3ct
        0x4t
        0x2t
        0x5t
        0x51t
        0x1t
        0x3t
        0x1et
        0x7t
        0x18t
        0x15t
        0x14t
        0x51t
        0x10t
        0x51t
        0x3ft
        0x10t
        0x5t
        0x18t
        0x7t
        0x14t
        0x30t
        0x15t
        0x27t
        0x18t
        0x14t
        0x6t
        0x5ft
        0x25t
        0x8t
        0x1t
        0x14t
        0x5dt
        0x51t
        0x30t
        0x15t
        0x27t
        0x18t
        0x14t
        0x6t
        0x21t
        0x3t
        0x1et
        0x7t
        0x18t
        0x15t
        0x14t
        0x3t
        0x51t
        0x1et
        0x3t
        0x51t
        0x10t
        0x51t
        0x1ft
        0x10t
        0x5t
        0x18t
        0x7t
        0x14t
        0x30t
        0x15t
        0x27t
        0x18t
        0x14t
        0x6t
        0x39t
        0x14t
        0x18t
        0x16t
        0x19t
        0x5t
        0x35t
        0x1t
        0x34t
        0x1bt
        0xet
        0x13t
        0xct
        0x1ft
        0x3bt
        0x1et
        0x9t
        0x37t
        0x1bt
        0x14t
        0x1bt
        0x1dt
        0x1ft
        0x8t
        0x5at
        0x14t
        0x15t
        0xet
        0x5at
        0x16t
        0x15t
        0x1bt
        0x1et
        0x1ft
        0x1et
    .end array-data
.end method


# virtual methods
.method public final setInset(I)V
    .locals 4

    .line 63479
    if-lez p1, :cond_0

    .line 63480
    sget v3, Lcom/facebook/ads/redexgen/X/XX;->A02:F

    .line 63481
    .local v0, "density":F
    int-to-float v0, p1

    mul-float/2addr v0, v3

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v1

    .line 63482
    .local v1, "insetDp":I
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/S3;->A05:Lcom/facebook/ads/redexgen/X/h9;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, v1, v2}, Lcom/facebook/ads/redexgen/X/h9;->setPadding(IIII)V

    .line 63483
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/S3;->A05:Lcom/facebook/ads/redexgen/X/h9;

    div-int/lit8 v0, p1, 0x2

    int-to-float v0, v0

    mul-float/2addr v0, v3

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/Pv;->setPageMargin(I)V

    .line 63484
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/S3;->A05:Lcom/facebook/ads/redexgen/X/h9;

    invoke-virtual {v0, v2}, Lcom/facebook/ads/redexgen/X/h9;->setClipToPadding(Z)V

    .line 63485
    .end local v0    # "density":F
    .end local v1    # "insetDp":I
    :cond_0
    return-void
.end method
