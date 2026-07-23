.class public final Lcom/facebook/ads/redexgen/X/BE;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/facebook/ads/redexgen/X/ku;
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/ads/redexgen/X/q5;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ArrayListSupplier"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/facebook/ads/redexgen/X/ku<",
        "Ljava/util/List<",
        "TV;>;>;",
        "Ljava/io/Serializable;"
    }
.end annotation


# static fields
.field public static A01:[B

.field public static A02:[Ljava/lang/String;


# instance fields
.field public final A00:I


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    .line 654
    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "e5wnLSIbQxkq8Zb8jKmA"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "K5DmaQySCrjWvleFa"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "LWuY7vQYlXU7vsjuD"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "M7ok9ovwGeM"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "5nYOTBMz755"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "tdWE3UbGCkl2"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "in1BIrIvXgLkxgASW"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "Nc3XS6cKk9DYxfmxbznhVqbsdMI4LYY"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/BE;->A02:[Ljava/lang/String;

    invoke-static {}, Lcom/facebook/ads/redexgen/X/BE;->A02()V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "expectedValuesPerKey"
        }
    .end annotation

    .line 30327
    .local v1, "this":Lcom/facebook/ads/redexgen/X/BE;, "Lcom/google/common/collect/MultimapBuilder$ArrayListSupplier<TV;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30328
    const/4 v2, 0x0

    const/16 v1, 0x14

    const/16 v0, 0x5c

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/BE;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/facebook/ads/redexgen/X/nJ;->A00(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/facebook/ads/redexgen/X/BE;->A00:I

    .line 30329
    return-void
.end method

.method public static A00(III)Ljava/lang/String;
    .locals 4

    sget-object v1, Lcom/facebook/ads/redexgen/X/BE;->A01:[B

    add-int v0, p0, p1

    invoke-static {v1, p0, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p0

    const/4 p1, 0x0

    :goto_0
    array-length v0, p0

    if-ge p1, v0, :cond_1

    aget-byte v3, p0, p1

    sub-int/2addr v3, p2

    sget-object v1, Lcom/facebook/ads/redexgen/X/BE;->A02:[Ljava/lang/String;

    const/4 v0, 0x0

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v0, 0x14

    if-eq v1, v0, :cond_0

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_0
    sget-object v2, Lcom/facebook/ads/redexgen/X/BE;->A02:[Ljava/lang/String;

    const-string v1, "LeP2zF5PzD6"

    const/4 v0, 0x3

    aput-object v1, v2, v0

    const-string v1, "FkYvCPAL8bA"

    const/4 v0, 0x4

    aput-object v1, v2, v0

    add-int/lit8 v0, v3, -0x49

    int-to-byte v0, v0

    aput-byte v0, p0, p1

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_1
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p0}, Ljava/lang/String;-><init>([B)V

    return-object v0
.end method

.method private final A01()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "TV;>;"
        }
    .end annotation

    .line 30330
    .local p0, "this":Lcom/facebook/ads/redexgen/X/BE;, "Lcom/google/common/collect/MultimapBuilder$ArrayListSupplier<TV;>;"
    iget v1, p0, Lcom/facebook/ads/redexgen/X/BE;->A00:I

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    return-object v0
.end method

.method public static A02()V
    .locals 4

    const/16 v0, 0x14

    new-array v3, v0, [B

    sget-object v2, Lcom/facebook/ads/redexgen/X/BE;->A02:[Ljava/lang/String;

    const/4 v0, 0x2

    aget-object v1, v2, v0

    const/4 v0, 0x1

    aget-object v0, v2, v0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eq v1, v0, :cond_0

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_0
    sget-object v2, Lcom/facebook/ads/redexgen/X/BE;->A02:[Ljava/lang/String;

    const-string v1, "U6hTL0roTrM"

    const/4 v0, 0x3

    aput-object v1, v2, v0

    const-string v1, "z8jhm3qQIoz"

    const/4 v0, 0x4

    aput-object v1, v2, v0

    fill-array-data v3, :array_0

    sput-object v3, Lcom/facebook/ads/redexgen/X/BE;->A01:[B

    return-void

    :array_0
    .array-data 1
        0xat
        0x1dt
        0x15t
        0xat
        0x8t
        0x19t
        0xat
        0x9t
        -0x5t
        0x6t
        0x11t
        0x1at
        0xat
        0x18t
        -0xbt
        0xat
        0x17t
        -0x10t
        0xat
        0x1et
    .end array-data
.end method


# virtual methods
.method public final bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 30331
    .local p0, "this":Lcom/facebook/ads/redexgen/X/BE;, "Lcom/google/common/collect/MultimapBuilder$ArrayListSupplier<TV;>;"
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/BE;->A01()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method
