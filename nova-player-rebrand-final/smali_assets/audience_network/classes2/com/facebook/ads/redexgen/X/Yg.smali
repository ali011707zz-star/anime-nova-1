.class public final enum Lcom/facebook/ads/redexgen/X/Yg;
.super Ljava/lang/Enum;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/ads/redexgen/X/Pe;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Variant"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/facebook/ads/redexgen/X/Yg;",
        ">;"
    }
.end annotation


# static fields
.field public static A05:[B

.field public static A06:[Ljava/lang/String;

.field public static final synthetic A07:[Lcom/facebook/ads/redexgen/X/Yg;

.field public static final enum A08:Lcom/facebook/ads/redexgen/X/Yg;

.field public static final enum A09:Lcom/facebook/ads/redexgen/X/Yg;


# instance fields
.field public final A00:I

.field public final A01:I

.field public final A02:I

.field public final A03:Ljava/lang/Integer;

.field public final A04:Z


# direct methods
.method public static constructor <clinit>()V
    .locals 11

    .line 2525
    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "V62FSpXyXg0rt4sPiNo"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "6lq6AHOCdAk9akPwvyC"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "nqUSJeC0aIJYgUKl2CPVEyh1brd6E0Ae"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "x0NdoFH36D"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "29PPikSq1e"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "88nHmfXS0I"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "EpErG0pNHZnmsJ1"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "e2q5yIycFm4TxUxK8s9XbNDHLyuGtCe3"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/Yg;->A06:[Ljava/lang/String;

    invoke-static {}, Lcom/facebook/ads/redexgen/X/Yg;->A01()V

    new-instance v3, Lcom/facebook/ads/redexgen/X/Yg;

    .line 2526
    invoke-static {}, Lcom/facebook/ads/redexgen/X/Pe;->A01()Ljava/lang/Integer;

    move-result-object v6

    const v9, 0x332b3036

    const/4 v10, 0x1

    const/4 v2, 0x0

    const/4 v1, 0x5

    const/16 v0, 0x5c

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Yg;->A00(III)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v7, -0x1

    const v8, -0xf3efec

    invoke-direct/range {v3 .. v10}, Lcom/facebook/ads/redexgen/X/Yg;-><init>(Ljava/lang/String;ILjava/lang/Integer;IIIZ)V

    sput-object v3, Lcom/facebook/ads/redexgen/X/Yg;->A08:Lcom/facebook/ads/redexgen/X/Yg;

    .line 2527
    new-instance v3, Lcom/facebook/ads/redexgen/X/Yg;

    .line 2528
    invoke-static {}, Lcom/facebook/ads/redexgen/X/Pe;->A02()Ljava/lang/Integer;

    move-result-object v6

    const v9, 0x1affffff

    const/4 v10, 0x0

    const/4 v2, 0x5

    const/4 v1, 0x5

    const/16 v0, 0x5f

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Yg;->A00(III)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x1

    const/high16 v7, -0x80000000

    const/4 v8, -0x1

    invoke-direct/range {v3 .. v10}, Lcom/facebook/ads/redexgen/X/Yg;-><init>(Ljava/lang/String;ILjava/lang/Integer;IIIZ)V

    sput-object v3, Lcom/facebook/ads/redexgen/X/Yg;->A09:Lcom/facebook/ads/redexgen/X/Yg;

    .line 2529
    invoke-static {}, Lcom/facebook/ads/redexgen/X/Yg;->A02()[Lcom/facebook/ads/redexgen/X/Yg;

    move-result-object v0

    sput-object v0, Lcom/facebook/ads/redexgen/X/Yg;->A07:[Lcom/facebook/ads/redexgen/X/Yg;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ILjava/lang/Integer;IIIZ)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            null,
            null,
            null,
            null,
            null,
            null,
            null
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Integer;",
            "IIIZ)V"
        }
    .end annotation

    .line 74363
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 74364
    iput-object p3, p0, Lcom/facebook/ads/redexgen/X/Yg;->A03:Ljava/lang/Integer;

    .line 74365
    iput p4, p0, Lcom/facebook/ads/redexgen/X/Yg;->A00:I

    .line 74366
    iput p5, p0, Lcom/facebook/ads/redexgen/X/Yg;->A01:I

    .line 74367
    iput p6, p0, Lcom/facebook/ads/redexgen/X/Yg;->A02:I

    .line 74368
    iput-boolean p7, p0, Lcom/facebook/ads/redexgen/X/Yg;->A04:Z

    .line 74369
    return-void
.end method

.method public static A00(III)Ljava/lang/String;
    .locals 2

    sget-object v1, Lcom/facebook/ads/redexgen/X/Yg;->A05:[B

    add-int v0, p0, p1

    invoke-static {v1, p0, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p0

    const/4 v1, 0x0

    :goto_0
    array-length v0, p0

    if-ge v1, v0, :cond_0

    aget-byte v0, p0, v1

    sub-int/2addr v0, p2

    add-int/lit8 v0, v0, -0x3d

    int-to-byte v0, v0

    aput-byte v0, p0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p0}, Ljava/lang/String;-><init>([B)V

    return-object v0
.end method

.method public static A01()V
    .locals 1

    const/16 v0, 0xa

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/facebook/ads/redexgen/X/Yg;->A05:[B

    return-void

    :array_0
    .array-data 1
        -0x21t
        -0x1et
        -0xft
        -0x22t
        -0x23t
        -0x1et
        -0x18t
        -0x15t
        -0x23t
        -0x10t
    .end array-data
.end method

.method public static synthetic A02()[Lcom/facebook/ads/redexgen/X/Yg;
    .locals 3

    .line 74370
    const/4 v0, 0x2

    new-array v2, v0, [Lcom/facebook/ads/redexgen/X/Yg;

    sget-object v1, Lcom/facebook/ads/redexgen/X/Yg;->A08:Lcom/facebook/ads/redexgen/X/Yg;

    const/4 v0, 0x0

    aput-object v1, v2, v0

    sget-object v1, Lcom/facebook/ads/redexgen/X/Yg;->A09:Lcom/facebook/ads/redexgen/X/Yg;

    const/4 v0, 0x1

    aput-object v1, v2, v0

    return-object v2
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/facebook/ads/redexgen/X/Yg;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8000
        }
        names = {
            null
        }
    .end annotation

    .line 74371
    const-class v0, Lcom/facebook/ads/redexgen/X/Yg;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/redexgen/X/Yg;

    return-object v0
.end method

.method public static values()[Lcom/facebook/ads/redexgen/X/Yg;
    .locals 4

    .line 74372
    sget-object v0, Lcom/facebook/ads/redexgen/X/Yg;->A07:[Lcom/facebook/ads/redexgen/X/Yg;

    invoke-virtual {v0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Lcom/facebook/ads/redexgen/X/Yg;

    sget-object v1, Lcom/facebook/ads/redexgen/X/Yg;->A06:[Ljava/lang/String;

    const/4 v0, 0x3

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v0, 0xa

    if-eq v1, v0, :cond_0

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_0
    sget-object v2, Lcom/facebook/ads/redexgen/X/Yg;->A06:[Ljava/lang/String;

    const-string v1, "b4MYrm3ZFw"

    const/4 v0, 0x3

    aput-object v1, v2, v0

    return-object v3
.end method
