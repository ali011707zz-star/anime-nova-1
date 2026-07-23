.class public final Lcom/facebook/ads/redexgen/X/JR;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation runtime Lcom/facebook/video/heroplayer/exocustom/MetaExoPlayerCustomization;
    type = {
        "INCREASE_VISIBILITY"
    }
    value = "To support OculusMp4Extractor"
.end annotation


# static fields
.field public static A08:[Ljava/lang/String;


# instance fields
.field public final A00:I

.field public final A01:I

.field public final A02:J

.field public final A03:Lcom/facebook/ads/redexgen/X/JO;

.field public final A04:[I

.field public final A05:[I

.field public final A06:[J

.field public final A07:[J


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    .line 829
    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "AtxLAVOLIQu"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "Fle8gwQlySsExFOL9KX8wb0v"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "wFpk"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "KqR90lH25ch62x6cAj66e37DOVxg4eZG"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "XchR4DYnLnD3gtwkslZg"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "tO3f9MPY4MkMP3"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, ""

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "TthioVfwXchWaR6I8DsFZ4y13Jptm90E"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/JR;->A08:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/facebook/ads/redexgen/X/JO;[J[II[J[IJ)V
    .locals 4

    .line 42982
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42983
    array-length v1, p3

    array-length v0, p5

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ne v1, v0, :cond_3

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/3y;->A07(Z)V

    .line 42984
    array-length v1, p2

    array-length v0, p5

    if-ne v1, v0, :cond_2

    const/4 v0, 0x1

    :goto_1
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/3y;->A07(Z)V

    .line 42985
    array-length v1, p6

    array-length v0, p5

    if-ne v1, v0, :cond_0

    const/4 v2, 0x1

    :cond_0
    invoke-static {v2}, Lcom/facebook/ads/redexgen/X/3y;->A07(Z)V

    .line 42986
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/JR;->A03:Lcom/facebook/ads/redexgen/X/JO;

    .line 42987
    iput-object p2, p0, Lcom/facebook/ads/redexgen/X/JR;->A06:[J

    .line 42988
    iput-object p3, p0, Lcom/facebook/ads/redexgen/X/JR;->A05:[I

    .line 42989
    iput p4, p0, Lcom/facebook/ads/redexgen/X/JR;->A00:I

    .line 42990
    iput-object p5, p0, Lcom/facebook/ads/redexgen/X/JR;->A07:[J

    .line 42991
    iput-object p6, p0, Lcom/facebook/ads/redexgen/X/JR;->A04:[I

    .line 42992
    iput-wide p7, p0, Lcom/facebook/ads/redexgen/X/JR;->A02:J

    .line 42993
    array-length v0, p2

    iput v0, p0, Lcom/facebook/ads/redexgen/X/JR;->A01:I

    .line 42994
    array-length v0, p6

    if-lez v0, :cond_1

    .line 42995
    array-length v2, p6

    sub-int/2addr v2, v3

    aget v1, p6, v2

    const/high16 v0, 0x20000000

    or-int/2addr v1, v0

    aput v1, p6, v2

    .line 42996
    :cond_1
    return-void

    .line 42997
    :cond_2
    const/4 v0, 0x0

    goto :goto_1

    .line 42998
    :cond_3
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public final A00(J)I
    .locals 6

    .line 42999
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/JR;->A07:[J

    const/4 v0, 0x0

    const/4 v5, 0x1

    invoke-static {v1, p1, p2, v5, v0}, Lcom/facebook/ads/redexgen/X/5C;->A0L([JJZZ)I

    move-result v4

    .line 43000
    .local v0, "startIndex":I
    .local v1, "i":I
    :goto_0
    if-ltz v4, :cond_2

    .line 43001
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/JR;->A04:[I

    aget v3, v0, v4

    and-int/2addr v3, v5

    sget-object v1, Lcom/facebook/ads/redexgen/X/JR;->A08:[Ljava/lang/String;

    const/4 v0, 0x1

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v0, 0x19

    if-eq v1, v0, :cond_1

    sget-object v2, Lcom/facebook/ads/redexgen/X/JR;->A08:[Ljava/lang/String;

    const-string v1, "GcE"

    const/4 v0, 0x1

    aput-object v1, v2, v0

    if-eqz v3, :cond_0

    .line 43002
    return v4

    .line 43003
    :cond_0
    add-int/lit8 v4, v4, -0x1

    goto :goto_0

    :cond_1
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    .line 43004
    .end local v1    # "i":I
    :cond_2
    const/4 v0, -0x1

    return v0
.end method

.method public final A01(J)I
    .locals 3

    .line 43005
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/JR;->A07:[J

    const/4 v0, 0x0

    const/4 v2, 0x1

    invoke-static {v1, p1, p2, v2, v0}, Lcom/facebook/ads/redexgen/X/5C;->A0K([JJZZ)I

    move-result v1

    .line 43006
    .local v0, "startIndex":I
    .local v1, "i":I
    :goto_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/JR;->A07:[J

    array-length v0, v0

    if-ge v1, v0, :cond_1

    .line 43007
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/JR;->A04:[I

    aget v0, v0, v1

    and-int/2addr v0, v2

    if-eqz v0, :cond_0

    .line 43008
    return v1

    .line 43009
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 43010
    .end local v1    # "i":I
    :cond_1
    const/4 v0, -0x1

    return v0
.end method
