.class public final enum Lcom/facebook/ads/redexgen/X/g6;
.super Ljava/lang/Enum;
.source ""


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/facebook/ads/redexgen/X/g6;",
        ">;"
    }
.end annotation


# static fields
.field public static A02:[B

.field public static A03:[Ljava/lang/String;

.field public static final synthetic A04:[Lcom/facebook/ads/redexgen/X/g6;

.field public static final enum A05:Lcom/facebook/ads/redexgen/X/g6;

.field public static final enum A06:Lcom/facebook/ads/redexgen/X/g6;


# instance fields
.field public A00:Z

.field public A01:Z


# direct methods
.method public static constructor <clinit>()V
    .locals 4

    .line 2850
    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "2ontwM2arFslKncjF33kbqsw34bOv6le"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "G9q7n4RrTr1"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "g4gCsJajd0OYdOA8Ye5rYJWq4JgSICF"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "NFoKf805ct"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "mafT0Rfur7fS0CNoj1tBpTWo2FQFb5xI"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "EiMXCOKYsXD"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "uVuWHRjrR7UDLAS"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "0Dp8HE0WixXMfpgDKF4PEgrQKOmjSnl7"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/g6;->A03:[Ljava/lang/String;

    invoke-static {}, Lcom/facebook/ads/redexgen/X/g6;->A01()V

    const/4 v2, 0x0

    const/4 v1, 0x3

    const/16 v0, 0x18

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/g6;->A00(III)Ljava/lang/String;

    move-result-object v2

    const/4 v1, 0x0

    const/4 v3, 0x1

    new-instance v0, Lcom/facebook/ads/redexgen/X/g6;

    invoke-direct {v0, v2, v1, v3, v1}, Lcom/facebook/ads/redexgen/X/g6;-><init>(Ljava/lang/String;IZZ)V

    sput-object v0, Lcom/facebook/ads/redexgen/X/g6;->A05:Lcom/facebook/ads/redexgen/X/g6;

    .line 2851
    const/4 v2, 0x3

    const/4 v1, 0x4

    const/16 v0, 0x7e

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/g6;->A00(III)Ljava/lang/String;

    move-result-object v1

    new-instance v0, Lcom/facebook/ads/redexgen/X/g6;

    invoke-direct {v0, v1, v3, v3, v3}, Lcom/facebook/ads/redexgen/X/g6;-><init>(Ljava/lang/String;IZZ)V

    sput-object v0, Lcom/facebook/ads/redexgen/X/g6;->A06:Lcom/facebook/ads/redexgen/X/g6;

    .line 2852
    invoke-static {}, Lcom/facebook/ads/redexgen/X/g6;->A02()[Lcom/facebook/ads/redexgen/X/g6;

    move-result-object v0

    sput-object v0, Lcom/facebook/ads/redexgen/X/g6;->A04:[Lcom/facebook/ads/redexgen/X/g6;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;IZZ)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000,
            0x0,
            0x0
        }
        names = {
            null,
            null,
            null,
            null
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ZZ)V"
        }
    .end annotation

    .line 83059
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 83060
    iput-boolean p3, p0, Lcom/facebook/ads/redexgen/X/g6;->A00:Z

    .line 83061
    iput-boolean p4, p0, Lcom/facebook/ads/redexgen/X/g6;->A01:Z

    .line 83062
    return-void
.end method

.method public static A00(III)Ljava/lang/String;
    .locals 2

    sget-object v1, Lcom/facebook/ads/redexgen/X/g6;->A02:[B

    add-int v0, p0, p1

    invoke-static {v1, p0, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p0

    const/4 v1, 0x0

    :goto_0
    array-length v0, p0

    if-ge v1, v0, :cond_0

    aget-byte v0, p0, v1

    xor-int/2addr v0, p2

    xor-int/lit8 v0, v0, 0x78

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

    const/4 v0, 0x7

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/facebook/ads/redexgen/X/g6;->A02:[B

    return-void

    nop

    :array_0
    .array-data 1
        0x27t
        0x25t
        0x34t
        0x56t
        0x49t
        0x55t
        0x52t
    .end array-data
.end method

.method public static synthetic A02()[Lcom/facebook/ads/redexgen/X/g6;
    .locals 3

    .line 83063
    const/4 v0, 0x2

    new-array v2, v0, [Lcom/facebook/ads/redexgen/X/g6;

    sget-object v1, Lcom/facebook/ads/redexgen/X/g6;->A05:Lcom/facebook/ads/redexgen/X/g6;

    const/4 v0, 0x0

    aput-object v1, v2, v0

    sget-object v1, Lcom/facebook/ads/redexgen/X/g6;->A06:Lcom/facebook/ads/redexgen/X/g6;

    const/4 v0, 0x1

    aput-object v1, v2, v0

    return-object v2
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/facebook/ads/redexgen/X/g6;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8000
        }
        names = {
            null
        }
    .end annotation

    .line 83067
    const-class v0, Lcom/facebook/ads/redexgen/X/g6;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/redexgen/X/g6;

    return-object v0
.end method

.method public static values()[Lcom/facebook/ads/redexgen/X/g6;
    .locals 4

    .line 83068
    sget-object v3, Lcom/facebook/ads/redexgen/X/g6;->A04:[Lcom/facebook/ads/redexgen/X/g6;

    sget-object v1, Lcom/facebook/ads/redexgen/X/g6;->A03:[Ljava/lang/String;

    const/4 v0, 0x7

    aget-object v1, v1, v0

    const/4 v0, 0x2

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x70

    if-eq v1, v0, :cond_0

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_0
    sget-object v2, Lcom/facebook/ads/redexgen/X/g6;->A03:[Ljava/lang/String;

    const-string v1, "eYpi2UA0ZlC7PiDY55aF0B4EyL2494ge"

    const/4 v0, 0x7

    aput-object v1, v2, v0

    invoke-virtual {v3}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/facebook/ads/redexgen/X/g6;

    return-object v0
.end method


# virtual methods
.method public final A03()Ljava/lang/String;
    .locals 1

    .line 83064
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/g6;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final A04()Z
    .locals 1

    .line 83065
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/g6;->A00:Z

    return v0
.end method

.method public final A05()Z
    .locals 1

    .line 83066
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/g6;->A01:Z

    return v0
.end method
