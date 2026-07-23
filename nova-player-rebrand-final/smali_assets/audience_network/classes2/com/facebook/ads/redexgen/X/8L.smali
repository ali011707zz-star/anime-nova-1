.class public final Lcom/facebook/ads/redexgen/X/8L;
.super Lcom/facebook/ads/redexgen/X/kr;
.source ""


# static fields
.field public static A01:[B


# instance fields
.field public final A00:J


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    invoke-static {}, Lcom/facebook/ads/redexgen/X/8L;->A01()V

    return-void
.end method

.method public constructor <init>(J)V
    .locals 3

    .line 22779
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/kr;-><init>()V

    .line 22780
    const-wide/16 v1, 0x0

    cmp-long v0, p1, v1

    if-lez v0, :cond_0

    .line 22781
    iput-wide p1, p0, Lcom/facebook/ads/redexgen/X/8L;->A00:J

    .line 22782
    return-void

    .line 22783
    :cond_0
    const/4 v2, 0x0

    const/16 v1, 0x21

    const/16 v0, 0x6e

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/8L;->A00(III)Ljava/lang/String;

    move-result-object v1

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static A00(III)Ljava/lang/String;
    .locals 2

    sget-object v1, Lcom/facebook/ads/redexgen/X/8L;->A01:[B

    add-int v0, p0, p1

    invoke-static {v1, p0, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p0

    const/4 v1, 0x0

    :goto_0
    array-length v0, p0

    if-ge v1, v0, :cond_0

    aget-byte v0, p0, v1

    sub-int/2addr v0, p2

    add-int/lit8 v0, v0, -0x26

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

    const/16 v0, 0x21

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/facebook/ads/redexgen/X/8L;->A01:[B

    return-void

    :array_0
    .array-data 1
        -0x1ft
        -0xbt
        0xct
        -0x4ct
        0x7t
        -0x3t
        0xet
        -0x7t
        -0x4ct
        0x1t
        0x9t
        0x7t
        0x8t
        -0x4ct
        -0xat
        -0x7t
        -0x4ct
        0x4t
        0x3t
        0x7t
        -0x3t
        0x8t
        -0x3t
        0xat
        -0x7t
        -0x4ct
        0x2t
        0x9t
        0x1t
        -0xat
        -0x7t
        0x6t
        -0x4bt
    .end array-data
.end method


# virtual methods
.method public final A08(Ljava/io/File;JI)Z
    .locals 3

    .line 22784
    iget-wide v1, p0, Lcom/facebook/ads/redexgen/X/8L;->A00:J

    cmp-long v0, p2, v1

    if-gtz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final bridge synthetic AKR(Ljava/io/File;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 22785
    invoke-super {p0, p1}, Lcom/facebook/ads/redexgen/X/kr;->AKR(Ljava/io/File;)V

    return-void
.end method
