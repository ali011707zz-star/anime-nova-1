.class public final enum Lcom/facebook/ads/redexgen/X/qy;
.super Ljava/lang/Enum;
.source ""


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/facebook/ads/redexgen/X/qy;",
        ">;"
    }
.end annotation


# static fields
.field public static A00:[B

.field public static final synthetic A01:[Lcom/facebook/ads/redexgen/X/qy;

.field public static final enum A02:Lcom/facebook/ads/redexgen/X/qy;

.field public static final enum A03:Lcom/facebook/ads/redexgen/X/qy;

.field public static final enum A04:Lcom/facebook/ads/redexgen/X/qy;

.field public static final enum A05:Lcom/facebook/ads/redexgen/X/qy;


# direct methods
.method public static constructor <clinit>()V
    .locals 6

    .line 3580
    invoke-static {}, Lcom/facebook/ads/redexgen/X/qy;->A01()V

    const/4 v2, 0x0

    const/4 v1, 0x6

    const/16 v0, 0x16

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/qy;->A00(III)Ljava/lang/String;

    move-result-object v1

    const/4 v5, 0x0

    new-instance v0, Lcom/facebook/ads/redexgen/X/qy;

    invoke-direct {v0, v1, v5}, Lcom/facebook/ads/redexgen/X/qy;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/facebook/ads/redexgen/X/qy;->A02:Lcom/facebook/ads/redexgen/X/qy;

    .line 3581
    const/16 v2, 0x10

    const/4 v1, 0x7

    const/16 v0, 0x61

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/qy;->A00(III)Ljava/lang/String;

    move-result-object v1

    const/4 v4, 0x1

    new-instance v0, Lcom/facebook/ads/redexgen/X/qy;

    invoke-direct {v0, v1, v4}, Lcom/facebook/ads/redexgen/X/qy;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/facebook/ads/redexgen/X/qy;->A05:Lcom/facebook/ads/redexgen/X/qy;

    .line 3582
    const/4 v2, 0x6

    const/4 v1, 0x5

    const/16 v0, 0x4c

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/qy;->A00(III)Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x2

    new-instance v0, Lcom/facebook/ads/redexgen/X/qy;

    invoke-direct {v0, v1, v3}, Lcom/facebook/ads/redexgen/X/qy;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/facebook/ads/redexgen/X/qy;->A03:Lcom/facebook/ads/redexgen/X/qy;

    .line 3583
    const/16 v2, 0xb

    const/4 v1, 0x5

    const/16 v0, 0x2c

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/qy;->A00(III)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x3

    new-instance v0, Lcom/facebook/ads/redexgen/X/qy;

    invoke-direct {v0, v1, v2}, Lcom/facebook/ads/redexgen/X/qy;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/facebook/ads/redexgen/X/qy;->A04:Lcom/facebook/ads/redexgen/X/qy;

    .line 3584
    const/4 v0, 0x4

    new-array v1, v0, [Lcom/facebook/ads/redexgen/X/qy;

    sget-object v0, Lcom/facebook/ads/redexgen/X/qy;->A02:Lcom/facebook/ads/redexgen/X/qy;

    aput-object v0, v1, v5

    sget-object v0, Lcom/facebook/ads/redexgen/X/qy;->A05:Lcom/facebook/ads/redexgen/X/qy;

    aput-object v0, v1, v4

    sget-object v0, Lcom/facebook/ads/redexgen/X/qy;->A03:Lcom/facebook/ads/redexgen/X/qy;

    aput-object v0, v1, v3

    sget-object v0, Lcom/facebook/ads/redexgen/X/qy;->A04:Lcom/facebook/ads/redexgen/X/qy;

    aput-object v0, v1, v2

    sput-object v1, Lcom/facebook/ads/redexgen/X/qy;->A01:[Lcom/facebook/ads/redexgen/X/qy;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 105999
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static A00(III)Ljava/lang/String;
    .locals 2

    sget-object v1, Lcom/facebook/ads/redexgen/X/qy;->A00:[B

    add-int v0, p0, p1

    invoke-static {v1, p0, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p0

    const/4 v1, 0x0

    :goto_0
    array-length v0, p0

    if-ge v1, v0, :cond_0

    aget-byte v0, p0, v1

    xor-int/2addr v0, p2

    xor-int/lit8 v0, v0, 0x59

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

    const/16 v0, 0x17

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/facebook/ads/redexgen/X/qy;->A00:[B

    return-void

    :array_0
    .array-data 1
        0xet
        0x3t
        0x18t
        0xet
        0x16t
        0x1ct
        0x58t
        0x54t
        0x4ct
        0x57t
        0x50t
        0x3bt
        0x30t
        0x23t
        0x30t
        0x27t
        0x6dt
        0x76t
        0x73t
        0x76t
        0x77t
        0x6ft
        0x76t
    .end array-data
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/facebook/ads/redexgen/X/qy;
    .locals 1

    .line 106000
    const-class v0, Lcom/facebook/ads/redexgen/X/qy;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/redexgen/X/qy;

    return-object v0
.end method

.method public static values()[Lcom/facebook/ads/redexgen/X/qy;
    .locals 1

    .line 106001
    sget-object v0, Lcom/facebook/ads/redexgen/X/qy;->A01:[Lcom/facebook/ads/redexgen/X/qy;

    invoke-virtual {v0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/facebook/ads/redexgen/X/qy;

    return-object v0
.end method
