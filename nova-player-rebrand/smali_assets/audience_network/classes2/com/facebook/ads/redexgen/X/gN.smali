.class public final enum Lcom/facebook/ads/redexgen/X/gN;
.super Ljava/lang/Enum;
.source ""


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/facebook/ads/redexgen/X/gN;",
        ">;"
    }
.end annotation


# static fields
.field public static A00:[B

.field public static A01:[Ljava/lang/String;

.field public static final synthetic A02:[Lcom/facebook/ads/redexgen/X/gN;

.field public static final enum A03:Lcom/facebook/ads/redexgen/X/gN;

.field public static final enum A04:Lcom/facebook/ads/redexgen/X/gN;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    .line 2883
    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "xrpFqliwvTmrUeY9fA"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "WQofXYOtPOfcZVcnLB6jDFevspEJYzJo"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "xmcQ51qE3IL5CD3g"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "vqfe6L9tI0UCZhHJZZILisyG0KCy4R"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "fiUEN16u3MZCpDGCMqSf2x4N5Q5QlPxX"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "5xn2ImkHS4ATQgLTDfLLcMPpUWGwzNh4"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "NsPZM3725QIioQriGr2vh8z8GZ7DcYd3"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "wIDfTgN4CVihAS6ZHyHagF8TJWsTJSVw"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/gN;->A01:[Ljava/lang/String;

    invoke-static {}, Lcom/facebook/ads/redexgen/X/gN;->A01()V

    const/4 v2, 0x0

    const/16 v1, 0xc

    const/16 v0, 0x1b

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/gN;->A00(III)Ljava/lang/String;

    move-result-object v2

    const/4 v1, 0x0

    new-instance v0, Lcom/facebook/ads/redexgen/X/gN;

    invoke-direct {v0, v2, v1}, Lcom/facebook/ads/redexgen/X/gN;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/facebook/ads/redexgen/X/gN;->A03:Lcom/facebook/ads/redexgen/X/gN;

    .line 2884
    const/16 v2, 0xc

    const/16 v1, 0xc

    const/16 v0, 0x64

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/gN;->A00(III)Ljava/lang/String;

    move-result-object v2

    const/4 v1, 0x1

    new-instance v0, Lcom/facebook/ads/redexgen/X/gN;

    invoke-direct {v0, v2, v1}, Lcom/facebook/ads/redexgen/X/gN;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/facebook/ads/redexgen/X/gN;->A04:Lcom/facebook/ads/redexgen/X/gN;

    .line 2885
    invoke-static {}, Lcom/facebook/ads/redexgen/X/gN;->A02()[Lcom/facebook/ads/redexgen/X/gN;

    move-result-object v0

    sput-object v0, Lcom/facebook/ads/redexgen/X/gN;->A02:[Lcom/facebook/ads/redexgen/X/gN;

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

    .line 83322
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static A00(III)Ljava/lang/String;
    .locals 4

    sget-object v1, Lcom/facebook/ads/redexgen/X/gN;->A00:[B

    add-int v0, p0, p1

    invoke-static {v1, p0, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v3

    const/4 p0, 0x0

    :goto_0
    array-length p1, v3

    sget-object v1, Lcom/facebook/ads/redexgen/X/gN;->A01:[Ljava/lang/String;

    const/4 v0, 0x1

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v0, 0x16

    if-eq v1, v0, :cond_2

    sget-object v2, Lcom/facebook/ads/redexgen/X/gN;->A01:[Ljava/lang/String;

    const-string v1, "aO5t2"

    const/4 v0, 0x1

    aput-object v1, v2, v0

    if-ge p0, p1, :cond_1

    aget-byte v0, v3, p0

    xor-int/2addr v0, p2

    xor-int/lit8 v0, v0, 0x62

    int-to-byte v0, v0

    aput-byte v0, v3, p0

    sget-object v2, Lcom/facebook/ads/redexgen/X/gN;->A01:[Ljava/lang/String;

    const/4 v0, 0x0

    aget-object v1, v2, v0

    const/4 v0, 0x2

    aget-object v0, v2, v0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eq v1, v0, :cond_0

    sget-object v2, Lcom/facebook/ads/redexgen/X/gN;->A01:[Ljava/lang/String;

    const-string v1, "tB3IEJBlHxhWtpYKuvAk87dclmwGEs"

    const/4 v0, 0x3

    aput-object v1, v2, v0

    add-int/lit8 p0, p0, 0x1

    goto :goto_0

    :cond_0
    add-int/lit8 p0, p0, 0x1

    goto :goto_0

    :cond_1
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v3}, Ljava/lang/String;-><init>([B)V

    return-object v0

    :cond_2
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
.end method

.method public static A01()V
    .locals 1

    const/16 v0, 0x18

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/facebook/ads/redexgen/X/gN;->A00:[B

    return-void

    :array_0
    .array-data 1
        0x3at
        0x35t
        0x30t
        0x3ct
        0x37t
        0x2dt
        0x26t
        0x36t
        0x2et
        0x37t
        0x3ct
        0x3dt
        0x55t
        0x43t
        0x54t
        0x50t
        0x43t
        0x54t
        0x59t
        0x49t
        0x51t
        0x48t
        0x43t
        0x42t
    .end array-data
.end method

.method public static synthetic A02()[Lcom/facebook/ads/redexgen/X/gN;
    .locals 3

    .line 83323
    const/4 v0, 0x2

    new-array v2, v0, [Lcom/facebook/ads/redexgen/X/gN;

    sget-object v1, Lcom/facebook/ads/redexgen/X/gN;->A03:Lcom/facebook/ads/redexgen/X/gN;

    const/4 v0, 0x0

    aput-object v1, v2, v0

    sget-object v1, Lcom/facebook/ads/redexgen/X/gN;->A04:Lcom/facebook/ads/redexgen/X/gN;

    const/4 v0, 0x1

    aput-object v1, v2, v0

    return-object v2
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/facebook/ads/redexgen/X/gN;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8000
        }
        names = {
            null
        }
    .end annotation

    .line 83324
    const-class v0, Lcom/facebook/ads/redexgen/X/gN;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/redexgen/X/gN;

    return-object v0
.end method

.method public static values()[Lcom/facebook/ads/redexgen/X/gN;
    .locals 1

    .line 83325
    sget-object v0, Lcom/facebook/ads/redexgen/X/gN;->A02:[Lcom/facebook/ads/redexgen/X/gN;

    invoke-virtual {v0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/facebook/ads/redexgen/X/gN;

    return-object v0
.end method
