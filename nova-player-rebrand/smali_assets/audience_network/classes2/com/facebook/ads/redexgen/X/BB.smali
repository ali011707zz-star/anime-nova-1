.class public final Lcom/facebook/ads/redexgen/X/BB;
.super Lcom/facebook/ads/redexgen/X/qK;
.source ""

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation runtime Lcom/google/common/collect/ElementTypesAreNonnullByDefault;
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/facebook/ads/redexgen/X/qK<",
        "Ljava/lang/Comparable<",
        "*>;>;",
        "Ljava/io/Serializable;"
    }
.end annotation


# static fields
.field public static A00:[B

.field public static A01:[Ljava/lang/String;

.field public static final A02:Lcom/facebook/ads/redexgen/X/BB;

.field public static final serialVersionUID:J


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    .line 652
    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "JDLm"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "59j9VSz50JRV62zRfQhUHOfkCXfgeUgK"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "B91zWfVJnglJ6qaTwxSE2cgOmWPFgOKk"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "ELqJY4"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "RV9gCl0i3PKSKYNXbtai8ngQK3fccqTs"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "fKxm10xyRNZ"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "83zGhfyjGQem9Bncw"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "2Nxy8TZF5cPmoYOpvxnNSToHaqPSrsmH"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/BB;->A01:[Ljava/lang/String;

    invoke-static {}, Lcom/facebook/ads/redexgen/X/BB;->A02()V

    new-instance v0, Lcom/facebook/ads/redexgen/X/BB;

    invoke-direct {v0}, Lcom/facebook/ads/redexgen/X/BB;-><init>()V

    sput-object v0, Lcom/facebook/ads/redexgen/X/BB;->A02:Lcom/facebook/ads/redexgen/X/BB;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 30313
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/qK;-><init>()V

    return-void
.end method

.method private final A00(Ljava/lang/Comparable;Ljava/lang/Comparable;)I
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "left",
            "right"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Comparable<",
            "*>;",
            "Ljava/lang/Comparable<",
            "*>;)I"
        }
    .end annotation

    .line 30314
    .local p1, "left":Ljava/lang/Comparable;, "Ljava/lang/Comparable<*>;"
    .local p2, "right":Ljava/lang/Comparable;, "Ljava/lang/Comparable<*>;"
    invoke-static {p1}, Lcom/facebook/ads/redexgen/X/ki;->A04(Ljava/lang/Object;)Ljava/lang/Object;

    .line 30315
    invoke-static {p2}, Lcom/facebook/ads/redexgen/X/ki;->A04(Ljava/lang/Object;)Ljava/lang/Object;

    .line 30316
    invoke-interface {p1, p2}, Ljava/lang/Comparable;->compareTo(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public static A01(III)Ljava/lang/String;
    .locals 4

    sget-object v1, Lcom/facebook/ads/redexgen/X/BB;->A00:[B

    add-int v0, p0, p1

    invoke-static {v1, p0, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p1

    const/4 p0, 0x0

    :goto_0
    array-length v0, p1

    if-ge p0, v0, :cond_1

    aget-byte v0, p1, p0

    xor-int/2addr v0, p2

    xor-int/lit8 v0, v0, 0x55

    int-to-byte v3, v0

    sget-object v1, Lcom/facebook/ads/redexgen/X/BB;->A01:[Ljava/lang/String;

    const/4 v0, 0x5

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v0, 0x1f

    if-eq v1, v0, :cond_0

    sget-object v2, Lcom/facebook/ads/redexgen/X/BB;->A01:[Ljava/lang/String;

    const-string v1, "F1rbTbQwQjJP2vUBRKO1k8FP"

    const/4 v0, 0x3

    aput-object v1, v2, v0

    aput-byte v3, p1, p0

    add-int/lit8 p0, p0, 0x1

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_1
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p1}, Ljava/lang/String;-><init>([B)V

    return-object v0
.end method

.method public static A02()V
    .locals 1

    const/16 v0, 0x12

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/facebook/ads/redexgen/X/BB;->A00:[B

    return-void

    :array_0
    .array-data 1
        0xdt
        0x30t
        0x26t
        0x27t
        0x30t
        0x2bt
        0x2ct
        0x25t
        0x6ct
        0x2ct
        0x23t
        0x36t
        0x37t
        0x30t
        0x23t
        0x2et
        0x6at
        0x6bt
    .end array-data
.end method


# virtual methods
.method public final A06()Lcom/facebook/ads/redexgen/X/qK;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<S::",
            "Ljava/lang/Comparable<",
            "*>;>()",
            "Lcom/facebook/ads/redexgen/X/qK<",
            "TS;>;"
        }
    .end annotation

    .line 30317
    sget-object v0, Lcom/facebook/ads/redexgen/X/B8;->A02:Lcom/facebook/ads/redexgen/X/B8;

    return-object v0
.end method

.method public final bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000
        }
        names = {
            "left",
            "right"
        }
    .end annotation

    .line 30318
    check-cast p1, Ljava/lang/Comparable;

    check-cast p2, Ljava/lang/Comparable;

    invoke-direct {p0, p1, p2}, Lcom/facebook/ads/redexgen/X/BB;->A00(Ljava/lang/Comparable;Ljava/lang/Comparable;)I

    move-result v0

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    .line 30319
    const/4 v2, 0x0

    const/16 v1, 0x12

    const/16 v0, 0x17

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/BB;->A01(III)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
