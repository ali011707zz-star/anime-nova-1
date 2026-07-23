.class public abstract Lcom/facebook/ads/redexgen/X/Et;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/ads/androidx/media3/exoplayer/trackselection/TrackSelectionUtil$AdaptiveTrackSelectionFactory;
    }
.end annotation


# static fields
.field public static A00:[Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    .line 719
    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "94gd2lHaz6driogpt3Nl1tWsjXgriMxS"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "VA5F17cuoV6wg6So0a0DluDefxsQAbFW"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "BZfou2TK48MMfd1yJcRZTZ4JcnnWlmHT"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "ilV1kn3efEuJyycOIV0UyN70TAMLymqY"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "v19hT7CAJaCb1rntEZC2LQpyBVrX3IkZ"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "rkpPVUKbY"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "FKwb9S"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "XsKsPoEAnPyrLBiotdeURrQ5Q46xoiIz"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/Et;->A00:[Ljava/lang/String;

    return-void
.end method

.method public static A00(Lcom/facebook/ads/redexgen/X/Eo;[Lcom/facebook/ads/redexgen/X/Eq;)Lcom/facebook/ads/redexgen/X/pY;
    .locals 3

    .line 35225
    array-length v0, p1

    new-array v2, v0, [Ljava/util/List;

    .line 35226
    .local v0, "listSelections":[Ljava/util/List;, "[Ljava/util/List<+Lcom/facebook/ads/androidx/media3/exoplayer/trackselection/TrackSelection;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v0, p1

    if-ge v1, v0, :cond_1

    .line 35227
    aget-object v0, p1, v1

    .line 35228
    .local v2, "selection":Lcom/facebook/ads/redexgen/X/Eq;
    if-eqz v0, :cond_0

    .line 35229
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/BP;->A04(Ljava/lang/Object;)Lcom/facebook/ads/redexgen/X/BP;

    move-result-object v0

    .line 35230
    :goto_1
    aput-object v0, v2, v1

    .line 35231
    .end local v2    # "selection":Lcom/facebook/ads/redexgen/X/Eq;
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 35232
    :cond_0
    invoke-static {}, Lcom/facebook/ads/redexgen/X/jW;->A01()Ljava/util/List;

    move-result-object v0

    goto :goto_1

    .line 35233
    .end local v1    # "i":I
    :cond_1
    invoke-static {p0, v2}, Lcom/facebook/ads/redexgen/X/Et;->A01(Lcom/facebook/ads/redexgen/X/Eo;[Ljava/util/List;)Lcom/facebook/ads/redexgen/X/pY;

    move-result-object v0

    return-object v0
.end method

.method public static A01(Lcom/facebook/ads/redexgen/X/Eo;[Ljava/util/List;)Lcom/facebook/ads/redexgen/X/pY;
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/ads/redexgen/X/Eo;",
            "[",
            "Ljava/util/List<",
            "+",
            "Lcom/facebook/ads/redexgen/X/Eq;",
            ">;)",
            "Lcom/facebook/ads/redexgen/X/pY;"
        }
    .end annotation

    .line 35234
    .local p3, "selections":[Ljava/util/List;, "[Ljava/util/List<+Lcom/facebook/ads/androidx/media3/exoplayer/trackselection/TrackSelection;>;"
    new-instance v8, Lcom/facebook/ads/redexgen/X/2K;

    invoke-direct {v8}, Lcom/facebook/ads/redexgen/X/2K;-><init>()V

    .line 35235
    .local v1, "trackGroups":Lcom/facebook/ads/redexgen/X/2K;, "Lcom/google/common/collect/ImmutableList$Builder<Lcom/facebook/ads/androidx/media3/common/Tracks$Group;>;"
    const/4 v7, 0x0

    .line 35236
    .local v2, "rendererIndex":I
    :goto_0
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/Eo;->A02()I

    move-result v0

    const/4 v1, 0x0

    if-ge v7, v0, :cond_7

    .line 35237
    invoke-virtual {p0, v7}, Lcom/facebook/ads/redexgen/X/Eo;->A07(I)Lcom/facebook/ads/redexgen/X/nW;

    move-result-object v6

    .line 35238
    .local v3, "trackGroupArray":Lcom/facebook/ads/redexgen/X/nW;
    aget-object v5, p1, v7

    .line 35239
    .local v5, "rendererTrackSelections":Ljava/util/List;, "Ljava/util/List<+Lcom/facebook/ads/androidx/media3/exoplayer/trackselection/TrackSelection;>;"
    const/4 v4, 0x0

    .local v6, "groupIndex":I
    :goto_1
    iget v0, v6, Lcom/facebook/ads/redexgen/X/nW;->A01:I

    if-ge v4, v0, :cond_6

    .line 35240
    invoke-virtual {v6, v4}, Lcom/facebook/ads/redexgen/X/nW;->A05(I)Lcom/facebook/ads/redexgen/X/pg;

    move-result-object v3

    .line 35241
    .local v7, "trackGroup":Lcom/facebook/ads/redexgen/X/pg;
    invoke-virtual {p0, v7, v4, v1}, Lcom/facebook/ads/redexgen/X/Eo;->A05(IIZ)I

    move-result v9

    sget-object v2, Lcom/facebook/ads/redexgen/X/Et;->A00:[Ljava/lang/String;

    const/4 v0, 0x7

    aget-object v1, v2, v0

    const/4 v0, 0x0

    aget-object v2, v2, v0

    const/16 v0, 0xb

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v1, v0, :cond_0

    :goto_2
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_0
    sget-object v2, Lcom/facebook/ads/redexgen/X/Et;->A00:[Ljava/lang/String;

    const-string v1, "wVGS7RX5kLdrLFKtRIe7uQsNtd1z6IxW"

    const/4 v0, 0x7

    aput-object v1, v2, v0

    const-string v1, "7aERijPLyLRrdgSw5lQfoyda5cW2h3c0"

    const/4 v0, 0x0

    aput-object v1, v2, v0

    if-eqz v9, :cond_4

    const/4 v11, 0x1

    .line 35242
    .local v8, "adaptiveSupported":Z
    :goto_3
    iget v0, v3, Lcom/facebook/ads/redexgen/X/pg;->A01:I

    new-array v10, v0, [I

    .line 35243
    .local v9, "trackSupport":[I
    iget v0, v3, Lcom/facebook/ads/redexgen/X/pg;->A01:I

    new-array v9, v0, [Z

    .line 35244
    .local v10, "selected":[Z
    const/4 v12, 0x0

    .local v11, "trackIndex":I
    :goto_4
    iget v0, v3, Lcom/facebook/ads/redexgen/X/pg;->A01:I

    if-ge v12, v0, :cond_5

    .line 35245
    invoke-virtual {p0, v7, v4, v12}, Lcom/facebook/ads/redexgen/X/Eo;->A04(III)I

    move-result v0

    aput v0, v10, v12

    .line 35246
    const/4 v13, 0x0

    sget-object v1, Lcom/facebook/ads/redexgen/X/Et;->A00:[Ljava/lang/String;

    const/4 v0, 0x5

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v0, 0x9

    if-eq v1, v0, :cond_1

    goto :goto_2

    .line 35247
    .local v12, "isTrackSelected":Z
    :cond_1
    sget-object v2, Lcom/facebook/ads/redexgen/X/Et;->A00:[Ljava/lang/String;

    const-string v1, "3DHxmUKuGZITV4091m9MLUNqu1ZkNm0q"

    const/4 v0, 0x2

    aput-object v1, v2, v0

    const-string v1, "2BQZhu0LL1SbQMNt9wHOkoks63NLimX3"

    const/4 v0, 0x3

    aput-object v1, v2, v0

    const/4 v0, 0x0

    .local v13, "i":I
    :goto_5
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_2

    .line 35248
    invoke-interface {v5, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/facebook/ads/redexgen/X/Eq;

    .line 35249
    .local p0, "trackSelection":Lcom/facebook/ads/redexgen/X/Eq;
    invoke-interface {v2}, Lcom/facebook/ads/redexgen/X/Eq;->A9L()Lcom/facebook/ads/redexgen/X/pg;

    move-result-object v1

    invoke-virtual {v1, v3}, Lcom/facebook/ads/redexgen/X/pg;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 35250
    invoke-interface {v2, v12}, Lcom/facebook/ads/redexgen/X/Eq;->AA6(I)I

    move-result v2

    const/4 v1, -0x1

    if-eq v2, v1, :cond_3

    .line 35251
    const/4 v13, 0x1

    .line 35252
    .end local v13    # "i":I
    :cond_2
    aput-boolean v13, v9, v12

    .line 35253
    .end local v12    # "isTrackSelected":Z
    add-int/lit8 v12, v12, 0x1

    goto :goto_4

    .line 35254
    .end local p0    # "trackSelection":Lcom/facebook/ads/redexgen/X/Eq;
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    .line 35255
    :cond_4
    const/4 v11, 0x0

    goto :goto_3

    .line 35256
    .end local v11    # "trackIndex":I
    :cond_5
    new-instance v0, Lcom/facebook/ads/redexgen/X/pZ;

    invoke-direct {v0, v3, v11, v10, v9}, Lcom/facebook/ads/redexgen/X/pZ;-><init>(Lcom/facebook/ads/redexgen/X/pg;Z[I[Z)V

    invoke-virtual {v8, v0}, Lcom/facebook/ads/redexgen/X/2K;->A04(Ljava/lang/Object;)Lcom/facebook/ads/redexgen/X/2K;

    .line 35257
    .end local v7    # "trackGroup":Lcom/facebook/ads/redexgen/X/pg;
    .end local v8    # "adaptiveSupported":Z
    .end local v9    # "trackSupport":[I
    .end local v10    # "selected":[Z
    add-int/lit8 v4, v4, 0x1

    const/4 v1, 0x0

    goto/16 :goto_1

    .line 35258
    .end local v3    # "trackGroupArray":Lcom/facebook/ads/redexgen/X/nW;
    .end local v5    # "rendererTrackSelections":Ljava/util/List;, "Ljava/util/List<+Lcom/facebook/ads/androidx/media3/exoplayer/trackselection/TrackSelection;>;"
    .end local v6    # "groupIndex":I
    :cond_6
    add-int/lit8 v7, v7, 0x1

    goto/16 :goto_0

    .line 35259
    .end local v2    # "rendererIndex":I
    :cond_7
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/Eo;->A06()Lcom/facebook/ads/redexgen/X/nW;

    move-result-object v6

    .line 35260
    .local v2, "unmappedTrackGroups":Lcom/facebook/ads/redexgen/X/nW;
    const/4 v5, 0x0

    .local v3, "groupIndex":I
    :goto_6
    iget v0, v6, Lcom/facebook/ads/redexgen/X/nW;->A01:I

    if-ge v5, v0, :cond_8

    .line 35261
    invoke-virtual {v6, v5}, Lcom/facebook/ads/redexgen/X/nW;->A05(I)Lcom/facebook/ads/redexgen/X/pg;

    move-result-object v4

    .line 35262
    .local v4, "trackGroup":Lcom/facebook/ads/redexgen/X/pg;
    iget v0, v4, Lcom/facebook/ads/redexgen/X/pg;->A01:I

    new-array v3, v0, [I

    .line 35263
    .local v5, "trackSupport":[I
    const/4 v2, 0x0

    invoke-static {v3, v2}, Ljava/util/Arrays;->fill([II)V

    .line 35264
    iget v0, v4, Lcom/facebook/ads/redexgen/X/pg;->A01:I

    new-array v1, v0, [Z

    .line 35265
    .local v7, "selected":[Z
    new-instance v0, Lcom/facebook/ads/redexgen/X/pZ;

    invoke-direct {v0, v4, v2, v3, v1}, Lcom/facebook/ads/redexgen/X/pZ;-><init>(Lcom/facebook/ads/redexgen/X/pg;Z[I[Z)V

    invoke-virtual {v8, v0}, Lcom/facebook/ads/redexgen/X/2K;->A04(Ljava/lang/Object;)Lcom/facebook/ads/redexgen/X/2K;

    .line 35266
    .end local v4    # "trackGroup":Lcom/facebook/ads/redexgen/X/pg;
    .end local v5    # "trackSupport":[I
    .end local v7    # "selected":[Z
    add-int/lit8 v5, v5, 0x1

    goto :goto_6

    .line 35267
    .end local v3    # "groupIndex":I
    :cond_8
    nop

    invoke-virtual {v8}, Lcom/facebook/ads/redexgen/X/2K;->A05()Lcom/facebook/ads/redexgen/X/BP;

    move-result-object v1

    new-instance v0, Lcom/facebook/ads/redexgen/X/pY;

    invoke-direct {v0, v1}, Lcom/facebook/ads/redexgen/X/pY;-><init>(Ljava/util/List;)V

    return-object v0
.end method
