.class public final enum Lcom/facebook/ads/redexgen/X/Rv;
.super Ljava/lang/Enum;
.source ""


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/facebook/ads/redexgen/X/Rv;",
        ">;"
    }
.end annotation


# static fields
.field public static A00:[B

.field public static final synthetic A01:[Lcom/facebook/ads/redexgen/X/Rv;

.field public static final enum A02:Lcom/facebook/ads/redexgen/X/Rv;

.field public static final enum A03:Lcom/facebook/ads/redexgen/X/Rv;

.field public static final enum A04:Lcom/facebook/ads/redexgen/X/Rv;

.field public static final enum A05:Lcom/facebook/ads/redexgen/X/Rv;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    .line 1631
    invoke-static {}, Lcom/facebook/ads/redexgen/X/Rv;->A01()V

    const/16 v2, 0xd

    const/4 v1, 0x7

    const/16 v0, 0x16

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Rv;->A00(III)Ljava/lang/String;

    move-result-object v2

    const/4 v1, 0x0

    new-instance v0, Lcom/facebook/ads/redexgen/X/Rv;

    invoke-direct {v0, v2, v1}, Lcom/facebook/ads/redexgen/X/Rv;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/facebook/ads/redexgen/X/Rv;->A04:Lcom/facebook/ads/redexgen/X/Rv;

    .line 1632
    const/16 v2, 0x14

    const/4 v1, 0x5

    const/16 v0, 0x70

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Rv;->A00(III)Ljava/lang/String;

    move-result-object v2

    const/4 v1, 0x1

    new-instance v0, Lcom/facebook/ads/redexgen/X/Rv;

    invoke-direct {v0, v2, v1}, Lcom/facebook/ads/redexgen/X/Rv;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/facebook/ads/redexgen/X/Rv;->A05:Lcom/facebook/ads/redexgen/X/Rv;

    .line 1633
    const/16 v2, 0x8

    const/4 v1, 0x5

    const/16 v0, 0x59

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Rv;->A00(III)Ljava/lang/String;

    move-result-object v2

    const/4 v1, 0x2

    new-instance v0, Lcom/facebook/ads/redexgen/X/Rv;

    invoke-direct {v0, v2, v1}, Lcom/facebook/ads/redexgen/X/Rv;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/facebook/ads/redexgen/X/Rv;->A03:Lcom/facebook/ads/redexgen/X/Rv;

    .line 1634
    const/4 v2, 0x0

    const/16 v1, 0x8

    const/16 v0, 0x20

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Rv;->A00(III)Ljava/lang/String;

    move-result-object v2

    const/4 v1, 0x3

    new-instance v0, Lcom/facebook/ads/redexgen/X/Rv;

    invoke-direct {v0, v2, v1}, Lcom/facebook/ads/redexgen/X/Rv;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/facebook/ads/redexgen/X/Rv;->A02:Lcom/facebook/ads/redexgen/X/Rv;

    .line 1635
    invoke-static {}, Lcom/facebook/ads/redexgen/X/Rv;->A02()[Lcom/facebook/ads/redexgen/X/Rv;

    move-result-object v0

    sput-object v0, Lcom/facebook/ads/redexgen/X/Rv;->A01:[Lcom/facebook/ads/redexgen/X/Rv;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000
        }
        names = {
            null,
            null
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 63242
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static A00(III)Ljava/lang/String;
    .locals 2

    sget-object v1, Lcom/facebook/ads/redexgen/X/Rv;->A00:[B

    add-int v0, p0, p1

    invoke-static {v1, p0, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p0

    const/4 v1, 0x0

    :goto_0
    array-length v0, p0

    if-ge v1, v0, :cond_0

    aget-byte v0, p0, v1

    sub-int/2addr v0, p2

    add-int/lit8 v0, v0, -0x41

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

    const/16 v0, 0x19

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/facebook/ads/redexgen/X/Rv;->A00:[B

    return-void

    :array_0
    .array-data 1
        -0x5ct
        -0x5et
        -0x4dt
        -0x50t
        -0x4at
        -0x4ct
        -0x5at
        -0x53t
        -0x1dt
        -0x19t
        -0x25t
        -0x1ft
        -0x21t
        -0x54t
        -0x5bt
        -0x5et
        -0x5bt
        -0x5at
        -0x52t
        -0x5bt
        0x7t
        -0x6t
        -0xbt
        -0xat
        0x0t
    .end array-data
.end method

.method public static synthetic A02()[Lcom/facebook/ads/redexgen/X/Rv;
    .locals 3

    .line 63243
    const/4 v0, 0x4

    new-array v2, v0, [Lcom/facebook/ads/redexgen/X/Rv;

    sget-object v1, Lcom/facebook/ads/redexgen/X/Rv;->A04:Lcom/facebook/ads/redexgen/X/Rv;

    const/4 v0, 0x0

    aput-object v1, v2, v0

    sget-object v1, Lcom/facebook/ads/redexgen/X/Rv;->A05:Lcom/facebook/ads/redexgen/X/Rv;

    const/4 v0, 0x1

    aput-object v1, v2, v0

    sget-object v1, Lcom/facebook/ads/redexgen/X/Rv;->A03:Lcom/facebook/ads/redexgen/X/Rv;

    const/4 v0, 0x2

    aput-object v1, v2, v0

    sget-object v1, Lcom/facebook/ads/redexgen/X/Rv;->A02:Lcom/facebook/ads/redexgen/X/Rv;

    const/4 v0, 0x3

    aput-object v1, v2, v0

    return-object v2
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/facebook/ads/redexgen/X/Rv;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8000
        }
        names = {
            null
        }
    .end annotation

    .line 63244
    const-class v0, Lcom/facebook/ads/redexgen/X/Rv;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/redexgen/X/Rv;

    return-object v0
.end method

.method public static values()[Lcom/facebook/ads/redexgen/X/Rv;
    .locals 1

    .line 63245
    sget-object v0, Lcom/facebook/ads/redexgen/X/Rv;->A01:[Lcom/facebook/ads/redexgen/X/Rv;

    invoke-virtual {v0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/facebook/ads/redexgen/X/Rv;

    return-object v0
.end method
