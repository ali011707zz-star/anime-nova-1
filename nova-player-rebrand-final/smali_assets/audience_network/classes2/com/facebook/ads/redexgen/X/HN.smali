.class public final Lcom/facebook/ads/redexgen/X/HN;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/ads/redexgen/X/HO;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Header"
.end annotation


# instance fields
.field public A00:I

.field public A01:I

.field public A02:I

.field public A03:I

.field public A04:I

.field public A05:I

.field public A06:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 38900
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final A00(I)Z
    .locals 9

    .line 38901
    invoke-static {p1}, Lcom/facebook/ads/redexgen/X/HO;->A07(I)Z

    move-result v0

    const/4 v2, 0x0

    if-nez v0, :cond_0

    .line 38902
    return v2

    .line 38903
    :cond_0
    ushr-int/lit8 v1, p1, 0x13

    const/4 v4, 0x3

    and-int/2addr v1, v4

    .line 38904
    .local v0, "version":I
    const/4 v3, 0x1

    if-ne v1, v3, :cond_1

    .line 38905
    return v2

    .line 38906
    :cond_1
    ushr-int/lit8 v8, p1, 0x11

    and-int/2addr v8, v4

    .line 38907
    .local v4, "layer":I
    if-nez v8, :cond_2

    .line 38908
    return v2

    .line 38909
    :cond_2
    ushr-int/lit8 v7, p1, 0xc

    const/16 v0, 0xf

    and-int/2addr v7, v0

    .line 38910
    .local v5, "bitrateIndex":I
    if-eqz v7, :cond_3

    if-ne v7, v0, :cond_4

    .line 38911
    .end local v6
    .end local v7
    :cond_3
    return v2

    .line 38912
    :cond_4
    ushr-int/lit8 v5, p1, 0xa

    and-int/2addr v5, v4

    .line 38913
    .local v6, "samplingRateIndex":I
    if-ne v5, v4, :cond_5

    .line 38914
    return v2

    .line 38915
    :cond_5
    iput v1, p0, Lcom/facebook/ads/redexgen/X/HN;->A05:I

    .line 38916
    invoke-static {}, Lcom/facebook/ads/redexgen/X/HO;->A0E()[Ljava/lang/String;

    move-result-object v2

    rsub-int/lit8 v0, v8, 0x3

    aget-object v0, v2, v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/HN;->A06:Ljava/lang/String;

    .line 38917
    invoke-static {}, Lcom/facebook/ads/redexgen/X/HO;->A08()[I

    move-result-object v0

    aget v0, v0, v5

    iput v0, p0, Lcom/facebook/ads/redexgen/X/HN;->A03:I

    .line 38918
    const/4 v2, 0x2

    if-ne v1, v2, :cond_d

    .line 38919
    iget v0, p0, Lcom/facebook/ads/redexgen/X/HN;->A03:I

    div-int/2addr v0, v2

    iput v0, p0, Lcom/facebook/ads/redexgen/X/HN;->A03:I

    .line 38920
    :cond_6
    :goto_0
    ushr-int/lit8 v6, p1, 0x9

    and-int/2addr v6, v3

    .line 38921
    .local v7, "padding":I
    invoke-static {v1, v8}, Lcom/facebook/ads/redexgen/X/HO;->A03(II)I

    move-result v0

    iput v0, p0, Lcom/facebook/ads/redexgen/X/HN;->A04:I

    .line 38922
    if-ne v8, v4, :cond_9

    .line 38923
    if-ne v1, v4, :cond_8

    invoke-static {}, Lcom/facebook/ads/redexgen/X/HO;->A09()[I

    move-result-object v1

    add-int/lit8 v0, v7, -0x1

    aget v0, v1, v0

    :goto_1
    iput v0, p0, Lcom/facebook/ads/redexgen/X/HN;->A00:I

    .line 38924
    iget v0, p0, Lcom/facebook/ads/redexgen/X/HN;->A00:I

    mul-int/lit8 v1, v0, 0xc

    iget v0, p0, Lcom/facebook/ads/redexgen/X/HN;->A03:I

    div-int/2addr v1, v0

    add-int/2addr v1, v6

    mul-int/lit8 v0, v1, 0x4

    iput v0, p0, Lcom/facebook/ads/redexgen/X/HN;->A02:I

    .line 38925
    :goto_2
    shr-int/lit8 v0, p1, 0x6

    and-int/2addr v0, v4

    if-ne v0, v4, :cond_7

    const/4 v2, 0x1

    :cond_7
    iput v2, p0, Lcom/facebook/ads/redexgen/X/HN;->A01:I

    .line 38926
    return v3

    .line 38927
    :cond_8
    invoke-static {}, Lcom/facebook/ads/redexgen/X/HO;->A0A()[I

    move-result-object v1

    add-int/lit8 v0, v7, -0x1

    aget v0, v1, v0

    goto :goto_1

    .line 38928
    :cond_9
    const/16 v5, 0x90

    if-ne v1, v4, :cond_b

    .line 38929
    if-ne v8, v2, :cond_a

    invoke-static {}, Lcom/facebook/ads/redexgen/X/HO;->A0B()[I

    move-result-object v1

    add-int/lit8 v0, v7, -0x1

    aget v0, v1, v0

    :goto_3
    iput v0, p0, Lcom/facebook/ads/redexgen/X/HN;->A00:I

    .line 38930
    iget v0, p0, Lcom/facebook/ads/redexgen/X/HN;->A00:I

    mul-int/lit16 v1, v0, 0x90

    iget v0, p0, Lcom/facebook/ads/redexgen/X/HN;->A03:I

    div-int/2addr v1, v0

    add-int/2addr v1, v6

    iput v1, p0, Lcom/facebook/ads/redexgen/X/HN;->A02:I

    goto :goto_2

    .line 38931
    :cond_a
    invoke-static {}, Lcom/facebook/ads/redexgen/X/HO;->A0C()[I

    move-result-object v1

    add-int/lit8 v0, v7, -0x1

    aget v0, v1, v0

    goto :goto_3

    .line 38932
    :cond_b
    invoke-static {}, Lcom/facebook/ads/redexgen/X/HO;->A0D()[I

    move-result-object v1

    add-int/lit8 v0, v7, -0x1

    aget v0, v1, v0

    iput v0, p0, Lcom/facebook/ads/redexgen/X/HN;->A00:I

    .line 38933
    if-ne v8, v3, :cond_c

    const/16 v5, 0x48

    :cond_c
    iget v0, p0, Lcom/facebook/ads/redexgen/X/HN;->A00:I

    mul-int/2addr v5, v0

    iget v0, p0, Lcom/facebook/ads/redexgen/X/HN;->A03:I

    div-int/2addr v5, v0

    add-int/2addr v5, v6

    iput v5, p0, Lcom/facebook/ads/redexgen/X/HN;->A02:I

    goto :goto_2

    .line 38934
    :cond_d
    if-nez v1, :cond_6

    .line 38935
    iget v0, p0, Lcom/facebook/ads/redexgen/X/HN;->A03:I

    div-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/facebook/ads/redexgen/X/HN;->A03:I

    goto :goto_0
.end method
