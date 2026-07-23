.class public abstract Lcom/facebook/ads/redexgen/X/As;
.super Lcom/facebook/ads/redexgen/X/re;
.source ""


# annotations
.annotation runtime Lcom/google/common/primitives/ElementTypesAreNonnullByDefault;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/common/primitives/Ints$IntConverter;,
        Lcom/google/common/primitives/Ints$LexicographicalComparator;,
        Lcom/facebook/ads/redexgen/X/rf;
    }
.end annotation


# static fields
.field public static A00:[B

.field public static A01:[Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    .line 644
    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "siq85GDJwTeYE"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "hCeAcOWL38esGxpCGhAcOByVvpt4rkG9"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "m2sukptzj10OlAU9Tp5GtC3mJBPhtf8e"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "xjjTaPx7kc7NMEZNqBPsTeRSC2dGu2kw"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "w"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "lzhISLab9GK0zTqogctfE75BYP1X9oPw"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "tkIGufAtpO8Bl63czpB"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, ""

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/As;->A01:[Ljava/lang/String;

    invoke-static {}, Lcom/facebook/ads/redexgen/X/As;->A0A()V

    return-void
.end method

.method public static A00(I)I
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 29475
    return p0
.end method

.method public static A01(III)I
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "value",
            "min",
            "max"
        }
    .end annotation

    .line 29476
    if-gt p1, p2, :cond_0

    const/4 v3, 0x1

    :goto_0
    const/16 v2, 0x10

    const/16 v1, 0x2f

    const/16 v0, 0x5b

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/As;->A08(III)Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0, p1, p2}, Lcom/facebook/ads/redexgen/X/ki;->A0G(ZLjava/lang/String;II)V

    .line 29477
    invoke-static {p0, p1}, Ljava/lang/Math;->max(II)I

    move-result v0

    invoke-static {v0, p2}, Ljava/lang/Math;->min(II)I

    move-result v0

    return v0

    .line 29478
    :cond_0
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public static A02(J)I
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 29479
    long-to-int v4, p0

    .line 29480
    .local v0, "result":I
    int-to-long v1, v4

    cmp-long v0, v1, p0

    if-nez v0, :cond_0

    const/4 v3, 0x1

    :goto_0
    const/4 v2, 0x0

    const/16 v1, 0x10

    const/16 v0, 0x2b

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/As;->A08(III)Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0, p0, p1}, Lcom/facebook/ads/redexgen/X/ki;->A0H(ZLjava/lang/String;J)V

    .line 29481
    return v4

    .line 29482
    :cond_0
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public static A03(J)I
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 29483
    const-wide/32 v1, 0x7fffffff

    cmp-long v0, p0, v1

    if-lez v0, :cond_1

    .line 29484
    const p0, 0x7fffffff

    sget-object v1, Lcom/facebook/ads/redexgen/X/As;->A01:[Ljava/lang/String;

    const/4 v0, 0x7

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v0, 0x0

    if-eq v1, v0, :cond_0

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_0
    sget-object v2, Lcom/facebook/ads/redexgen/X/As;->A01:[Ljava/lang/String;

    const-string v1, "nVSCb9uBdS4Z5srNqmAxsZ9hxFd1bctQ"

    const/4 v0, 0x1

    aput-object v1, v2, v0

    return p0

    .line 29485
    :cond_1
    const-wide/32 v1, -0x80000000

    cmp-long v0, p0, v1

    if-gez v0, :cond_2

    .line 29486
    const/high16 v0, -0x80000000

    return v0

    .line 29487
    :cond_2
    long-to-int v0, p0

    return v0
.end method

.method public static A04([IIII)I
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "array",
            "target",
            "start",
            "end"
        }
    .end annotation

    .line 29488
    .local v0, "i":I
    :goto_0
    if-ge p2, p3, :cond_1

    .line 29489
    aget v0, p0, p2

    if-ne v0, p1, :cond_0

    .line 29490
    return p2

    .line 29491
    :cond_0
    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    .line 29492
    .end local v0    # "i":I
    :cond_1
    const/4 v0, -0x1

    return v0
.end method

.method public static A05([IIII)I
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "array",
            "target",
            "start",
            "end"
        }
    .end annotation

    .line 29493
    add-int/lit8 v1, p3, -0x1

    .local v0, "i":I
    :goto_0
    if-lt v1, p2, :cond_1

    .line 29494
    aget v0, p0, v1

    if-ne v0, p1, :cond_0

    .line 29495
    return v1

    .line 29496
    :cond_0
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 29497
    .end local v0    # "i":I
    :cond_1
    const/4 v0, -0x1

    return v0
.end method

.method public static synthetic A06([IIII)I
    .locals 0

    .line 29498
    invoke-static {p0, p1, p2, p3}, Lcom/facebook/ads/redexgen/X/As;->A04([IIII)I

    move-result p0

    return p0
.end method

.method public static synthetic A07([IIII)I
    .locals 0

    .line 29499
    invoke-static {p0, p1, p2, p3}, Lcom/facebook/ads/redexgen/X/As;->A05([IIII)I

    move-result p0

    return p0
.end method

.method public static A08(III)Ljava/lang/String;
    .locals 4

    sget-object v1, Lcom/facebook/ads/redexgen/X/As;->A00:[B

    add-int v0, p0, p1

    invoke-static {v1, p0, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p1

    const/4 p0, 0x0

    :goto_0
    array-length v0, p1

    if-ge p0, v0, :cond_1

    aget-byte v3, p1, p0

    xor-int/2addr v3, p2

    sget-object v1, Lcom/facebook/ads/redexgen/X/As;->A01:[Ljava/lang/String;

    const/4 v0, 0x7

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v0, 0x0

    if-eq v1, v0, :cond_0

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_0
    sget-object v2, Lcom/facebook/ads/redexgen/X/As;->A01:[Ljava/lang/String;

    const-string v1, ""

    const/4 v0, 0x7

    aput-object v1, v2, v0

    xor-int/lit8 v0, v3, 0x48

    int-to-byte v0, v0

    aput-byte v0, p1, p0

    add-int/lit8 p0, p0, 0x1

    goto :goto_0

    :cond_1
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p1}, Ljava/lang/String;-><init>([B)V

    return-object v0
.end method

.method public static varargs A09([I)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "backingArray"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([I)",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 29500
    array-length v0, p0

    if-nez v0, :cond_0

    .line 29501
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 29502
    :cond_0
    new-instance v0, Lcom/facebook/ads/redexgen/X/rf;

    invoke-direct {v0, p0}, Lcom/facebook/ads/redexgen/X/rf;-><init>([I)V

    return-object v0
.end method

.method public static A0A()V
    .locals 1

    const/16 v0, 0x3f

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/facebook/ads/redexgen/X/As;->A00:[B

    return-void

    :array_0
    .array-data 1
        0x2ct
        0x16t
        0x17t
        0x43t
        0xct
        0x5t
        0x43t
        0x11t
        0x2t
        0xdt
        0x4t
        0x6t
        0x59t
        0x43t
        0x46t
        0x10t
        0x7et
        0x7at
        0x7dt
        0x33t
        0x3bt
        0x36t
        0x60t
        0x3at
        0x33t
        0x7et
        0x66t
        0x60t
        0x67t
        0x33t
        0x71t
        0x76t
        0x33t
        0x7ft
        0x76t
        0x60t
        0x60t
        0x33t
        0x67t
        0x7bt
        0x72t
        0x7dt
        0x33t
        0x7ct
        0x61t
        0x33t
        0x76t
        0x62t
        0x66t
        0x72t
        0x7ft
        0x33t
        0x67t
        0x7ct
        0x33t
        0x7et
        0x72t
        0x6bt
        0x33t
        0x3bt
        0x36t
        0x60t
        0x3at
    .end array-data
.end method

.method public static A0B(Ljava/util/Collection;)[I
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "collection"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "+",
            "Ljava/lang/Number;",
            ">;)[I"
        }
    .end annotation

    .line 29503
    .local p0, "collection":Ljava/util/Collection;, "Ljava/util/Collection<+Ljava/lang/Number;>;"
    instance-of v0, p0, Lcom/facebook/ads/redexgen/X/rf;

    if-eqz v0, :cond_0

    .line 29504
    check-cast p0, Lcom/facebook/ads/redexgen/X/rf;

    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/rf;->A05()[I

    move-result-object v0

    return-object v0

    .line 29505
    :cond_0
    invoke-interface {p0}, Ljava/util/Collection;->toArray()[Ljava/lang/Object;

    move-result-object p0

    .line 29506
    .local v0, "boxedArray":[Ljava/lang/Object;
    array-length v4, p0

    .line 29507
    .local v1, "len":I
    new-array v3, v4, [I

    sget-object v1, Lcom/facebook/ads/redexgen/X/As;->A01:[Ljava/lang/String;

    const/4 v0, 0x1

    aget-object v1, v1, v0

    const/16 v0, 0x16

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x6c

    if-eq v1, v0, :cond_2

    .line 29508
    .local v2, "array":[I
    sget-object v2, Lcom/facebook/ads/redexgen/X/As;->A01:[Ljava/lang/String;

    const-string v1, "hGECTcBTlZrQNB5F5BgF8ddu5i2bV8V4"

    const/4 v0, 0x1

    aput-object v1, v2, v0

    const/4 v0, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v0, v4, :cond_1

    .line 29509
    aget-object v1, p0, v0

    invoke-static {v1}, Lcom/facebook/ads/redexgen/X/ki;->A04(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Number;

    invoke-virtual {v1}, Ljava/lang/Number;->intValue()I

    move-result v1

    aput v1, v3, v0

    .line 29510
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 29511
    .end local v3    # "i":I
    :cond_1
    return-object v3

    :cond_2
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
.end method
