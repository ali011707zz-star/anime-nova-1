.class public final Lcom/facebook/ads/redexgen/X/1N;
.super Lcom/facebook/ads/redexgen/X/8T;
.source ""


# static fields
.field public static A01:[B


# instance fields
.field public final A00:Lcom/facebook/ads/redexgen/X/4v;


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    invoke-static {}, Lcom/facebook/ads/redexgen/X/1N;->A02()V

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .line 5242
    const/16 v2, 0x54

    const/16 v1, 0x10

    const/16 v0, 0x74

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/1N;->A01(III)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/8T;-><init>(Ljava/lang/String;)V

    .line 5243
    new-instance v0, Lcom/facebook/ads/redexgen/X/4v;

    invoke-direct {v0}, Lcom/facebook/ads/redexgen/X/4v;-><init>()V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/1N;->A00:Lcom/facebook/ads/redexgen/X/4v;

    .line 5244
    return-void
.end method

.method public static A00(Lcom/facebook/ads/redexgen/X/4v;I)Lcom/facebook/ads/redexgen/X/pT;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/facebook/ads/redexgen/X/lj;
        }
    .end annotation

    .line 5245
    const/4 v4, 0x0

    .line 5246
    .local v0, "cueBuilder":Lcom/facebook/ads/redexgen/X/3o;
    const/4 v5, 0x0

    .line 5247
    .local v1, "cueText":Ljava/lang/CharSequence;
    :cond_0
    :goto_0
    if-lez p1, :cond_3

    .line 5248
    const/16 v0, 0x8

    if-lt p1, v0, :cond_2

    .line 5249
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/4v;->A0C()I

    move-result v0

    .line 5250
    .local v2, "boxSize":I
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/4v;->A0C()I

    move-result v3

    .line 5251
    .local v3, "boxType":I
    add-int/lit8 p1, p1, -0x8

    .line 5252
    add-int/lit8 v2, v0, -0x8

    .line 5253
    .local v4, "payloadLength":I
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/4v;->A0l()[B

    move-result-object v1

    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/4v;->A09()I

    move-result v0

    invoke-static {v1, v0, v2}, Lcom/facebook/ads/redexgen/X/5C;->A0r([BII)Ljava/lang/String;

    move-result-object v1

    .line 5254
    .local v5, "boxPayload":Ljava/lang/String;
    invoke-virtual {p0, v2}, Lcom/facebook/ads/redexgen/X/4v;->A0g(I)V

    .line 5255
    sub-int/2addr p1, v2

    .line 5256
    const v0, 0x73747467

    if-ne v3, v0, :cond_1

    .line 5257
    invoke-static {v1}, Lcom/facebook/ads/redexgen/X/Kn;->A08(Ljava/lang/String;)Lcom/facebook/ads/redexgen/X/3o;

    move-result-object v4

    goto :goto_0

    .line 5258
    :cond_1
    const v0, 0x7061796c

    if-ne v3, v0, :cond_0

    .line 5259
    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    .line 5260
    const/4 v0, 0x0

    invoke-static {v0, v2, v1}, Lcom/facebook/ads/redexgen/X/Kn;->A07(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)Landroid/text/SpannedString;

    move-result-object v5

    goto :goto_0

    .line 5261
    :cond_2
    const/16 v2, 0x30

    const/16 v1, 0x24

    const/16 v0, 0x69

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/1N;->A01(III)Ljava/lang/String;

    move-result-object v1

    new-instance v0, Lcom/facebook/ads/redexgen/X/lj;

    invoke-direct {v0, v1}, Lcom/facebook/ads/redexgen/X/lj;-><init>(Ljava/lang/String;)V

    throw v0

    .line 5262
    :cond_3
    if-nez v5, :cond_4

    .line 5263
    const/4 v2, 0x0

    const/4 v1, 0x0

    const/16 v0, 0x46

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/1N;->A01(III)Ljava/lang/String;

    move-result-object v5

    .line 5264
    :cond_4
    if-eqz v4, :cond_5

    .line 5265
    invoke-virtual {v4, v5}, Lcom/facebook/ads/redexgen/X/3o;->A0G(Ljava/lang/CharSequence;)Lcom/facebook/ads/redexgen/X/3o;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/3o;->A0H()Lcom/facebook/ads/redexgen/X/pT;

    move-result-object v0

    .line 5266
    :goto_1
    return-object v0

    .line 5267
    :cond_5
    invoke-static {v5}, Lcom/facebook/ads/redexgen/X/Kn;->A09(Ljava/lang/CharSequence;)Lcom/facebook/ads/redexgen/X/pT;

    move-result-object v0

    goto :goto_1
.end method

.method public static A01(III)Ljava/lang/String;
    .locals 2

    sget-object v1, Lcom/facebook/ads/redexgen/X/1N;->A01:[B

    add-int v0, p0, p1

    invoke-static {v1, p0, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p0

    const/4 v1, 0x0

    :goto_0
    array-length v0, p0

    if-ge v1, v0, :cond_0

    aget-byte v0, p0, v1

    sub-int/2addr v0, p2

    add-int/lit8 v0, v0, -0x7d

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

    const/16 v0, 0x64

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/facebook/ads/redexgen/X/1N;->A01:[B

    return-void

    :array_0
    .array-data 1
        0x16t
        0x3bt
        0x30t
        0x3ct
        0x3at
        0x3dt
        0x39t
        0x32t
        0x41t
        0x32t
        -0x13t
        0x1at
        0x3dt
        0x1t
        0x24t
        0x32t
        0x2ft
        0x43t
        0x41t
        0x41t
        -0x13t
        0x21t
        0x3ct
        0x3dt
        -0x13t
        0x19t
        0x32t
        0x43t
        0x32t
        0x39t
        -0x13t
        0x2ft
        0x3ct
        0x45t
        -0x13t
        0x35t
        0x32t
        0x2et
        0x31t
        0x32t
        0x3ft
        -0x13t
        0x33t
        0x3ct
        0x42t
        0x3bt
        0x31t
        -0x5t
        0x2ft
        0x54t
        0x49t
        0x55t
        0x53t
        0x56t
        0x52t
        0x4bt
        0x5at
        0x4bt
        0x6t
        0x5ct
        0x5at
        0x5at
        0x6t
        0x49t
        0x5bt
        0x4bt
        0x6t
        0x48t
        0x55t
        0x5et
        0x6t
        0x4et
        0x4bt
        0x47t
        0x4at
        0x4bt
        0x58t
        0x6t
        0x4ct
        0x55t
        0x5bt
        0x54t
        0x4at
        0x14t
        0x3et
        0x61t
        0x25t
        0x48t
        0x56t
        0x53t
        0x67t
        0x65t
        0x65t
        0x35t
        0x56t
        0x54t
        0x60t
        0x55t
        0x56t
        0x63t
    .end array-data
.end method


# virtual methods
.method public final A0g([BIZ)Lcom/facebook/ads/redexgen/X/Jj;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/facebook/ads/redexgen/X/lj;
        }
    .end annotation

    .line 5268
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/1N;->A00:Lcom/facebook/ads/redexgen/X/4v;

    invoke-virtual {v0, p1, p2}, Lcom/facebook/ads/redexgen/X/4v;->A0j([BI)V

    .line 5269
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 5270
    .local v0, "resultingCueList":Ljava/util/List;, "Ljava/util/List<Lcom/facebook/ads/androidx/media3/common/text/Cue;>;"
    :goto_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/1N;->A00:Lcom/facebook/ads/redexgen/X/4v;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/4v;->A07()I

    move-result v0

    if-lez v0, :cond_2

    .line 5271
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/1N;->A00:Lcom/facebook/ads/redexgen/X/4v;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/4v;->A07()I

    move-result v1

    const/16 v0, 0x8

    if-lt v1, v0, :cond_1

    .line 5272
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/1N;->A00:Lcom/facebook/ads/redexgen/X/4v;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/4v;->A0C()I

    move-result v2

    .line 5273
    .local v1, "boxSize":I
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/1N;->A00:Lcom/facebook/ads/redexgen/X/4v;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/4v;->A0C()I

    move-result v1

    .line 5274
    .local v2, "boxType":I
    const v0, 0x76747463

    if-ne v1, v0, :cond_0

    .line 5275
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/1N;->A00:Lcom/facebook/ads/redexgen/X/4v;

    add-int/lit8 v0, v2, -0x8

    invoke-static {v1, v0}, Lcom/facebook/ads/redexgen/X/1N;->A00(Lcom/facebook/ads/redexgen/X/4v;I)Lcom/facebook/ads/redexgen/X/pT;

    move-result-object v0

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 5276
    :cond_0
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/1N;->A00:Lcom/facebook/ads/redexgen/X/4v;

    add-int/lit8 v0, v2, -0x8

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/4v;->A0g(I)V

    goto :goto_0

    .line 5277
    :cond_1
    const/4 v2, 0x0

    const/16 v1, 0x30

    const/16 v0, 0x50

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/1N;->A01(III)Ljava/lang/String;

    move-result-object v1

    new-instance v0, Lcom/facebook/ads/redexgen/X/lj;

    invoke-direct {v0, v1}, Lcom/facebook/ads/redexgen/X/lj;-><init>(Ljava/lang/String;)V

    throw v0

    .line 5278
    :cond_2
    new-instance v0, Lcom/facebook/ads/redexgen/X/la;

    invoke-direct {v0, v3}, Lcom/facebook/ads/redexgen/X/la;-><init>(Ljava/util/List;)V

    return-object v0
.end method
