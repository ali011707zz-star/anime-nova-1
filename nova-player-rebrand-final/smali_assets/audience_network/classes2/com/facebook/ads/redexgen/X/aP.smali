.class public final enum Lcom/facebook/ads/redexgen/X/aP;
.super Ljava/lang/Enum;
.source ""


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/facebook/ads/redexgen/X/aP;",
        ">;"
    }
.end annotation


# static fields
.field public static A00:[B

.field public static final synthetic A01:[Lcom/facebook/ads/redexgen/X/aP;

.field public static final enum A02:Lcom/facebook/ads/redexgen/X/aP;

.field public static final enum A03:Lcom/facebook/ads/redexgen/X/aP;

.field public static final enum A04:Lcom/facebook/ads/redexgen/X/aP;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    .line 2605
    invoke-static {}, Lcom/facebook/ads/redexgen/X/aP;->A01()V

    const/16 v2, 0x9

    const/16 v1, 0xe

    const/16 v0, 0x29

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/aP;->A00(III)Ljava/lang/String;

    move-result-object v2

    const/4 v1, 0x0

    new-instance v0, Lcom/facebook/ads/redexgen/X/aP;

    invoke-direct {v0, v2, v1}, Lcom/facebook/ads/redexgen/X/aP;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/facebook/ads/redexgen/X/aP;->A03:Lcom/facebook/ads/redexgen/X/aP;

    .line 2606
    const/4 v2, 0x0

    const/16 v1, 0x9

    const/16 v0, 0x51

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/aP;->A00(III)Ljava/lang/String;

    move-result-object v2

    const/4 v1, 0x1

    new-instance v0, Lcom/facebook/ads/redexgen/X/aP;

    invoke-direct {v0, v2, v1}, Lcom/facebook/ads/redexgen/X/aP;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/facebook/ads/redexgen/X/aP;->A02:Lcom/facebook/ads/redexgen/X/aP;

    .line 2607
    const/16 v2, 0x17

    const/16 v1, 0x18

    const/16 v0, 0x73

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/aP;->A00(III)Ljava/lang/String;

    move-result-object v2

    const/4 v1, 0x2

    new-instance v0, Lcom/facebook/ads/redexgen/X/aP;

    invoke-direct {v0, v2, v1}, Lcom/facebook/ads/redexgen/X/aP;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/facebook/ads/redexgen/X/aP;->A04:Lcom/facebook/ads/redexgen/X/aP;

    .line 2608
    invoke-static {}, Lcom/facebook/ads/redexgen/X/aP;->A02()[Lcom/facebook/ads/redexgen/X/aP;

    move-result-object v0

    sput-object v0, Lcom/facebook/ads/redexgen/X/aP;->A01:[Lcom/facebook/ads/redexgen/X/aP;

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

    .line 76507
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static A00(III)Ljava/lang/String;
    .locals 2

    sget-object v1, Lcom/facebook/ads/redexgen/X/aP;->A00:[B

    add-int v0, p0, p1

    invoke-static {v1, p0, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p0

    const/4 v1, 0x0

    :goto_0
    array-length v0, p0

    if-ge v1, v0, :cond_0

    aget-byte v0, p0, v1

    xor-int/2addr v0, p2

    xor-int/lit8 v0, v0, 0x5b

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

    const/16 v0, 0x2f

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/facebook/ads/redexgen/X/aP;->A00:[B

    return-void

    :array_0
    .array-data 1
        0x4bt
        0x4et
        0x55t
        0x49t
        0x42t
        0x45t
        0x43t
        0x49t
        0x4ft
        0x31t
        0x20t
        0x37t
        0x36t
        0x3bt
        0x26t
        0x2dt
        0x3et
        0x3bt
        0x3ct
        0x37t
        0x2dt
        0x24t
        0x43t
        0x6bt
        0x7at
        0x6dt
        0x6ct
        0x61t
        0x7ct
        0x77t
        0x64t
        0x61t
        0x66t
        0x6dt
        0x77t
        0x7et
        0x1at
        0x77t
        0x69t
        0x66t
        0x61t
        0x65t
        0x69t
        0x7ct
        0x61t
        0x67t
        0x66t
    .end array-data
.end method

.method public static synthetic A02()[Lcom/facebook/ads/redexgen/X/aP;
    .locals 3

    .line 76508
    const/4 v0, 0x3

    new-array v2, v0, [Lcom/facebook/ads/redexgen/X/aP;

    sget-object v1, Lcom/facebook/ads/redexgen/X/aP;->A03:Lcom/facebook/ads/redexgen/X/aP;

    const/4 v0, 0x0

    aput-object v1, v2, v0

    sget-object v1, Lcom/facebook/ads/redexgen/X/aP;->A02:Lcom/facebook/ads/redexgen/X/aP;

    const/4 v0, 0x1

    aput-object v1, v2, v0

    sget-object v1, Lcom/facebook/ads/redexgen/X/aP;->A04:Lcom/facebook/ads/redexgen/X/aP;

    const/4 v0, 0x2

    aput-object v1, v2, v0

    return-object v2
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/facebook/ads/redexgen/X/aP;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8000
        }
        names = {
            null
        }
    .end annotation

    .line 76509
    const-class v0, Lcom/facebook/ads/redexgen/X/aP;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/redexgen/X/aP;

    return-object v0
.end method

.method public static values()[Lcom/facebook/ads/redexgen/X/aP;
    .locals 1

    .line 76510
    sget-object v0, Lcom/facebook/ads/redexgen/X/aP;->A01:[Lcom/facebook/ads/redexgen/X/aP;

    invoke-virtual {v0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/facebook/ads/redexgen/X/aP;

    return-object v0
.end method
