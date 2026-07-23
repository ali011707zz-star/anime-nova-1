.class public abstract Lcom/facebook/ads/redexgen/X/J4;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/ads/redexgen/X/J3;
    }
.end annotation


# static fields
.field public static A00:[Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    .line 817
    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "oZj5aoX1KvbFHq33YkjSnnR9n2"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "YrN4"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "d5f6mUL"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "wzC2np4aQz"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "bSG0VkmAa5PTnnRqB4khFtTiUFve1XQW"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "Qyz6G41qMcU917EtFwNhHmzpy"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "Reep"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "5AjdKovxhleFLdRt3FcvPVZSBJ"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/J4;->A00:[Ljava/lang/String;

    return-void
.end method

.method public static A00(I[J[IJ)Lcom/facebook/ads/redexgen/X/J3;
    .locals 18

    .line 42136
    move-wide/from16 v16, p3

    const/16 v5, 0x2000

    div-int v5, v5, p0

    .line 42137
    .local v1, "maxSampleCount":I
    const/4 v3, 0x0

    .line 42138
    .local v2, "rechunkedSampleCount":I
    move-object/from16 v6, p2

    array-length v2, v6

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v2, :cond_0

    aget v0, v6, v1

    .line 42139
    .local v5, "chunkSampleCount":I
    invoke-static {v0, v5}, Lcom/facebook/ads/redexgen/X/5C;->A05(II)I

    move-result v0

    add-int/2addr v3, v0

    .line 42140
    .end local v5    # "chunkSampleCount":I
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 42141
    :cond_0
    new-array v11, v3, [J

    .line 42142
    .local v3, "offsets":[J
    new-array v12, v3, [I

    .line 42143
    .local v4, "sizes":[I
    const/4 v13, 0x0

    .line 42144
    .local v5, "maximumSize":I
    new-array v14, v3, [J

    .line 42145
    .local v14, "timestamps":[J
    new-array v15, v3, [I

    .line 42146
    .local v15, "flags":[I
    const/4 v4, 0x0

    .line 42147
    .local v6, "originalSampleIndex":I
    const/4 v10, 0x0

    .line 42148
    .local v7, "newSampleIndex":I
    const/4 v3, 0x0

    sget-object v2, Lcom/facebook/ads/redexgen/X/J4;->A00:[Ljava/lang/String;

    const/4 v0, 0x2

    aget-object v1, v2, v0

    const/4 v0, 0x3

    aget-object v0, v2, v0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eq v1, v0, :cond_4

    sget-object v2, Lcom/facebook/ads/redexgen/X/J4;->A00:[Ljava/lang/String;

    const-string v1, "OG99HZu"

    const/4 v0, 0x2

    aput-object v1, v2, v0

    const-string v1, "ptKGW28cJb"

    const/4 v0, 0x3

    aput-object v1, v2, v0

    .end local v5    # "maximumSize":I
    .end local v6    # "originalSampleIndex":I
    .end local v7    # "newSampleIndex":I
    .local v8, "chunkIndex":I
    .local v13, "originalSampleIndex":I
    .local v16, "maximumSize":I
    .local v17, "newSampleIndex":I
    :goto_1
    array-length v2, v6

    sget-object v7, Lcom/facebook/ads/redexgen/X/J4;->A00:[Ljava/lang/String;

    const/4 v0, 0x2

    aget-object v1, v7, v0

    const/4 v0, 0x3

    aget-object v0, v7, v0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eq v1, v0, :cond_4

    sget-object v7, Lcom/facebook/ads/redexgen/X/J4;->A00:[Ljava/lang/String;

    const-string v1, "uTdlUcyBkPhiZ9U2ydDZL"

    const/4 v0, 0x5

    aput-object v1, v7, v0

    if-ge v3, v2, :cond_3

    .line 42149
    aget v2, v6, v3

    sget-object v1, Lcom/facebook/ads/redexgen/X/J4;->A00:[Ljava/lang/String;

    const/4 v0, 0x5

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v0, 0x5

    if-eq v1, v0, :cond_2

    .line 42150
    .local v5, "chunkSamplesRemaining":I
    sget-object v7, Lcom/facebook/ads/redexgen/X/J4;->A00:[Ljava/lang/String;

    const-string v1, "PmQbGcH"

    const/4 v0, 0x2

    aput-object v1, v7, v0

    const-string v1, "fT2ewQCR49"

    const/4 v0, 0x3

    aput-object v1, v7, v0

    aget-wide v7, p1, v3

    .line 42151
    .end local v16    # "maximumSize":I
    .local v6, "sampleOffset":J
    .local v9, "maximumSize":I
    :goto_2
    if-lez v2, :cond_1

    .line 42152
    invoke-static {v5, v2}, Ljava/lang/Math;->min(II)I

    move-result v9

    .line 42153
    .local v10, "bufferSampleCount":I
    aput-wide v7, v11, v10

    .line 42154
    mul-int v0, p0, v9

    aput v0, v12, v10

    .line 42155
    aget v0, v12, v10

    invoke-static {v13, v0}, Ljava/lang/Math;->max(II)I

    move-result v13

    .line 42156
    int-to-long v0, v4

    mul-long v0, v0, v16

    aput-wide v0, v14, v10

    .line 42157
    const/4 v0, 0x1

    aput v0, v15, v10

    .line 42158
    aget v0, v12, v10

    int-to-long v0, v0

    add-long/2addr v7, v0

    .line 42159
    add-int/2addr v4, v9

    .line 42160
    sub-int/2addr v2, v9

    .line 42161
    .end local v10    # "bufferSampleCount":I
    add-int/lit8 v10, v10, 0x1

    .line 42162
    goto :goto_2

    .line 42163
    .end local v5    # "chunkSamplesRemaining":I
    .end local v6    # "sampleOffset":J
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_2
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    .line 42164
    .end local v8    # "chunkIndex":I
    .end local v9    # "maximumSize":I
    .restart local v16    # "maximumSize":I
    :cond_3
    int-to-long v0, v4

    mul-long v16, v16, v0

    .line 42165
    .local p0, "duration":J
    new-instance v10, Lcom/facebook/ads/redexgen/X/J3;

    const/16 p0, 0x0

    .end local v13    # "originalSampleIndex":I
    .local p4, "originalSampleIndex":I
    invoke-direct/range {v10 .. v18}, Lcom/facebook/ads/redexgen/X/J3;-><init>([J[II[J[IJLcom/facebook/ads/redexgen/X/J2;)V

    return-object v10

    :cond_4
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
.end method
