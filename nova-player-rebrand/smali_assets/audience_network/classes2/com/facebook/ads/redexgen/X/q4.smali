.class public abstract Lcom/facebook/ads/redexgen/X/q4;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/ads/redexgen/X/q5;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "MultimapBuilderWithKeys"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K0:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field public static A00:[B

.field public static A01:[Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    .line 3471
    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "bao8c38n28wPAMqvf0"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "eVcWzAuCAXWumTICSFBebUgmb9TguTkL"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "p"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "gqL7Zo5j54GI4jqi05kLU"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "fae6iywUSwwj1RjLTY2P"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "asvzUEyWtHVXByXUijz9tuohidd7jT94"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "t7lccWit4rbeEMhbm3WlI6hCZ2BNlGb8"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "1T7kTgAAsxu7zrmAj3X1"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/q4;->A01:[Ljava/lang/String;

    invoke-static {}, Lcom/facebook/ads/redexgen/X/q4;->A02()V

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 105142
    .local p0, "this":Lcom/facebook/ads/redexgen/X/q4;, "Lcom/google/common/collect/MultimapBuilder$MultimapBuilderWithKeys<TK0;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private final A00(I)Lcom/facebook/ads/redexgen/X/2F;
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "expectedValuesPerKey"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lcom/facebook/ads/redexgen/X/BD<",
            "TK0;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 105143
    .local v1, "this":Lcom/facebook/ads/redexgen/X/q4;, "Lcom/google/common/collect/MultimapBuilder$MultimapBuilderWithKeys<TK0;>;"
    const/4 v2, 0x0

    const/16 v1, 0x14

    const/16 v0, 0x23

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/q4;->A01(III)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/facebook/ads/redexgen/X/nJ;->A00(ILjava/lang/String;)I

    .line 105144
    new-instance v0, Lcom/facebook/ads/redexgen/X/2F;

    invoke-direct {v0, p0, p1}, Lcom/facebook/ads/redexgen/X/2F;-><init>(Lcom/facebook/ads/redexgen/X/q4;I)V

    return-object v0
.end method

.method public static A01(III)Ljava/lang/String;
    .locals 4

    sget-object v1, Lcom/facebook/ads/redexgen/X/q4;->A00:[B

    add-int v0, p0, p1

    invoke-static {v1, p0, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p0

    const/4 p1, 0x0

    :goto_0
    array-length v0, p0

    if-ge p1, v0, :cond_1

    aget-byte v0, p0, p1

    xor-int/2addr v0, p2

    xor-int/lit8 v3, v0, 0x68

    sget-object v2, Lcom/facebook/ads/redexgen/X/q4;->A01:[Ljava/lang/String;

    const/4 v0, 0x0

    aget-object v1, v2, v0

    const/4 v0, 0x2

    aget-object v0, v2, v0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eq v1, v0, :cond_0

    sget-object v2, Lcom/facebook/ads/redexgen/X/q4;->A01:[Ljava/lang/String;

    const-string v1, "XFZlfL1njVMJiM3nHtzYTwesPM930KjJ"

    const/4 v0, 0x6

    aput-object v1, v2, v0

    int-to-byte v0, v3

    aput-byte v0, p0, p1

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_1
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p0}, Ljava/lang/String;-><init>([B)V

    return-object v0
.end method

.method public static A02()V
    .locals 1

    const/16 v0, 0x14

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/facebook/ads/redexgen/X/q4;->A00:[B

    return-void

    :array_0
    .array-data 1
        0x2et
        0x33t
        0x3bt
        0x2et
        0x28t
        0x3ft
        0x2et
        0x2ft
        0x1dt
        0x2at
        0x27t
        0x3et
        0x2et
        0x38t
        0x1bt
        0x2et
        0x39t
        0x0t
        0x2et
        0x32t
    .end array-data
.end method


# virtual methods
.method public final A03()Lcom/facebook/ads/redexgen/X/BD;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/facebook/ads/redexgen/X/BD<",
            "TK0;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 105145
    .local p0, "this":Lcom/facebook/ads/redexgen/X/q4;, "Lcom/google/common/collect/MultimapBuilder$MultimapBuilderWithKeys<TK0;>;"
    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/q4;->A00(I)Lcom/facebook/ads/redexgen/X/2F;

    move-result-object v0

    return-object v0
.end method

.method public abstract A04()Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:TK0;V:",
            "Ljava/lang/Object;",
            ">()",
            "Ljava/util/Map<",
            "TK;",
            "Ljava/util/Collection<",
            "TV;>;>;"
        }
    .end annotation
.end method
