.class public final Lcom/facebook/ads/redexgen/X/Hb;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/ads/redexgen/X/Hd;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "CryptoData"
.end annotation


# static fields
.field public static A04:[Ljava/lang/String;


# instance fields
.field public final A00:I

.field public final A01:I

.field public final A02:I

.field public final A03:[B


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    .line 797
    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "L"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "s7TlvRdnTwK3t9C"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "ePgRnDLQ3Wbr1YpTz29pmTY6GtuG6NQq"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "sd"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "s7BgXoB9vXyEEiATAltma4vCqurgDW8q"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "LgZyZC"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "BLEIsLc40BPM2xLP7Ykzo3HzSA"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "v9CVGsZVCVWkGaEQgXjK1D2fYLLUoPIW"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/Hb;->A04:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(I[BII)V
    .locals 0

    .line 39574
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39575
    iput p1, p0, Lcom/facebook/ads/redexgen/X/Hb;->A01:I

    .line 39576
    iput-object p2, p0, Lcom/facebook/ads/redexgen/X/Hb;->A03:[B

    .line 39577
    iput p3, p0, Lcom/facebook/ads/redexgen/X/Hb;->A02:I

    .line 39578
    iput p4, p0, Lcom/facebook/ads/redexgen/X/Hb;->A00:I

    .line 39579
    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    .line 39580
    const/4 v3, 0x1

    if-ne p0, p1, :cond_0

    .line 39581
    return v3

    .line 39582
    :cond_0
    const/4 v2, 0x0

    if-eqz p1, :cond_1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    if-eq v1, v0, :cond_2

    .line 39583
    .end local v2
    :cond_1
    return v2

    .line 39584
    :cond_2
    check-cast p1, Lcom/facebook/ads/redexgen/X/Hb;

    sget-object v2, Lcom/facebook/ads/redexgen/X/Hb;->A04:[Ljava/lang/String;

    const/4 v0, 0x6

    aget-object v1, v2, v0

    const/4 v0, 0x3

    aget-object v0, v2, v0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eq v1, v0, :cond_4

    .line 39585
    .local v2, "other":Lcom/facebook/ads/redexgen/X/Hb;
    sget-object v2, Lcom/facebook/ads/redexgen/X/Hb;->A04:[Ljava/lang/String;

    const-string v1, "oBkTGyhCOE"

    const/4 v0, 0x1

    aput-object v1, v2, v0

    iget v1, p0, Lcom/facebook/ads/redexgen/X/Hb;->A01:I

    iget v0, p1, Lcom/facebook/ads/redexgen/X/Hb;->A01:I

    if-ne v1, v0, :cond_3

    iget v1, p0, Lcom/facebook/ads/redexgen/X/Hb;->A02:I

    iget v0, p1, Lcom/facebook/ads/redexgen/X/Hb;->A02:I

    if-ne v1, v0, :cond_3

    iget v1, p0, Lcom/facebook/ads/redexgen/X/Hb;->A00:I

    iget v0, p1, Lcom/facebook/ads/redexgen/X/Hb;->A00:I

    if-ne v1, v0, :cond_3

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Hb;->A03:[B

    iget-object v0, p1, Lcom/facebook/ads/redexgen/X/Hb;->A03:[B

    .line 39586
    invoke-static {v1, v0}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 39587
    :goto_0
    return v3

    .line 39588
    :cond_3
    const/4 v3, 0x0

    goto :goto_0

    :cond_4
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
.end method

.method public final hashCode()I
    .locals 2

    .line 39589
    iget v0, p0, Lcom/facebook/ads/redexgen/X/Hb;->A01:I

    .line 39590
    .local v0, "result":I
    mul-int/lit8 v1, v0, 0x1f

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Hb;->A03:[B

    invoke-static {v0}, Ljava/util/Arrays;->hashCode([B)I

    move-result v0

    add-int/2addr v1, v0

    .line 39591
    .end local v0    # "result":I
    .local v1, "result":I
    mul-int/lit8 v1, v1, 0x1f

    iget v0, p0, Lcom/facebook/ads/redexgen/X/Hb;->A02:I

    add-int/2addr v1, v0

    .line 39592
    .end local v1    # "result":I
    .restart local v0    # "result":I
    mul-int/lit8 v1, v1, 0x1f

    iget v0, p0, Lcom/facebook/ads/redexgen/X/Hb;->A00:I

    add-int/2addr v1, v0

    .line 39593
    .end local v0    # "result":I
    .restart local v1    # "result":I
    return v1
.end method
