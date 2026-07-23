.class public final Lcom/facebook/ads/redexgen/X/mg;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/facebook/ads/redexgen/X/H9;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/ads/androidx/media3/extractor/flac/FlacExtractor$State;,
        Lcom/facebook/ads/androidx/media3/extractor/flac/FlacExtractor$Flags;
    }
.end annotation


# static fields
.field public static A0E:[Ljava/lang/String;

.field public static final A0F:Lcom/facebook/ads/redexgen/X/HD;


# instance fields
.field public A00:I

.field public A01:I

.field public A02:I

.field public A03:I

.field public A04:J

.field public A05:Lcom/facebook/ads/androidx/media3/common/Metadata;

.field public A06:Lcom/facebook/ads/redexgen/X/HA;

.field public A07:Lcom/facebook/ads/redexgen/X/HJ;

.field public A08:Lcom/facebook/ads/redexgen/X/Hd;

.field public A09:Lcom/facebook/ads/redexgen/X/mi;

.field public final A0A:Lcom/facebook/ads/redexgen/X/4v;

.field public final A0B:Lcom/facebook/ads/redexgen/X/HE;

.field public final A0C:Z

.field public final A0D:[B


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    .line 3260
    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "CA5tgyD1ft6jPQScHcEKxijdDn8CpaAj"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "rrvFpoycxrr9C"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "qEVAWkTuIpwlYdd7u09"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "zGu"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "r98"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "bvJEUCblPMa4rVVBIUxYNVrIzXUNKtA9"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "0YPJWJVAuNzanCV2KA"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "Ww61LKXhC9Y0aL9N3LYwjUph3RiaOuui"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/mg;->A0E:[Ljava/lang/String;

    new-instance v0, Lcom/facebook/ads/redexgen/X/mh;

    invoke-direct {v0}, Lcom/facebook/ads/redexgen/X/mh;-><init>()V

    sput-object v0, Lcom/facebook/ads/redexgen/X/mg;->A0F:Lcom/facebook/ads/redexgen/X/HD;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 99220
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/mg;-><init>(I)V

    .line 99221
    return-void
.end method

.method public constructor <init>(I)V
    .locals 3

    .line 99222
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 99223
    const/16 v0, 0x2a

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/mg;->A0D:[B

    .line 99224
    const v0, 0x8000

    new-array v2, v0, [B

    const/4 v1, 0x0

    new-instance v0, Lcom/facebook/ads/redexgen/X/4v;

    invoke-direct {v0, v2, v1}, Lcom/facebook/ads/redexgen/X/4v;-><init>([BI)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/mg;->A0A:Lcom/facebook/ads/redexgen/X/4v;

    .line 99225
    and-int/lit8 v0, p1, 0x1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/mg;->A0C:Z

    .line 99226
    new-instance v0, Lcom/facebook/ads/redexgen/X/HE;

    invoke-direct {v0}, Lcom/facebook/ads/redexgen/X/HE;-><init>()V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/mg;->A0B:Lcom/facebook/ads/redexgen/X/HE;

    .line 99227
    iput v1, p0, Lcom/facebook/ads/redexgen/X/mg;->A03:I

    .line 99228
    return-void

    .line 99229
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private A00(Lcom/facebook/ads/redexgen/X/ms;Lcom/facebook/ads/redexgen/X/HV;)I
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 99230
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/mg;->A08:Lcom/facebook/ads/redexgen/X/Hd;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/3y;->A01(Ljava/lang/Object;)Ljava/lang/Object;

    .line 99231
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/mg;->A07:Lcom/facebook/ads/redexgen/X/HJ;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/3y;->A01(Ljava/lang/Object;)Ljava/lang/Object;

    .line 99232
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/mg;->A09:Lcom/facebook/ads/redexgen/X/mi;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/mg;->A09:Lcom/facebook/ads/redexgen/X/mi;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/H2;->A09()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 99233
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/mg;->A09:Lcom/facebook/ads/redexgen/X/mi;

    invoke-virtual {v0, p1, p2}, Lcom/facebook/ads/redexgen/X/H2;->A06(Lcom/facebook/ads/redexgen/X/ms;Lcom/facebook/ads/redexgen/X/HV;)I

    move-result v0

    return v0

    .line 99234
    :cond_0
    iget-wide v1, p0, Lcom/facebook/ads/redexgen/X/mg;->A04:J

    const-wide/16 v7, -0x1

    const/4 v5, 0x0

    sget-object v3, Lcom/facebook/ads/redexgen/X/mg;->A0E:[Ljava/lang/String;

    const/4 v0, 0x2

    aget-object v0, v3, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    const/16 v0, 0x13

    if-eq v3, v0, :cond_2

    :cond_1
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_2
    sget-object v4, Lcom/facebook/ads/redexgen/X/mg;->A0E:[Ljava/lang/String;

    const-string v3, "5vsaEOzV8f26KwvJg69"

    const/4 v0, 0x2

    aput-object v3, v4, v0

    cmp-long v0, v1, v7

    if-nez v0, :cond_3

    .line 99235
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/mg;->A07:Lcom/facebook/ads/redexgen/X/HJ;

    .line 99236
    invoke-static {p1, v0}, Lcom/facebook/ads/redexgen/X/HF;->A01(Lcom/facebook/ads/redexgen/X/ms;Lcom/facebook/ads/redexgen/X/HJ;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/facebook/ads/redexgen/X/mg;->A04:J

    .line 99237
    return v5

    .line 99238
    :cond_3
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/mg;->A0A:Lcom/facebook/ads/redexgen/X/4v;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/4v;->A0A()I

    move-result v4

    sget-object v2, Lcom/facebook/ads/redexgen/X/mg;->A0E:[Ljava/lang/String;

    const/4 v0, 0x6

    aget-object v1, v2, v0

    const/4 v0, 0x1

    aget-object v0, v2, v0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eq v1, v0, :cond_1

    .line 99239
    .local v0, "currentLimit":I
    sget-object v2, Lcom/facebook/ads/redexgen/X/mg;->A0E:[Ljava/lang/String;

    const-string v1, "dF6ALNUNBXQAeyaZgj"

    const/4 v0, 0x6

    aput-object v1, v2, v0

    const-string v1, "WrJkmBjBZcK3S"

    const/4 v0, 0x1

    aput-object v1, v2, v0

    const/4 v3, 0x0

    .line 99240
    .local v1, "foundEndOfInput":Z
    const v0, 0x8000

    if-ge v4, v0, :cond_4

    .line 99241
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/mg;->A0A:Lcom/facebook/ads/redexgen/X/4v;

    .line 99242
    invoke-virtual {v1}, Lcom/facebook/ads/redexgen/X/4v;->A0l()[B

    move-result-object v1

    sub-int/2addr v0, v4

    .line 99243
    invoke-interface {p1, v1, v4, v0}, Lcom/facebook/ads/redexgen/X/ms;->read([BII)I

    move-result v2

    .line 99244
    .local v5, "bytesRead":I
    const/4 v1, -0x1

    if-ne v2, v1, :cond_9

    const/4 v3, 0x1

    .line 99245
    :goto_0
    if-nez v3, :cond_8

    .line 99246
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/mg;->A0A:Lcom/facebook/ads/redexgen/X/4v;

    add-int/2addr v4, v2

    invoke-virtual {v0, v4}, Lcom/facebook/ads/redexgen/X/4v;->A0e(I)V

    .line 99247
    .end local v5    # "bytesRead":I
    :cond_4
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/mg;->A0A:Lcom/facebook/ads/redexgen/X/4v;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/4v;->A09()I

    move-result v6

    .line 99248
    .local v5, "positionBeforeFindingAFrame":I
    iget v1, p0, Lcom/facebook/ads/redexgen/X/mg;->A00:I

    iget v0, p0, Lcom/facebook/ads/redexgen/X/mg;->A02:I

    if-ge v1, v0, :cond_5

    .line 99249
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/mg;->A0A:Lcom/facebook/ads/redexgen/X/4v;

    iget v1, p0, Lcom/facebook/ads/redexgen/X/mg;->A02:I

    iget v0, p0, Lcom/facebook/ads/redexgen/X/mg;->A00:I

    sub-int/2addr v1, v0

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/mg;->A0A:Lcom/facebook/ads/redexgen/X/4v;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/4v;->A07()I

    move-result v0

    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    invoke-virtual {v2, v0}, Lcom/facebook/ads/redexgen/X/4v;->A0g(I)V

    .line 99250
    :cond_5
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/mg;->A0A:Lcom/facebook/ads/redexgen/X/4v;

    invoke-direct {p0, v0, v3}, Lcom/facebook/ads/redexgen/X/mg;->A01(Lcom/facebook/ads/redexgen/X/4v;Z)J

    move-result-wide v2

    .line 99251
    .local v6, "nextFrameFirstSampleNumber":J
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/mg;->A0A:Lcom/facebook/ads/redexgen/X/4v;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/4v;->A09()I

    move-result v4

    sub-int/2addr v4, v6

    .line 99252
    .local v8, "numberOfFrameBytes":I
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/mg;->A0A:Lcom/facebook/ads/redexgen/X/4v;

    invoke-virtual {v0, v6}, Lcom/facebook/ads/redexgen/X/4v;->A0f(I)V

    .line 99253
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/mg;->A08:Lcom/facebook/ads/redexgen/X/Hd;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/mg;->A0A:Lcom/facebook/ads/redexgen/X/4v;

    invoke-interface {v1, v0, v4}, Lcom/facebook/ads/redexgen/X/Hd;->AIr(Lcom/facebook/ads/redexgen/X/4v;I)V

    .line 99254
    iget v0, p0, Lcom/facebook/ads/redexgen/X/mg;->A00:I

    add-int/2addr v0, v4

    iput v0, p0, Lcom/facebook/ads/redexgen/X/mg;->A00:I

    .line 99255
    cmp-long v0, v2, v7

    if-eqz v0, :cond_6

    .line 99256
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/mg;->A03()V

    sget-object v4, Lcom/facebook/ads/redexgen/X/mg;->A0E:[Ljava/lang/String;

    const/4 v0, 0x6

    aget-object v1, v4, v0

    const/4 v0, 0x1

    aget-object v0, v4, v0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eq v1, v0, :cond_1

    .line 99257
    sget-object v4, Lcom/facebook/ads/redexgen/X/mg;->A0E:[Ljava/lang/String;

    const-string v1, "m1G"

    const/4 v0, 0x3

    aput-object v1, v4, v0

    const-string v1, "pgV"

    const/4 v0, 0x4

    aput-object v1, v4, v0

    iput v5, p0, Lcom/facebook/ads/redexgen/X/mg;->A00:I

    .line 99258
    iput-wide v2, p0, Lcom/facebook/ads/redexgen/X/mg;->A04:J

    .line 99259
    :cond_6
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/mg;->A0A:Lcom/facebook/ads/redexgen/X/4v;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/4v;->A07()I

    move-result v1

    const/16 v0, 0x10

    if-ge v1, v0, :cond_7

    .line 99260
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/mg;->A0A:Lcom/facebook/ads/redexgen/X/4v;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/4v;->A07()I

    move-result v3

    .line 99261
    .local v2, "bytesLeft":I
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/mg;->A0A:Lcom/facebook/ads/redexgen/X/4v;

    .line 99262
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/4v;->A0l()[B

    move-result-object v2

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/mg;->A0A:Lcom/facebook/ads/redexgen/X/4v;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/4v;->A09()I

    move-result v1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/mg;->A0A:Lcom/facebook/ads/redexgen/X/4v;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/4v;->A0l()[B

    move-result-object v0

    .line 99263
    invoke-static {v2, v1, v0, v5, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 99264
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/mg;->A0A:Lcom/facebook/ads/redexgen/X/4v;

    invoke-virtual {v0, v5}, Lcom/facebook/ads/redexgen/X/4v;->A0f(I)V

    .line 99265
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/mg;->A0A:Lcom/facebook/ads/redexgen/X/4v;

    invoke-virtual {v0, v3}, Lcom/facebook/ads/redexgen/X/4v;->A0e(I)V

    .line 99266
    .end local v2    # "bytesLeft":I
    :cond_7
    return v5

    .line 99267
    :cond_8
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/mg;->A0A:Lcom/facebook/ads/redexgen/X/4v;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/4v;->A07()I

    move-result v0

    if-nez v0, :cond_4

    .line 99268
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/mg;->A03()V

    .line 99269
    return v1

    .line 99270
    :cond_9
    const/4 v3, 0x0

    goto/16 :goto_0
.end method

.method private A01(Lcom/facebook/ads/redexgen/X/4v;Z)J
    .locals 5

    .line 99271
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/mg;->A07:Lcom/facebook/ads/redexgen/X/HJ;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/3y;->A01(Ljava/lang/Object;)Ljava/lang/Object;

    .line 99272
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/4v;->A09()I

    move-result v3

    .line 99273
    .local v0, "frameOffset":I
    :goto_0
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/4v;->A0A()I

    move-result v0

    add-int/lit8 v0, v0, -0x10

    if-gt v3, v0, :cond_1

    .line 99274
    invoke-virtual {p1, v3}, Lcom/facebook/ads/redexgen/X/4v;->A0f(I)V

    .line 99275
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/mg;->A07:Lcom/facebook/ads/redexgen/X/HJ;

    iget v1, p0, Lcom/facebook/ads/redexgen/X/mg;->A01:I

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/mg;->A0B:Lcom/facebook/ads/redexgen/X/HE;

    invoke-static {p1, v2, v1, v0}, Lcom/facebook/ads/redexgen/X/HF;->A07(Lcom/facebook/ads/redexgen/X/4v;Lcom/facebook/ads/redexgen/X/HJ;ILcom/facebook/ads/redexgen/X/HE;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 99276
    invoke-virtual {p1, v3}, Lcom/facebook/ads/redexgen/X/4v;->A0f(I)V

    .line 99277
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/mg;->A0B:Lcom/facebook/ads/redexgen/X/HE;

    iget-wide v0, v0, Lcom/facebook/ads/redexgen/X/HE;->A00:J

    return-wide v0

    .line 99278
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 99279
    :cond_1
    if-eqz p2, :cond_5

    .line 99280
    :goto_1
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/4v;->A0A()I

    move-result v1

    iget v0, p0, Lcom/facebook/ads/redexgen/X/mg;->A02:I

    sub-int/2addr v1, v0

    if-gt v3, v1, :cond_4

    .line 99281
    invoke-virtual {p1, v3}, Lcom/facebook/ads/redexgen/X/4v;->A0f(I)V

    .line 99282
    :try_start_0
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/mg;->A07:Lcom/facebook/ads/redexgen/X/HJ;

    iget v1, p0, Lcom/facebook/ads/redexgen/X/mg;->A01:I

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/mg;->A0B:Lcom/facebook/ads/redexgen/X/HE;

    .line 99283
    invoke-static {p1, v2, v1, v0}, Lcom/facebook/ads/redexgen/X/HF;->A07(Lcom/facebook/ads/redexgen/X/4v;Lcom/facebook/ads/redexgen/X/HJ;ILcom/facebook/ads/redexgen/X/HE;)Z

    move-result v2

    goto :goto_2
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 99284
    .end local v1
    .local v1, "e":Ljava/lang/IndexOutOfBoundsException;
    :catch_0
    const/4 v2, 0x0

    .line 99285
    .local v1, "frameFound":Z
    :goto_2
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/4v;->A09()I

    move-result v1

    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/4v;->A0A()I

    move-result v0

    if-le v1, v0, :cond_2

    .line 99286
    const/4 v2, 0x0

    .line 99287
    :cond_2
    if-eqz v2, :cond_3

    .line 99288
    invoke-virtual {p1, v3}, Lcom/facebook/ads/redexgen/X/4v;->A0f(I)V

    .line 99289
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/mg;->A0B:Lcom/facebook/ads/redexgen/X/HE;

    iget-wide v0, v0, Lcom/facebook/ads/redexgen/X/HE;->A00:J

    return-wide v0

    .line 99290
    .end local v1    # "frameFound":Z
    :cond_3
    add-int/lit8 v3, v3, 0x1

    .line 99291
    goto :goto_1

    .line 99292
    :cond_4
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/4v;->A0A()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/facebook/ads/redexgen/X/4v;->A0f(I)V

    goto :goto_3

    .line 99293
    :cond_5
    invoke-virtual {p1, v3}, Lcom/facebook/ads/redexgen/X/4v;->A0f(I)V

    .line 99294
    :goto_3
    const-wide/16 v3, -0x1

    sget-object v2, Lcom/facebook/ads/redexgen/X/mg;->A0E:[Ljava/lang/String;

    const/4 v0, 0x3

    aget-object v1, v2, v0

    const/4 v0, 0x4

    aget-object v0, v2, v0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eq v1, v0, :cond_6

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_6
    sget-object v2, Lcom/facebook/ads/redexgen/X/mg;->A0E:[Ljava/lang/String;

    const-string v1, "ocsB3wUrjHvCq2LiV7qRqPCVLxbY4c1N"

    const/4 v0, 0x7

    aput-object v1, v2, v0

    const-string v1, "pwt2z55mSaXVkRisABTZleFgLF4gxvRK"

    const/4 v0, 0x5

    aput-object v1, v2, v0

    return-wide v3
.end method

.method private A02(JJ)Lcom/facebook/ads/redexgen/X/HY;
    .locals 13

    .line 99295
    move-object v5, p0

    iget-object v0, v5, Lcom/facebook/ads/redexgen/X/mg;->A07:Lcom/facebook/ads/redexgen/X/HJ;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/3y;->A01(Ljava/lang/Object;)Ljava/lang/Object;

    .line 99296
    iget-object v0, v5, Lcom/facebook/ads/redexgen/X/mg;->A07:Lcom/facebook/ads/redexgen/X/HJ;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/HJ;->A0A:Lcom/facebook/ads/redexgen/X/HI;

    move-wide v9, p1

    if-eqz v0, :cond_0

    .line 99297
    iget-object v1, v5, Lcom/facebook/ads/redexgen/X/mg;->A07:Lcom/facebook/ads/redexgen/X/HJ;

    new-instance v0, Lcom/facebook/ads/redexgen/X/mp;

    invoke-direct {v0, v1, v9, v10}, Lcom/facebook/ads/redexgen/X/mp;-><init>(Lcom/facebook/ads/redexgen/X/HJ;J)V

    return-object v0

    .line 99298
    :cond_0
    const-wide/16 v1, -0x1

    move-wide/from16 v11, p3

    cmp-long v0, v11, v1

    if-eqz v0, :cond_1

    iget-object v0, v5, Lcom/facebook/ads/redexgen/X/mg;->A07:Lcom/facebook/ads/redexgen/X/HJ;

    iget-wide v3, v0, Lcom/facebook/ads/redexgen/X/HJ;->A09:J

    const-wide/16 v1, 0x0

    cmp-long v0, v3, v1

    if-lez v0, :cond_1

    .line 99299
    new-instance v6, Lcom/facebook/ads/redexgen/X/mi;

    iget-object v7, v5, Lcom/facebook/ads/redexgen/X/mg;->A07:Lcom/facebook/ads/redexgen/X/HJ;

    iget v8, v5, Lcom/facebook/ads/redexgen/X/mg;->A01:I

    invoke-direct/range {v6 .. v12}, Lcom/facebook/ads/redexgen/X/mi;-><init>(Lcom/facebook/ads/redexgen/X/HJ;IJJ)V

    iput-object v6, v5, Lcom/facebook/ads/redexgen/X/mg;->A09:Lcom/facebook/ads/redexgen/X/mi;

    .line 99300
    iget-object v0, v5, Lcom/facebook/ads/redexgen/X/mg;->A09:Lcom/facebook/ads/redexgen/X/mi;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/H2;->A07()Lcom/facebook/ads/redexgen/X/n0;

    move-result-object v0

    return-object v0

    .line 99301
    :cond_1
    iget-object v0, v5, Lcom/facebook/ads/redexgen/X/mg;->A07:Lcom/facebook/ads/redexgen/X/HJ;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/HJ;->A06()J

    move-result-wide v1

    new-instance v0, Lcom/facebook/ads/redexgen/X/mn;

    invoke-direct {v0, v1, v2}, Lcom/facebook/ads/redexgen/X/mn;-><init>(J)V

    return-object v0
.end method

.method private A03()V
    .locals 8

    .line 99302
    iget-wide v2, p0, Lcom/facebook/ads/redexgen/X/mg;->A04:J

    const-wide/32 v0, 0xf4240

    mul-long/2addr v2, v0

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/mg;->A07:Lcom/facebook/ads/redexgen/X/HJ;

    .line 99303
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/5C;->A0f(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/redexgen/X/HJ;

    iget v0, v0, Lcom/facebook/ads/redexgen/X/HJ;->A07:I

    int-to-long v0, v0

    div-long/2addr v2, v0

    .line 99304
    .local v0, "timeUs":J
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/mg;->A08:Lcom/facebook/ads/redexgen/X/Hd;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/5C;->A0f(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/facebook/ads/redexgen/X/Hd;

    iget v5, p0, Lcom/facebook/ads/redexgen/X/mg;->A00:I

    .line 99305
    const/4 v4, 0x1

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-interface/range {v1 .. v7}, Lcom/facebook/ads/redexgen/X/Hd;->AIu(JIIILcom/facebook/ads/redexgen/X/Hb;)V

    .line 99306
    return-void
.end method

.method private A04(Lcom/facebook/ads/redexgen/X/ms;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 99307
    invoke-static {p1}, Lcom/facebook/ads/redexgen/X/HH;->A00(Lcom/facebook/ads/redexgen/X/ms;)I

    move-result v0

    iput v0, p0, Lcom/facebook/ads/redexgen/X/mg;->A01:I

    .line 99308
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/mg;->A06:Lcom/facebook/ads/redexgen/X/HA;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/5C;->A0f(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/facebook/ads/redexgen/X/HA;

    .line 99309
    invoke-interface {p1}, Lcom/facebook/ads/redexgen/X/ms;->A8n()J

    move-result-wide v2

    .line 99310
    invoke-interface {p1}, Lcom/facebook/ads/redexgen/X/ms;->A8O()J

    move-result-wide v0

    .line 99311
    invoke-direct {p0, v2, v3, v0, v1}, Lcom/facebook/ads/redexgen/X/mg;->A02(JJ)Lcom/facebook/ads/redexgen/X/HY;

    move-result-object v0

    .line 99312
    invoke-interface {v4, v0}, Lcom/facebook/ads/redexgen/X/HA;->AJ7(Lcom/facebook/ads/redexgen/X/HY;)V

    .line 99313
    const/4 v0, 0x5

    iput v0, p0, Lcom/facebook/ads/redexgen/X/mg;->A03:I

    .line 99314
    return-void
.end method

.method private A05(Lcom/facebook/ads/redexgen/X/ms;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 99315
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/mg;->A0D:[B

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/mg;->A0D:[B

    array-length v1, v0

    const/4 v0, 0x0

    invoke-interface {p1, v2, v0, v1}, Lcom/facebook/ads/redexgen/X/ms;->AGt([BII)V

    .line 99316
    invoke-interface {p1}, Lcom/facebook/ads/redexgen/X/ms;->AIl()V

    .line 99317
    const/4 v0, 0x2

    iput v0, p0, Lcom/facebook/ads/redexgen/X/mg;->A03:I

    .line 99318
    return-void
.end method

.method private A06(Lcom/facebook/ads/redexgen/X/ms;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 99319
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/mg;->A0C:Z

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    invoke-static {p1, v0}, Lcom/facebook/ads/redexgen/X/HH;->A02(Lcom/facebook/ads/redexgen/X/ms;Z)Lcom/facebook/ads/androidx/media3/common/Metadata;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/mg;->A05:Lcom/facebook/ads/androidx/media3/common/Metadata;

    .line 99320
    iput v1, p0, Lcom/facebook/ads/redexgen/X/mg;->A03:I

    .line 99321
    return-void
.end method

.method private A07(Lcom/facebook/ads/redexgen/X/ms;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 99322
    const/4 v2, 0x0

    .line 99323
    .local v0, "isLastMetadataBlock":Z
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/mg;->A07:Lcom/facebook/ads/redexgen/X/HJ;

    new-instance v1, Lcom/facebook/ads/redexgen/X/HG;

    invoke-direct {v1, v0}, Lcom/facebook/ads/redexgen/X/HG;-><init>(Lcom/facebook/ads/redexgen/X/HJ;)V

    .line 99324
    .local v1, "metadataHolder":Lcom/facebook/ads/redexgen/X/HG;
    :goto_0
    if-nez v2, :cond_0

    .line 99325
    invoke-static {p1, v1}, Lcom/facebook/ads/redexgen/X/HH;->A0B(Lcom/facebook/ads/redexgen/X/ms;Lcom/facebook/ads/redexgen/X/HG;)Z

    move-result v2

    .line 99326
    iget-object v0, v1, Lcom/facebook/ads/redexgen/X/HG;->A00:Lcom/facebook/ads/redexgen/X/HJ;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/5C;->A0f(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/redexgen/X/HJ;

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/mg;->A07:Lcom/facebook/ads/redexgen/X/HJ;

    goto :goto_0

    .line 99327
    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/mg;->A07:Lcom/facebook/ads/redexgen/X/HJ;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/3y;->A01(Ljava/lang/Object;)Ljava/lang/Object;

    .line 99328
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/mg;->A07:Lcom/facebook/ads/redexgen/X/HJ;

    iget v1, v0, Lcom/facebook/ads/redexgen/X/HJ;->A06:I

    const/4 v0, 0x6

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Lcom/facebook/ads/redexgen/X/mg;->A02:I

    .line 99329
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/mg;->A08:Lcom/facebook/ads/redexgen/X/Hd;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/5C;->A0f(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/facebook/ads/redexgen/X/Hd;

    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/mg;->A07:Lcom/facebook/ads/redexgen/X/HJ;

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/mg;->A0D:[B

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/mg;->A05:Lcom/facebook/ads/androidx/media3/common/Metadata;

    .line 99330
    invoke-virtual {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/HJ;->A08([BLcom/facebook/ads/androidx/media3/common/Metadata;)Lcom/facebook/ads/redexgen/X/qI;

    move-result-object v0

    invoke-interface {v3, v0}, Lcom/facebook/ads/redexgen/X/Hd;->A6e(Lcom/facebook/ads/redexgen/X/qI;)V

    .line 99331
    const/4 v0, 0x4

    iput v0, p0, Lcom/facebook/ads/redexgen/X/mg;->A03:I

    .line 99332
    return-void
.end method

.method private A08(Lcom/facebook/ads/redexgen/X/ms;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 99333
    invoke-static {p1}, Lcom/facebook/ads/redexgen/X/HH;->A09(Lcom/facebook/ads/redexgen/X/ms;)V

    .line 99334
    const/4 v0, 0x3

    iput v0, p0, Lcom/facebook/ads/redexgen/X/mg;->A03:I

    .line 99335
    return-void
.end method

.method public static synthetic A09()[Lcom/facebook/ads/redexgen/X/H9;
    .locals 3

    .line 99336
    const/4 v0, 0x1

    new-array v2, v0, [Lcom/facebook/ads/redexgen/X/H9;

    new-instance v1, Lcom/facebook/ads/redexgen/X/mg;

    invoke-direct {v1}, Lcom/facebook/ads/redexgen/X/mg;-><init>()V

    const/4 v0, 0x0

    aput-object v1, v2, v0

    return-object v2
.end method


# virtual methods
.method public final AAC(Lcom/facebook/ads/redexgen/X/HA;)V
    .locals 2

    .line 99337
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/mg;->A06:Lcom/facebook/ads/redexgen/X/HA;

    .line 99338
    const/4 v1, 0x0

    const/4 v0, 0x1

    invoke-interface {p1, v1, v0}, Lcom/facebook/ads/redexgen/X/HA;->AKS(II)Lcom/facebook/ads/redexgen/X/Hd;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/mg;->A08:Lcom/facebook/ads/redexgen/X/Hd;

    .line 99339
    invoke-interface {p1}, Lcom/facebook/ads/redexgen/X/HA;->A6O()V

    .line 99340
    return-void
.end method

.method public final AHL(Lcom/facebook/ads/redexgen/X/ms;Lcom/facebook/ads/redexgen/X/HV;)I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 99341
    iget v1, p0, Lcom/facebook/ads/redexgen/X/mg;->A03:I

    const/4 v0, 0x0

    packed-switch v1, :pswitch_data_0

    .line 99342
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    .line 99343
    :pswitch_0
    invoke-direct {p0, p1, p2}, Lcom/facebook/ads/redexgen/X/mg;->A00(Lcom/facebook/ads/redexgen/X/ms;Lcom/facebook/ads/redexgen/X/HV;)I

    move-result v0

    return v0

    .line 99344
    :pswitch_1
    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/mg;->A04(Lcom/facebook/ads/redexgen/X/ms;)V

    .line 99345
    return v0

    .line 99346
    :pswitch_2
    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/mg;->A07(Lcom/facebook/ads/redexgen/X/ms;)V

    .line 99347
    return v0

    .line 99348
    :pswitch_3
    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/mg;->A08(Lcom/facebook/ads/redexgen/X/ms;)V

    .line 99349
    return v0

    .line 99350
    :pswitch_4
    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/mg;->A05(Lcom/facebook/ads/redexgen/X/ms;)V

    .line 99351
    return v0

    .line 99352
    :pswitch_5
    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/mg;->A06(Lcom/facebook/ads/redexgen/X/ms;)V

    .line 99353
    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final AHb()V
    .locals 0

    .line 99354
    return-void
.end method

.method public final AJ6(JJ)V
    .locals 7

    .line 99355
    const/4 v5, 0x0

    const-wide/16 v2, 0x0

    cmp-long v0, p1, v2

    if-nez v0, :cond_2

    .line 99356
    iput v5, p0, Lcom/facebook/ads/redexgen/X/mg;->A03:I

    .line 99357
    :cond_0
    :goto_0
    cmp-long v0, p3, v2

    if-nez v0, :cond_1

    :goto_1
    iput-wide v2, p0, Lcom/facebook/ads/redexgen/X/mg;->A04:J

    .line 99358
    iput v5, p0, Lcom/facebook/ads/redexgen/X/mg;->A00:I

    .line 99359
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/mg;->A0A:Lcom/facebook/ads/redexgen/X/4v;

    invoke-virtual {v0, v5}, Lcom/facebook/ads/redexgen/X/4v;->A0d(I)V

    .line 99360
    return-void

    .line 99361
    :cond_1
    const-wide/16 v2, -0x1

    goto :goto_1

    .line 99362
    :cond_2
    iget-object v6, p0, Lcom/facebook/ads/redexgen/X/mg;->A09:Lcom/facebook/ads/redexgen/X/mi;

    sget-object v1, Lcom/facebook/ads/redexgen/X/mg;->A0E:[Ljava/lang/String;

    const/4 v0, 0x2

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v0, 0x13

    if-eq v1, v0, :cond_3

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_3
    sget-object v4, Lcom/facebook/ads/redexgen/X/mg;->A0E:[Ljava/lang/String;

    const-string v1, "FHi"

    const/4 v0, 0x3

    aput-object v1, v4, v0

    const-string v1, "3pT"

    const/4 v0, 0x4

    aput-object v1, v4, v0

    if-eqz v6, :cond_0

    .line 99363
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/mg;->A09:Lcom/facebook/ads/redexgen/X/mi;

    invoke-virtual {v0, p3, p4}, Lcom/facebook/ads/redexgen/X/H2;->A08(J)V

    goto :goto_0
.end method

.method public final AK5(Lcom/facebook/ads/redexgen/X/ms;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 99364
    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/facebook/ads/redexgen/X/HH;->A01(Lcom/facebook/ads/redexgen/X/ms;Z)Lcom/facebook/ads/androidx/media3/common/Metadata;

    .line 99365
    invoke-static {p1}, Lcom/facebook/ads/redexgen/X/HH;->A0A(Lcom/facebook/ads/redexgen/X/ms;)Z

    move-result v0

    return v0
.end method
