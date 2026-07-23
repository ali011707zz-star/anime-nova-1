.class public final Lcom/facebook/ads/redexgen/X/nG;
.super Lcom/facebook/ads/redexgen/X/Eh;
.source ""

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/ads/redexgen/X/9h;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "TextTrackInfo"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/facebook/ads/redexgen/X/Eh<",
        "Lcom/facebook/ads/redexgen/X/nG;",
        ">;",
        "Ljava/lang/Comparable<",
        "Lcom/facebook/ads/redexgen/X/nG;",
        ">;"
    }
.end annotation


# instance fields
.field public final A00:I

.field public final A01:I

.field public final A02:I

.field public final A03:I

.field public final A04:I

.field public final A05:Z

.field public final A06:Z

.field public final A07:Z

.field public final A08:Z


# direct methods
.method public constructor <init>(ILcom/facebook/ads/redexgen/X/pg;ILcom/facebook/ads/redexgen/X/9i;ILjava/lang/String;)V
    .locals 9

    .line 100224
    move-object v2, p0

    invoke-direct {p0, p1, p2, p3}, Lcom/facebook/ads/redexgen/X/Eh;-><init>(ILcom/facebook/ads/redexgen/X/pg;I)V

    .line 100225
    const/4 v3, 0x0

    invoke-static {p5, v3}, Lcom/facebook/ads/redexgen/X/9h;->A0S(IZ)Z

    move-result v0

    iput-boolean v0, v2, Lcom/facebook/ads/redexgen/X/nG;->A08:Z

    .line 100226
    iget-object v0, v2, Lcom/facebook/ads/redexgen/X/Eh;->A02:Lcom/facebook/ads/redexgen/X/qI;

    iget v1, v0, Lcom/facebook/ads/redexgen/X/qI;->A0H:I

    iget v0, p4, Lcom/facebook/ads/redexgen/X/pc;->A00:I

    not-int v0, v0

    and-int/2addr v1, v0

    .line 100227
    .local v4, "maskedSelectionFlags":I
    and-int/lit8 v0, v1, 0x1

    if-eqz v0, :cond_a

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, v2, Lcom/facebook/ads/redexgen/X/nG;->A06:Z

    .line 100228
    and-int/lit8 v0, v1, 0x2

    if-eqz v0, :cond_9

    const/4 v0, 0x1

    :goto_1
    iput-boolean v0, v2, Lcom/facebook/ads/redexgen/X/nG;->A07:Z

    .line 100229
    const v8, 0x7fffffff

    .line 100230
    .local v5, "bestLanguageIndex":I
    const/4 v7, 0x0

    .line 100231
    .local v7, "bestLanguageScore":I
    iget-object v0, p4, Lcom/facebook/ads/redexgen/X/pc;->A0K:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 100232
    const-string v0, ""

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/jW;->A03([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v6

    .line 100233
    .local v8, "preferredLanguages":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :goto_2
    const/4 v5, 0x0

    .local p0, "i":I
    :goto_3
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v0

    if-ge v5, v0, :cond_0

    .line 100234
    iget-object v4, v2, Lcom/facebook/ads/redexgen/X/Eh;->A02:Lcom/facebook/ads/redexgen/X/qI;

    .line 100235
    invoke-interface {v6, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iget-boolean v0, p4, Lcom/facebook/ads/redexgen/X/pc;->A0P:Z

    .line 100236
    invoke-static {v4, v1, v0}, Lcom/facebook/ads/redexgen/X/9h;->A02(Lcom/facebook/ads/redexgen/X/qI;Ljava/lang/String;Z)I

    move-result v0

    .line 100237
    .local p1, "score":I
    if-lez v0, :cond_7

    .line 100238
    move v8, v5

    .line 100239
    move v7, v0

    .line 100240
    .end local p0    # "i":I
    :cond_0
    iput v8, v2, Lcom/facebook/ads/redexgen/X/nG;->A00:I

    .line 100241
    iput v7, v2, Lcom/facebook/ads/redexgen/X/nG;->A01:I

    .line 100242
    iget-object v0, v2, Lcom/facebook/ads/redexgen/X/Eh;->A02:Lcom/facebook/ads/redexgen/X/qI;

    iget v1, v0, Lcom/facebook/ads/redexgen/X/qI;->A0E:I

    iget v0, p4, Lcom/facebook/ads/redexgen/X/pc;->A0C:I

    .line 100243
    invoke-static {v1, v0}, Lcom/facebook/ads/redexgen/X/9h;->A01(II)I

    move-result v0

    iput v0, v2, Lcom/facebook/ads/redexgen/X/nG;->A02:I

    .line 100244
    iget-object v0, v2, Lcom/facebook/ads/redexgen/X/Eh;->A02:Lcom/facebook/ads/redexgen/X/qI;

    iget v0, v0, Lcom/facebook/ads/redexgen/X/qI;->A0E:I

    and-int/lit16 v0, v0, 0x440

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    :goto_4
    iput-boolean v0, v2, Lcom/facebook/ads/redexgen/X/nG;->A05:Z

    .line 100245
    invoke-static {p6}, Lcom/facebook/ads/redexgen/X/9h;->A0K(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_5

    const/4 v1, 0x1

    .line 100246
    .local p0, "selectedAudioLanguageUndetermined":Z
    :goto_5
    iget-object v0, v2, Lcom/facebook/ads/redexgen/X/Eh;->A02:Lcom/facebook/ads/redexgen/X/qI;

    .line 100247
    invoke-static {v0, p6, v1}, Lcom/facebook/ads/redexgen/X/9h;->A02(Lcom/facebook/ads/redexgen/X/qI;Ljava/lang/String;Z)I

    move-result v0

    iput v0, v2, Lcom/facebook/ads/redexgen/X/nG;->A03:I

    .line 100248
    iget v0, v2, Lcom/facebook/ads/redexgen/X/nG;->A01:I

    if-gtz v0, :cond_2

    iget-object v0, p4, Lcom/facebook/ads/redexgen/X/pc;->A0K:Ljava/util/List;

    .line 100249
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    iget v0, v2, Lcom/facebook/ads/redexgen/X/nG;->A02:I

    if-gtz v0, :cond_2

    :cond_1
    iget-boolean v0, v2, Lcom/facebook/ads/redexgen/X/nG;->A06:Z

    if-nez v0, :cond_2

    iget-boolean v0, v2, Lcom/facebook/ads/redexgen/X/nG;->A07:Z

    if-eqz v0, :cond_4

    iget v0, v2, Lcom/facebook/ads/redexgen/X/nG;->A03:I

    if-lez v0, :cond_4

    :cond_2
    const/4 v1, 0x1

    .line 100250
    .local p1, "isWithinConstraints":Z
    :goto_6
    iget-boolean v0, p4, Lcom/facebook/ads/redexgen/X/9i;->A0B:Z

    .line 100251
    invoke-static {p5, v0}, Lcom/facebook/ads/redexgen/X/9h;->A0S(IZ)Z

    move-result v0

    if-eqz v0, :cond_3

    if-eqz v1, :cond_3

    .line 100252
    const/4 v3, 0x1

    .line 100253
    :cond_3
    iput v3, v2, Lcom/facebook/ads/redexgen/X/nG;->A04:I

    .line 100254
    return-void

    .line 100255
    :cond_4
    const/4 v1, 0x0

    goto :goto_6

    .line 100256
    :cond_5
    const/4 v1, 0x0

    goto :goto_5

    .line 100257
    :cond_6
    const/4 v0, 0x0

    goto :goto_4

    .line 100258
    .end local p1    # "isWithinConstraints":Z
    :cond_7
    add-int/lit8 v5, v5, 0x1

    goto :goto_3

    .line 100259
    :cond_8
    iget-object v6, p4, Lcom/facebook/ads/redexgen/X/pc;->A0K:Ljava/util/List;

    goto :goto_2

    .line 100260
    :cond_9
    const/4 v0, 0x0

    goto/16 :goto_1

    .line 100261
    :cond_a
    const/4 v0, 0x0

    goto/16 :goto_0
.end method

.method private final A00(Lcom/facebook/ads/redexgen/X/nG;)I
    .locals 4

    .line 100262
    invoke-static {}, Lcom/facebook/ads/redexgen/X/ns;->A01()Lcom/facebook/ads/redexgen/X/ns;

    move-result-object v2

    iget-boolean v1, p0, Lcom/facebook/ads/redexgen/X/nG;->A08:Z

    iget-boolean v0, p1, Lcom/facebook/ads/redexgen/X/nG;->A08:Z

    .line 100263
    invoke-virtual {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/ns;->A09(ZZ)Lcom/facebook/ads/redexgen/X/ns;

    move-result-object v3

    iget v0, p0, Lcom/facebook/ads/redexgen/X/nG;->A00:I

    .line 100264
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget v0, p1, Lcom/facebook/ads/redexgen/X/nG;->A00:I

    .line 100265
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 100266
    invoke-static {}, Lcom/facebook/ads/redexgen/X/qK;->A03()Lcom/facebook/ads/redexgen/X/BB;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/BB;->A06()Lcom/facebook/ads/redexgen/X/qK;

    move-result-object v0

    .line 100267
    invoke-virtual {v3, v2, v1, v0}, Lcom/facebook/ads/redexgen/X/ns;->A08(Ljava/lang/Object;Ljava/lang/Object;Ljava/util/Comparator;)Lcom/facebook/ads/redexgen/X/ns;

    move-result-object v2

    iget v1, p0, Lcom/facebook/ads/redexgen/X/nG;->A01:I

    iget v0, p1, Lcom/facebook/ads/redexgen/X/nG;->A01:I

    .line 100268
    invoke-virtual {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/ns;->A06(II)Lcom/facebook/ads/redexgen/X/ns;

    move-result-object v2

    iget v1, p0, Lcom/facebook/ads/redexgen/X/nG;->A02:I

    iget v0, p1, Lcom/facebook/ads/redexgen/X/nG;->A02:I

    .line 100269
    invoke-virtual {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/ns;->A06(II)Lcom/facebook/ads/redexgen/X/ns;

    move-result-object v2

    iget-boolean v1, p0, Lcom/facebook/ads/redexgen/X/nG;->A06:Z

    iget-boolean v0, p1, Lcom/facebook/ads/redexgen/X/nG;->A06:Z

    .line 100270
    invoke-virtual {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/ns;->A09(ZZ)Lcom/facebook/ads/redexgen/X/ns;

    move-result-object v3

    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/nG;->A07:Z

    .line 100271
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    iget-boolean v0, p1, Lcom/facebook/ads/redexgen/X/nG;->A07:Z

    .line 100272
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    .line 100273
    iget v0, p0, Lcom/facebook/ads/redexgen/X/nG;->A01:I

    if-nez v0, :cond_1

    invoke-static {}, Lcom/facebook/ads/redexgen/X/qK;->A03()Lcom/facebook/ads/redexgen/X/BB;

    move-result-object v0

    .line 100274
    :goto_0
    invoke-virtual {v3, v2, v1, v0}, Lcom/facebook/ads/redexgen/X/ns;->A08(Ljava/lang/Object;Ljava/lang/Object;Ljava/util/Comparator;)Lcom/facebook/ads/redexgen/X/ns;

    move-result-object v2

    iget v1, p0, Lcom/facebook/ads/redexgen/X/nG;->A03:I

    iget v0, p1, Lcom/facebook/ads/redexgen/X/nG;->A03:I

    .line 100275
    invoke-virtual {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/ns;->A06(II)Lcom/facebook/ads/redexgen/X/ns;

    move-result-object v2

    .line 100276
    .local v0, "chain":Lcom/facebook/ads/redexgen/X/ns;
    iget v0, p0, Lcom/facebook/ads/redexgen/X/nG;->A02:I

    if-nez v0, :cond_0

    .line 100277
    iget-boolean v1, p0, Lcom/facebook/ads/redexgen/X/nG;->A05:Z

    iget-boolean v0, p1, Lcom/facebook/ads/redexgen/X/nG;->A05:Z

    invoke-virtual {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/ns;->A0A(ZZ)Lcom/facebook/ads/redexgen/X/ns;

    move-result-object v2

    .line 100278
    :cond_0
    invoke-virtual {v2}, Lcom/facebook/ads/redexgen/X/ns;->A05()I

    move-result v0

    return v0

    .line 100279
    :cond_1
    invoke-static {}, Lcom/facebook/ads/redexgen/X/qK;->A03()Lcom/facebook/ads/redexgen/X/BB;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/BB;->A06()Lcom/facebook/ads/redexgen/X/qK;

    move-result-object v0

    goto :goto_0
.end method

.method public static A01(Ljava/util/List;Ljava/util/List;)I
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/facebook/ads/redexgen/X/nG;",
            ">;",
            "Ljava/util/List<",
            "Lcom/facebook/ads/redexgen/X/nG;",
            ">;)I"
        }
    .end annotation

    .line 100280
    .local p1, "infos1":Ljava/util/List;, "Ljava/util/List<Lcom/facebook/ads/androidx/media3/exoplayer/trackselection/DefaultTrackSelector$TextTrackInfo;>;"
    .local p2, "infos2":Ljava/util/List;, "Ljava/util/List<Lcom/facebook/ads/androidx/media3/exoplayer/trackselection/DefaultTrackSelector$TextTrackInfo;>;"
    const/4 v0, 0x0

    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/facebook/ads/redexgen/X/nG;

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/redexgen/X/nG;

    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/nG;->A00(Lcom/facebook/ads/redexgen/X/nG;)I

    move-result v0

    return v0
.end method

.method public static A02(ILcom/facebook/ads/redexgen/X/pg;Lcom/facebook/ads/redexgen/X/9i;[ILjava/lang/String;)Lcom/facebook/ads/redexgen/X/BP;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/facebook/ads/redexgen/X/pg;",
            "Lcom/facebook/ads/redexgen/X/9i;",
            "[I",
            "Ljava/lang/String;",
            ")",
            "Lcom/facebook/ads/redexgen/X/BP<",
            "Lcom/facebook/ads/redexgen/X/nG;",
            ">;"
        }
    .end annotation

    .line 100281
    invoke-static {}, Lcom/facebook/ads/redexgen/X/BP;->A01()Lcom/facebook/ads/redexgen/X/2K;

    move-result-object v1

    .line 100282
    .local v0, "listBuilder":Lcom/facebook/ads/redexgen/X/2K;, "Lcom/google/common/collect/ImmutableList$Builder<Lcom/facebook/ads/androidx/media3/exoplayer/trackselection/DefaultTrackSelector$TextTrackInfo;>;"
    const/4 v5, 0x0

    .local v1, "i":I
    :goto_0
    move-object v4, p1

    iget v0, v4, Lcom/facebook/ads/redexgen/X/pg;->A01:I

    if-ge v5, v0, :cond_0

    .line 100283
    new-instance v2, Lcom/facebook/ads/redexgen/X/nG;

    aget v7, p3, v5

    move-object v8, p4

    move-object v6, p2

    move v3, p0

    invoke-direct/range {v2 .. v8}, Lcom/facebook/ads/redexgen/X/nG;-><init>(ILcom/facebook/ads/redexgen/X/pg;ILcom/facebook/ads/redexgen/X/9i;ILjava/lang/String;)V

    invoke-virtual {v1, v2}, Lcom/facebook/ads/redexgen/X/2K;->A04(Ljava/lang/Object;)Lcom/facebook/ads/redexgen/X/2K;

    .line 100284
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 100285
    .end local v1    # "i":I
    :cond_0
    invoke-virtual {v1}, Lcom/facebook/ads/redexgen/X/2K;->A05()Lcom/facebook/ads/redexgen/X/BP;

    move-result-object v0

    return-object v0
.end method

.method private final A03(Lcom/facebook/ads/redexgen/X/nG;)Z
    .locals 1

    .line 100286
    const/4 v0, 0x0

    return v0
.end method


# virtual methods
.method public final A08()I
    .locals 1

    .line 100287
    iget v0, p0, Lcom/facebook/ads/redexgen/X/nG;->A04:I

    return v0
.end method

.method public final bridge synthetic A09(Lcom/facebook/ads/redexgen/X/Eh;)Z
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 100288
    check-cast p1, Lcom/facebook/ads/redexgen/X/nG;

    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/nG;->A03(Lcom/facebook/ads/redexgen/X/nG;)Z

    move-result v0

    return v0
.end method

.method public final bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 100289
    check-cast p1, Lcom/facebook/ads/redexgen/X/nG;

    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/nG;->A00(Lcom/facebook/ads/redexgen/X/nG;)I

    move-result v0

    return v0
.end method
