.class public final Lcom/facebook/ads/redexgen/X/9U;
.super Lcom/facebook/ads/redexgen/X/mZ;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/ads/redexgen/X/IE;,
        Lcom/facebook/ads/redexgen/X/IF;
    }
.end annotation


# static fields
.field public static A01:[B

.field public static A02:[Ljava/lang/String;

.field public static final A03:Lcom/facebook/ads/redexgen/X/IE;


# instance fields
.field public final A00:Lcom/facebook/ads/redexgen/X/IE;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    .line 550
    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "dfkl9gE5OREu5AXL5lY0ohuUUe3SXBJr"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "hKeIXQ7stisHjmNWZz70dNldldiAaQvi"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "Ev47ZYJBP4qmoN0JeJrCKxe3cHeEd2Mz"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "un9uiXmeOTgIIo"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "Wd16eevQjbu9Ian59LTBbcV1NeBW6y6R"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "QoAdFFIsNXY7HGA7Qc965AL0CxX7pFDa"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "35FvwnlVw7oPAj"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "U3kKyqEMJJ2afey5JgaPdqN5tYmvQhts"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/9U;->A02:[Ljava/lang/String;

    invoke-static {}, Lcom/facebook/ads/redexgen/X/9U;->A0N()V

    new-instance v0, Lcom/facebook/ads/redexgen/X/mT;

    invoke-direct {v0}, Lcom/facebook/ads/redexgen/X/mT;-><init>()V

    sput-object v0, Lcom/facebook/ads/redexgen/X/9U;->A03:Lcom/facebook/ads/redexgen/X/IE;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 24125
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/9U;-><init>(Lcom/facebook/ads/redexgen/X/IE;)V

    .line 24126
    return-void
.end method

.method public constructor <init>(Lcom/facebook/ads/redexgen/X/IE;)V
    .locals 0

    .line 24127
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/mZ;-><init>()V

    .line 24128
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/9U;->A00:Lcom/facebook/ads/redexgen/X/IE;

    .line 24129
    return-void
.end method

.method public static A00(I)I
    .locals 1

    .line 24130
    if-eqz p0, :cond_0

    const/4 v0, 0x3

    if-ne p0, v0, :cond_1

    .line 24131
    :cond_0
    const/4 v0, 0x1

    .line 24132
    :goto_0
    return v0

    .line 24133
    :cond_1
    const/4 v0, 0x2

    goto :goto_0
.end method

.method public static A01(Lcom/facebook/ads/redexgen/X/4v;I)I
    .locals 8

    .line 24134
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/4v;->A0l()[B

    move-result-object v6

    .line 24135
    .local v0, "bytes":[B
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/4v;->A09()I

    move-result p0

    .line 24136
    .local v1, "startPosition":I
    move v7, p0

    .local v2, "i":I
    :goto_0
    add-int/lit8 v1, v7, 0x1

    add-int v0, p0, p1

    if-ge v1, v0, :cond_2

    .line 24137
    aget-byte v1, v6, v7

    const/16 v0, 0xff

    and-int/2addr v1, v0

    if-ne v1, v0, :cond_1

    add-int/lit8 v0, v7, 0x1

    aget-byte v0, v6, v0

    if-nez v0, :cond_1

    .line 24138
    sub-int v0, v7, p0

    .line 24139
    .local v3, "relativePosition":I
    add-int/lit8 v5, v7, 0x2

    add-int/lit8 v4, v7, 0x1

    sub-int v0, p1, v0

    add-int/lit8 v3, v0, -0x2

    sget-object v2, Lcom/facebook/ads/redexgen/X/9U;->A02:[Ljava/lang/String;

    const/4 v0, 0x1

    aget-object v1, v2, v0

    const/4 v0, 0x7

    aget-object v2, v2, v0

    const/16 v0, 0x14

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v1, v0, :cond_0

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_0
    sget-object v2, Lcom/facebook/ads/redexgen/X/9U;->A02:[Ljava/lang/String;

    const-string v1, "XZV6e8MYnWgHLOD3ZLXsdTcFpPsY6V3F"

    const/4 v0, 0x1

    aput-object v1, v2, v0

    const-string v1, "PRKMokf209xLCZShYH0Zduqvqdx50TVA"

    const/4 v0, 0x7

    aput-object v1, v2, v0

    invoke-static {v6, v5, v6, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 24140
    add-int/lit8 p1, p1, -0x1

    .line 24141
    .end local v3    # "relativePosition":I
    :cond_1
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 24142
    .end local v2    # "i":I
    :cond_2
    return p1
.end method

.method public static A02([BI)I
    .locals 1

    .line 24143
    .local v0, "i":I
    :goto_0
    array-length v0, p0

    if-ge p1, v0, :cond_1

    .line 24144
    aget-byte v0, p0, p1

    if-nez v0, :cond_0

    .line 24145
    return p1

    .line 24146
    :cond_0
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    .line 24147
    .end local v0    # "i":I
    :cond_1
    array-length v0, p0

    return v0
.end method

.method public static A03([BII)I
    .locals 2

    .line 24148
    invoke-static {p0, p1}, Lcom/facebook/ads/redexgen/X/9U;->A02([BI)I

    move-result v1

    .line 24149
    .local v0, "terminationPos":I
    if-eqz p2, :cond_0

    const/4 v0, 0x3

    if-ne p2, v0, :cond_1

    .line 24150
    :cond_0
    return v1

    .line 24151
    :cond_1
    :goto_0
    array-length v0, p0

    add-int/lit8 v0, v0, -0x1

    if-ge v1, v0, :cond_3

    .line 24152
    sub-int v0, v1, p1

    rem-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_2

    add-int/lit8 v0, v1, 0x1

    aget-byte v0, p0, v0

    if-nez v0, :cond_2

    .line 24153
    return v1

    .line 24154
    :cond_2
    add-int/lit8 v0, v1, 0x1

    invoke-static {p0, v0}, Lcom/facebook/ads/redexgen/X/9U;->A02([BI)I

    move-result v1

    goto :goto_0

    .line 24155
    :cond_3
    array-length v0, p0

    return v0
.end method

.method public static A04(Lcom/facebook/ads/redexgen/X/4v;II)Lcom/facebook/ads/androidx/media3/extractor/metadata/id3/ApicFrame;
    .locals 7

    .line 24156
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/4v;->A0I()I

    move-result v5

    .line 24157
    .local v0, "encoding":I
    invoke-static {v5}, Lcom/facebook/ads/redexgen/X/9U;->A0M(I)Ljava/nio/charset/Charset;

    move-result-object v4

    .line 24158
    .local v1, "charset":Ljava/nio/charset/Charset;
    add-int/lit8 v0, p1, -0x1

    new-array v3, v0, [B

    .line 24159
    .local v2, "data":[B
    add-int/lit8 v0, p1, -0x1

    const/4 p1, 0x0

    invoke-virtual {p0, v3, p1, v0}, Lcom/facebook/ads/redexgen/X/4v;->A0k([BII)V

    .line 24160
    const/4 p0, 0x2

    const/16 v2, 0x192

    const/4 v1, 0x6

    const/16 v0, 0x5a

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/9U;->A0J(III)Ljava/lang/String;

    move-result-object v6

    if-ne p2, p0, :cond_1

    .line 24161
    const/4 v2, 0x2

    .line 24162
    .local v3, "mimeTypeEndIndex":I
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    const/4 v6, 0x3

    sget-object v1, Lcom/facebook/ads/redexgen/X/k9;->A00:Ljava/nio/charset/Charset;

    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v3, p1, v6, v1}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/k7;->A01(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 24163
    .local v4, "mimeType":Ljava/lang/String;
    const/16 v6, 0x1a2

    const/16 v1, 0x9

    const/16 v0, 0x2f

    invoke-static {v6, v1, v0}, Lcom/facebook/ads/redexgen/X/9U;->A0J(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 24164
    const/16 v6, 0x198

    const/16 v1, 0xa

    const/16 v0, 0x7a

    invoke-static {v6, v1, v0}, Lcom/facebook/ads/redexgen/X/9U;->A0J(III)Ljava/lang/String;

    move-result-object p0

    .line 24165
    :cond_0
    :goto_0
    add-int/lit8 v0, v2, 0x1

    aget-byte v0, v3, v0

    and-int/lit16 p1, v0, 0xff

    .line 24166
    .local v5, "pictureType":I
    add-int/lit8 v1, v2, 0x2

    .line 24167
    .local v6, "descriptionStartIndex":I
    invoke-static {v3, v1, v5}, Lcom/facebook/ads/redexgen/X/9U;->A03([BII)I

    move-result v6

    .line 24168
    .local p0, "descriptionEndIndex":I
    sub-int v0, v6, v1

    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, v3, v1, v0, v4}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    .line 24169
    .local p1, "description":Ljava/lang/String;
    invoke-static {v5}, Lcom/facebook/ads/redexgen/X/9U;->A00(I)I

    move-result v1

    add-int/2addr v1, v6

    .line 24170
    .local p2, "pictureDataStartIndex":I
    array-length v0, v3

    invoke-static {v3, v1, v0}, Lcom/facebook/ads/redexgen/X/9U;->A0Q([BII)[B

    move-result-object v1

    .line 24171
    .local p3, "pictureData":[B
    new-instance v0, Lcom/facebook/ads/androidx/media3/extractor/metadata/id3/ApicFrame;

    invoke-direct {v0, p0, v2, p1, v1}, Lcom/facebook/ads/androidx/media3/extractor/metadata/id3/ApicFrame;-><init>(Ljava/lang/String;Ljava/lang/String;I[B)V

    return-object v0

    .line 24172
    .end local v3    # "mimeTypeEndIndex":I
    .end local v4    # "mimeType":Ljava/lang/String;
    :cond_1
    invoke-static {v3, p1}, Lcom/facebook/ads/redexgen/X/9U;->A02([BI)I

    move-result v2

    .line 24173
    .restart local v3    # "mimeTypeEndIndex":I
    sget-object v1, Lcom/facebook/ads/redexgen/X/k9;->A00:Ljava/nio/charset/Charset;

    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v3, p1, v2, v1}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/k7;->A01(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 24174
    .restart local v4    # "mimeType":Ljava/lang/String;
    const/16 v0, 0x2f

    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    const/4 v0, -0x1

    if-ne v1, v0, :cond_0

    .line 24175
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_0
.end method

.method public static A05(Lcom/facebook/ads/redexgen/X/4v;ILjava/lang/String;)Lcom/facebook/ads/androidx/media3/extractor/metadata/id3/BinaryFrame;
    .locals 2

    .line 24176
    new-array v1, p1, [B

    .line 24177
    .local v0, "frame":[B
    const/4 v0, 0x0

    invoke-virtual {p0, v1, v0, p1}, Lcom/facebook/ads/redexgen/X/4v;->A0k([BII)V

    .line 24178
    new-instance v0, Lcom/facebook/ads/androidx/media3/extractor/metadata/id3/BinaryFrame;

    invoke-direct {v0, p2, v1}, Lcom/facebook/ads/androidx/media3/extractor/metadata/id3/BinaryFrame;-><init>(Ljava/lang/String;[B)V

    return-object v0
.end method

.method public static A06(Lcom/facebook/ads/redexgen/X/4v;IIZILcom/facebook/ads/redexgen/X/IE;)Lcom/facebook/ads/androidx/media3/extractor/metadata/id3/ChapterFrame;
    .locals 13

    .line 24179
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/4v;->A09()I

    move-result v3

    .line 24180
    .local v1, "framePosition":I
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/4v;->A0l()[B

    move-result-object v0

    invoke-static {v0, v3}, Lcom/facebook/ads/redexgen/X/9U;->A02([BI)I

    move-result v4

    .line 24181
    .local v2, "chapterIdEndIndex":I
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/4v;->A0l()[B

    move-result-object v2

    sub-int v1, v4, v3

    sget-object v0, Lcom/facebook/ads/redexgen/X/k9;->A00:Ljava/nio/charset/Charset;

    new-instance v6, Ljava/lang/String;

    invoke-direct {v6, v2, v3, v1, v0}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    .line 24182
    .local v4, "chapterId":Ljava/lang/String;
    add-int/lit8 v0, v4, 0x1

    invoke-virtual {p0, v0}, Lcom/facebook/ads/redexgen/X/4v;->A0f(I)V

    .line 24183
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/4v;->A0C()I

    move-result v7

    .line 24184
    .local v12, "startTime":I
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/4v;->A0C()I

    move-result v8

    .line 24185
    .local p0, "endTime":I
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/4v;->A0Q()J

    move-result-wide v9

    .line 24186
    .local v5, "startOffset":J
    const-wide v1, 0xffffffffL

    cmp-long v0, v9, v1

    if-nez v0, :cond_0

    .line 24187
    const-wide/16 v9, -0x1

    .line 24188
    .end local v5    # "startOffset":J
    .local p1, "startOffset":J
    :cond_0
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/4v;->A0Q()J

    move-result-wide v11

    .line 24189
    .local v5, "endOffset":J
    cmp-long v0, v11, v1

    if-nez v0, :cond_1

    .line 24190
    const-wide/16 v11, -0x1

    .line 24191
    .end local v5    # "endOffset":J
    .local p3, "endOffset":J
    :cond_1
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 24192
    .local v11, "subFrames":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/facebook/ads/androidx/media3/extractor/metadata/id3/Id3Frame;>;"
    add-int/2addr v3, p1

    .line 24193
    .local v9, "limit":I
    :cond_2
    :goto_0
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/4v;->A09()I

    move-result v4

    sget-object v1, Lcom/facebook/ads/redexgen/X/9U;->A02:[Ljava/lang/String;

    const/4 v0, 0x5

    aget-object v1, v1, v0

    const/16 v0, 0x16

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x46

    if-eq v1, v0, :cond_4

    sget-object v5, Lcom/facebook/ads/redexgen/X/9U;->A02:[Ljava/lang/String;

    const-string v1, "yxJytYiELIVuKxluLLGjsQCljTQ6t8ax"

    const/4 v0, 0x2

    aput-object v1, v5, v0

    const-string v1, "riKuEgzQ5i9bwl4lr9MCLXtR5zTvU4EY"

    const/4 v0, 0x0

    aput-object v1, v5, v0

    if-ge v4, v3, :cond_3

    .line 24194
    move-object/from16 v0, p5

    move/from16 v1, p4

    move/from16 v4, p3

    invoke-static {p2, p0, v4, v1, v0}, Lcom/facebook/ads/redexgen/X/9U;->A0B(ILcom/facebook/ads/redexgen/X/4v;ZILcom/facebook/ads/redexgen/X/IE;)Lcom/facebook/ads/androidx/media3/extractor/metadata/id3/Id3Frame;

    move-result-object v0

    .line 24195
    .local v3, "frame":Lcom/facebook/ads/androidx/media3/extractor/metadata/id3/Id3Frame;
    if-eqz v0, :cond_2

    .line 24196
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 24197
    :cond_3
    const/4 v0, 0x0

    new-array v0, v0, [Lcom/facebook/ads/androidx/media3/extractor/metadata/id3/Id3Frame;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Lcom/facebook/ads/androidx/media3/extractor/metadata/id3/Id3Frame;

    .line 24198
    .local p5, "subFrameArray":[Lcom/facebook/ads/androidx/media3/extractor/metadata/id3/Id3Frame;
    new-instance v5, Lcom/facebook/ads/androidx/media3/extractor/metadata/id3/ChapterFrame;

    .end local v9    # "limit":I
    .local p7, "limit":I
    .end local v11    # "subFrames":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/facebook/ads/androidx/media3/extractor/metadata/id3/Id3Frame;>;"
    .local p8, "subFrames":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/facebook/ads/androidx/media3/extractor/metadata/id3/Id3Frame;>;"
    invoke-direct/range {v5 .. v13}, Lcom/facebook/ads/androidx/media3/extractor/metadata/id3/ChapterFrame;-><init>(Ljava/lang/String;IIJJ[Lcom/facebook/ads/androidx/media3/extractor/metadata/id3/Id3Frame;)V

    return-object v5

    :cond_4
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
.end method

.method public static A07(Lcom/facebook/ads/redexgen/X/4v;IIZILcom/facebook/ads/redexgen/X/IE;)Lcom/facebook/ads/androidx/media3/extractor/metadata/id3/ChapterTocFrame;
    .locals 13

    .line 24199
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/4v;->A09()I

    move-result v4

    .line 24200
    .local v1, "framePosition":I
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/4v;->A0l()[B

    move-result-object v0

    invoke-static {v0, v4}, Lcom/facebook/ads/redexgen/X/9U;->A02([BI)I

    move-result v3

    .line 24201
    .local v2, "elementIdEndIndex":I
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/4v;->A0l()[B

    move-result-object v2

    sub-int v1, v3, v4

    sget-object v0, Lcom/facebook/ads/redexgen/X/k9;->A00:Ljava/nio/charset/Charset;

    new-instance v9, Ljava/lang/String;

    invoke-direct {v9, v2, v4, v1, v0}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    .line 24202
    .local v4, "elementId":Ljava/lang/String;
    add-int/lit8 v0, v3, 0x1

    invoke-virtual {p0, v0}, Lcom/facebook/ads/redexgen/X/4v;->A0f(I)V

    .line 24203
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/4v;->A0I()I

    move-result v1

    .line 24204
    .local v9, "ctocFlags":I
    and-int/lit8 v0, v1, 0x2

    const/4 v11, 0x1

    if-eqz v0, :cond_1

    const/4 v10, 0x1

    .line 24205
    .local v5, "isRoot":Z
    :goto_0
    and-int/lit8 v0, v1, 0x1

    if-eqz v0, :cond_0

    .line 24206
    .local v6, "isOrdered":Z
    :goto_1
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/4v;->A0I()I

    move-result v7

    .line 24207
    .local v10, "childCount":I
    new-array v12, v7, [Ljava/lang/String;

    .line 24208
    .local v11, "children":[Ljava/lang/String;
    const/4 v6, 0x0

    .local v3, "i":I
    :goto_2
    if-ge v6, v7, :cond_2

    .line 24209
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/4v;->A09()I

    move-result v8

    .line 24210
    .local v8, "startIndex":I
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/4v;->A0l()[B

    move-result-object v0

    invoke-static {v0, v8}, Lcom/facebook/ads/redexgen/X/9U;->A02([BI)I

    move-result v5

    .line 24211
    .local v12, "endIndex":I
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/4v;->A0l()[B

    move-result-object v3

    sub-int v2, v5, v8

    sget-object v1, Lcom/facebook/ads/redexgen/X/k9;->A00:Ljava/nio/charset/Charset;

    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v3, v8, v2, v1}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    aput-object v0, v12, v6

    .line 24212
    add-int/lit8 v0, v5, 0x1

    invoke-virtual {p0, v0}, Lcom/facebook/ads/redexgen/X/4v;->A0f(I)V

    .line 24213
    .end local v8    # "startIndex":I
    .end local v12    # "endIndex":I
    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    .line 24214
    :cond_0
    const/4 v11, 0x0

    goto :goto_1

    .line 24215
    :cond_1
    const/4 v10, 0x0

    goto :goto_0

    .line 24216
    .end local v3    # "i":I
    :cond_2
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 24217
    .local v12, "subFrames":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/facebook/ads/androidx/media3/extractor/metadata/id3/Id3Frame;>;"
    add-int/2addr v4, p1

    .line 24218
    .local p0, "limit":I
    :cond_3
    :goto_3
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/4v;->A09()I

    move-result v0

    if-ge v0, v4, :cond_4

    .line 24219
    move-object/from16 v0, p5

    move/from16 v2, p4

    move/from16 v3, p3

    invoke-static {p2, p0, v3, v2, v0}, Lcom/facebook/ads/redexgen/X/9U;->A0B(ILcom/facebook/ads/redexgen/X/4v;ZILcom/facebook/ads/redexgen/X/IE;)Lcom/facebook/ads/androidx/media3/extractor/metadata/id3/Id3Frame;

    move-result-object v0

    .line 24220
    .local v3, "frame":Lcom/facebook/ads/androidx/media3/extractor/metadata/id3/Id3Frame;
    if-eqz v0, :cond_3

    .line 24221
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 24222
    :cond_4
    const/4 v0, 0x0

    new-array v0, v0, [Lcom/facebook/ads/androidx/media3/extractor/metadata/id3/Id3Frame;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Lcom/facebook/ads/androidx/media3/extractor/metadata/id3/Id3Frame;

    .line 24223
    .local p3, "subFrameArray":[Lcom/facebook/ads/androidx/media3/extractor/metadata/id3/Id3Frame;
    new-instance v8, Lcom/facebook/ads/androidx/media3/extractor/metadata/id3/ChapterTocFrame;

    invoke-direct/range {v8 .. v13}, Lcom/facebook/ads/androidx/media3/extractor/metadata/id3/ChapterTocFrame;-><init>(Ljava/lang/String;ZZ[Ljava/lang/String;[Lcom/facebook/ads/androidx/media3/extractor/metadata/id3/Id3Frame;)V

    return-object v8
.end method

.method public static A08(Lcom/facebook/ads/redexgen/X/4v;I)Lcom/facebook/ads/androidx/media3/extractor/metadata/id3/CommentFrame;
    .locals 7

    .line 24224
    const/4 v0, 0x4

    if-ge p1, v0, :cond_0

    .line 24225
    const/4 v0, 0x0

    return-object v0

    .line 24226
    :cond_0
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/4v;->A0I()I

    move-result v6

    .line 24227
    .local v0, "encoding":I
    invoke-static {v6}, Lcom/facebook/ads/redexgen/X/9U;->A0M(I)Ljava/nio/charset/Charset;

    move-result-object v5

    .line 24228
    .local v1, "charset":Ljava/nio/charset/Charset;
    const/4 v2, 0x3

    new-array v0, v2, [B

    .line 24229
    .local v3, "data":[B
    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1, v2}, Lcom/facebook/ads/redexgen/X/4v;->A0k([BII)V

    .line 24230
    new-instance v4, Ljava/lang/String;

    invoke-direct {v4, v0, v1, v2}, Ljava/lang/String;-><init>([BII)V

    .line 24231
    .local v2, "language":Ljava/lang/String;
    add-int/lit8 v0, p1, -0x4

    new-array v3, v0, [B

    .line 24232
    add-int/lit8 v0, p1, -0x4

    invoke-virtual {p0, v3, v1, v0}, Lcom/facebook/ads/redexgen/X/4v;->A0k([BII)V

    .line 24233
    invoke-static {v3, v1, v6}, Lcom/facebook/ads/redexgen/X/9U;->A03([BII)I

    move-result v0

    .line 24234
    .local v5, "descriptionEndIndex":I
    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, v3, v1, v0, v5}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    .line 24235
    .local v4, "description":Ljava/lang/String;
    invoke-static {v6}, Lcom/facebook/ads/redexgen/X/9U;->A00(I)I

    move-result v1

    add-int/2addr v1, v0

    .line 24236
    .local v6, "textStartIndex":I
    invoke-static {v3, v1, v6}, Lcom/facebook/ads/redexgen/X/9U;->A03([BII)I

    move-result v0

    .line 24237
    .local p0, "textEndIndex":I
    invoke-static {v3, v1, v0, v5}, Lcom/facebook/ads/redexgen/X/9U;->A0L([BIILjava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object v1

    .line 24238
    .local p1, "text":Ljava/lang/String;
    new-instance v0, Lcom/facebook/ads/androidx/media3/extractor/metadata/id3/CommentFrame;

    invoke-direct {v0, v4, v2, v1}, Lcom/facebook/ads/androidx/media3/extractor/metadata/id3/CommentFrame;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public static A09(Lcom/facebook/ads/redexgen/X/4v;I)Lcom/facebook/ads/androidx/media3/extractor/metadata/id3/GeobFrame;
    .locals 8

    .line 24239
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/4v;->A0I()I

    move-result v6

    .line 24240
    .local v0, "encoding":I
    invoke-static {v6}, Lcom/facebook/ads/redexgen/X/9U;->A0M(I)Ljava/nio/charset/Charset;

    move-result-object v7

    .line 24241
    .local v1, "charset":Ljava/nio/charset/Charset;
    add-int/lit8 v0, p1, -0x1

    new-array v5, v0, [B

    .line 24242
    .local v2, "data":[B
    add-int/lit8 v0, p1, -0x1

    const/4 v2, 0x0

    invoke-virtual {p0, v5, v2, v0}, Lcom/facebook/ads/redexgen/X/4v;->A0k([BII)V

    .line 24243
    invoke-static {v5, v2}, Lcom/facebook/ads/redexgen/X/9U;->A02([BI)I

    move-result v1

    .line 24244
    .local v3, "mimeTypeEndIndex":I
    sget-object v0, Lcom/facebook/ads/redexgen/X/k9;->A00:Ljava/nio/charset/Charset;

    new-instance v4, Ljava/lang/String;

    invoke-direct {v4, v5, v2, v1, v0}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    .line 24245
    .local v4, "mimeType":Ljava/lang/String;
    add-int/lit8 v1, v1, 0x1

    .line 24246
    .local v5, "filenameStartIndex":I
    invoke-static {v5, v1, v6}, Lcom/facebook/ads/redexgen/X/9U;->A03([BII)I

    move-result v0

    .line 24247
    .local v6, "filenameEndIndex":I
    invoke-static {v5, v1, v0, v7}, Lcom/facebook/ads/redexgen/X/9U;->A0L([BIILjava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object v3

    .line 24248
    .local v7, "filename":Ljava/lang/String;
    invoke-static {v6}, Lcom/facebook/ads/redexgen/X/9U;->A00(I)I

    move-result v1

    add-int/2addr v1, v0

    .line 24249
    .local p0, "descriptionStartIndex":I
    invoke-static {v5, v1, v6}, Lcom/facebook/ads/redexgen/X/9U;->A03([BII)I

    move-result v0

    .line 24250
    .local p1, "descriptionEndIndex":I
    invoke-static {v5, v1, v0, v7}, Lcom/facebook/ads/redexgen/X/9U;->A0L([BIILjava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object v2

    .line 24251
    .local p2, "description":Ljava/lang/String;
    invoke-static {v6}, Lcom/facebook/ads/redexgen/X/9U;->A00(I)I

    move-result v1

    add-int/2addr v1, v0

    .line 24252
    .local p3, "objectDataStartIndex":I
    array-length v0, v5

    invoke-static {v5, v1, v0}, Lcom/facebook/ads/redexgen/X/9U;->A0Q([BII)[B

    move-result-object v1

    .line 24253
    .local p4, "objectData":[B
    new-instance v0, Lcom/facebook/ads/androidx/media3/extractor/metadata/id3/GeobFrame;

    invoke-direct {v0, v4, v3, v2, v1}, Lcom/facebook/ads/androidx/media3/extractor/metadata/id3/GeobFrame;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[B)V

    return-object v0
.end method

.method public static A0A(Lcom/facebook/ads/redexgen/X/4v;)Lcom/facebook/ads/redexgen/X/IF;
    .locals 10

    .line 24254
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/4v;->A07()I

    move-result v4

    const/16 v3, 0xa

    const/4 v9, 0x0

    const/16 v2, 0xaa

    const/16 v1, 0xa

    const/16 v0, 0xe

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/9U;->A0J(III)Ljava/lang/String;

    move-result-object v7

    if-ge v4, v3, :cond_0

    .line 24255
    const/16 v2, 0x1e

    const/16 v1, 0x1f

    const/16 v0, 0x6c

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/9U;->A0J(III)Ljava/lang/String;

    move-result-object v0

    invoke-static {v7, v0}, Lcom/facebook/ads/redexgen/X/4g;->A07(Ljava/lang/String;Ljava/lang/String;)V

    .line 24256
    return-object v9

    .line 24257
    :cond_0
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/4v;->A0K()I

    move-result v8

    .line 24258
    .local v0, "id":I
    const v0, 0x494433

    const/4 v3, 0x0

    const/4 v6, 0x1

    if-eq v8, v0, :cond_1

    .line 24259
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v2, 0x15c

    const/16 v1, 0x32

    const/16 v0, 0x2f

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/9U;->A0J(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    new-array v4, v6, [Ljava/lang/Object;

    aput-object v0, v4, v3

    const/4 v2, 0x0

    const/4 v1, 0x4

    const/16 v0, 0x32

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/9U;->A0J(III)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v7, v0}, Lcom/facebook/ads/redexgen/X/4g;->A07(Ljava/lang/String;Ljava/lang/String;)V

    .line 24260
    return-object v9

    .line 24261
    :cond_1
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/4v;->A0I()I

    move-result v4

    .line 24262
    .local v1, "majorVersion":I
    invoke-virtual {p0, v6}, Lcom/facebook/ads/redexgen/X/4v;->A0g(I)V

    .line 24263
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/4v;->A0I()I

    move-result v6

    .line 24264
    .local v6, "flags":I
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/4v;->A0H()I

    move-result v2

    .line 24265
    .local v7, "framesSize":I
    const/4 v0, 0x2

    const/4 v5, 0x4

    if-ne v4, v0, :cond_3

    .line 24266
    and-int/lit8 v0, v6, 0x40

    if-eqz v0, :cond_2

    const/4 v0, 0x1

    .line 24267
    .local v8, "isCompressed":Z
    :goto_0
    if-eqz v0, :cond_4

    .line 24268
    const/16 v2, 0xb4

    const/16 v1, 0x44

    const/16 v0, 0xb

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/9U;->A0J(III)Ljava/lang/String;

    move-result-object v0

    invoke-static {v7, v0}, Lcom/facebook/ads/redexgen/X/4g;->A07(Ljava/lang/String;Ljava/lang/String;)V

    .line 24269
    return-object v9

    .line 24270
    :cond_2
    const/4 v0, 0x0

    goto :goto_0

    .line 24271
    :cond_3
    const/4 v0, 0x3

    if-ne v4, v0, :cond_7

    .line 24272
    and-int/lit8 v0, v6, 0x40

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    .line 24273
    .local v2, "hasExtendedHeader":Z
    :goto_1
    if-eqz v0, :cond_4

    .line 24274
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/4v;->A0C()I

    move-result v0

    .line 24275
    .local v3, "extendedHeaderSize":I
    invoke-virtual {p0, v0}, Lcom/facebook/ads/redexgen/X/4v;->A0g(I)V

    .line 24276
    add-int/lit8 v0, v0, 0x4

    sub-int/2addr v2, v0

    .line 24277
    :cond_4
    :goto_2
    if-ge v4, v5, :cond_5

    and-int/lit16 v0, v6, 0x80

    if-eqz v0, :cond_5

    const/4 v3, 0x1

    .line 24278
    .local v2, "isUnsynchronized":Z
    :cond_5
    new-instance v0, Lcom/facebook/ads/redexgen/X/IF;

    invoke-direct {v0, v4, v3, v2}, Lcom/facebook/ads/redexgen/X/IF;-><init>(IZI)V

    return-object v0

    .line 24279
    :cond_6
    const/4 v0, 0x0

    goto :goto_1

    .line 24280
    :cond_7
    if-ne v4, v5, :cond_b

    .line 24281
    and-int/lit8 v0, v6, 0x40

    if-eqz v0, :cond_a

    const/4 v0, 0x1

    .line 24282
    .restart local v2    # "isUnsynchronized":Z
    :goto_3
    if-eqz v0, :cond_8

    .line 24283
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/4v;->A0H()I

    move-result v1

    .line 24284
    .restart local v3    # "extendedHeaderSize":I
    add-int/lit8 v0, v1, -0x4

    invoke-virtual {p0, v0}, Lcom/facebook/ads/redexgen/X/4v;->A0g(I)V

    .line 24285
    sub-int/2addr v2, v1

    .line 24286
    .end local v3    # "extendedHeaderSize":I
    :cond_8
    and-int/lit8 v0, v6, 0x10

    if-eqz v0, :cond_9

    const/4 v0, 0x1

    .line 24287
    .local v3, "hasFooter":Z
    :goto_4
    if-eqz v0, :cond_4

    .line 24288
    add-int/lit8 v2, v2, -0xa

    goto :goto_2

    .line 24289
    :cond_9
    const/4 v0, 0x0

    goto :goto_4

    .line 24290
    :cond_a
    const/4 v0, 0x0

    goto :goto_3

    .line 24291
    .end local v2    # "isUnsynchronized":Z
    :cond_b
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v2, 0xf8

    const/16 v1, 0x2e

    const/16 v0, 0x36

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/9U;->A0J(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v7, v0}, Lcom/facebook/ads/redexgen/X/4g;->A07(Ljava/lang/String;Ljava/lang/String;)V

    .line 24292
    return-object v9
.end method

.method public static A0B(ILcom/facebook/ads/redexgen/X/4v;ZILcom/facebook/ads/redexgen/X/IE;)Lcom/facebook/ads/androidx/media3/extractor/metadata/id3/Id3Frame;
    .locals 21

    .line 24293
    move-object/from16 v12, p1

    invoke-virtual {v12}, Lcom/facebook/ads/redexgen/X/4v;->A0I()I

    move-result v11

    .line 24294
    .local v9, "frameId0":I
    invoke-virtual {v12}, Lcom/facebook/ads/redexgen/X/4v;->A0I()I

    move-result v10

    .line 24295
    .local v10, "frameId1":I
    invoke-virtual {v12}, Lcom/facebook/ads/redexgen/X/4v;->A0I()I

    move-result v9

    .line 24296
    .local v11, "frameId2":I
    const/4 v0, 0x3

    move/from16 v13, p0

    if-lt v13, v0, :cond_4

    invoke-virtual {v12}, Lcom/facebook/ads/redexgen/X/4v;->A0I()I

    move-result v8

    .line 24297
    .local v13, "frameId3":I
    :goto_0
    const/4 v1, 0x4

    move/from16 p2, p2

    if-ne v13, v1, :cond_2

    .line 24298
    invoke-virtual {v12}, Lcom/facebook/ads/redexgen/X/4v;->A0L()I

    move-result v2

    .line 24299
    .local v1, "frameSize":I
    if-nez p2, :cond_1

    .line 24300
    and-int/lit16 v7, v2, 0xff

    shr-int/lit8 v1, v2, 0x8

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x7

    or-int/2addr v7, v1

    shr-int/lit8 v1, v2, 0x10

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0xe

    or-int/2addr v7, v1

    shr-int/lit8 v1, v2, 0x18

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x15

    or-int/2addr v7, v1

    .line 24301
    .local v15, "frameSize":I
    :goto_1
    if-lt v13, v0, :cond_0

    invoke-virtual {v12}, Lcom/facebook/ads/redexgen/X/4v;->A0M()I

    move-result v3

    .line 24302
    .local v6, "flags":I
    :goto_2
    const/16 v16, 0x0

    if-nez v11, :cond_5

    if-nez v10, :cond_5

    if-nez v9, :cond_5

    if-nez v8, :cond_5

    if-nez v7, :cond_5

    if-nez v3, :cond_5

    .line 24303
    invoke-virtual {v12}, Lcom/facebook/ads/redexgen/X/4v;->A0A()I

    move-result v0

    invoke-virtual {v12, v0}, Lcom/facebook/ads/redexgen/X/4v;->A0f(I)V

    .line 24304
    return-object v16

    .line 24305
    :cond_0
    const/4 v3, 0x0

    goto :goto_2

    .line 24306
    :cond_1
    move v7, v2

    goto :goto_1

    .line 24307
    .end local v1    # "frameSize":I
    :cond_2
    if-ne v13, v0, :cond_3

    .line 24308
    invoke-virtual {v12}, Lcom/facebook/ads/redexgen/X/4v;->A0L()I

    move-result v7

    .restart local v1    # "frameSize":I
    goto :goto_1

    .line 24309
    .end local v1    # "frameSize":I
    :cond_3
    invoke-virtual {v12}, Lcom/facebook/ads/redexgen/X/4v;->A0K()I

    move-result v7

    goto :goto_1

    .line 24310
    :cond_4
    const/4 v8, 0x0

    goto :goto_0

    .line 24311
    :cond_5
    invoke-virtual {v12}, Lcom/facebook/ads/redexgen/X/4v;->A09()I

    move-result v6

    add-int/2addr v6, v7

    .line 24312
    .local v5, "nextFramePosition":I
    invoke-virtual {v12}, Lcom/facebook/ads/redexgen/X/4v;->A0A()I

    move-result v14

    const/16 v4, 0xaa

    const/16 v2, 0xa

    const/16 v1, 0xe

    invoke-static {v4, v2, v1}, Lcom/facebook/ads/redexgen/X/9U;->A0J(III)Ljava/lang/String;

    move-result-object v5

    if-le v6, v14, :cond_6

    .line 24313
    const/16 v2, 0x85

    const/16 v1, 0x25

    const/16 v0, 0x6c

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/9U;->A0J(III)Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Lcom/facebook/ads/redexgen/X/4g;->A07(Ljava/lang/String;Ljava/lang/String;)V

    .line 24314
    invoke-virtual {v12}, Lcom/facebook/ads/redexgen/X/4v;->A0A()I

    move-result v0

    invoke-virtual {v12, v0}, Lcom/facebook/ads/redexgen/X/4v;->A0f(I)V

    .line 24315
    return-object v16

    .line 24316
    :cond_6
    move-object/from16 v17, p4

    if-eqz v17, :cond_8

    .line 24317
    move/from16 v18, v13

    .end local v5    # "nextFramePosition":I
    .local v14, "nextFramePosition":I
    .end local v6    # "flags":I
    .local v18, "flags":I
    move/from16 v20, v10

    move/from16 p0, v9

    move/from16 p1, v8

    move/from16 v19, v11

    invoke-interface/range {v17 .. v22}, Lcom/facebook/ads/redexgen/X/IE;->A6Q(IIIII)Z

    move-result v1

    if-nez v1, :cond_8

    .line 24318
    invoke-virtual {v12, v6}, Lcom/facebook/ads/redexgen/X/4v;->A0f(I)V

    sget-object v2, Lcom/facebook/ads/redexgen/X/9U;->A02:[Ljava/lang/String;

    const/4 v0, 0x6

    aget-object v1, v2, v0

    const/4 v0, 0x3

    aget-object v0, v2, v0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eq v1, v0, :cond_7

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    .line 24319
    :cond_7
    sget-object v2, Lcom/facebook/ads/redexgen/X/9U;->A02:[Ljava/lang/String;

    const-string v1, "e3YBkKHUVMVtsvvPrHCe6nHMIy"

    const/4 v0, 0x4

    aput-object v1, v2, v0

    return-object v16

    .line 24320
    .end local v5
    .end local v6
    .restart local v14    # "nextFramePosition":I
    .restart local v18    # "flags":I
    :cond_8
    const/4 v14, 0x0

    .line 24321
    .local v1, "isCompressed":Z
    const/4 v4, 0x0

    .line 24322
    .local v2, "isEncrypted":Z
    const/4 v2, 0x0

    .line 24323
    .local v3, "isUnsynchronized":Z
    const/4 v1, 0x0

    .line 24324
    .local v4, "hasDataLength":Z
    const/4 v15, 0x0

    .line 24325
    .local v5, "hasGroupIdentifier":Z
    if-ne v13, v0, :cond_e

    .line 24326
    .end local v18    # "flags":I
    .local v12, "flags":I
    and-int/lit16 v0, v3, 0x80

    if-eqz v0, :cond_d

    const/4 v1, 0x1

    .line 24327
    :goto_3
    and-int/lit8 v0, v3, 0x40

    if-eqz v0, :cond_c

    const/4 v4, 0x1

    .line 24328
    :goto_4
    and-int/lit8 v0, v3, 0x20

    if-eqz v0, :cond_b

    const/4 v15, 0x1

    .line 24329
    :goto_5
    move v14, v1

    .line 24330
    .end local v1    # "isCompressed":Z
    .end local v2    # "isEncrypted":Z
    .end local v3    # "isUnsynchronized":Z
    .end local v4    # "hasDataLength":Z
    .end local v5    # "hasGroupIdentifier":Z
    .local v17, "isCompressed":Z
    .local v19, "isEncrypted":Z
    .local v20, "isUnsynchronized":Z
    .local p0, "hasDataLength":Z
    .local p1, "hasGroupIdentifier":Z
    :cond_9
    :goto_6
    if-nez v14, :cond_a

    if-eqz v4, :cond_15

    .line 24331
    :cond_a
    const/16 v2, 0x126

    const/16 v1, 0x32

    const/16 v0, 0x74

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/9U;->A0J(III)Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Lcom/facebook/ads/redexgen/X/4g;->A07(Ljava/lang/String;Ljava/lang/String;)V

    .line 24332
    invoke-virtual {v12, v6}, Lcom/facebook/ads/redexgen/X/4v;->A0f(I)V

    .line 24333
    return-object v16

    .line 24334
    :cond_b
    const/4 v15, 0x0

    goto :goto_5

    .line 24335
    :cond_c
    const/4 v4, 0x0

    goto :goto_4

    .line 24336
    :cond_d
    const/4 v1, 0x0

    goto :goto_3

    .line 24337
    .end local v12    # "flags":I
    .restart local v18    # "flags":I
    .end local v18    # "flags":I
    .restart local v12    # "flags":I
    :cond_e
    const/4 v0, 0x4

    if-ne v13, v0, :cond_9

    .line 24338
    and-int/lit8 v0, v3, 0x40

    if-eqz v0, :cond_13

    const/4 v15, 0x1

    .line 24339
    :goto_7
    and-int/lit8 v0, v3, 0x8

    if-eqz v0, :cond_12

    const/4 v14, 0x1

    .line 24340
    :goto_8
    and-int/lit8 v4, v3, 0x4

    sget-object v2, Lcom/facebook/ads/redexgen/X/9U;->A02:[Ljava/lang/String;

    const/4 v0, 0x6

    aget-object v1, v2, v0

    const/4 v0, 0x3

    aget-object v0, v2, v0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eq v1, v0, :cond_10

    sget-object v2, Lcom/facebook/ads/redexgen/X/9U;->A02:[Ljava/lang/String;

    const-string v1, "YrGhE76fNDxr3LSniMVr4VzIG8CV74Mf"

    const/4 v0, 0x5

    aput-object v1, v2, v0

    if-eqz v4, :cond_11

    :goto_9
    const/4 v4, 0x1

    .line 24341
    :goto_a
    and-int/lit8 v0, v3, 0x2

    if-eqz v0, :cond_f

    const/4 v2, 0x1

    .line 24342
    :goto_b
    and-int/lit8 v0, v3, 0x1

    if-eqz v0, :cond_14

    const/4 v1, 0x1

    goto :goto_6

    .line 24343
    :cond_f
    const/4 v2, 0x0

    goto :goto_b

    :cond_10
    sget-object v2, Lcom/facebook/ads/redexgen/X/9U;->A02:[Ljava/lang/String;

    const-string v1, "eLbk71BgL0f2DKr72Qx6greuw57xH3Wk"

    const/4 v0, 0x5

    aput-object v1, v2, v0

    if-eqz v4, :cond_11

    goto :goto_9

    .line 24344
    :cond_11
    const/4 v4, 0x0

    goto :goto_a

    .line 24345
    :cond_12
    const/4 v14, 0x0

    goto :goto_8

    .line 24346
    :cond_13
    const/4 v15, 0x0

    goto :goto_7

    .line 24347
    :cond_14
    const/4 v1, 0x0

    goto :goto_6

    .line 24348
    :cond_15
    if-eqz v15, :cond_16

    .line 24349
    add-int/lit8 v7, v7, -0x1

    .line 24350
    const/4 v0, 0x1

    invoke-virtual {v12, v0}, Lcom/facebook/ads/redexgen/X/4v;->A0g(I)V

    .line 24351
    :cond_16
    if-eqz v1, :cond_17

    .line 24352
    add-int/lit8 v7, v7, -0x4

    .line 24353
    const/4 v0, 0x4

    invoke-virtual {v12, v0}, Lcom/facebook/ads/redexgen/X/4v;->A0g(I)V

    .line 24354
    :cond_17
    if-eqz v2, :cond_18

    .line 24355
    invoke-static {v12, v7}, Lcom/facebook/ads/redexgen/X/9U;->A01(Lcom/facebook/ads/redexgen/X/4v;I)I

    move-result v7

    .line 24356
    :cond_18
    const/16 v0, 0x54

    const/4 v4, 0x2

    const/16 v1, 0x58

    if-ne v11, v0, :cond_1a

    if-ne v10, v1, :cond_1a

    if-ne v9, v1, :cond_1a

    if-eq v13, v4, :cond_19

    if-ne v8, v1, :cond_1a

    .line 24357
    :cond_19
    :try_start_0
    invoke-static {v12, v7}, Lcom/facebook/ads/redexgen/X/9U;->A0E(Lcom/facebook/ads/redexgen/X/4v;I)Lcom/facebook/ads/androidx/media3/extractor/metadata/id3/TextInformationFrame;

    move-result-object v4

    .local v1, "frame":Lcom/facebook/ads/androidx/media3/extractor/metadata/id3/Id3Frame;
    goto/16 :goto_d

    .line 24358
    .end local v1    # "frame":Lcom/facebook/ads/androidx/media3/extractor/metadata/id3/Id3Frame;
    :cond_1a
    if-ne v11, v0, :cond_1b

    .line 24359
    invoke-static {v13, v11, v10, v9, v8}, Lcom/facebook/ads/redexgen/X/9U;->A0K(IIIII)Ljava/lang/String;

    move-result-object v0

    .line 24360
    .local v1, "id":Ljava/lang/String;
    invoke-static {v12, v7, v0}, Lcom/facebook/ads/redexgen/X/9U;->A0F(Lcom/facebook/ads/redexgen/X/4v;ILjava/lang/String;)Lcom/facebook/ads/androidx/media3/extractor/metadata/id3/TextInformationFrame;

    move-result-object v4

    .line 24361
    .local v1, "frame":Lcom/facebook/ads/androidx/media3/extractor/metadata/id3/Id3Frame;
    goto/16 :goto_d

    :cond_1b
    const/16 v0, 0x57

    if-ne v11, v0, :cond_1d

    if-ne v10, v1, :cond_1d

    if-ne v9, v1, :cond_1d

    if-eq v13, v4, :cond_1c

    if-ne v8, v1, :cond_1d

    .line 24362
    :cond_1c
    invoke-static {v12, v7}, Lcom/facebook/ads/redexgen/X/9U;->A0G(Lcom/facebook/ads/redexgen/X/4v;I)Lcom/facebook/ads/androidx/media3/extractor/metadata/id3/UrlLinkFrame;

    move-result-object v4

    .restart local v1    # "frame":Lcom/facebook/ads/androidx/media3/extractor/metadata/id3/Id3Frame;
    goto/16 :goto_d

    .line 24363
    .end local v1    # "frame":Lcom/facebook/ads/androidx/media3/extractor/metadata/id3/Id3Frame;
    :cond_1d
    if-ne v11, v0, :cond_1e

    .line 24364
    invoke-static {v13, v11, v10, v9, v8}, Lcom/facebook/ads/redexgen/X/9U;->A0K(IIIII)Ljava/lang/String;

    move-result-object v0

    .line 24365
    .local v1, "id":Ljava/lang/String;
    invoke-static {v12, v7, v0}, Lcom/facebook/ads/redexgen/X/9U;->A0H(Lcom/facebook/ads/redexgen/X/4v;ILjava/lang/String;)Lcom/facebook/ads/androidx/media3/extractor/metadata/id3/UrlLinkFrame;

    move-result-object v4

    .line 24366
    .local v1, "frame":Lcom/facebook/ads/androidx/media3/extractor/metadata/id3/Id3Frame;
    goto/16 :goto_d

    .end local v1    # "frame":Lcom/facebook/ads/androidx/media3/extractor/metadata/id3/Id3Frame;
    :cond_1e
    const/16 v0, 0x49

    const/16 v3, 0x50

    if-ne v11, v3, :cond_1f

    const/16 v1, 0x52

    if-ne v10, v1, :cond_1f

    if-ne v9, v0, :cond_1f

    const/16 v1, 0x56

    if-ne v8, v1, :cond_1f

    .line 24367
    invoke-static {v12, v7}, Lcom/facebook/ads/redexgen/X/9U;->A0D(Lcom/facebook/ads/redexgen/X/4v;I)Lcom/facebook/ads/androidx/media3/extractor/metadata/id3/PrivFrame;

    move-result-object v4

    .restart local v1    # "frame":Lcom/facebook/ads/androidx/media3/extractor/metadata/id3/Id3Frame;
    goto/16 :goto_d

    .line 24368
    .end local v1    # "frame":Lcom/facebook/ads/androidx/media3/extractor/metadata/id3/Id3Frame;
    :cond_1f
    const/16 v1, 0x47

    const/16 v2, 0x4f

    if-ne v11, v1, :cond_21

    const/16 v1, 0x45

    if-ne v10, v1, :cond_21

    if-ne v9, v2, :cond_21

    const/16 v1, 0x42

    if-eq v8, v1, :cond_20

    if-ne v13, v4, :cond_21

    .line 24369
    :cond_20
    invoke-static {v12, v7}, Lcom/facebook/ads/redexgen/X/9U;->A09(Lcom/facebook/ads/redexgen/X/4v;I)Lcom/facebook/ads/androidx/media3/extractor/metadata/id3/GeobFrame;

    move-result-object v4

    .restart local v1    # "frame":Lcom/facebook/ads/androidx/media3/extractor/metadata/id3/Id3Frame;
    goto :goto_d

    .line 24370
    .end local v1    # "frame":Lcom/facebook/ads/androidx/media3/extractor/metadata/id3/Id3Frame;
    :cond_21
    const/16 v14, 0x41

    const/16 v1, 0x43

    if-ne v13, v4, :cond_22

    if-ne v11, v3, :cond_23

    if-ne v10, v0, :cond_23

    if-ne v9, v1, :cond_23

    goto :goto_c

    :cond_22
    if-ne v11, v14, :cond_23

    if-ne v10, v3, :cond_23

    if-ne v9, v0, :cond_23

    if-ne v8, v1, :cond_23

    .line 24371
    :goto_c
    invoke-static {v12, v7, v13}, Lcom/facebook/ads/redexgen/X/9U;->A04(Lcom/facebook/ads/redexgen/X/4v;II)Lcom/facebook/ads/androidx/media3/extractor/metadata/id3/ApicFrame;

    move-result-object v4

    .restart local v1    # "frame":Lcom/facebook/ads/androidx/media3/extractor/metadata/id3/Id3Frame;
    goto :goto_d

    .line 24372
    .end local v1    # "frame":Lcom/facebook/ads/androidx/media3/extractor/metadata/id3/Id3Frame;
    :cond_23
    const/16 v0, 0x4d

    if-ne v11, v1, :cond_25

    if-ne v10, v2, :cond_25

    if-ne v9, v0, :cond_25

    if-eq v8, v0, :cond_24

    if-ne v13, v4, :cond_25

    .line 24373
    :cond_24
    invoke-static {v12, v7}, Lcom/facebook/ads/redexgen/X/9U;->A08(Lcom/facebook/ads/redexgen/X/4v;I)Lcom/facebook/ads/androidx/media3/extractor/metadata/id3/CommentFrame;

    move-result-object v4

    .restart local v1    # "frame":Lcom/facebook/ads/androidx/media3/extractor/metadata/id3/Id3Frame;
    goto :goto_d

    .line 24374
    .end local v1    # "frame":Lcom/facebook/ads/androidx/media3/extractor/metadata/id3/Id3Frame;
    :cond_25
    move/from16 p3, p3

    if-ne v11, v1, :cond_26

    const/16 v4, 0x48

    if-ne v10, v4, :cond_26

    if-ne v9, v14, :cond_26

    if-ne v8, v3, :cond_26

    .line 24375
    move-object/from16 v20, v12

    move/from16 p1, v13

    move/from16 p0, v7

    move-object/from16 p4, v17

    invoke-static/range {v20 .. v25}, Lcom/facebook/ads/redexgen/X/9U;->A06(Lcom/facebook/ads/redexgen/X/4v;IIZILcom/facebook/ads/redexgen/X/IE;)Lcom/facebook/ads/androidx/media3/extractor/metadata/id3/ChapterFrame;

    move-result-object v4

    .restart local v1    # "frame":Lcom/facebook/ads/androidx/media3/extractor/metadata/id3/Id3Frame;
    goto :goto_d

    .line 24376
    .end local v1    # "frame":Lcom/facebook/ads/androidx/media3/extractor/metadata/id3/Id3Frame;
    :cond_26
    if-ne v11, v1, :cond_27

    const/16 v3, 0x54

    if-ne v10, v3, :cond_27

    if-ne v9, v2, :cond_27

    if-ne v8, v1, :cond_27

    .line 24377
    move-object/from16 v20, v12

    move/from16 p1, v13

    move/from16 p0, v7

    move-object/from16 p4, v17

    invoke-static/range {v20 .. v25}, Lcom/facebook/ads/redexgen/X/9U;->A07(Lcom/facebook/ads/redexgen/X/4v;IIZILcom/facebook/ads/redexgen/X/IE;)Lcom/facebook/ads/androidx/media3/extractor/metadata/id3/ChapterTocFrame;

    move-result-object v4

    .restart local v1    # "frame":Lcom/facebook/ads/androidx/media3/extractor/metadata/id3/Id3Frame;
    goto :goto_d

    .line 24378
    .end local v1    # "frame":Lcom/facebook/ads/androidx/media3/extractor/metadata/id3/Id3Frame;
    :cond_27
    if-ne v11, v0, :cond_28

    const/16 v0, 0x4c

    if-ne v10, v0, :cond_28

    if-ne v9, v0, :cond_28

    const/16 v0, 0x54

    if-ne v8, v0, :cond_28

    .line 24379
    invoke-static {v12, v7}, Lcom/facebook/ads/redexgen/X/9U;->A0C(Lcom/facebook/ads/redexgen/X/4v;I)Lcom/facebook/ads/androidx/media3/extractor/metadata/id3/MlltFrame;

    move-result-object v4

    .restart local v1    # "frame":Lcom/facebook/ads/androidx/media3/extractor/metadata/id3/Id3Frame;
    goto :goto_d

    .line 24380
    .end local v1    # "frame":Lcom/facebook/ads/androidx/media3/extractor/metadata/id3/Id3Frame;
    :cond_28
    invoke-static {v13, v11, v10, v9, v8}, Lcom/facebook/ads/redexgen/X/9U;->A0K(IIIII)Ljava/lang/String;

    move-result-object v0

    .line 24381
    .local v1, "id":Ljava/lang/String;
    invoke-static {v12, v7, v0}, Lcom/facebook/ads/redexgen/X/9U;->A05(Lcom/facebook/ads/redexgen/X/4v;ILjava/lang/String;)Lcom/facebook/ads/androidx/media3/extractor/metadata/id3/BinaryFrame;

    move-result-object v4

    .line 24382
    .local v1, "frame":Lcom/facebook/ads/androidx/media3/extractor/metadata/id3/Id3Frame;
    :goto_d
    if-nez v4, :cond_29

    .line 24383
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v2, 0x3d

    const/16 v1, 0x1b

    const/4 v0, 0x7

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/9U;->A0J(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 24384
    invoke-static {v13, v11, v10, v9, v8}, Lcom/facebook/ads/redexgen/X/9U;->A0K(IIIII)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/16 v2, 0x12

    const/16 v1, 0xc

    const/16 v0, 0x27

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/9U;->A0J(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 24385
    invoke-static {v5, v0}, Lcom/facebook/ads/redexgen/X/4g;->A07(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 24386
    :cond_29
    invoke-virtual {v12, v6}, Lcom/facebook/ads/redexgen/X/4v;->A0f(I)V

    .line 24387
    return-object v4

    .line 24388
    .end local v1    # "frame":Lcom/facebook/ads/androidx/media3/extractor/metadata/id3/Id3Frame;
    :catchall_0
    move-exception v0

    .end local v1
    invoke-virtual {v12, v6}, Lcom/facebook/ads/redexgen/X/4v;->A0f(I)V

    .line 24389
    throw v0
.end method

.method public static A0C(Lcom/facebook/ads/redexgen/X/4v;I)Lcom/facebook/ads/androidx/media3/extractor/metadata/id3/MlltFrame;
    .locals 11

    .line 24390
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/4v;->A0M()I

    move-result v8

    .line 24391
    .local v6, "mpegFramesBetweenReference":I
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/4v;->A0K()I

    move-result v9

    .line 24392
    .local v7, "bytesBetweenReference":I
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/4v;->A0K()I

    move-result v10

    .line 24393
    .local v8, "millisecondsBetweenReference":I
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/4v;->A0I()I

    move-result v6

    .line 24394
    .local v9, "bitsForBytesDeviation":I
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/4v;->A0I()I

    move-result v5

    .line 24395
    .local v10, "bitsForMillisecondsDeviation":I
    new-instance v4, Lcom/facebook/ads/redexgen/X/4u;

    invoke-direct {v4}, Lcom/facebook/ads/redexgen/X/4u;-><init>()V

    .line 24396
    .local p0, "references":Lcom/facebook/ads/redexgen/X/4u;
    invoke-virtual {v4, p0}, Lcom/facebook/ads/redexgen/X/4u;->A0C(Lcom/facebook/ads/redexgen/X/4v;)V

    .line 24397
    add-int/lit8 v0, p1, -0xa

    mul-int/lit8 v7, v0, 0x8

    .line 24398
    .local p2, "referencesBits":I
    add-int v0, v6, v5

    .line 24399
    .local p3, "bitsPerReference":I
    div-int/2addr v7, v0

    .line 24400
    .local p4, "referencesCount":I
    new-array p0, v7, [I

    .line 24401
    .local v5, "bytesDeviations":[I
    new-array p1, v7, [I

    .line 24402
    .local v4, "millisecondsDeviations":[I
    const/4 v3, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v3, v7, :cond_1

    .line 24403
    invoke-virtual {v4, v6}, Lcom/facebook/ads/redexgen/X/4u;->A04(I)I

    move-result v1

    .line 24404
    .local v1, "bytesDeviation":I
    invoke-virtual {v4, v5}, Lcom/facebook/ads/redexgen/X/4u;->A04(I)I

    move-result v0

    .line 24405
    .local v2, "millisecondsDeviation":I
    aput v1, p0, v3

    .line 24406
    aput v0, p1, v3

    sget-object v1, Lcom/facebook/ads/redexgen/X/9U;->A02:[Ljava/lang/String;

    const/4 v0, 0x5

    aget-object v1, v1, v0

    const/16 v0, 0x16

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x46

    if-eq v1, v0, :cond_0

    .line 24407
    .end local v1    # "bytesDeviation":I
    .end local v2    # "millisecondsDeviation":I
    sget-object v2, Lcom/facebook/ads/redexgen/X/9U;->A02:[Ljava/lang/String;

    const-string v1, "fcLz7frwMRu6ITyb"

    const/4 v0, 0x4

    aput-object v1, v2, v0

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    .line 24408
    .end local v0    # "i":I
    :cond_1
    new-instance v7, Lcom/facebook/ads/androidx/media3/extractor/metadata/id3/MlltFrame;

    .end local v4    # "millisecondsDeviations":[I
    .local p6, "millisecondsDeviations":[I
    .end local v5    # "bytesDeviations":[I
    .local p7, "bytesDeviations":[I
    invoke-direct/range {v7 .. v12}, Lcom/facebook/ads/androidx/media3/extractor/metadata/id3/MlltFrame;-><init>(III[I[I)V

    return-object v7
.end method

.method public static A0D(Lcom/facebook/ads/redexgen/X/4v;I)Lcom/facebook/ads/androidx/media3/extractor/metadata/id3/PrivFrame;
    .locals 5

    .line 24409
    new-array v4, p1, [B

    .line 24410
    .local v0, "data":[B
    const/4 v3, 0x0

    invoke-virtual {p0, v4, v3, p1}, Lcom/facebook/ads/redexgen/X/4v;->A0k([BII)V

    .line 24411
    invoke-static {v4, v3}, Lcom/facebook/ads/redexgen/X/9U;->A02([BI)I

    move-result v1

    .line 24412
    .local v2, "ownerEndIndex":I
    sget-object v0, Lcom/facebook/ads/redexgen/X/k9;->A00:Ljava/nio/charset/Charset;

    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, v4, v3, v1, v0}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    .line 24413
    .local v1, "owner":Ljava/lang/String;
    add-int/lit8 v1, v1, 0x1

    .line 24414
    .local v3, "privateDataStartIndex":I
    array-length v0, v4

    invoke-static {v4, v1, v0}, Lcom/facebook/ads/redexgen/X/9U;->A0Q([BII)[B

    move-result-object v1

    .line 24415
    .local v4, "privateData":[B
    new-instance v0, Lcom/facebook/ads/androidx/media3/extractor/metadata/id3/PrivFrame;

    invoke-direct {v0, v2, v1}, Lcom/facebook/ads/androidx/media3/extractor/metadata/id3/PrivFrame;-><init>(Ljava/lang/String;[B)V

    return-object v0
.end method

.method public static A0E(Lcom/facebook/ads/redexgen/X/4v;I)Lcom/facebook/ads/androidx/media3/extractor/metadata/id3/TextInformationFrame;
    .locals 6

    .line 24416
    const/4 v0, 0x1

    if-ge p1, v0, :cond_0

    .line 24417
    const/4 v0, 0x0

    return-object v0

    .line 24418
    :cond_0
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/4v;->A0I()I

    move-result v5

    .line 24419
    .local v0, "encoding":I
    add-int/lit8 v0, p1, -0x1

    new-array v3, v0, [B

    .line 24420
    .local v1, "data":[B
    add-int/lit8 v0, p1, -0x1

    const/4 v2, 0x0

    invoke-virtual {p0, v3, v2, v0}, Lcom/facebook/ads/redexgen/X/4v;->A0k([BII)V

    .line 24421
    invoke-static {v3, v2, v5}, Lcom/facebook/ads/redexgen/X/9U;->A03([BII)I

    move-result v1

    .line 24422
    .local v2, "descriptionEndIndex":I
    invoke-static {v5}, Lcom/facebook/ads/redexgen/X/9U;->A0M(I)Ljava/nio/charset/Charset;

    move-result-object v0

    new-instance v4, Ljava/lang/String;

    invoke-direct {v4, v3, v2, v1, v0}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    .line 24423
    .local v3, "description":Ljava/lang/String;
    invoke-static {v5}, Lcom/facebook/ads/redexgen/X/9U;->A00(I)I

    move-result v0

    add-int/2addr v0, v1

    .line 24424
    invoke-static {v3, v5, v0}, Lcom/facebook/ads/redexgen/X/9U;->A0I([BII)Lcom/facebook/ads/redexgen/X/BP;

    move-result-object v3

    .line 24425
    .local v4, "values":Lcom/facebook/ads/redexgen/X/BP;, "Lcom/google/common/collect/ImmutableList<Ljava/lang/String;>;"
    const/16 v2, 0x158

    const/4 v1, 0x4

    const/16 v0, 0x67

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/9U;->A0J(III)Ljava/lang/String;

    move-result-object v1

    new-instance v0, Lcom/facebook/ads/androidx/media3/extractor/metadata/id3/TextInformationFrame;

    invoke-direct {v0, v1, v4, v3}, Lcom/facebook/ads/androidx/media3/extractor/metadata/id3/TextInformationFrame;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V

    return-object v0
.end method

.method public static A0F(Lcom/facebook/ads/redexgen/X/4v;ILjava/lang/String;)Lcom/facebook/ads/androidx/media3/extractor/metadata/id3/TextInformationFrame;
    .locals 5

    .line 24426
    const/4 v0, 0x1

    const/4 v4, 0x0

    if-ge p1, v0, :cond_0

    .line 24427
    return-object v4

    .line 24428
    :cond_0
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/4v;->A0I()I

    move-result v3

    .line 24429
    .local v0, "encoding":I
    add-int/lit8 v0, p1, -0x1

    new-array v2, v0, [B

    .line 24430
    .local v2, "data":[B
    add-int/lit8 v1, p1, -0x1

    const/4 v0, 0x0

    invoke-virtual {p0, v2, v0, v1}, Lcom/facebook/ads/redexgen/X/4v;->A0k([BII)V

    .line 24431
    invoke-static {v2, v3, v0}, Lcom/facebook/ads/redexgen/X/9U;->A0I([BII)Lcom/facebook/ads/redexgen/X/BP;

    move-result-object v1

    .line 24432
    .local v3, "values":Lcom/facebook/ads/redexgen/X/BP;, "Lcom/google/common/collect/ImmutableList<Ljava/lang/String;>;"
    new-instance v0, Lcom/facebook/ads/androidx/media3/extractor/metadata/id3/TextInformationFrame;

    invoke-direct {v0, p2, v4, v1}, Lcom/facebook/ads/androidx/media3/extractor/metadata/id3/TextInformationFrame;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V

    return-object v0
.end method

.method public static A0G(Lcom/facebook/ads/redexgen/X/4v;I)Lcom/facebook/ads/androidx/media3/extractor/metadata/id3/UrlLinkFrame;
    .locals 6

    .line 24433
    const/4 v0, 0x1

    if-ge p1, v0, :cond_0

    .line 24434
    const/4 v0, 0x0

    return-object v0

    .line 24435
    :cond_0
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/4v;->A0I()I

    move-result v5

    .line 24436
    .local v0, "encoding":I
    add-int/lit8 v0, p1, -0x1

    new-array v3, v0, [B

    .line 24437
    .local v1, "data":[B
    add-int/lit8 v0, p1, -0x1

    const/4 v2, 0x0

    invoke-virtual {p0, v3, v2, v0}, Lcom/facebook/ads/redexgen/X/4v;->A0k([BII)V

    .line 24438
    invoke-static {v3, v2, v5}, Lcom/facebook/ads/redexgen/X/9U;->A03([BII)I

    move-result v1

    .line 24439
    .local v2, "descriptionEndIndex":I
    invoke-static {v5}, Lcom/facebook/ads/redexgen/X/9U;->A0M(I)Ljava/nio/charset/Charset;

    move-result-object v0

    new-instance v4, Ljava/lang/String;

    invoke-direct {v4, v3, v2, v1, v0}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    .line 24440
    .local v3, "description":Ljava/lang/String;
    invoke-static {v5}, Lcom/facebook/ads/redexgen/X/9U;->A00(I)I

    move-result v2

    add-int/2addr v2, v1

    .line 24441
    .local v4, "urlStartIndex":I
    invoke-static {v3, v2}, Lcom/facebook/ads/redexgen/X/9U;->A02([BI)I

    move-result v1

    .line 24442
    .local v5, "urlEndIndex":I
    sget-object v0, Lcom/facebook/ads/redexgen/X/k9;->A00:Ljava/nio/charset/Charset;

    invoke-static {v3, v2, v1, v0}, Lcom/facebook/ads/redexgen/X/9U;->A0L([BIILjava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object v3

    .line 24443
    .local p0, "url":Ljava/lang/String;
    const/16 v2, 0x18e

    const/4 v1, 0x4

    const/16 v0, 0x23

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/9U;->A0J(III)Ljava/lang/String;

    move-result-object v1

    new-instance v0, Lcom/facebook/ads/androidx/media3/extractor/metadata/id3/UrlLinkFrame;

    invoke-direct {v0, v1, v4, v3}, Lcom/facebook/ads/androidx/media3/extractor/metadata/id3/UrlLinkFrame;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public static A0H(Lcom/facebook/ads/redexgen/X/4v;ILjava/lang/String;)Lcom/facebook/ads/androidx/media3/extractor/metadata/id3/UrlLinkFrame;
    .locals 5

    .line 24444
    new-array v4, p1, [B

    .line 24445
    .local v0, "data":[B
    const/4 v3, 0x0

    invoke-virtual {p0, v4, v3, p1}, Lcom/facebook/ads/redexgen/X/4v;->A0k([BII)V

    .line 24446
    invoke-static {v4, v3}, Lcom/facebook/ads/redexgen/X/9U;->A02([BI)I

    move-result v1

    .line 24447
    .local v2, "urlEndIndex":I
    sget-object v0, Lcom/facebook/ads/redexgen/X/k9;->A00:Ljava/nio/charset/Charset;

    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, v4, v3, v1, v0}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    .line 24448
    .local v1, "url":Ljava/lang/String;
    const/4 v1, 0x0

    new-instance v0, Lcom/facebook/ads/androidx/media3/extractor/metadata/id3/UrlLinkFrame;

    invoke-direct {v0, p2, v1, v2}, Lcom/facebook/ads/androidx/media3/extractor/metadata/id3/UrlLinkFrame;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public static A0I([BII)Lcom/facebook/ads/redexgen/X/BP;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([BII)",
            "Lcom/facebook/ads/redexgen/X/BP<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 24449
    array-length v3, p0

    const/4 v2, 0x0

    const/4 v1, 0x0

    const/16 v0, 0x6c

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/9U;->A0J(III)Ljava/lang/String;

    move-result-object v5

    if-lt p2, v3, :cond_0

    .line 24450
    invoke-static {v5}, Lcom/facebook/ads/redexgen/X/BP;->A04(Ljava/lang/Object;)Lcom/facebook/ads/redexgen/X/BP;

    move-result-object v0

    return-object v0

    .line 24451
    :cond_0
    invoke-static {}, Lcom/facebook/ads/redexgen/X/BP;->A01()Lcom/facebook/ads/redexgen/X/2K;

    move-result-object v4

    .line 24452
    .local v0, "values":Lcom/facebook/ads/redexgen/X/2K;, "Lcom/google/common/collect/ImmutableList$Builder<Ljava/lang/String;>;"
    .local v2, "valueStartIndex":I
    invoke-static {p0, p2, p1}, Lcom/facebook/ads/redexgen/X/9U;->A03([BII)I

    move-result v3

    .line 24453
    .local v3, "valueEndIndex":I
    :goto_0
    if-ge p2, v3, :cond_1

    .line 24454
    sub-int v2, v3, p2

    .line 24455
    invoke-static {p1}, Lcom/facebook/ads/redexgen/X/9U;->A0M(I)Ljava/nio/charset/Charset;

    move-result-object v1

    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p0, p2, v2, v1}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    .line 24456
    .local v4, "value":Ljava/lang/String;
    invoke-virtual {v4, v0}, Lcom/facebook/ads/redexgen/X/2K;->A04(Ljava/lang/Object;)Lcom/facebook/ads/redexgen/X/2K;

    .line 24457
    invoke-static {p1}, Lcom/facebook/ads/redexgen/X/9U;->A00(I)I

    move-result v0

    add-int p2, v3, v0

    .line 24458
    invoke-static {p0, p2, p1}, Lcom/facebook/ads/redexgen/X/9U;->A03([BII)I

    move-result v3

    .line 24459
    .end local v4    # "value":Ljava/lang/String;
    goto :goto_0

    .line 24460
    :cond_1
    invoke-virtual {v4}, Lcom/facebook/ads/redexgen/X/2K;->A05()Lcom/facebook/ads/redexgen/X/BP;

    move-result-object v1

    .line 24461
    .local v4, "result":Lcom/facebook/ads/redexgen/X/BP;, "Lcom/google/common/collect/ImmutableList<Ljava/lang/String;>;"
    invoke-virtual {v1}, Lcom/facebook/ads/redexgen/X/BP;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {v5}, Lcom/facebook/ads/redexgen/X/BP;->A04(Ljava/lang/Object;)Lcom/facebook/ads/redexgen/X/BP;

    move-result-object v1

    :cond_2
    return-object v1
.end method

.method public static A0J(III)Ljava/lang/String;
    .locals 2

    sget-object v1, Lcom/facebook/ads/redexgen/X/9U;->A01:[B

    add-int v0, p0, p1

    invoke-static {v1, p0, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p0

    const/4 v1, 0x0

    :goto_0
    array-length v0, p0

    if-ge v1, v0, :cond_0

    aget-byte v0, p0, v1

    xor-int/2addr v0, p2

    xor-int/lit8 v0, v0, 0xd

    int-to-byte v0, v0

    aput-byte v0, p0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p0}, Ljava/lang/String;-><init>([B)V

    return-object v0
.end method

.method public static A0K(IIIII)Ljava/lang/String;
    .locals 11

    .line 24462
    const/4 v10, 0x3

    const/4 v9, 0x1

    const/4 v8, 0x0

    const/4 v7, 0x2

    if-ne p0, v7, :cond_0

    .line 24463
    sget-object v4, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    new-array v3, v10, [Ljava/lang/Object;

    aput-object v2, v3, v8

    aput-object v1, v3, v9

    aput-object v0, v3, v7

    const/4 v2, 0x4

    const/4 v1, 0x6

    const/16 v0, 0x45

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/9U;->A0J(III)Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 24464
    :goto_0
    return-object v0

    .line 24465
    :cond_0
    sget-object v6, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v0, 0x4

    new-array v3, v0, [Ljava/lang/Object;

    aput-object v5, v3, v8

    aput-object v4, v3, v9

    aput-object v2, v3, v7

    aput-object v1, v3, v10

    const/16 v2, 0xa

    const/16 v1, 0x8

    const/4 v0, 0x1

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/9U;->A0J(III)Ljava/lang/String;

    move-result-object v0

    invoke-static {v6, v0, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static A0L([BIILjava/nio/charset/Charset;)Ljava/lang/String;
    .locals 1

    .line 24466
    if-le p2, p1, :cond_0

    array-length v0, p0

    if-le p2, v0, :cond_1

    .line 24467
    :cond_0
    const/4 p1, 0x0

    const/4 p0, 0x0

    const/16 v0, 0x6c

    invoke-static {p1, p0, v0}, Lcom/facebook/ads/redexgen/X/9U;->A0J(III)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 24468
    :cond_1
    sub-int/2addr p2, p1

    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p0, p1, p2, p3}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    return-object v0
.end method

.method public static A0M(I)Ljava/nio/charset/Charset;
    .locals 3

    .line 24469
    packed-switch p0, :pswitch_data_0

    .line 24470
    sget-object p0, Lcom/facebook/ads/redexgen/X/k9;->A00:Ljava/nio/charset/Charset;

    sget-object v1, Lcom/facebook/ads/redexgen/X/9U;->A02:[Ljava/lang/String;

    const/4 v0, 0x5

    aget-object v1, v1, v0

    const/16 v0, 0x16

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x46

    if-eq v1, v0, :cond_0

    sget-object v2, Lcom/facebook/ads/redexgen/X/9U;->A02:[Ljava/lang/String;

    const-string v1, "KvSqsioCKy57forlhJv7i4SYYwwKGyHr"

    const/4 v0, 0x5

    aput-object v1, v2, v0

    return-object p0

    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    .line 24471
    :pswitch_0
    sget-object v0, Lcom/facebook/ads/redexgen/X/k9;->A05:Ljava/nio/charset/Charset;

    return-object v0

    .line 24472
    :pswitch_1
    sget-object v0, Lcom/facebook/ads/redexgen/X/k9;->A03:Ljava/nio/charset/Charset;

    return-object v0

    .line 24473
    :pswitch_2
    sget-object v0, Lcom/facebook/ads/redexgen/X/k9;->A02:Ljava/nio/charset/Charset;

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static A0N()V
    .locals 1

    const/16 v0, 0x1ab

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/facebook/ads/redexgen/X/9U;->A01:[B

    return-void

    :array_0
    .array-data 1
        0x1at
        0xft
        0x9t
        0x67t
        0x6dt
        0x2bt
        0x6dt
        0x2bt
        0x6dt
        0x2bt
        0x29t
        0x6ft
        0x29t
        0x6ft
        0x29t
        0x6ft
        0x29t
        0x6ft
        0x6t
        0xat
        0x4ct
        0x58t
        0x4bt
        0x47t
        0x4ft
        0x79t
        0x43t
        0x50t
        0x4ft
        0x17t
        0x25t
        0x0t
        0x15t
        0x0t
        0x41t
        0x15t
        0xet
        0xet
        0x41t
        0x12t
        0x9t
        0xet
        0x13t
        0x15t
        0x41t
        0x15t
        0xet
        0x41t
        0x3t
        0x4t
        0x41t
        0x0t
        0xft
        0x41t
        0x28t
        0x25t
        0x52t
        0x41t
        0x15t
        0x0t
        0x6t
        0x4ct
        0x6bt
        0x63t
        0x66t
        0x6ft
        0x6et
        0x2at
        0x7et
        0x65t
        0x2at
        0x6et
        0x6ft
        0x69t
        0x65t
        0x6et
        0x6ft
        0x2at
        0x6ct
        0x78t
        0x6bt
        0x67t
        0x6ft
        0x30t
        0x2at
        0x63t
        0x6et
        0x37t
        0x72t
        0x55t
        0x5dt
        0x58t
        0x51t
        0x50t
        0x14t
        0x40t
        0x5bt
        0x14t
        0x42t
        0x55t
        0x58t
        0x5dt
        0x50t
        0x55t
        0x40t
        0x51t
        0x14t
        0x7dt
        0x70t
        0x7t
        0x14t
        0x40t
        0x55t
        0x53t
        0x14t
        0x43t
        0x5dt
        0x40t
        0x5ct
        0x14t
        0x59t
        0x55t
        0x5et
        0x5bt
        0x46t
        0x62t
        0x51t
        0x46t
        0x47t
        0x5dt
        0x5bt
        0x5at
        0x9t
        0x27t
        0x13t
        0x0t
        0xct
        0x4t
        0x41t
        0x12t
        0x8t
        0x1bt
        0x4t
        0x41t
        0x4t
        0x19t
        0x2t
        0x4t
        0x4t
        0x5t
        0x12t
        0x41t
        0x13t
        0x4t
        0xct
        0x0t
        0x8t
        0xft
        0x8t
        0xft
        0x6t
        0x41t
        0x15t
        0x0t
        0x6t
        0x41t
        0x5t
        0x0t
        0x15t
        0x0t
        0x4at
        0x67t
        0x30t
        0x47t
        0x66t
        0x60t
        0x6ct
        0x67t
        0x66t
        0x71t
        0x55t
        0x6dt
        0x6ft
        0x76t
        0x76t
        0x63t
        0x62t
        0x26t
        0x4ft
        0x42t
        0x35t
        0x26t
        0x72t
        0x67t
        0x61t
        0x26t
        0x71t
        0x6ft
        0x72t
        0x6et
        0x26t
        0x6bt
        0x67t
        0x6ct
        0x69t
        0x74t
        0x50t
        0x63t
        0x74t
        0x75t
        0x6ft
        0x69t
        0x68t
        0x3bt
        0x34t
        0x26t
        0x67t
        0x68t
        0x62t
        0x26t
        0x73t
        0x68t
        0x62t
        0x63t
        0x60t
        0x6ft
        0x68t
        0x63t
        0x62t
        0x26t
        0x65t
        0x69t
        0x6bt
        0x76t
        0x74t
        0x63t
        0x75t
        0x75t
        0x6ft
        0x69t
        0x68t
        0x26t
        0x75t
        0x65t
        0x6et
        0x63t
        0x6bt
        0x63t
        0x68t
        0x50t
        0x52t
        0x4bt
        0x4bt
        0x5et
        0x5ft
        0x1bt
        0x72t
        0x7ft
        0x8t
        0x1bt
        0x4ft
        0x5at
        0x5ct
        0x1bt
        0x4ct
        0x52t
        0x4ft
        0x53t
        0x1bt
        0x4et
        0x55t
        0x48t
        0x4et
        0x4bt
        0x4bt
        0x54t
        0x49t
        0x4ft
        0x5et
        0x5ft
        0x1bt
        0x56t
        0x5at
        0x51t
        0x54t
        0x49t
        0x6dt
        0x5et
        0x49t
        0x48t
        0x52t
        0x54t
        0x55t
        0x6t
        0x2at
        0x12t
        0x10t
        0x9t
        0x9t
        0x10t
        0x17t
        0x1et
        0x59t
        0xct
        0x17t
        0xat
        0xct
        0x9t
        0x9t
        0x16t
        0xbt
        0xdt
        0x1ct
        0x1dt
        0x59t
        0x1at
        0x16t
        0x14t
        0x9t
        0xbt
        0x1ct
        0xat
        0xat
        0x1ct
        0x1dt
        0x59t
        0x16t
        0xbt
        0x59t
        0x1ct
        0x17t
        0x1at
        0xbt
        0x0t
        0x9t
        0xdt
        0x1ct
        0x1dt
        0x59t
        0x1ft
        0xbt
        0x18t
        0x14t
        0x1ct
        0x3et
        0x32t
        0x32t
        0x32t
        0x77t
        0x4ct
        0x47t
        0x5at
        0x52t
        0x47t
        0x41t
        0x56t
        0x47t
        0x46t
        0x2t
        0x44t
        0x4bt
        0x50t
        0x51t
        0x56t
        0x2t
        0x56t
        0x4at
        0x50t
        0x47t
        0x47t
        0x2t
        0x40t
        0x5bt
        0x56t
        0x47t
        0x51t
        0x2t
        0x4dt
        0x44t
        0x2t
        0x6bt
        0x66t
        0x11t
        0x2t
        0x56t
        0x43t
        0x45t
        0x2t
        0x4at
        0x47t
        0x43t
        0x46t
        0x47t
        0x50t
        0x18t
        0x2t
        0x12t
        0x5at
        0x79t
        0x76t
        0x76t
        0x76t
        0x3et
        0x3at
        0x36t
        0x30t
        0x32t
        0x78t
        0x1et
        0x1at
        0x16t
        0x10t
        0x12t
        0x58t
        0x1dt
        0x7t
        0x12t
        0x10t
        0x4bt
        0x4ft
        0x43t
        0x45t
        0x47t
        0xdt
        0x48t
        0x52t
        0x45t
    .end array-data
.end method

.method public static synthetic A0O(IIIII)Z
    .locals 0

    .line 24474
    const/4 p0, 0x0

    return p0
.end method

.method public static A0P(Lcom/facebook/ads/redexgen/X/4v;IIZ)Z
    .locals 18

    .line 24475
    move-object/from16 v8, p0

    invoke-virtual {v8}, Lcom/facebook/ads/redexgen/X/4v;->A09()I

    move-result v7

    .line 24476
    .local v3, "startPosition":I
    :goto_0
    :try_start_0
    invoke-virtual {v8}, Lcom/facebook/ads/redexgen/X/4v;->A07()I

    move-result v0

    const/16 p0, 0x1

    move/from16 v1, p2

    if-lt v0, v1, :cond_11

    .line 24477
    const/4 v11, 0x3

    move/from16 v12, p1

    if-lt v12, v11, :cond_0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 24478
    :try_start_1
    invoke-virtual {v8}, Lcom/facebook/ads/redexgen/X/4v;->A0C()I

    move-result v1

    .line 24479
    .local v6, "id":I
    invoke-virtual {v8}, Lcom/facebook/ads/redexgen/X/4v;->A0Q()J

    move-result-wide v3

    .line 24480
    .local v7, "frameSize":J
    invoke-virtual {v8}, Lcom/facebook/ads/redexgen/X/4v;->A0M()I

    move-result v10

    .local v9, "flags":I
    goto :goto_1

    .line 24481
    .end local v6    # "id":I
    .end local v7    # "frameSize":J
    .end local v9    # "flags":I
    :cond_0
    invoke-virtual {v8}, Lcom/facebook/ads/redexgen/X/4v;->A0K()I

    move-result v1

    .line 24482
    .restart local v6    # "id":I
    invoke-virtual {v8}, Lcom/facebook/ads/redexgen/X/4v;->A0K()I

    move-result v0

    int-to-long v3, v0

    .line 24483
    .restart local v7    # "frameSize":J
    const/4 v10, 0x0

    .line 24484
    .restart local v9    # "flags":I
    :goto_1
    const-wide/16 v13, 0x0

    if-nez v1, :cond_1

    cmp-long v0, v3, v13

    if-nez v0, :cond_1

    if-nez v10, :cond_1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 24485
    invoke-virtual {v8, v7}, Lcom/facebook/ads/redexgen/X/4v;->A0f(I)V

    .line 24486
    return p0

    .line 24487
    :cond_1
    const/4 v5, 0x4

    const/16 v17, 0x0

    if-ne v12, v5, :cond_3

    if-nez p3, :cond_3

    .line 24488
    const-wide/32 v1, 0x808080

    and-long/2addr v1, v3

    cmp-long v0, v1, v13

    if-eqz v0, :cond_2

    .line 24489
    invoke-virtual {v8, v7}, Lcom/facebook/ads/redexgen/X/4v;->A0f(I)V

    sget-object v2, Lcom/facebook/ads/redexgen/X/9U;->A02:[Ljava/lang/String;

    const/4 v0, 0x1

    aget-object v1, v2, v0

    const/4 v0, 0x7

    aget-object v2, v2, v0

    const/16 v0, 0x14

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v1, v0, :cond_10

    :goto_2
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    .line 24490
    :cond_2
    const-wide/16 v15, 0xff

    and-long v13, v3, v15

    const/16 v0, 0x8

    shr-long v1, v3, v0

    and-long/2addr v1, v15

    const/4 v0, 0x7

    shl-long/2addr v1, v0

    or-long/2addr v13, v1

    const/16 v0, 0x10

    shr-long v1, v3, v0

    and-long/2addr v1, v15

    const/16 v0, 0xe

    shl-long/2addr v1, v0

    or-long/2addr v13, v1

    const/16 v0, 0x18

    shr-long/2addr v3, v0

    and-long/2addr v3, v15

    const/16 v0, 0x15

    shl-long/2addr v3, v0

    or-long/2addr v3, v13

    .line 24491
    :cond_3
    const/4 v6, 0x0

    .line 24492
    .local v10, "hasGroupIdentifier":Z
    const/4 v9, 0x0

    .line 24493
    .local v11, "hasDataLength":Z
    if-ne v12, v5, :cond_7

    .line 24494
    and-int/lit8 v0, v10, 0x40

    if-eqz v0, :cond_6

    const/4 v6, 0x1

    .line 24495
    :goto_3
    and-int/lit8 v0, v10, 0x1

    if-eqz v0, :cond_5

    :goto_4
    move/from16 v9, p0

    .line 24496
    :cond_4
    :goto_5
    const/4 v5, 0x0

    sget-object v2, Lcom/facebook/ads/redexgen/X/9U;->A02:[Ljava/lang/String;

    const/4 v0, 0x1

    aget-object v1, v2, v0

    const/4 v0, 0x7

    aget-object v2, v2, v0

    const/16 v0, 0x14

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v1, v0, :cond_a

    goto :goto_2

    .line 24497
    :cond_5
    const/16 p0, 0x0

    goto :goto_4

    .line 24498
    :cond_6
    const/4 v6, 0x0

    goto :goto_3

    .line 24499
    :cond_7
    if-ne v12, v11, :cond_4

    .line 24500
    and-int/lit8 v0, v10, 0x20

    if-eqz v0, :cond_9

    const/4 v6, 0x1

    .line 24501
    :goto_6
    and-int/lit16 v0, v10, 0x80

    if-eqz v0, :cond_8

    :goto_7
    move/from16 v9, p0

    goto :goto_5

    :cond_8
    const/16 p0, 0x0

    goto :goto_7

    .line 24502
    :cond_9
    const/4 v6, 0x0

    goto :goto_6

    .line 24503
    .local v0, "minimumFrameSize":I
    :cond_a
    sget-object v2, Lcom/facebook/ads/redexgen/X/9U;->A02:[Ljava/lang/String;

    const-string v1, "MVZStPJLdDxKiV7nz1H6dv3NOIiLFLEe"

    const/4 v0, 0x1

    aput-object v1, v2, v0

    const-string v1, "QTxGzLkjWgw6uSVWxpxBdQfPOh5DKkgy"

    const/4 v0, 0x7

    aput-object v1, v2, v0

    if-eqz v6, :cond_b

    .line 24504
    add-int/lit8 v5, v5, 0x1

    .line 24505
    :cond_b
    if-eqz v9, :cond_c

    .line 24506
    add-int/lit8 v5, v5, 0x4

    .line 24507
    :cond_c
    int-to-long v1, v5

    cmp-long v0, v3, v1

    if-gez v0, :cond_d

    .line 24508
    invoke-virtual {v8, v7}, Lcom/facebook/ads/redexgen/X/4v;->A0f(I)V

    .line 24509
    return v17

    .line 24510
    :cond_d
    :try_start_2
    invoke-virtual {v8}, Lcom/facebook/ads/redexgen/X/4v;->A07()I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result v0

    int-to-long v1, v0

    sget-object v6, Lcom/facebook/ads/redexgen/X/9U;->A02:[Ljava/lang/String;

    const/4 v0, 0x6

    aget-object v5, v6, v0

    const/4 v0, 0x3

    aget-object v0, v6, v0

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eq v5, v0, :cond_e

    cmp-long v0, v1, v3

    if-gez v0, :cond_f

    goto :goto_8

    :cond_e
    sget-object v6, Lcom/facebook/ads/redexgen/X/9U;->A02:[Ljava/lang/String;

    const-string v5, "edbBlZh6UxoMPnyEc6lG0E5oPDAO53n7"

    const/4 v0, 0x5

    aput-object v5, v6, v0

    cmp-long v0, v1, v3

    if-gez v0, :cond_f

    .line 24511
    :goto_8
    invoke-virtual {v8, v7}, Lcom/facebook/ads/redexgen/X/4v;->A0f(I)V

    .line 24512
    return v17

    .line 24513
    :cond_f
    :try_start_3
    long-to-int v0, v3

    invoke-virtual {v8, v0}, Lcom/facebook/ads/redexgen/X/4v;->A0g(I)V

    goto/16 :goto_0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 24514
    :cond_10
    sget-object v2, Lcom/facebook/ads/redexgen/X/9U;->A02:[Ljava/lang/String;

    const-string v1, "5mCE9WytQNPeLFhBzaYSd2zmXPTMRlgu"

    const/4 v0, 0x1

    aput-object v1, v2, v0

    const-string v1, "AgecK2HA7Twj8m2CWduPdApaKwCpCynb"

    const/4 v0, 0x7

    aput-object v1, v2, v0

    return v17

    .line 24515
    :catchall_0
    move-exception v0

    goto :goto_9

    :cond_11
    invoke-virtual {v8, v7}, Lcom/facebook/ads/redexgen/X/4v;->A0f(I)V

    .line 24516
    return p0

    .line 24517
    :catchall_1
    move-exception v0

    :goto_9
    invoke-virtual {v8, v7}, Lcom/facebook/ads/redexgen/X/4v;->A0f(I)V

    .line 24518
    throw v0
.end method

.method public static A0Q([BII)[B
    .locals 0

    .line 24519
    if-gt p2, p1, :cond_0

    .line 24520
    sget-object p0, Lcom/facebook/ads/redexgen/X/5C;->A07:[B

    return-object p0

    .line 24521
    :cond_0
    invoke-static {p0, p1, p2}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final A0R(Lcom/facebook/ads/redexgen/X/9e;Ljava/nio/ByteBuffer;)Lcom/facebook/ads/androidx/media3/common/Metadata;
    .locals 2

    .line 24522
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v1

    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->limit()I

    move-result v0

    invoke-virtual {p0, v1, v0}, Lcom/facebook/ads/redexgen/X/9U;->A0S([BI)Lcom/facebook/ads/androidx/media3/common/Metadata;

    move-result-object v0

    return-object v0
.end method

.method public final A0S([BI)Lcom/facebook/ads/androidx/media3/common/Metadata;
    .locals 8

    .line 24523
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 24524
    .local v0, "id3Frames":Ljava/util/List;, "Ljava/util/List<Lcom/facebook/ads/androidx/media3/extractor/metadata/id3/Id3Frame;>;"
    new-instance v3, Lcom/facebook/ads/redexgen/X/4v;

    invoke-direct {v3, p1, p2}, Lcom/facebook/ads/redexgen/X/4v;-><init>([BI)V

    .line 24525
    .local v1, "id3Data":Lcom/facebook/ads/redexgen/X/4v;
    invoke-static {v3}, Lcom/facebook/ads/redexgen/X/9U;->A0A(Lcom/facebook/ads/redexgen/X/4v;)Lcom/facebook/ads/redexgen/X/IF;

    move-result-object v7

    .line 24526
    .local v2, "id3Header":Lcom/facebook/ads/redexgen/X/IF;
    const/4 v6, 0x0

    if-nez v7, :cond_0

    .line 24527
    return-object v6

    .line 24528
    :cond_0
    invoke-virtual {v3}, Lcom/facebook/ads/redexgen/X/4v;->A09()I

    move-result v4

    .line 24529
    .local v4, "startPosition":I
    invoke-static {v7}, Lcom/facebook/ads/redexgen/X/IF;->A00(Lcom/facebook/ads/redexgen/X/IF;)I

    move-result v1

    const/4 v0, 0x2

    if-ne v1, v0, :cond_3

    const/4 v5, 0x6

    .line 24530
    .local v5, "frameHeaderSize":I
    :goto_0
    invoke-static {v7}, Lcom/facebook/ads/redexgen/X/IF;->A01(Lcom/facebook/ads/redexgen/X/IF;)I

    move-result v1

    .line 24531
    .local v6, "framesSize":I
    invoke-static {v7}, Lcom/facebook/ads/redexgen/X/IF;->A02(Lcom/facebook/ads/redexgen/X/IF;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 24532
    invoke-static {v7}, Lcom/facebook/ads/redexgen/X/IF;->A01(Lcom/facebook/ads/redexgen/X/IF;)I

    move-result v0

    invoke-static {v3, v0}, Lcom/facebook/ads/redexgen/X/9U;->A01(Lcom/facebook/ads/redexgen/X/4v;I)I

    move-result v1

    .line 24533
    :cond_1
    add-int/2addr v4, v1

    invoke-virtual {v3, v4}, Lcom/facebook/ads/redexgen/X/4v;->A0e(I)V

    .line 24534
    const/4 v4, 0x0

    .line 24535
    .local v7, "unsignedIntFrameSizeHack":Z
    invoke-static {v7}, Lcom/facebook/ads/redexgen/X/IF;->A00(Lcom/facebook/ads/redexgen/X/IF;)I

    move-result v1

    const/4 v0, 0x0

    invoke-static {v3, v1, v5, v0}, Lcom/facebook/ads/redexgen/X/9U;->A0P(Lcom/facebook/ads/redexgen/X/4v;IIZ)Z

    move-result v0

    if-nez v0, :cond_2

    .line 24536
    invoke-static {v7}, Lcom/facebook/ads/redexgen/X/IF;->A00(Lcom/facebook/ads/redexgen/X/IF;)I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_5

    const/4 v0, 0x1

    invoke-static {v3, v1, v5, v0}, Lcom/facebook/ads/redexgen/X/9U;->A0P(Lcom/facebook/ads/redexgen/X/4v;IIZ)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 24537
    const/4 v4, 0x1

    .line 24538
    :cond_2
    :goto_1
    invoke-virtual {v3}, Lcom/facebook/ads/redexgen/X/4v;->A07()I

    move-result v0

    if-lt v0, v5, :cond_4

    .line 24539
    invoke-static {v7}, Lcom/facebook/ads/redexgen/X/IF;->A00(Lcom/facebook/ads/redexgen/X/IF;)I

    move-result v1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/9U;->A00:Lcom/facebook/ads/redexgen/X/IE;

    .line 24540
    invoke-static {v1, v3, v4, v5, v0}, Lcom/facebook/ads/redexgen/X/9U;->A0B(ILcom/facebook/ads/redexgen/X/4v;ZILcom/facebook/ads/redexgen/X/IE;)Lcom/facebook/ads/androidx/media3/extractor/metadata/id3/Id3Frame;

    move-result-object v0

    .line 24541
    .local v3, "frame":Lcom/facebook/ads/androidx/media3/extractor/metadata/id3/Id3Frame;
    if-eqz v0, :cond_2

    .line 24542
    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 24543
    :cond_3
    const/16 v5, 0xa

    goto :goto_0

    .line 24544
    :cond_4
    new-instance v0, Lcom/facebook/ads/androidx/media3/common/Metadata;

    invoke-direct {v0, v2}, Lcom/facebook/ads/androidx/media3/common/Metadata;-><init>(Ljava/util/List;)V

    return-object v0

    .line 24545
    :cond_5
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v2, 0x58

    const/16 v1, 0x2d

    const/16 v0, 0x39

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/9U;->A0J(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {v7}, Lcom/facebook/ads/redexgen/X/IF;->A00(Lcom/facebook/ads/redexgen/X/IF;)I

    move-result v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/16 v2, 0xaa

    const/16 v1, 0xa

    const/16 v0, 0xe

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/9U;->A0J(III)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v3}, Lcom/facebook/ads/redexgen/X/4g;->A07(Ljava/lang/String;Ljava/lang/String;)V

    .line 24546
    return-object v6
.end method
