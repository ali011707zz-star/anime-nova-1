.class public final Lcom/facebook/ads/redexgen/X/8x;
.super Ljava/lang/Exception;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/ads/redexgen/X/8z;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "UnexpectedDiscontinuityException"
.end annotation


# static fields
.field public static A02:[B


# instance fields
.field public final A00:J

.field public final A01:J


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    invoke-static {}, Lcom/facebook/ads/redexgen/X/8x;->A01()V

    return-void
.end method

.method public constructor <init>(JJ)V
    .locals 4

    .line 23362
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v2, 0x6

    const/16 v1, 0x39

    const/16 v0, 0x5e

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/8x;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const/4 v2, 0x0

    const/4 v1, 0x6

    const/16 v0, 0x56

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/8x;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 23363
    iput-wide p1, p0, Lcom/facebook/ads/redexgen/X/8x;->A00:J

    .line 23364
    iput-wide p3, p0, Lcom/facebook/ads/redexgen/X/8x;->A01:J

    .line 23365
    return-void
.end method

.method public static A00(III)Ljava/lang/String;
    .locals 2

    sget-object v1, Lcom/facebook/ads/redexgen/X/8x;->A02:[B

    add-int v0, p0, p1

    invoke-static {v1, p0, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p0

    const/4 v1, 0x0

    :goto_0
    array-length v0, p0

    if-ge v1, v0, :cond_0

    aget-byte v0, p0, v1

    sub-int/2addr v0, p2

    add-int/lit8 v0, v0, -0x6a

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

    const/16 v0, 0x3f

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/facebook/ads/redexgen/X/8x;->A02:[B

    return-void

    :array_0
    .array-data 1
        -0x14t
        -0x20t
        0x27t
        0x2ft
        0x34t
        -0x20t
        0x1dt
        0x36t
        0x2dt
        0x40t
        0x38t
        0x2dt
        0x2bt
        0x3ct
        0x2dt
        0x2ct
        -0x18t
        0x29t
        0x3dt
        0x2ct
        0x31t
        0x37t
        -0x18t
        0x3ct
        0x3at
        0x29t
        0x2bt
        0x33t
        -0x18t
        0x3ct
        0x31t
        0x35t
        0x2dt
        0x3bt
        0x3ct
        0x29t
        0x35t
        0x38t
        -0x18t
        0x2ct
        0x31t
        0x3bt
        0x2bt
        0x37t
        0x36t
        0x3ct
        0x31t
        0x36t
        0x3dt
        0x31t
        0x3ct
        0x41t
        0x2t
        -0x18t
        0x2dt
        0x40t
        0x38t
        0x2dt
        0x2bt
        0x3ct
        0x2dt
        0x2ct
        -0x18t
    .end array-data
.end method
