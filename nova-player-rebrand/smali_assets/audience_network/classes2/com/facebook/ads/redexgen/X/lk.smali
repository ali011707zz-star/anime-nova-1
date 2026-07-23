.class public final enum Lcom/facebook/ads/redexgen/X/lk;
.super Ljava/lang/Enum;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/ads/redexgen/X/Bv;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "State"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/facebook/ads/redexgen/X/lk;",
        ">;"
    }
.end annotation


# static fields
.field public static A00:[B

.field public static final synthetic A01:[Lcom/facebook/ads/redexgen/X/lk;

.field public static final enum A02:Lcom/facebook/ads/redexgen/X/lk;

.field public static final enum A03:Lcom/facebook/ads/redexgen/X/lk;

.field public static final enum A04:Lcom/facebook/ads/redexgen/X/lk;

.field public static final enum A05:Lcom/facebook/ads/redexgen/X/lk;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    .line 3200
    invoke-static {}, Lcom/facebook/ads/redexgen/X/lk;->A01()V

    const/16 v2, 0x13

    const/4 v1, 0x5

    const/16 v0, 0x7d

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/lk;->A00(III)Ljava/lang/String;

    move-result-object v2

    const/4 v1, 0x0

    new-instance v0, Lcom/facebook/ads/redexgen/X/lk;

    invoke-direct {v0, v2, v1}, Lcom/facebook/ads/redexgen/X/lk;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/facebook/ads/redexgen/X/lk;->A05:Lcom/facebook/ads/redexgen/X/lk;

    .line 3201
    const/16 v2, 0xa

    const/16 v1, 0x9

    const/16 v0, 0x33

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/lk;->A00(III)Ljava/lang/String;

    move-result-object v2

    const/4 v1, 0x1

    new-instance v0, Lcom/facebook/ads/redexgen/X/lk;

    invoke-direct {v0, v2, v1}, Lcom/facebook/ads/redexgen/X/lk;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/facebook/ads/redexgen/X/lk;->A04:Lcom/facebook/ads/redexgen/X/lk;

    .line 3202
    const/4 v2, 0x0

    const/4 v1, 0x4

    const/16 v0, 0x3e

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/lk;->A00(III)Ljava/lang/String;

    move-result-object v2

    const/4 v1, 0x2

    new-instance v0, Lcom/facebook/ads/redexgen/X/lk;

    invoke-direct {v0, v2, v1}, Lcom/facebook/ads/redexgen/X/lk;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/facebook/ads/redexgen/X/lk;->A02:Lcom/facebook/ads/redexgen/X/lk;

    .line 3203
    const/4 v2, 0x4

    const/4 v1, 0x6

    const/16 v0, 0x25

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/lk;->A00(III)Ljava/lang/String;

    move-result-object v2

    const/4 v1, 0x3

    new-instance v0, Lcom/facebook/ads/redexgen/X/lk;

    invoke-direct {v0, v2, v1}, Lcom/facebook/ads/redexgen/X/lk;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/facebook/ads/redexgen/X/lk;->A03:Lcom/facebook/ads/redexgen/X/lk;

    .line 3204
    invoke-static {}, Lcom/facebook/ads/redexgen/X/lk;->A02()[Lcom/facebook/ads/redexgen/X/lk;

    move-result-object v0

    sput-object v0, Lcom/facebook/ads/redexgen/X/lk;->A01:[Lcom/facebook/ads/redexgen/X/lk;

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
            "$enum$name",
            "$enum$ordinal"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 94908
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static A00(III)Ljava/lang/String;
    .locals 2

    sget-object v1, Lcom/facebook/ads/redexgen/X/lk;->A00:[B

    add-int v0, p0, p1

    invoke-static {v1, p0, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p0

    const/4 v1, 0x0

    :goto_0
    array-length v0, p0

    if-ge v1, v0, :cond_0

    aget-byte v0, p0, v1

    xor-int/2addr v0, p2

    xor-int/lit8 v0, v0, 0x4a

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

    const/16 v0, 0x18

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/facebook/ads/redexgen/X/lk;->A00:[B

    return-void

    :array_0
    .array-data 1
        0x30t
        0x3bt
        0x3at
        0x31t
        0x29t
        0x2et
        0x26t
        0x23t
        0x2at
        0x2bt
        0x37t
        0x36t
        0x2dt
        0x26t
        0x2bt
        0x3ct
        0x38t
        0x3dt
        0x20t
        0x65t
        0x72t
        0x76t
        0x73t
        0x6et
    .end array-data
.end method

.method public static synthetic A02()[Lcom/facebook/ads/redexgen/X/lk;
    .locals 3

    .line 94909
    const/4 v0, 0x4

    new-array v2, v0, [Lcom/facebook/ads/redexgen/X/lk;

    sget-object v1, Lcom/facebook/ads/redexgen/X/lk;->A05:Lcom/facebook/ads/redexgen/X/lk;

    const/4 v0, 0x0

    aput-object v1, v2, v0

    sget-object v1, Lcom/facebook/ads/redexgen/X/lk;->A04:Lcom/facebook/ads/redexgen/X/lk;

    const/4 v0, 0x1

    aput-object v1, v2, v0

    sget-object v1, Lcom/facebook/ads/redexgen/X/lk;->A02:Lcom/facebook/ads/redexgen/X/lk;

    const/4 v0, 0x2

    aput-object v1, v2, v0

    sget-object v1, Lcom/facebook/ads/redexgen/X/lk;->A03:Lcom/facebook/ads/redexgen/X/lk;

    const/4 v0, 0x3

    aput-object v1, v2, v0

    return-object v2
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/facebook/ads/redexgen/X/lk;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8000
        }
        names = {
            "name"
        }
    .end annotation

    .line 94910
    const-class v0, Lcom/facebook/ads/redexgen/X/lk;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/redexgen/X/lk;

    return-object v0
.end method

.method public static values()[Lcom/facebook/ads/redexgen/X/lk;
    .locals 1

    .line 94911
    sget-object v0, Lcom/facebook/ads/redexgen/X/lk;->A01:[Lcom/facebook/ads/redexgen/X/lk;

    invoke-virtual {v0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/facebook/ads/redexgen/X/lk;

    return-object v0
.end method
