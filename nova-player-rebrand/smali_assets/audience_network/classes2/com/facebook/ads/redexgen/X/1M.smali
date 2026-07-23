.class public final Lcom/facebook/ads/redexgen/X/1M;
.super Lcom/facebook/ads/redexgen/X/8T;
.source ""


# static fields
.field public static A02:[B

.field public static A03:[Ljava/lang/String;


# instance fields
.field public final A00:Lcom/facebook/ads/redexgen/X/4v;

.field public final A01:Lcom/facebook/ads/redexgen/X/KX;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    .line 82
    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "epLQ4LbruRQu4TauEDrO5bv5Gt"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "lRHUrkH9gFGX2N51jXHSI4WiLesC2sz"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "FQaGWX09aBSonO1KXWblQ89ZNSDo33Hs"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "Tkmuz5Wj47OzYTdqGDI6w0S24YPshGEJ"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "sgOZPElMCLLZtQnBcWUjhEzDIZNKx3Aa"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "fl5M4MkFrWZTay9Eb0GxyqH"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "d522uHqhkgB6wqoRNygeE3zqn3vb1GZ9"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "ktGThckFXvstcJxcyByVYeW6HtIWaGJ1"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/1M;->A03:[Ljava/lang/String;

    invoke-static {}, Lcom/facebook/ads/redexgen/X/1M;->A02()V

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .line 5202
    const/16 v2, 0x35

    const/16 v1, 0xd

    const/16 v0, 0x3a

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/1M;->A01(III)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/8T;-><init>(Ljava/lang/String;)V

    .line 5203
    new-instance v0, Lcom/facebook/ads/redexgen/X/4v;

    invoke-direct {v0}, Lcom/facebook/ads/redexgen/X/4v;-><init>()V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/1M;->A00:Lcom/facebook/ads/redexgen/X/4v;

    .line 5204
    new-instance v0, Lcom/facebook/ads/redexgen/X/KX;

    invoke-direct {v0}, Lcom/facebook/ads/redexgen/X/KX;-><init>()V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/1M;->A01:Lcom/facebook/ads/redexgen/X/KX;

    .line 5205
    return-void
.end method

.method public static A00(Lcom/facebook/ads/redexgen/X/4v;)I
    .locals 5

    .line 5206
    const/4 v1, -0x1

    .line 5207
    .local v0, "foundEvent":I
    const/4 v4, 0x0

    .line 5208
    .local v1, "currentInputPosition":I
    :goto_0
    const/4 v0, -0x1

    if-ne v1, v0, :cond_3

    .line 5209
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/4v;->A09()I

    move-result v4

    .line 5210
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/4v;->A0T()Ljava/lang/String;

    move-result-object v3

    .line 5211
    .local v2, "line":Ljava/lang/String;
    if-nez v3, :cond_0

    .line 5212
    const/4 v1, 0x0

    goto :goto_0

    .line 5213
    :cond_0
    const/16 v2, 0x30

    const/4 v1, 0x5

    const/16 v0, 0x53

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/1M;->A01(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 5214
    const/4 v1, 0x2

    goto :goto_0

    .line 5215
    :cond_1
    const/16 v2, 0x2c

    const/4 v1, 0x4

    const/16 v0, 0x7a

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/1M;->A01(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 5216
    const/4 v1, 0x1

    goto :goto_0

    .line 5217
    :cond_2
    const/4 v1, 0x3

    goto :goto_0

    .line 5218
    :cond_3
    invoke-virtual {p0, v4}, Lcom/facebook/ads/redexgen/X/4v;->A0f(I)V

    .line 5219
    return v1
.end method

.method public static A01(III)Ljava/lang/String;
    .locals 2

    sget-object v1, Lcom/facebook/ads/redexgen/X/1M;->A02:[B

    add-int v0, p0, p1

    invoke-static {v1, p0, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p0

    const/4 v1, 0x0

    :goto_0
    array-length v0, p0

    if-ge v1, v0, :cond_0

    aget-byte v0, p0, v1

    xor-int/2addr v0, p2

    xor-int/lit8 v0, v0, 0x58

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

    const/16 v0, 0x42

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/facebook/ads/redexgen/X/1M;->A02:[B

    return-void

    :array_0
    .array-data 1
        0x7bt
        0x1at
        0x49t
        0x4et
        0x43t
        0x56t
        0x5ft
        0x1at
        0x58t
        0x56t
        0x55t
        0x59t
        0x51t
        0x1at
        0x4dt
        0x5bt
        0x49t
        0x1at
        0x5ct
        0x55t
        0x4ft
        0x54t
        0x5et
        0x1at
        0x5bt
        0x5ct
        0x4et
        0x5ft
        0x48t
        0x1at
        0x4et
        0x52t
        0x5ft
        0x1at
        0x5ct
        0x53t
        0x48t
        0x49t
        0x4et
        0x1at
        0x59t
        0x4ft
        0x5ft
        0x14t
        0x6ct
        0x6dt
        0x76t
        0x67t
        0x58t
        0x5ft
        0x52t
        0x47t
        0x4et
        0x35t
        0x7t
        0x0t
        0x14t
        0x16t
        0x16t
        0x26t
        0x7t
        0x1t
        0xdt
        0x6t
        0x7t
        0x10t
    .end array-data
.end method

.method public static A03(Lcom/facebook/ads/redexgen/X/4v;)V
    .locals 1

    .line 5220
    :goto_0
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/4v;->A0T()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 5221
    :cond_0
    return-void
.end method


# virtual methods
.method public final A0g([BIZ)Lcom/facebook/ads/redexgen/X/Jj;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/facebook/ads/redexgen/X/lj;
        }
    .end annotation

    .line 5222
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/1M;->A00:Lcom/facebook/ads/redexgen/X/4v;

    invoke-virtual {v0, p1, p2}, Lcom/facebook/ads/redexgen/X/4v;->A0j([BI)V

    .line 5223
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 5224
    .local v0, "definedStyles":Ljava/util/List;, "Ljava/util/List<Lcom/facebook/ads/androidx/media3/extractor/text/webvtt/WebvttCssStyle;>;"
    :try_start_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/1M;->A00:Lcom/facebook/ads/redexgen/X/4v;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Ko;->A04(Lcom/facebook/ads/redexgen/X/4v;)V
    :try_end_0
    .catch Lcom/facebook/ads/redexgen/X/3K; {:try_start_0 .. :try_end_0} :catch_0

    .line 5225
    :goto_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/1M;->A00:Lcom/facebook/ads/redexgen/X/4v;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/4v;->A0T()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 5226
    :cond_0
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 5227
    .local v1, "cueInfos":Ljava/util/List;, "Ljava/util/List<Lcom/facebook/ads/androidx/media3/extractor/text/webvtt/WebvttCueInfo;>;"
    :cond_1
    :goto_1
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/1M;->A00:Lcom/facebook/ads/redexgen/X/4v;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/1M;->A00(Lcom/facebook/ads/redexgen/X/4v;)I

    move-result v5

    .local v3, "event":I
    if-eqz v5, :cond_6

    .line 5228
    const/4 v6, 0x1

    sget-object v2, Lcom/facebook/ads/redexgen/X/1M;->A03:[Ljava/lang/String;

    const/4 v0, 0x3

    aget-object v1, v2, v0

    const/4 v0, 0x7

    aget-object v2, v2, v0

    const/16 v0, 0x1d

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v1, v0, :cond_2

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_2
    sget-object v2, Lcom/facebook/ads/redexgen/X/1M;->A03:[Ljava/lang/String;

    const-string v1, "xiLYwX29jkzhCedrUoNIffc"

    const/4 v0, 0x5

    aput-object v1, v2, v0

    const-string v1, "YvTJvYd1hKFZiQGGAeLzXV3lAN"

    const/4 v0, 0x0

    aput-object v1, v2, v0

    if-ne v5, v6, :cond_3

    .line 5229
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/1M;->A00:Lcom/facebook/ads/redexgen/X/4v;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/1M;->A03(Lcom/facebook/ads/redexgen/X/4v;)V

    goto :goto_1

    .line 5230
    :cond_3
    const/4 v0, 0x2

    if-ne v5, v0, :cond_4

    .line 5231
    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 5232
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/1M;->A00:Lcom/facebook/ads/redexgen/X/4v;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/4v;->A0T()Ljava/lang/String;

    .line 5233
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/1M;->A01:Lcom/facebook/ads/redexgen/X/KX;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/1M;->A00:Lcom/facebook/ads/redexgen/X/4v;

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/KX;->A0F(Lcom/facebook/ads/redexgen/X/4v;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v4, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_1

    .line 5234
    :cond_4
    const/4 v0, 0x3

    if-ne v5, v0, :cond_1

    .line 5235
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/1M;->A00:Lcom/facebook/ads/redexgen/X/4v;

    invoke-static {v0, v4}, Lcom/facebook/ads/redexgen/X/Kn;->A0A(Lcom/facebook/ads/redexgen/X/4v;Ljava/util/List;)Lcom/facebook/ads/redexgen/X/Kf;

    move-result-object v0

    .line 5236
    .local v2, "cueInfo":Lcom/facebook/ads/redexgen/X/Kf;
    if-eqz v0, :cond_1

    .line 5237
    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 5238
    :cond_5
    const/4 v2, 0x0

    const/16 v1, 0x2c

    const/16 v0, 0x62

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/1M;->A01(III)Ljava/lang/String;

    move-result-object v1

    new-instance v0, Lcom/facebook/ads/redexgen/X/lj;

    invoke-direct {v0, v1}, Lcom/facebook/ads/redexgen/X/lj;-><init>(Ljava/lang/String;)V

    throw v0

    .line 5239
    :cond_6
    new-instance v0, Lcom/facebook/ads/redexgen/X/lZ;

    invoke-direct {v0, v3}, Lcom/facebook/ads/redexgen/X/lZ;-><init>(Ljava/util/List;)V

    return-object v0

    .line 5240
    .end local v1    # "cueInfos":Ljava/util/List;, "Ljava/util/List<Lcom/facebook/ads/androidx/media3/extractor/text/webvtt/WebvttCueInfo;>;"
    .end local v3    # "event":I
    :catch_0
    move-exception v1

    .line 5241
    .local v1, "e":Lcom/facebook/ads/redexgen/X/3K;
    new-instance v0, Lcom/facebook/ads/redexgen/X/lj;

    invoke-direct {v0, v1}, Lcom/facebook/ads/redexgen/X/lj;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method
