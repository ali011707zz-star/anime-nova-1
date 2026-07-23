.class public abstract Lcom/facebook/ads/redexgen/X/nD;
.super Lcom/facebook/ads/redexgen/X/Ew;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/ads/redexgen/X/Eo;
    }
.end annotation


# static fields
.field public static A01:[Ljava/lang/String;


# instance fields
.field public A00:Lcom/facebook/ads/redexgen/X/Eo;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    .line 3289
    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "LN1kZ6lR3vZBqqrviA4uTSOzBGS9o2bO"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "mUQPITaRnEXTrG2Wr7xIAnPzPHhU6DS3"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "avW0I4bwWNzzQZleeOInYpLZY9PTle7"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "LGUT8ZIo3joumZn9NybI7JCchk0DSCTG"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "S4WFRdtC0lcE2afHWARgiwpUU5tNPmtd"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "SbOYlLigHNVPkFHrMvYK7wwtNeL"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "2fmBOvz22OTh8nUuYBKjoVDFU"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "lR30iWlIbuozJgbVtB9O9DOed4NJenPq"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/nD;->A01:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 100036
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/Ew;-><init>()V

    return-void
.end method

.method public static A0Y([Lcom/facebook/ads/redexgen/X/7p;Lcom/facebook/ads/redexgen/X/pg;[IZ)I
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/facebook/ads/redexgen/X/AD;
        }
    .end annotation

    .line 100037
    array-length v6, p0

    .line 100038
    .local v0, "bestRendererIndex":I
    const/4 v5, 0x0

    .line 100039
    .local v1, "bestFormatSupportLevel":I
    const/4 v7, 0x1

    .line 100040
    .local v2, "bestRendererIsUnassociated":Z
    const/4 v4, 0x0

    .local v3, "rendererIndex":I
    :goto_0
    array-length v0, p0

    if-ge v4, v0, :cond_4

    .line 100041
    aget-object v3, p0, v4

    .line 100042
    .local v4, "rendererCapability":Lcom/facebook/ads/redexgen/X/7p;
    const/4 v2, 0x0

    .line 100043
    .local v5, "formatSupportLevel":I
    const/4 v1, 0x0

    .local v6, "trackIndex":I
    :goto_1
    iget v0, p1, Lcom/facebook/ads/redexgen/X/pg;->A01:I

    if-ge v1, v0, :cond_0

    .line 100044
    invoke-virtual {p1, v1}, Lcom/facebook/ads/redexgen/X/pg;->A08(I)Lcom/facebook/ads/redexgen/X/qI;

    move-result-object v0

    invoke-interface {v3, v0}, Lcom/facebook/ads/redexgen/X/7p;->AKM(Lcom/facebook/ads/redexgen/X/qI;)I

    move-result v0

    .line 100045
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/7i;->A03(I)I

    move-result v0

    .line 100046
    .local v7, "trackFormatSupportLevel":I
    invoke-static {v2, v0}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 100047
    .end local v7    # "trackFormatSupportLevel":I
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 100048
    .end local v6    # "trackIndex":I
    :cond_0
    aget v0, p2, v4

    if-nez v0, :cond_3

    const/4 v0, 0x1

    .line 100049
    .local v6, "rendererIsUnassociated":Z
    :goto_2
    if-gt v2, v5, :cond_1

    if-ne v2, v5, :cond_2

    if-eqz p3, :cond_2

    if-nez v7, :cond_2

    if-eqz v0, :cond_2

    .line 100050
    :cond_1
    move v6, v4

    .line 100051
    move v5, v2

    .line 100052
    move v7, v0

    .line 100053
    .end local v4    # "rendererCapability":Lcom/facebook/ads/redexgen/X/7p;
    .end local v5    # "formatSupportLevel":I
    .end local v6    # "rendererIsUnassociated":Z
    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 100054
    :cond_3
    const/4 v0, 0x0

    goto :goto_2

    .line 100055
    .end local v3    # "rendererIndex":I
    :cond_4
    return v6
.end method

.method public static A0Z(Lcom/facebook/ads/redexgen/X/7p;Lcom/facebook/ads/redexgen/X/pg;)[I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/facebook/ads/redexgen/X/AD;
        }
    .end annotation

    .line 100056
    iget v0, p1, Lcom/facebook/ads/redexgen/X/pg;->A01:I

    new-array v2, v0, [I

    .line 100057
    .local v0, "formatSupport":[I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget v0, p1, Lcom/facebook/ads/redexgen/X/pg;->A01:I

    if-ge v1, v0, :cond_0

    .line 100058
    invoke-virtual {p1, v1}, Lcom/facebook/ads/redexgen/X/pg;->A08(I)Lcom/facebook/ads/redexgen/X/qI;

    move-result-object v0

    invoke-interface {p0, v0}, Lcom/facebook/ads/redexgen/X/7p;->AKM(Lcom/facebook/ads/redexgen/X/qI;)I

    move-result v0

    aput v0, v2, v1

    .line 100059
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 100060
    .end local v1    # "i":I
    :cond_0
    return-object v2
.end method

.method public static A0a([Lcom/facebook/ads/redexgen/X/7p;)[I
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/facebook/ads/redexgen/X/AD;
        }
    .end annotation

    .line 100061
    array-length v0, p0

    new-array v4, v0, [I

    .line 100062
    .local v0, "mixedMimeTypeAdaptationSupport":[I
    const/4 v3, 0x0

    .local v1, "i":I
    :goto_0
    array-length v0, v4

    if-ge v3, v0, :cond_1

    .line 100063
    aget-object v0, p0, v3

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/7p;->AKO()I

    move-result v5

    sget-object v2, Lcom/facebook/ads/redexgen/X/nD;->A01:[Ljava/lang/String;

    const/4 v0, 0x4

    aget-object v1, v2, v0

    const/4 v0, 0x1

    aget-object v2, v2, v0

    const/16 v0, 0x17

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v1, v0, :cond_0

    sget-object v2, Lcom/facebook/ads/redexgen/X/nD;->A01:[Ljava/lang/String;

    const-string v1, "1ViYEGUZxGRCVXLKV1NACncyCaxKGcLE"

    const/4 v0, 0x4

    aput-object v1, v2, v0

    const-string v1, "WZkUCc71MckdncxFpAml539B1oxWjr0A"

    const/4 v0, 0x1

    aput-object v1, v2, v0

    aput v5, v4, v3

    .line 100064
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    .line 100065
    .end local v1    # "i":I
    :cond_1
    return-object v4
.end method


# virtual methods
.method public final A0b([Lcom/facebook/ads/redexgen/X/7p;Lcom/facebook/ads/redexgen/X/nW;Lcom/facebook/ads/redexgen/X/no;Lcom/facebook/ads/androidx/media3/common/Timeline;)Lcom/facebook/ads/redexgen/X/Ex;
    .locals 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/facebook/ads/redexgen/X/AD;
        }
    .end annotation

    .line 100066
    move-object v4, p1

    array-length v0, v4

    const/4 v10, 0x1

    add-int/2addr v0, v10

    new-array v5, v0, [I

    .line 100067
    .local v2, "rendererTrackGroupCounts":[I
    array-length v0, v4

    add-int/2addr v0, v10

    new-array v3, v0, [[Lcom/facebook/ads/redexgen/X/pg;

    .line 100068
    .local v4, "rendererTrackGroups":[[Lcom/facebook/ads/redexgen/X/pg;
    array-length v0, v4

    add-int/2addr v0, v10

    new-array v12, v0, [[[I

    .line 100069
    .local v5, "rendererFormatSupports":[[[I
    const/4 v1, 0x0

    .local v6, "i":I
    :goto_0
    array-length v0, v3

    move-object/from16 v8, p2

    if-ge v1, v0, :cond_0

    .line 100070
    iget v0, v8, Lcom/facebook/ads/redexgen/X/nW;->A01:I

    new-array v0, v0, [Lcom/facebook/ads/redexgen/X/pg;

    aput-object v0, v3, v1

    .line 100071
    iget v0, v8, Lcom/facebook/ads/redexgen/X/nW;->A01:I

    new-array v0, v0, [[I

    aput-object v0, v12, v1

    .line 100072
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 100073
    .end local v6    # "i":I
    :cond_0
    invoke-static {v4}, Lcom/facebook/ads/redexgen/X/nD;->A0a([Lcom/facebook/ads/redexgen/X/7p;)[I

    move-result-object v11

    .line 100074
    .local v13, "rendererMixedMimeTypeAdaptationSupports":[I
    const/4 v7, 0x0

    .local v6, "groupIndex":I
    :goto_1
    iget v0, v8, Lcom/facebook/ads/redexgen/X/nW;->A01:I

    if-ge v7, v0, :cond_3

    .line 100075
    invoke-virtual {v8, v7}, Lcom/facebook/ads/redexgen/X/nW;->A05(I)Lcom/facebook/ads/redexgen/X/pg;

    move-result-object v9

    .line 100076
    .local v7, "group":Lcom/facebook/ads/redexgen/X/pg;
    iget v1, v9, Lcom/facebook/ads/redexgen/X/pg;->A02:I

    const/4 v0, 0x5

    if-ne v1, v0, :cond_2

    const/4 v0, 0x1

    .line 100077
    .local v8, "preferUnassociatedRenderer":Z
    :goto_2
    invoke-static {v4, v9, v5, v0}, Lcom/facebook/ads/redexgen/X/nD;->A0Y([Lcom/facebook/ads/redexgen/X/7p;Lcom/facebook/ads/redexgen/X/pg;[IZ)I

    move-result v6

    .line 100078
    .local v9, "rendererIndex":I
    array-length v0, v4

    if-ne v6, v0, :cond_1

    .line 100079
    iget v0, v9, Lcom/facebook/ads/redexgen/X/pg;->A01:I

    new-array v2, v0, [I

    .line 100080
    .local v10, "rendererFormatSupport":[I
    :goto_3
    aget v1, v5, v6

    .line 100081
    .local v11, "rendererTrackGroupCount":I
    aget-object v0, v3, v6

    aput-object v9, v0, v1

    .line 100082
    aget-object v0, v12, v6

    aput-object v2, v0, v1

    .line 100083
    aget v0, v5, v6

    add-int/2addr v0, v10

    aput v0, v5, v6

    .line 100084
    .end local v7    # "group":Lcom/facebook/ads/redexgen/X/pg;
    .end local v8    # "preferUnassociatedRenderer":Z
    .end local v9    # "rendererIndex":I
    .end local v10    # "rendererFormatSupport":[I
    .end local v11    # "rendererTrackGroupCount":I
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 100085
    :cond_1
    aget-object v0, v4, v6

    invoke-static {v0, v9}, Lcom/facebook/ads/redexgen/X/nD;->A0Z(Lcom/facebook/ads/redexgen/X/7p;Lcom/facebook/ads/redexgen/X/pg;)[I

    move-result-object v2

    goto :goto_3

    .line 100086
    :cond_2
    const/4 v0, 0x0

    goto :goto_2

    .line 100087
    .end local v6    # "groupIndex":I
    :cond_3
    array-length v0, v4

    new-array v10, v0, [Lcom/facebook/ads/redexgen/X/nW;

    .line 100088
    .local v3, "rendererTrackGroupArrays":[Lcom/facebook/ads/redexgen/X/nW;
    array-length v0, v4

    new-array v8, v0, [Ljava/lang/String;

    .line 100089
    .local p0, "rendererNames":[Ljava/lang/String;
    array-length v0, v4

    new-array v9, v0, [I

    .line 100090
    .local p1, "rendererTrackTypes":[I
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_4
    array-length v7, v4

    sget-object v2, Lcom/facebook/ads/redexgen/X/nD;->A01:[Ljava/lang/String;

    const/4 v0, 0x4

    aget-object v1, v2, v0

    const/4 v0, 0x1

    aget-object v2, v2, v0

    const/16 v0, 0x17

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v1, v0, :cond_5

    sget-object v2, Lcom/facebook/ads/redexgen/X/nD;->A01:[Ljava/lang/String;

    const-string v1, "hppY0P6sht5kF7is4RCKyMBKsFUVAoRB"

    const/4 v0, 0x4

    aput-object v1, v2, v0

    const-string v1, "XeHPWbHBeoBDFVDQc4DbmKa9NYqMdrJh"

    const/4 v0, 0x1

    aput-object v1, v2, v0

    if-ge v6, v7, :cond_4

    .line 100091
    aget v2, v5, v6

    .line 100092
    .local v7, "rendererTrackGroupCount":I
    aget-object v0, v3, v6

    .line 100093
    invoke-static {v0, v2}, Lcom/facebook/ads/redexgen/X/5C;->A1I([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lcom/facebook/ads/redexgen/X/pg;

    new-instance v0, Lcom/facebook/ads/redexgen/X/nW;

    invoke-direct {v0, v1}, Lcom/facebook/ads/redexgen/X/nW;-><init>([Lcom/facebook/ads/redexgen/X/pg;)V

    aput-object v0, v10, v6

    .line 100094
    aget-object v0, v12, v6

    .line 100095
    invoke-static {v0, v2}, Lcom/facebook/ads/redexgen/X/5C;->A1I([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[I

    aput-object v0, v12, v6

    .line 100096
    aget-object v0, v4, v6

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/7p;->getName()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v8, v6

    .line 100097
    aget-object v0, v4, v6

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/7p;->A9N()I

    move-result v0

    aput v0, v9, v6

    .line 100098
    .end local v7    # "rendererTrackGroupCount":I
    add-int/lit8 v6, v6, 0x1

    goto :goto_4

    .line 100099
    .end local v6    # "i":I
    :cond_4
    array-length v0, v4

    aget v1, v5, v0

    .line 100100
    .local v11, "unmappedTrackGroupCount":I
    array-length v0, v4

    aget-object v0, v3, v0

    .line 100101
    invoke-static {v0, v1}, Lcom/facebook/ads/redexgen/X/5C;->A1I([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/facebook/ads/redexgen/X/pg;

    new-instance v13, Lcom/facebook/ads/redexgen/X/nW;

    invoke-direct {v13, v0}, Lcom/facebook/ads/redexgen/X/nW;-><init>([Lcom/facebook/ads/redexgen/X/pg;)V

    .line 100102
    .local v12, "unmappedTrackGroupArray":Lcom/facebook/ads/redexgen/X/nW;
    new-instance v7, Lcom/facebook/ads/redexgen/X/Eo;

    .end local v11    # "unmappedTrackGroupCount":I
    .local p3, "unmappedTrackGroupCount":I
    invoke-direct/range {v7 .. v13}, Lcom/facebook/ads/redexgen/X/Eo;-><init>([Ljava/lang/String;[I[Lcom/facebook/ads/redexgen/X/nW;[I[[[ILcom/facebook/ads/redexgen/X/nW;)V

    .line 100103
    .local v11, "mappedTrackInfo":Lcom/facebook/ads/redexgen/X/Eo;
    move-object v5, p0

    move-object v4, v7

    .end local v11    # "mappedTrackInfo":Lcom/facebook/ads/redexgen/X/Eo;
    .local v0, "mappedTrackInfo":Lcom/facebook/ads/redexgen/X/Eo;
    move-object v6, v7

    move-object v7, v12

    move-object v8, v11

    move-object/from16 v10, p4

    move-object/from16 v9, p3

    invoke-virtual/range {v5 .. v10}, Lcom/facebook/ads/redexgen/X/nD;->A0d(Lcom/facebook/ads/redexgen/X/Eo;[[[I[ILcom/facebook/ads/redexgen/X/no;Lcom/facebook/ads/androidx/media3/common/Timeline;)Landroid/util/Pair;

    move-result-object v1

    .line 100104
    .local v6, "result":Landroid/util/Pair;, "Landroid/util/Pair<[Lcom/facebook/ads/androidx/media3/exoplayer/RendererConfiguration;[Lcom/facebook/ads/androidx/media3/exoplayer/trackselection/ExoTrackSelection;>;"
    iget-object v0, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, [Lcom/facebook/ads/redexgen/X/Eq;

    invoke-static {v4, v0}, Lcom/facebook/ads/redexgen/X/Et;->A00(Lcom/facebook/ads/redexgen/X/Eo;[Lcom/facebook/ads/redexgen/X/Eq;)Lcom/facebook/ads/redexgen/X/pY;

    move-result-object v3

    .line 100105
    .local v7, "tracks":Lcom/facebook/ads/redexgen/X/pY;
    iget-object v2, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v2, [Lcom/facebook/ads/redexgen/X/7s;

    iget-object v1, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v1, [Lcom/facebook/ads/redexgen/X/nE;

    new-instance v0, Lcom/facebook/ads/redexgen/X/Ex;

    invoke-direct {v0, v2, v1, v3, v4}, Lcom/facebook/ads/redexgen/X/Ex;-><init>([Lcom/facebook/ads/redexgen/X/7s;[Lcom/facebook/ads/redexgen/X/nE;Lcom/facebook/ads/redexgen/X/pY;Ljava/lang/Object;)V

    return-object v0

    :cond_5
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
.end method

.method public final A0c(Ljava/lang/Object;)V
    .locals 0

    .line 100106
    check-cast p1, Lcom/facebook/ads/redexgen/X/Eo;

    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/nD;->A00:Lcom/facebook/ads/redexgen/X/Eo;

    .line 100107
    return-void
.end method

.method public abstract A0d(Lcom/facebook/ads/redexgen/X/Eo;[[[I[ILcom/facebook/ads/redexgen/X/no;Lcom/facebook/ads/androidx/media3/common/Timeline;)Landroid/util/Pair;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/ads/redexgen/X/Eo;",
            "[[[I[I",
            "Lcom/facebook/ads/redexgen/X/no;",
            "Lcom/facebook/ads/androidx/media3/common/Timeline;",
            ")",
            "Landroid/util/Pair<",
            "[",
            "Lcom/facebook/ads/redexgen/X/7s;",
            "[",
            "Lcom/facebook/ads/redexgen/X/nE;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/facebook/ads/redexgen/X/AD;
        }
    .end annotation
.end method
