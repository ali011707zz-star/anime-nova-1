.class public final Lcom/facebook/ads/redexgen/X/AI;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/facebook/ads/redexgen/X/pF;


# static fields
.field public static A00:[B

.field public static final A01:Lcom/facebook/ads/redexgen/X/5Y;

.field public static final A02:Lcom/facebook/ads/redexgen/X/AI;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 619
    invoke-static {}, Lcom/facebook/ads/redexgen/X/AI;->A02()V

    new-instance v0, Lcom/facebook/ads/redexgen/X/AI;

    invoke-direct {v0}, Lcom/facebook/ads/redexgen/X/AI;-><init>()V

    sput-object v0, Lcom/facebook/ads/redexgen/X/AI;->A02:Lcom/facebook/ads/redexgen/X/AI;

    .line 620
    new-instance v0, Lcom/facebook/ads/redexgen/X/p4;

    invoke-direct {v0}, Lcom/facebook/ads/redexgen/X/p4;-><init>()V

    sput-object v0, Lcom/facebook/ads/redexgen/X/AI;->A01:Lcom/facebook/ads/redexgen/X/5Y;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 28986
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic A00()Lcom/facebook/ads/redexgen/X/AI;
    .locals 1

    new-instance v0, Lcom/facebook/ads/redexgen/X/AI;

    invoke-direct {v0}, Lcom/facebook/ads/redexgen/X/AI;-><init>()V

    return-object v0
.end method

.method public static A01(III)Ljava/lang/String;
    .locals 2

    sget-object v1, Lcom/facebook/ads/redexgen/X/AI;->A00:[B

    add-int v0, p0, p1

    invoke-static {v1, p0, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p0

    const/4 v1, 0x0

    :goto_0
    array-length v0, p0

    if-ge v1, v0, :cond_0

    aget-byte v0, p0, v1

    xor-int/2addr v0, p2

    xor-int/lit8 v0, v0, 0x7e

    int-to-byte v0, v0

    aput-byte v0, p0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p0}, Ljava/lang/String;-><init>([B)V

    return-object v0
.end method

.method public static A02()V
    .locals 1

    const/16 v0, 0x26

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/facebook/ads/redexgen/X/AI;->A00:[B

    return-void

    :array_0
    .array-data 1
        0x17t
        0x2bt
        0x26t
        0x24t
        0x22t
        0x2ft
        0x28t
        0x2bt
        0x23t
        0x22t
        0x35t
        0x3t
        0x26t
        0x33t
        0x26t
        0x14t
        0x28t
        0x32t
        0x35t
        0x24t
        0x22t
        0x67t
        0x24t
        0x26t
        0x29t
        0x29t
        0x28t
        0x33t
        0x67t
        0x25t
        0x22t
        0x67t
        0x28t
        0x37t
        0x22t
        0x29t
        0x22t
        0x23t
    .end array-data
.end method


# virtual methods
.method public final A43(Lcom/facebook/ads/redexgen/X/5t;)V
    .locals 0

    .line 28987
    return-void
.end method

.method public final synthetic A8t()Ljava/util/Map;
    .locals 1

    invoke-static {p0}, Lcom/facebook/ads/redexgen/X/5X;->A00(Lcom/facebook/ads/redexgen/X/pF;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public final A9P()Landroid/net/Uri;
    .locals 1

    .line 28988
    const/4 v0, 0x0

    return-object v0
.end method

.method public final AGi(Lcom/facebook/ads/redexgen/X/5i;)J
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 28989
    const/4 v2, 0x0

    const/16 v1, 0x26

    const/16 v0, 0x39

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/AI;->A01(III)Ljava/lang/String;

    move-result-object v1

    new-instance v0, Ljava/io/IOException;

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final close()V
    .locals 0

    .line 28990
    return-void
.end method

.method public final read([BII)I
    .locals 1

    .line 28991
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method
