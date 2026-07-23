.class public final enum Lcom/facebook/ads/redexgen/X/NE;
.super Ljava/lang/Enum;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/ads/redexgen/X/jj;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "MediaCacheFlagLog"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/facebook/ads/redexgen/X/NE;",
        ">;"
    }
.end annotation


# static fields
.field public static A01:[B

.field public static final synthetic A02:[Lcom/facebook/ads/redexgen/X/NE;

.field public static final enum A03:Lcom/facebook/ads/redexgen/X/NE;

.field public static final enum A04:Lcom/facebook/ads/redexgen/X/NE;

.field public static final enum A05:Lcom/facebook/ads/redexgen/X/NE;


# instance fields
.field public final A00:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 5

    .line 1425
    invoke-static {}, Lcom/facebook/ads/redexgen/X/NE;->A01()V

    const/4 v4, 0x0

    const/16 v2, 0xd

    const/4 v1, 0x3

    const/16 v0, 0x68

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/NE;->A00(III)Ljava/lang/String;

    move-result-object v3

    const/4 v2, 0x0

    const/4 v1, 0x3

    const/16 v0, 0x1a

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/NE;->A00(III)Ljava/lang/String;

    move-result-object v1

    new-instance v0, Lcom/facebook/ads/redexgen/X/NE;

    invoke-direct {v0, v1, v4, v3}, Lcom/facebook/ads/redexgen/X/NE;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/facebook/ads/redexgen/X/NE;->A03:Lcom/facebook/ads/redexgen/X/NE;

    .line 1426
    const/4 v4, 0x1

    const/16 v2, 0x16

    const/4 v1, 0x4

    const/16 v0, 0x7e

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/NE;->A00(III)Ljava/lang/String;

    move-result-object v3

    const/16 v2, 0x9

    const/4 v1, 0x4

    const/16 v0, 0x7e

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/NE;->A00(III)Ljava/lang/String;

    move-result-object v1

    new-instance v0, Lcom/facebook/ads/redexgen/X/NE;

    invoke-direct {v0, v1, v4, v3}, Lcom/facebook/ads/redexgen/X/NE;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/facebook/ads/redexgen/X/NE;->A05:Lcom/facebook/ads/redexgen/X/NE;

    .line 1427
    const/4 v4, 0x2

    const/16 v2, 0x10

    const/4 v1, 0x6

    const/16 v0, 0x1a

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/NE;->A00(III)Ljava/lang/String;

    move-result-object v3

    const/4 v2, 0x3

    const/4 v1, 0x6

    const/16 v0, 0xa

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/NE;->A00(III)Ljava/lang/String;

    move-result-object v1

    new-instance v0, Lcom/facebook/ads/redexgen/X/NE;

    invoke-direct {v0, v1, v4, v3}, Lcom/facebook/ads/redexgen/X/NE;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/facebook/ads/redexgen/X/NE;->A04:Lcom/facebook/ads/redexgen/X/NE;

    .line 1428
    invoke-static {}, Lcom/facebook/ads/redexgen/X/NE;->A02()[Lcom/facebook/ads/redexgen/X/NE;

    move-result-object v0

    sput-object v0, Lcom/facebook/ads/redexgen/X/NE;->A02:[Lcom/facebook/ads/redexgen/X/NE;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000,
            0x0
        }
        names = {
            null,
            null,
            null
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 53083
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 53084
    iput-object p3, p0, Lcom/facebook/ads/redexgen/X/NE;->A00:Ljava/lang/String;

    .line 53085
    return-void
.end method

.method public static A00(III)Ljava/lang/String;
    .locals 2

    sget-object v1, Lcom/facebook/ads/redexgen/X/NE;->A01:[B

    add-int v0, p0, p1

    invoke-static {v1, p0, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p0

    const/4 v1, 0x0

    :goto_0
    array-length v0, p0

    if-ge v1, v0, :cond_0

    aget-byte v0, p0, v1

    sub-int/2addr v0, p2

    add-int/lit8 v0, v0, -0x71

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

    const/16 v0, 0x1a

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/facebook/ads/redexgen/X/NE;->A01:[B

    return-void

    :array_0
    .array-data 1
        -0x34t
        -0x29t
        -0x29t
        -0x38t
        -0x44t
        -0x37t
        -0x30t
        -0x44t
        -0x39t
        0x3dt
        0x3et
        0x3dt
        0x34t
        0x3at
        0x45t
        0x45t
        -0x8t
        -0x14t
        -0x7t
        0x0t
        -0x14t
        -0x9t
        0x5dt
        0x5et
        0x5dt
        0x54t
    .end array-data
.end method

.method public static synthetic A02()[Lcom/facebook/ads/redexgen/X/NE;
    .locals 3

    .line 53086
    const/4 v0, 0x3

    new-array v2, v0, [Lcom/facebook/ads/redexgen/X/NE;

    sget-object v1, Lcom/facebook/ads/redexgen/X/NE;->A03:Lcom/facebook/ads/redexgen/X/NE;

    const/4 v0, 0x0

    aput-object v1, v2, v0

    sget-object v1, Lcom/facebook/ads/redexgen/X/NE;->A05:Lcom/facebook/ads/redexgen/X/NE;

    const/4 v0, 0x1

    aput-object v1, v2, v0

    sget-object v1, Lcom/facebook/ads/redexgen/X/NE;->A04:Lcom/facebook/ads/redexgen/X/NE;

    const/4 v0, 0x2

    aput-object v1, v2, v0

    return-object v2
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/facebook/ads/redexgen/X/NE;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8000
        }
        names = {
            null
        }
    .end annotation

    .line 53088
    const-class v0, Lcom/facebook/ads/redexgen/X/NE;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/redexgen/X/NE;

    return-object v0
.end method

.method public static values()[Lcom/facebook/ads/redexgen/X/NE;
    .locals 1

    .line 53089
    sget-object v0, Lcom/facebook/ads/redexgen/X/NE;->A02:[Lcom/facebook/ads/redexgen/X/NE;

    invoke-virtual {v0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/facebook/ads/redexgen/X/NE;

    return-object v0
.end method


# virtual methods
.method public final toString()Ljava/lang/String;
    .locals 1

    .line 53087
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/NE;->A00:Ljava/lang/String;

    return-object v0
.end method
