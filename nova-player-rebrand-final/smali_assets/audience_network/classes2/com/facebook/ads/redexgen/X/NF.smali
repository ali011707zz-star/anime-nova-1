.class public final enum Lcom/facebook/ads/redexgen/X/NF;
.super Ljava/lang/Enum;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/ads/redexgen/X/jj;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "NativeAdReportingAvailabilityReason"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/facebook/ads/redexgen/X/NF;",
        ">;"
    }
.end annotation


# static fields
.field public static A01:[B

.field public static final synthetic A02:[Lcom/facebook/ads/redexgen/X/NF;

.field public static final enum A03:Lcom/facebook/ads/redexgen/X/NF;

.field public static final enum A04:Lcom/facebook/ads/redexgen/X/NF;

.field public static final enum A05:Lcom/facebook/ads/redexgen/X/NF;


# instance fields
.field public final A00:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 5

    .line 1429
    invoke-static {}, Lcom/facebook/ads/redexgen/X/NF;->A01()V

    const/4 v4, 0x0

    const/16 v2, 0x25

    const/16 v1, 0x9

    const/16 v0, 0x62

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/NF;->A00(III)Ljava/lang/String;

    move-result-object v3

    const/4 v2, 0x0

    const/16 v1, 0x9

    const/16 v0, 0x41

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/NF;->A00(III)Ljava/lang/String;

    move-result-object v1

    new-instance v0, Lcom/facebook/ads/redexgen/X/NF;

    invoke-direct {v0, v1, v4, v3}, Lcom/facebook/ads/redexgen/X/NF;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/facebook/ads/redexgen/X/NF;->A03:Lcom/facebook/ads/redexgen/X/NF;

    .line 1430
    const/4 v4, 0x1

    const/16 v2, 0x41

    const/16 v1, 0x9

    const/16 v0, 0x57

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/NF;->A00(III)Ljava/lang/String;

    move-result-object v3

    const/16 v2, 0x1c

    const/16 v1, 0x9

    const/16 v0, 0x1e

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/NF;->A00(III)Ljava/lang/String;

    move-result-object v1

    new-instance v0, Lcom/facebook/ads/redexgen/X/NF;

    invoke-direct {v0, v1, v4, v3}, Lcom/facebook/ads/redexgen/X/NF;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/facebook/ads/redexgen/X/NF;->A05:Lcom/facebook/ads/redexgen/X/NF;

    .line 1431
    const/4 v4, 0x2

    const/16 v2, 0x2e

    const/16 v1, 0x13

    const/16 v0, 0x46

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/NF;->A00(III)Ljava/lang/String;

    move-result-object v3

    const/16 v2, 0x9

    const/16 v1, 0x13

    const/16 v0, 0x53

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/NF;->A00(III)Ljava/lang/String;

    move-result-object v1

    new-instance v0, Lcom/facebook/ads/redexgen/X/NF;

    invoke-direct {v0, v1, v4, v3}, Lcom/facebook/ads/redexgen/X/NF;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/facebook/ads/redexgen/X/NF;->A04:Lcom/facebook/ads/redexgen/X/NF;

    .line 1432
    invoke-static {}, Lcom/facebook/ads/redexgen/X/NF;->A02()[Lcom/facebook/ads/redexgen/X/NF;

    move-result-object v0

    sput-object v0, Lcom/facebook/ads/redexgen/X/NF;->A02:[Lcom/facebook/ads/redexgen/X/NF;

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

    .line 53090
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 53091
    iput-object p3, p0, Lcom/facebook/ads/redexgen/X/NF;->A00:Ljava/lang/String;

    .line 53092
    return-void
.end method

.method public static A00(III)Ljava/lang/String;
    .locals 2

    sget-object v1, Lcom/facebook/ads/redexgen/X/NF;->A01:[B

    add-int v0, p0, p1

    invoke-static {v1, p0, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p0

    const/4 v1, 0x0

    :goto_0
    array-length v0, p0

    if-ge v1, v0, :cond_0

    aget-byte v0, p0, v1

    xor-int/2addr v0, p2

    xor-int/lit8 v0, v0, 0x42

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

    const/16 v0, 0x4a

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/facebook/ads/redexgen/X/NF;->A01:[B

    return-void

    :array_0
    .array-data 1
        0x42t
        0x55t
        0x42t
        0x4at
        0x4ft
        0x42t
        0x41t
        0x4ft
        0x46t
        0x5ft
        0x5et
        0x4et
        0x5ft
        0x50t
        0x45t
        0x58t
        0x47t
        0x54t
        0x4et
        0x50t
        0x55t
        0x4et
        0x5dt
        0x50t
        0x48t
        0x5et
        0x44t
        0x45t
        0x8t
        0x13t
        0x13t
        0x3t
        0xft
        0x11t
        0x1dt
        0x10t
        0x10t
        0x41t
        0x56t
        0x41t
        0x49t
        0x4ct
        0x41t
        0x42t
        0x4ct
        0x45t
        0x6at
        0x6bt
        0x5bt
        0x6at
        0x65t
        0x70t
        0x6dt
        0x72t
        0x61t
        0x5bt
        0x65t
        0x60t
        0x5bt
        0x68t
        0x65t
        0x7dt
        0x6bt
        0x71t
        0x70t
        0x61t
        0x7at
        0x7at
        0x4at
        0x66t
        0x78t
        0x74t
        0x79t
        0x79t
    .end array-data
.end method

.method public static synthetic A02()[Lcom/facebook/ads/redexgen/X/NF;
    .locals 3

    .line 53093
    const/4 v0, 0x3

    new-array v2, v0, [Lcom/facebook/ads/redexgen/X/NF;

    sget-object v1, Lcom/facebook/ads/redexgen/X/NF;->A03:Lcom/facebook/ads/redexgen/X/NF;

    const/4 v0, 0x0

    aput-object v1, v2, v0

    sget-object v1, Lcom/facebook/ads/redexgen/X/NF;->A05:Lcom/facebook/ads/redexgen/X/NF;

    const/4 v0, 0x1

    aput-object v1, v2, v0

    sget-object v1, Lcom/facebook/ads/redexgen/X/NF;->A04:Lcom/facebook/ads/redexgen/X/NF;

    const/4 v0, 0x2

    aput-object v1, v2, v0

    return-object v2
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/facebook/ads/redexgen/X/NF;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8000
        }
        names = {
            null
        }
    .end annotation

    .line 53095
    const-class v0, Lcom/facebook/ads/redexgen/X/NF;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/redexgen/X/NF;

    return-object v0
.end method

.method public static values()[Lcom/facebook/ads/redexgen/X/NF;
    .locals 1

    .line 53096
    sget-object v0, Lcom/facebook/ads/redexgen/X/NF;->A02:[Lcom/facebook/ads/redexgen/X/NF;

    invoke-virtual {v0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/facebook/ads/redexgen/X/NF;

    return-object v0
.end method


# virtual methods
.method public final toString()Ljava/lang/String;
    .locals 1

    .line 53094
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/NF;->A00:Ljava/lang/String;

    return-object v0
.end method
