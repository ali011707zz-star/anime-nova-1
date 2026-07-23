.class public final enum Lcom/facebook/ads/redexgen/X/gT;
.super Ljava/lang/Enum;
.source ""


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/facebook/ads/redexgen/X/gT;",
        ">;"
    }
.end annotation


# static fields
.field public static A01:[B

.field public static A02:[Ljava/lang/String;

.field public static final synthetic A03:[Lcom/facebook/ads/redexgen/X/gT;

.field public static final enum A04:Lcom/facebook/ads/redexgen/X/gT;

.field public static final enum A05:Lcom/facebook/ads/redexgen/X/gT;


# instance fields
.field public A00:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 5

    .line 2887
    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "8ssLPxUWgolxbJp1XageKk"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "Dg1K6DVjcfMH4tCqXC1sgOKGeA5uth3Q"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "k5UerSqSpL774hBrbVIh5hzcGYTqhwwy"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "0mtXhllSXqdp9S5VgsRy7NU2TbMA8xeG"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, ""

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "SSXMStq65k9Kuk7D57GOtIpCJ0iDP0Qg"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, ""

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "QQzDcdSrE5R6m8lZGsEzAH1KwZryrNxV"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/gT;->A02:[Ljava/lang/String;

    invoke-static {}, Lcom/facebook/ads/redexgen/X/gT;->A01()V

    const/4 v4, 0x0

    const/16 v2, 0x1b

    const/4 v1, 0x7

    const/16 v0, 0x42

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/gT;->A00(III)Ljava/lang/String;

    move-result-object v3

    const/16 v2, 0xa

    const/4 v1, 0x7

    const/16 v0, 0x37

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/gT;->A00(III)Ljava/lang/String;

    move-result-object v1

    new-instance v0, Lcom/facebook/ads/redexgen/X/gT;

    invoke-direct {v0, v1, v4, v3}, Lcom/facebook/ads/redexgen/X/gT;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/facebook/ads/redexgen/X/gT;->A05:Lcom/facebook/ads/redexgen/X/gT;

    .line 2888
    const/4 v4, 0x1

    const/16 v2, 0x11

    const/16 v1, 0xa

    const/16 v0, 0x29

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/gT;->A00(III)Ljava/lang/String;

    move-result-object v3

    const/4 v2, 0x0

    const/16 v1, 0xa

    const/16 v0, 0x41

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/gT;->A00(III)Ljava/lang/String;

    move-result-object v1

    new-instance v0, Lcom/facebook/ads/redexgen/X/gT;

    invoke-direct {v0, v1, v4, v3}, Lcom/facebook/ads/redexgen/X/gT;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/facebook/ads/redexgen/X/gT;->A04:Lcom/facebook/ads/redexgen/X/gT;

    .line 2889
    invoke-static {}, Lcom/facebook/ads/redexgen/X/gT;->A02()[Lcom/facebook/ads/redexgen/X/gT;

    move-result-object v0

    sput-object v0, Lcom/facebook/ads/redexgen/X/gT;->A03:[Lcom/facebook/ads/redexgen/X/gT;

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

    .line 83332
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 83333
    iput-object p3, p0, Lcom/facebook/ads/redexgen/X/gT;->A00:Ljava/lang/String;

    .line 83334
    return-void
.end method

.method public static A00(III)Ljava/lang/String;
    .locals 4

    sget-object v1, Lcom/facebook/ads/redexgen/X/gT;->A01:[B

    add-int v0, p0, p1

    invoke-static {v1, p0, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v3

    const/4 p0, 0x0

    :goto_0
    array-length v0, v3

    if-ge p0, v0, :cond_1

    aget-byte p1, v3, p0

    xor-int/2addr p1, p2

    sget-object v2, Lcom/facebook/ads/redexgen/X/gT;->A02:[Ljava/lang/String;

    const/4 v0, 0x1

    aget-object v1, v2, v0

    const/4 v0, 0x5

    aget-object v2, v2, v0

    const/16 v0, 0x18

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v1, v0, :cond_0

    sget-object v2, Lcom/facebook/ads/redexgen/X/gT;->A02:[Ljava/lang/String;

    const-string v1, "rcLq9mDrDhDKDEyyKV3bsF"

    const/4 v0, 0x0

    aput-object v1, v2, v0

    xor-int/lit8 v0, p1, 0x71

    int-to-byte v0, v0

    aput-byte v0, v3, p0

    add-int/lit8 p0, p0, 0x1

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_1
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v3}, Ljava/lang/String;-><init>([B)V

    return-object v0
.end method

.method public static A01()V
    .locals 1

    const/16 v0, 0x22

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/facebook/ads/redexgen/X/gT;->A01:[B

    return-void

    :array_0
    .array-data 1
        0x7et
        0x7ft
        0x6ft
        0x73t
        0x78t
        0x71t
        0x7et
        0x77t
        0x75t
        0x63t
        0x16t
        0x14t
        0x9t
        0x10t
        0xft
        0x2t
        0x3t
        0x36t
        0x37t
        0x75t
        0x3bt
        0x30t
        0x39t
        0x36t
        0x3ft
        0x3dt
        0x2bt
        0x43t
        0x41t
        0x5ct
        0x45t
        0x5at
        0x57t
        0x56t
    .end array-data
.end method

.method public static synthetic A02()[Lcom/facebook/ads/redexgen/X/gT;
    .locals 3

    .line 83335
    const/4 v0, 0x2

    new-array v2, v0, [Lcom/facebook/ads/redexgen/X/gT;

    sget-object v1, Lcom/facebook/ads/redexgen/X/gT;->A05:Lcom/facebook/ads/redexgen/X/gT;

    const/4 v0, 0x0

    aput-object v1, v2, v0

    sget-object v1, Lcom/facebook/ads/redexgen/X/gT;->A04:Lcom/facebook/ads/redexgen/X/gT;

    const/4 v0, 0x1

    aput-object v1, v2, v0

    return-object v2
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/facebook/ads/redexgen/X/gT;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8000
        }
        names = {
            null
        }
    .end annotation

    .line 83337
    const-class v0, Lcom/facebook/ads/redexgen/X/gT;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/redexgen/X/gT;

    return-object v0
.end method

.method public static values()[Lcom/facebook/ads/redexgen/X/gT;
    .locals 1

    .line 83338
    sget-object v0, Lcom/facebook/ads/redexgen/X/gT;->A03:[Lcom/facebook/ads/redexgen/X/gT;

    invoke-virtual {v0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/facebook/ads/redexgen/X/gT;

    return-object v0
.end method


# virtual methods
.method public final A03()Ljava/lang/String;
    .locals 1

    .line 83336
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/gT;->A00:Ljava/lang/String;

    return-object v0
.end method
