.class public final Lcom/facebook/ads/redexgen/X/4J;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/ads/redexgen/X/4I;
    }
.end annotation


# static fields
.field public static A04:[B


# instance fields
.field public final A00:F

.field public final A01:I

.field public final A02:I

.field public final A03:J


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    invoke-static {}, Lcom/facebook/ads/redexgen/X/4J;->A01()V

    return-void
.end method

.method public constructor <init>(IIFJ)V
    .locals 6
    .annotation runtime Lcom/facebook/video/heroplayer/exocustom/MetaExoPlayerCustomization;
        value = "Should be private but left public for backward compat"
    .end annotation

    .line 11374
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11375
    const/4 v4, 0x1

    if-lez p1, :cond_1

    const/4 v5, 0x1

    :goto_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v2, 0x21

    const/16 v1, 0x20

    const/16 v0, 0x12

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/4J;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Lcom/facebook/ads/redexgen/X/3y;->A09(ZLjava/lang/Object;)V

    .line 11376
    if-lez p2, :cond_0

    :goto_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v2, 0x0

    const/16 v1, 0x21

    const/16 v0, 0x6d

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/4J;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Lcom/facebook/ads/redexgen/X/3y;->A09(ZLjava/lang/Object;)V

    .line 11377
    iput p1, p0, Lcom/facebook/ads/redexgen/X/4J;->A02:I

    .line 11378
    iput p2, p0, Lcom/facebook/ads/redexgen/X/4J;->A01:I

    .line 11379
    iput p3, p0, Lcom/facebook/ads/redexgen/X/4J;->A00:F

    .line 11380
    iput-wide p4, p0, Lcom/facebook/ads/redexgen/X/4J;->A03:J

    .line 11381
    return-void

    .line 11382
    :cond_0
    const/4 v4, 0x0

    goto :goto_1

    .line 11383
    :cond_1
    const/4 v5, 0x0

    goto :goto_0
.end method

.method public static A00(III)Ljava/lang/String;
    .locals 2

    sget-object v1, Lcom/facebook/ads/redexgen/X/4J;->A04:[B

    add-int v0, p0, p1

    invoke-static {v1, p0, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p0

    const/4 v1, 0x0

    :goto_0
    array-length v0, p0

    if-ge v1, v0, :cond_0

    aget-byte v0, p0, v1

    sub-int/2addr v0, p2

    add-int/lit8 v0, v0, -0x76

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

    const/16 v0, 0x41

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/facebook/ads/redexgen/X/4J;->A04:[B

    return-void

    :array_0
    .array-data 1
        0x4bt
        0x48t
        0x4ct
        0x4at
        0x4bt
        0x57t
        0x3t
        0x50t
        0x58t
        0x56t
        0x57t
        0x3t
        0x45t
        0x48t
        0x3t
        0x53t
        0x52t
        0x56t
        0x4ct
        0x57t
        0x4ct
        0x59t
        0x48t
        0xft
        0x3t
        0x45t
        0x58t
        0x57t
        0x3t
        0x4ct
        0x56t
        0x1dt
        0x3t
        -0x1t
        -0xft
        -0x14t
        -0x4t
        -0x10t
        -0x58t
        -0xbt
        -0x3t
        -0x5t
        -0x4t
        -0x58t
        -0x16t
        -0x13t
        -0x58t
        -0x8t
        -0x9t
        -0x5t
        -0xft
        -0x4t
        -0xft
        -0x2t
        -0x13t
        -0x4ct
        -0x58t
        -0x16t
        -0x3t
        -0x4t
        -0x58t
        -0xft
        -0x5t
        -0x3et
        -0x58t
    .end array-data
.end method
