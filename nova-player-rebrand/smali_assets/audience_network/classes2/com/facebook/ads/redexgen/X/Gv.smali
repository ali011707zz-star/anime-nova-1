.class public final Lcom/facebook/ads/redexgen/X/Gv;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static A06:[B

.field public static A07:[Ljava/lang/String;


# instance fields
.field public final A00:F

.field public final A01:I

.field public final A02:I

.field public final A03:I

.field public final A04:Ljava/lang/String;

.field public final A05:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "[B>;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    .line 765
    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "f"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "7N0kip4m3flPJ4wRylUb66l3ycty4bLO"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "ZrqOCWQk631j6sxAoqisBRdwge9gr5QF"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "2DRaKiCosA9Zs551XHqRbpaUmywwD6L7"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "dzNr4lbarI8PqRX9M2ICRMrM1SnLdD"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "nBYqh81NM1tC"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "zWHuac"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "46iX5XNzwkY5yhjGLtKEm3XHMbBVctSm"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/Gv;->A07:[Ljava/lang/String;

    invoke-static {}, Lcom/facebook/ads/redexgen/X/Gv;->A02()V

    return-void
.end method

.method public constructor <init>(Ljava/util/List;IIIFLjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "[B>;IIIF",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 38143
    .local p1, "initializationData":Ljava/util/List;, "Ljava/util/List<[B>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38144
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/Gv;->A05:Ljava/util/List;

    .line 38145
    iput p2, p0, Lcom/facebook/ads/redexgen/X/Gv;->A02:I

    .line 38146
    iput p3, p0, Lcom/facebook/ads/redexgen/X/Gv;->A03:I

    .line 38147
    iput p4, p0, Lcom/facebook/ads/redexgen/X/Gv;->A01:I

    .line 38148
    iput p5, p0, Lcom/facebook/ads/redexgen/X/Gv;->A00:F

    .line 38149
    iput-object p6, p0, Lcom/facebook/ads/redexgen/X/Gv;->A04:Ljava/lang/String;

    .line 38150
    return-void
.end method

.method public static A00(Lcom/facebook/ads/redexgen/X/4v;)Lcom/facebook/ads/redexgen/X/Gv;
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/facebook/ads/redexgen/X/3K;
        }
    .end annotation

    .line 38151
    const/4 v0, 0x4

    :try_start_0
    invoke-virtual {p0, v0}, Lcom/facebook/ads/redexgen/X/4v;->A0g(I)V

    .line 38152
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/4v;->A0I()I

    move-result v1

    const/4 v0, 0x3

    and-int/2addr v1, v0

    add-int/lit8 v6, v1, 0x1

    .line 38153
    .local v0, "nalUnitLengthFieldLength":I
    if-eq v6, v0, :cond_4

    .line 38154
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 38155
    .local v2, "initializationData":Ljava/util/List;, "Ljava/util/List<[B>;"
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/4v;->A0I()I

    move-result v0

    and-int/lit8 v3, v0, 0x1f

    .line 38156
    .local p0, "numSequenceParameterSets":I
    const/4 v1, 0x0

    .local v3, "j":I
    :goto_0
    if-ge v1, v3, :cond_0

    .line 38157
    invoke-static {p0}, Lcom/facebook/ads/redexgen/X/Gv;->A03(Lcom/facebook/ads/redexgen/X/4v;)[B

    move-result-object v0

    invoke-interface {v5, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 38158
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 38159
    .end local v3    # "j":I
    :cond_0
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/4v;->A0I()I
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v4

    sget-object v2, Lcom/facebook/ads/redexgen/X/Gv;->A07:[Ljava/lang/String;

    const/4 v0, 0x4

    aget-object v1, v2, v0

    const/4 v0, 0x5

    aget-object v0, v2, v0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eq v1, v0, :cond_3

    .line 38160
    .local p1, "numPictureParameterSets":I
    sget-object v2, Lcom/facebook/ads/redexgen/X/Gv;->A07:[Ljava/lang/String;

    const-string v1, "rQ6g8gs4UtzNEdd6WIb5nHQ3c92ce055"

    const/4 v0, 0x1

    aput-object v1, v2, v0

    const/4 v0, 0x0

    .restart local v3    # "j":I
    :goto_1
    if-ge v0, v4, :cond_1

    .line 38161
    :try_start_1
    invoke-static {p0}, Lcom/facebook/ads/redexgen/X/Gv;->A03(Lcom/facebook/ads/redexgen/X/4v;)[B

    move-result-object v1

    invoke-interface {v5, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 38162
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 38163
    .end local v3    # "j":I
    :cond_1
    const/4 v7, -0x1

    .line 38164
    .local v3, "width":I
    const/4 v8, -0x1

    .line 38165
    .local v4, "height":I
    const/high16 v9, 0x3f800000    # 1.0f

    .line 38166
    .local v5, "pixelWidthHeightRatio":F
    const/4 p0, 0x0

    .line 38167
    .local v6, "codecs":Ljava/lang/String;
    if-lez v3, :cond_2

    .line 38168
    const/4 v1, 0x0

    invoke-interface {v5, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    .line 38169
    .local v8, "sps":[B
    invoke-interface {v5, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [B

    array-length v0, v0

    .line 38170
    invoke-static {v1, v6, v0}, Lcom/facebook/ads/redexgen/X/HS;->A09([BII)Lcom/facebook/ads/redexgen/X/HR;

    move-result-object v0

    .line 38171
    .local v7, "spsData":Lcom/facebook/ads/redexgen/X/HR;
    iget v7, v0, Lcom/facebook/ads/redexgen/X/HR;->A0A:I

    .line 38172
    iget v8, v0, Lcom/facebook/ads/redexgen/X/HR;->A03:I

    .line 38173
    iget v9, v0, Lcom/facebook/ads/redexgen/X/HR;->A00:F

    .line 38174
    iget v2, v0, Lcom/facebook/ads/redexgen/X/HR;->A08:I

    iget v1, v0, Lcom/facebook/ads/redexgen/X/HR;->A01:I

    iget v0, v0, Lcom/facebook/ads/redexgen/X/HR;->A04:I

    .line 38175
    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/46;->A01(III)Ljava/lang/String;

    move-result-object p0

    .line 38176
    .end local v3    # "width":I
    .end local v4    # "height":I
    .end local v5    # "pixelWidthHeightRatio":F
    .end local v6    # "codecs":Ljava/lang/String;
    .local p2, "width":I
    .local p3, "height":I
    .local p4, "pixelWidthHeightRatio":F
    .local p5, "codecs":Ljava/lang/String;
    :cond_2
    new-instance v4, Lcom/facebook/ads/redexgen/X/Gv;

    invoke-direct/range {v4 .. v10}, Lcom/facebook/ads/redexgen/X/Gv;-><init>(Ljava/util/List;IIIFLjava/lang/String;)V

    return-object v4
    :try_end_1
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_1 .. :try_end_1} :catch_0

    .line 38177
    :cond_3
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    .line 38178
    .end local v2    # "initializationData":Ljava/util/List;, "Ljava/util/List<[B>;"
    .end local p0    # "numSequenceParameterSets":I
    .end local p1
    .end local p2
    .end local p3
    .end local p4
    .end local p5
    :cond_4
    :try_start_2
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    .end local p7
    throw v0
    :try_end_2
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_2 .. :try_end_2} :catch_0

    .line 38179
    .end local v0    # "nalUnitLengthFieldLength":I
    .restart local p7
    :catch_0
    move-exception v3

    .line 38180
    .local v0, "e":Ljava/lang/ArrayIndexOutOfBoundsException;
    const/4 v2, 0x0

    const/16 v1, 0x18

    const/16 v0, 0x33

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Gv;->A01(III)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v3}, Lcom/facebook/ads/redexgen/X/3K;->A01(Ljava/lang/String;Ljava/lang/Throwable;)Lcom/facebook/ads/redexgen/X/3K;

    move-result-object v0

    throw v0
.end method

.method public static A01(III)Ljava/lang/String;
    .locals 2

    sget-object v1, Lcom/facebook/ads/redexgen/X/Gv;->A06:[B

    add-int v0, p0, p1

    invoke-static {v1, p0, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p0

    const/4 v1, 0x0

    :goto_0
    array-length v0, p0

    if-ge v1, v0, :cond_0

    aget-byte v0, p0, v1

    sub-int/2addr v0, p2

    add-int/lit8 v0, v0, -0x1e

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

    const/16 v0, 0x18

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/facebook/ads/redexgen/X/Gv;->A06:[B

    return-void

    :array_0
    .array-data 1
        -0x6at
        -0x3dt
        -0x3dt
        -0x40t
        -0x3dt
        0x71t
        -0x3ft
        -0x4et
        -0x3dt
        -0x3ct
        -0x46t
        -0x41t
        -0x48t
        0x71t
        -0x6et
        -0x59t
        -0x6ct
        0x71t
        -0x4ct
        -0x40t
        -0x41t
        -0x49t
        -0x46t
        -0x48t
    .end array-data
.end method

.method public static A03(Lcom/facebook/ads/redexgen/X/4v;)[B
    .locals 3

    .line 38181
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/4v;->A0M()I

    move-result v2

    .line 38182
    .local v0, "length":I
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/4v;->A09()I

    move-result v1

    .line 38183
    .local v1, "offset":I
    invoke-virtual {p0, v2}, Lcom/facebook/ads/redexgen/X/4v;->A0g(I)V

    .line 38184
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/4v;->A0l()[B

    move-result-object v0

    invoke-static {v0, v1, v2}, Lcom/facebook/ads/redexgen/X/46;->A07([BII)[B

    move-result-object v0

    return-object v0
.end method
