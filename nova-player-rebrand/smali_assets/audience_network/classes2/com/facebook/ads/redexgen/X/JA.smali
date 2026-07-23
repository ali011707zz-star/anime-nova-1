.class public final Lcom/facebook/ads/redexgen/X/JA;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/ads/redexgen/X/m7;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "TrackBundle"
.end annotation


# static fields
.field public static A0C:[Ljava/lang/String;


# instance fields
.field public A00:I

.field public A01:I

.field public A02:I

.field public A03:I

.field public A04:Lcom/facebook/ads/redexgen/X/J1;

.field public A05:Lcom/facebook/ads/redexgen/X/JR;

.field public A06:Z

.field public final A07:Lcom/facebook/ads/redexgen/X/4v;

.field public final A08:Lcom/facebook/ads/redexgen/X/Hd;

.field public final A09:Lcom/facebook/ads/redexgen/X/JQ;

.field public final A0A:Lcom/facebook/ads/redexgen/X/4v;

.field public final A0B:Lcom/facebook/ads/redexgen/X/4v;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    .line 819
    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "uuzqWXLhVU5h"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "MCiAyNDofRMgV8twnC7AiCrYM6kNh0jg"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "HJXujHHcElJRTDtcfeo3Sy7Hv18RGZgy"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "Amjr7hMXQx0e32VF8yWASHBDx37PervK"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "NgKcffCH0RNam7yPBBIvJezNpINfNkiL"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "oMs9elp"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "apSAFH841DSL3paVepKSIoWcAWyBkdVZ"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "h51QMR"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/JA;->A0C:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/facebook/ads/redexgen/X/Hd;Lcom/facebook/ads/redexgen/X/JR;Lcom/facebook/ads/redexgen/X/J1;)V
    .locals 2

    .line 42261
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42262
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/JA;->A08:Lcom/facebook/ads/redexgen/X/Hd;

    .line 42263
    iput-object p2, p0, Lcom/facebook/ads/redexgen/X/JA;->A05:Lcom/facebook/ads/redexgen/X/JR;

    .line 42264
    iput-object p3, p0, Lcom/facebook/ads/redexgen/X/JA;->A04:Lcom/facebook/ads/redexgen/X/J1;

    .line 42265
    new-instance v0, Lcom/facebook/ads/redexgen/X/JQ;

    invoke-direct {v0}, Lcom/facebook/ads/redexgen/X/JQ;-><init>()V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/JA;->A09:Lcom/facebook/ads/redexgen/X/JQ;

    .line 42266
    new-instance v0, Lcom/facebook/ads/redexgen/X/4v;

    invoke-direct {v0}, Lcom/facebook/ads/redexgen/X/4v;-><init>()V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/JA;->A07:Lcom/facebook/ads/redexgen/X/4v;

    .line 42267
    const/4 v1, 0x1

    new-instance v0, Lcom/facebook/ads/redexgen/X/4v;

    invoke-direct {v0, v1}, Lcom/facebook/ads/redexgen/X/4v;-><init>(I)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/JA;->A0B:Lcom/facebook/ads/redexgen/X/4v;

    .line 42268
    new-instance v0, Lcom/facebook/ads/redexgen/X/4v;

    invoke-direct {v0}, Lcom/facebook/ads/redexgen/X/4v;-><init>()V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/JA;->A0A:Lcom/facebook/ads/redexgen/X/4v;

    .line 42269
    invoke-virtual {p0, p2, p3}, Lcom/facebook/ads/redexgen/X/JA;->A0C(Lcom/facebook/ads/redexgen/X/JR;Lcom/facebook/ads/redexgen/X/J1;)V

    .line 42270
    return-void
.end method

.method public static synthetic A00(Lcom/facebook/ads/redexgen/X/JA;)Z
    .locals 0

    .line 42271
    iget-boolean p0, p0, Lcom/facebook/ads/redexgen/X/JA;->A06:Z

    return p0
.end method

.method public static synthetic A01(Lcom/facebook/ads/redexgen/X/JA;Z)Z
    .locals 0

    .line 42272
    iput-boolean p1, p0, Lcom/facebook/ads/redexgen/X/JA;->A06:Z

    return p1
.end method


# virtual methods
.method public final A02()I
    .locals 5

    .line 42273
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/JA;->A06:Z

    if-nez v0, :cond_0

    .line 42274
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/JA;->A05:Lcom/facebook/ads/redexgen/X/JR;

    iget-object v1, v0, Lcom/facebook/ads/redexgen/X/JR;->A04:[I

    iget v0, p0, Lcom/facebook/ads/redexgen/X/JA;->A01:I

    aget v4, v1, v0

    .line 42275
    .local v0, "flags":I
    :goto_0
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/JA;->A07()Lcom/facebook/ads/redexgen/X/JP;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 42276
    const/high16 v3, 0x40000000    # 2.0f

    sget-object v2, Lcom/facebook/ads/redexgen/X/JA;->A0C:[Ljava/lang/String;

    const/4 v0, 0x3

    aget-object v1, v2, v0

    const/4 v0, 0x2

    aget-object v2, v2, v0

    const/16 v0, 0x14

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v1, v0, :cond_2

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    .line 42277
    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/JA;->A09:Lcom/facebook/ads/redexgen/X/JQ;

    iget-object v1, v0, Lcom/facebook/ads/redexgen/X/JQ;->A0G:[Z

    iget v0, p0, Lcom/facebook/ads/redexgen/X/JA;->A01:I

    aget-boolean v0, v1, v0

    if-eqz v0, :cond_1

    const/4 v4, 0x1

    goto :goto_0

    :cond_1
    const/4 v4, 0x0

    goto :goto_0

    :cond_2
    sget-object v2, Lcom/facebook/ads/redexgen/X/JA;->A0C:[Ljava/lang/String;

    const-string v1, "Hkeae3ogmEOju43arfP4ZrrsYFDfrpvf"

    const/4 v0, 0x4

    aput-object v1, v2, v0

    or-int/2addr v4, v3

    .line 42278
    :cond_3
    return v4
.end method

.method public final A03()I
    .locals 2

    .line 42279
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/JA;->A06:Z

    if-nez v0, :cond_0

    .line 42280
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/JA;->A05:Lcom/facebook/ads/redexgen/X/JR;

    iget-object v1, v0, Lcom/facebook/ads/redexgen/X/JR;->A05:[I

    iget v0, p0, Lcom/facebook/ads/redexgen/X/JA;->A01:I

    aget v0, v1, v0

    .line 42281
    :goto_0
    return v0

    .line 42282
    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/JA;->A09:Lcom/facebook/ads/redexgen/X/JQ;

    iget-object v1, v0, Lcom/facebook/ads/redexgen/X/JQ;->A0B:[I

    iget v0, p0, Lcom/facebook/ads/redexgen/X/JA;->A01:I

    aget v0, v1, v0

    goto :goto_0
.end method

.method public final A04(II)I
    .locals 12

    .line 42283
    move-object v5, p0

    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/JA;->A07()Lcom/facebook/ads/redexgen/X/JP;

    move-result-object v1

    .line 42284
    .local v3, "encryptionBox":Lcom/facebook/ads/redexgen/X/JP;
    const/4 v8, 0x0

    if-nez v1, :cond_0

    .line 42285
    return v8

    .line 42286
    :cond_0
    iget v0, v1, Lcom/facebook/ads/redexgen/X/JP;->A00:I

    if-eqz v0, :cond_4

    .line 42287
    iget-object v0, v5, Lcom/facebook/ads/redexgen/X/JA;->A09:Lcom/facebook/ads/redexgen/X/JQ;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/JQ;->A0H:Lcom/facebook/ads/redexgen/X/4v;

    .line 42288
    .local v5, "initializationVectorData":Lcom/facebook/ads/redexgen/X/4v;
    iget v3, v1, Lcom/facebook/ads/redexgen/X/JP;->A00:I

    .line 42289
    .local v6, "vectorSize":I
    .local v5, "initializationVectorData":Lcom/facebook/ads/redexgen/X/4v;
    .local v6, "vectorSize":I
    :goto_0
    iget-object v2, v5, Lcom/facebook/ads/redexgen/X/JA;->A09:Lcom/facebook/ads/redexgen/X/JQ;

    iget v1, v5, Lcom/facebook/ads/redexgen/X/JA;->A01:I

    .line 42290
    invoke-virtual {v2, v1}, Lcom/facebook/ads/redexgen/X/JQ;->A06(I)Z

    move-result v11

    .line 42291
    .local v7, "haveSubsampleEncryptionTable":Z
    const/4 v2, 0x1

    if-nez v11, :cond_1

    if-eqz p2, :cond_3

    :cond_1
    const/4 v6, 0x1

    .line 42292
    .local v9, "writeSubsampleEncryptionData":Z
    :goto_1
    iget-object v1, v5, Lcom/facebook/ads/redexgen/X/JA;->A0B:Lcom/facebook/ads/redexgen/X/4v;

    invoke-virtual {v1}, Lcom/facebook/ads/redexgen/X/4v;->A0l()[B

    move-result-object v4

    .line 42293
    if-eqz v6, :cond_2

    const/16 v1, 0x80

    :goto_2
    or-int/2addr v1, v3

    int-to-byte v1, v1

    aput-byte v1, v4, v8

    .line 42294
    iget-object v1, v5, Lcom/facebook/ads/redexgen/X/JA;->A0B:Lcom/facebook/ads/redexgen/X/4v;

    invoke-virtual {v1, v8}, Lcom/facebook/ads/redexgen/X/4v;->A0f(I)V

    .line 42295
    iget-object v4, v5, Lcom/facebook/ads/redexgen/X/JA;->A08:Lcom/facebook/ads/redexgen/X/Hd;

    iget-object v1, v5, Lcom/facebook/ads/redexgen/X/JA;->A0B:Lcom/facebook/ads/redexgen/X/4v;

    invoke-interface {v4, v1, v2, v2}, Lcom/facebook/ads/redexgen/X/Hd;->AIs(Lcom/facebook/ads/redexgen/X/4v;II)V

    .line 42296
    iget-object v1, v5, Lcom/facebook/ads/redexgen/X/JA;->A08:Lcom/facebook/ads/redexgen/X/Hd;

    invoke-interface {v1, v0, v3, v2}, Lcom/facebook/ads/redexgen/X/Hd;->AIs(Lcom/facebook/ads/redexgen/X/4v;II)V

    .line 42297
    if-nez v6, :cond_5

    .line 42298
    add-int/lit8 v0, v3, 0x1

    return v0

    .line 42299
    :cond_2
    const/4 v1, 0x0

    goto :goto_2

    .line 42300
    :cond_3
    const/4 v6, 0x0

    goto :goto_1

    .line 42301
    .end local v5    # "initializationVectorData":Lcom/facebook/ads/redexgen/X/4v;
    .end local v6    # "vectorSize":I
    :cond_4
    iget-object v0, v1, Lcom/facebook/ads/redexgen/X/JP;->A04:[B

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/5C;->A0f(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [B

    .line 42302
    .local v5, "initVectorData":[B
    iget-object v1, v5, Lcom/facebook/ads/redexgen/X/JA;->A0A:Lcom/facebook/ads/redexgen/X/4v;

    array-length v0, v2

    invoke-virtual {v1, v2, v0}, Lcom/facebook/ads/redexgen/X/4v;->A0j([BI)V

    .line 42303
    iget-object v0, v5, Lcom/facebook/ads/redexgen/X/JA;->A0A:Lcom/facebook/ads/redexgen/X/4v;

    .line 42304
    .local v6, "initializationVectorData":Lcom/facebook/ads/redexgen/X/4v;
    array-length v3, v2

    goto :goto_0

    .line 42305
    :cond_5
    const/4 v10, 0x3

    const/4 v9, 0x2

    const/16 v7, 0x8

    if-nez v11, :cond_6

    .line 42306
    iget-object v0, v5, Lcom/facebook/ads/redexgen/X/JA;->A07:Lcom/facebook/ads/redexgen/X/4v;

    invoke-virtual {v0, v7}, Lcom/facebook/ads/redexgen/X/4v;->A0d(I)V

    .line 42307
    iget-object v0, v5, Lcom/facebook/ads/redexgen/X/JA;->A07:Lcom/facebook/ads/redexgen/X/4v;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/4v;->A0l()[B

    move-result-object v4

    .line 42308
    .local p1, "data":[B
    aput-byte v8, v4, v8

    .line 42309
    aput-byte v2, v4, v2

    .line 42310
    shr-int/lit8 v0, p2, 0x8

    and-int/lit16 v0, v0, 0xff

    int-to-byte v0, v0

    aput-byte v0, v4, v9

    .line 42311
    and-int/lit16 v0, p2, 0xff

    int-to-byte v0, v0

    aput-byte v0, v4, v10

    .line 42312
    shr-int/lit8 v0, p1, 0x18

    and-int/lit16 v0, v0, 0xff

    int-to-byte v1, v0

    const/4 v0, 0x4

    aput-byte v1, v4, v0

    .line 42313
    shr-int/lit8 v0, p1, 0x10

    and-int/lit16 v0, v0, 0xff

    int-to-byte v1, v0

    const/4 v0, 0x5

    aput-byte v1, v4, v0

    .line 42314
    shr-int/lit8 v0, p1, 0x8

    and-int/lit16 v0, v0, 0xff

    int-to-byte v1, v0

    const/4 v0, 0x6

    aput-byte v1, v4, v0

    .line 42315
    and-int/lit16 v0, p1, 0xff

    int-to-byte v1, v0

    const/4 v0, 0x7

    aput-byte v1, v4, v0

    .line 42316
    iget-object v1, v5, Lcom/facebook/ads/redexgen/X/JA;->A08:Lcom/facebook/ads/redexgen/X/Hd;

    iget-object v0, v5, Lcom/facebook/ads/redexgen/X/JA;->A07:Lcom/facebook/ads/redexgen/X/4v;

    invoke-interface {v1, v0, v7, v2}, Lcom/facebook/ads/redexgen/X/Hd;->AIs(Lcom/facebook/ads/redexgen/X/4v;II)V

    .line 42317
    add-int/lit8 v0, v3, 0x1

    add-int/2addr v0, v7

    return v0

    .line 42318
    .end local p1    # "data":[B
    :cond_6
    iget-object v0, v5, Lcom/facebook/ads/redexgen/X/JA;->A09:Lcom/facebook/ads/redexgen/X/JQ;

    iget-object v6, v0, Lcom/facebook/ads/redexgen/X/JQ;->A0H:Lcom/facebook/ads/redexgen/X/4v;

    .line 42319
    .local p1, "subsampleEncryptionData":Lcom/facebook/ads/redexgen/X/4v;
    invoke-virtual {v6}, Lcom/facebook/ads/redexgen/X/4v;->A0M()I

    move-result v1

    .line 42320
    .local p2, "subsampleCount":I
    const/4 v0, -0x2

    invoke-virtual {v6, v0}, Lcom/facebook/ads/redexgen/X/4v;->A0g(I)V

    .line 42321
    mul-int/lit8 v2, v1, 0x6

    add-int/2addr v2, v9

    .line 42322
    .local p3, "subsampleDataLength":I
    if-eqz p2, :cond_7

    .line 42323
    iget-object v0, v5, Lcom/facebook/ads/redexgen/X/JA;->A07:Lcom/facebook/ads/redexgen/X/4v;

    invoke-virtual {v0, v2}, Lcom/facebook/ads/redexgen/X/4v;->A0d(I)V

    .line 42324
    iget-object v0, v5, Lcom/facebook/ads/redexgen/X/JA;->A07:Lcom/facebook/ads/redexgen/X/4v;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/4v;->A0l()[B

    move-result-object v4

    .line 42325
    .local v8, "scratchData":[B
    invoke-virtual {v6, v4, v8, v2}, Lcom/facebook/ads/redexgen/X/4v;->A0k([BII)V

    .line 42326
    aget-byte v0, v4, v9

    and-int/lit16 v1, v0, 0xff

    shl-int/2addr v1, v7

    aget-byte v0, v4, v10

    and-int/lit16 v0, v0, 0xff

    or-int/2addr v1, v0

    .line 42327
    .local v4, "clearDataSize":I
    add-int/2addr v1, p2

    .line 42328
    .local p0, "adjustedClearDataSize":I
    shr-int/lit8 v0, v1, 0x8

    and-int/lit16 v0, v0, 0xff

    int-to-byte v0, v0

    aput-byte v0, v4, v9

    .line 42329
    and-int/lit16 v0, v1, 0xff

    int-to-byte v1, v0

    const/4 v0, 0x3

    aput-byte v1, v4, v0

    .line 42330
    iget-object v6, v5, Lcom/facebook/ads/redexgen/X/JA;->A07:Lcom/facebook/ads/redexgen/X/4v;

    .line 42331
    .end local v4    # "clearDataSize":I
    .end local v8    # "scratchData":[B
    .end local p0    # "adjustedClearDataSize":I
    :cond_7
    iget-object v1, v5, Lcom/facebook/ads/redexgen/X/JA;->A08:Lcom/facebook/ads/redexgen/X/Hd;

    const/4 v0, 0x1

    invoke-interface {v1, v6, v2, v0}, Lcom/facebook/ads/redexgen/X/Hd;->AIs(Lcom/facebook/ads/redexgen/X/4v;II)V

    .line 42332
    add-int/lit8 v0, v3, 0x1

    add-int/2addr v0, v2

    return v0
.end method

.method public final A05()J
    .locals 2

    .line 42333
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/JA;->A06:Z

    if-nez v0, :cond_0

    .line 42334
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/JA;->A05:Lcom/facebook/ads/redexgen/X/JR;

    iget-object v1, v0, Lcom/facebook/ads/redexgen/X/JR;->A06:[J

    iget v0, p0, Lcom/facebook/ads/redexgen/X/JA;->A01:I

    aget-wide v0, v1, v0

    .line 42335
    :goto_0
    return-wide v0

    .line 42336
    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/JA;->A09:Lcom/facebook/ads/redexgen/X/JQ;

    iget-object v1, v0, Lcom/facebook/ads/redexgen/X/JQ;->A0E:[J

    iget v0, p0, Lcom/facebook/ads/redexgen/X/JA;->A02:I

    aget-wide v0, v1, v0

    goto :goto_0
.end method

.method public final A06()J
    .locals 2

    .line 42337
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/JA;->A06:Z

    if-nez v0, :cond_0

    .line 42338
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/JA;->A05:Lcom/facebook/ads/redexgen/X/JR;

    iget-object v1, v0, Lcom/facebook/ads/redexgen/X/JR;->A07:[J

    iget v0, p0, Lcom/facebook/ads/redexgen/X/JA;->A01:I

    aget-wide v0, v1, v0

    .line 42339
    :goto_0
    return-wide v0

    .line 42340
    :cond_0
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/JA;->A09:Lcom/facebook/ads/redexgen/X/JQ;

    iget v0, p0, Lcom/facebook/ads/redexgen/X/JA;->A01:I

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/JQ;->A00(I)J

    move-result-wide v0

    goto :goto_0
.end method

.method public final A07()Lcom/facebook/ads/redexgen/X/JP;
    .locals 3

    .line 42341
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/JA;->A06:Z

    const/4 v2, 0x0

    if-nez v0, :cond_0

    .line 42342
    return-object v2

    .line 42343
    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/JA;->A09:Lcom/facebook/ads/redexgen/X/JQ;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/JQ;->A06:Lcom/facebook/ads/redexgen/X/J1;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/5C;->A0f(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/redexgen/X/J1;

    iget v1, v0, Lcom/facebook/ads/redexgen/X/J1;->A02:I

    .line 42344
    .local v0, "sampleDescriptionIndex":I
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/JA;->A09:Lcom/facebook/ads/redexgen/X/JQ;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/JQ;->A07:Lcom/facebook/ads/redexgen/X/JP;

    if-eqz v0, :cond_2

    .line 42345
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/JA;->A09:Lcom/facebook/ads/redexgen/X/JQ;

    iget-object v1, v0, Lcom/facebook/ads/redexgen/X/JQ;->A07:Lcom/facebook/ads/redexgen/X/JP;

    .line 42346
    .local v2, "encryptionBox":Lcom/facebook/ads/redexgen/X/JP;
    :goto_0
    if-eqz v1, :cond_1

    iget-boolean v0, v1, Lcom/facebook/ads/redexgen/X/JP;->A03:Z

    if-eqz v0, :cond_1

    move-object v2, v1

    :cond_1
    return-object v2

    .line 42347
    :cond_2
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/JA;->A05:Lcom/facebook/ads/redexgen/X/JR;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/JR;->A03:Lcom/facebook/ads/redexgen/X/JO;

    invoke-virtual {v0, v1}, Lcom/facebook/ads/redexgen/X/JO;->A00(I)Lcom/facebook/ads/redexgen/X/JP;

    move-result-object v1

    goto :goto_0
.end method

.method public final A08()V
    .locals 1

    .line 42348
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/JA;->A09:Lcom/facebook/ads/redexgen/X/JQ;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/JQ;->A01()V

    .line 42349
    const/4 v0, 0x0

    iput v0, p0, Lcom/facebook/ads/redexgen/X/JA;->A01:I

    .line 42350
    iput v0, p0, Lcom/facebook/ads/redexgen/X/JA;->A02:I

    .line 42351
    iput v0, p0, Lcom/facebook/ads/redexgen/X/JA;->A00:I

    .line 42352
    iput v0, p0, Lcom/facebook/ads/redexgen/X/JA;->A03:I

    .line 42353
    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/JA;->A06:Z

    .line 42354
    return-void
.end method

.method public final A09()V
    .locals 3

    .line 42355
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/JA;->A07()Lcom/facebook/ads/redexgen/X/JP;

    move-result-object v1

    .line 42356
    .local v0, "encryptionBox":Lcom/facebook/ads/redexgen/X/JP;
    if-nez v1, :cond_0

    .line 42357
    return-void

    .line 42358
    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/JA;->A09:Lcom/facebook/ads/redexgen/X/JQ;

    iget-object v2, v0, Lcom/facebook/ads/redexgen/X/JQ;->A0H:Lcom/facebook/ads/redexgen/X/4v;

    .line 42359
    .local v1, "sampleEncryptionData":Lcom/facebook/ads/redexgen/X/4v;
    iget v0, v1, Lcom/facebook/ads/redexgen/X/JP;->A00:I

    if-eqz v0, :cond_1

    .line 42360
    iget v0, v1, Lcom/facebook/ads/redexgen/X/JP;->A00:I

    invoke-virtual {v2, v0}, Lcom/facebook/ads/redexgen/X/4v;->A0g(I)V

    .line 42361
    :cond_1
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/JA;->A09:Lcom/facebook/ads/redexgen/X/JQ;

    iget v0, p0, Lcom/facebook/ads/redexgen/X/JA;->A01:I

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/JQ;->A06(I)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 42362
    invoke-virtual {v2}, Lcom/facebook/ads/redexgen/X/4v;->A0M()I

    move-result v0

    mul-int/lit8 v0, v0, 0x6

    invoke-virtual {v2, v0}, Lcom/facebook/ads/redexgen/X/4v;->A0g(I)V

    .line 42363
    :cond_2
    return-void
.end method

.method public final A0A(J)V
    .locals 4

    .line 42364
    iget v3, p0, Lcom/facebook/ads/redexgen/X/JA;->A01:I

    .line 42365
    .local v0, "searchIndex":I
    :goto_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/JA;->A09:Lcom/facebook/ads/redexgen/X/JQ;

    iget v0, v0, Lcom/facebook/ads/redexgen/X/JQ;->A00:I

    if-ge v3, v0, :cond_1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/JA;->A09:Lcom/facebook/ads/redexgen/X/JQ;

    .line 42366
    invoke-virtual {v0, v3}, Lcom/facebook/ads/redexgen/X/JQ;->A00(I)J

    move-result-wide v1

    cmp-long v0, v1, p1

    if-gtz v0, :cond_1

    .line 42367
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/JA;->A09:Lcom/facebook/ads/redexgen/X/JQ;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/JQ;->A0G:[Z

    aget-boolean v0, v0, v3

    if-eqz v0, :cond_0

    .line 42368
    iput v3, p0, Lcom/facebook/ads/redexgen/X/JA;->A03:I

    .line 42369
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 42370
    :cond_1
    return-void
.end method

.method public final A0B(Lcom/facebook/ads/androidx/media3/common/DrmInitData;)V
    .locals 2

    .line 42371
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/JA;->A05:Lcom/facebook/ads/redexgen/X/JR;

    iget-object v1, v0, Lcom/facebook/ads/redexgen/X/JR;->A03:Lcom/facebook/ads/redexgen/X/JO;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/JA;->A09:Lcom/facebook/ads/redexgen/X/JQ;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/JQ;->A06:Lcom/facebook/ads/redexgen/X/J1;

    .line 42372
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/5C;->A0f(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/redexgen/X/J1;

    iget v0, v0, Lcom/facebook/ads/redexgen/X/J1;->A02:I

    .line 42373
    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/JO;->A00(I)Lcom/facebook/ads/redexgen/X/JP;

    move-result-object v0

    .line 42374
    .local v0, "encryptionBox":Lcom/facebook/ads/redexgen/X/JP;
    if-eqz v0, :cond_0

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/JP;->A02:Ljava/lang/String;

    .line 42375
    .local v1, "schemeType":Ljava/lang/String;
    :goto_0
    invoke-virtual {p1, v0}, Lcom/facebook/ads/androidx/media3/common/DrmInitData;->A01(Ljava/lang/String;)Lcom/facebook/ads/androidx/media3/common/DrmInitData;

    move-result-object v1

    .line 42376
    .local p0, "updatedDrmInitData":Lcom/facebook/ads/androidx/media3/common/DrmInitData;
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/JA;->A05:Lcom/facebook/ads/redexgen/X/JR;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/JR;->A03:Lcom/facebook/ads/redexgen/X/JO;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/JO;->A07:Lcom/facebook/ads/redexgen/X/qI;

    .line 42377
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/qI;->A07()Lcom/facebook/ads/redexgen/X/2p;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/facebook/ads/redexgen/X/2p;->A0u(Lcom/facebook/ads/androidx/media3/common/DrmInitData;)Lcom/facebook/ads/redexgen/X/2p;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/2p;->A14()Lcom/facebook/ads/redexgen/X/qI;

    move-result-object v1

    .line 42378
    .local p1, "format":Lcom/facebook/ads/redexgen/X/qI;
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/JA;->A08:Lcom/facebook/ads/redexgen/X/Hd;

    invoke-interface {v0, v1}, Lcom/facebook/ads/redexgen/X/Hd;->A6e(Lcom/facebook/ads/redexgen/X/qI;)V

    .line 42379
    return-void

    .line 42380
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final A0C(Lcom/facebook/ads/redexgen/X/JR;Lcom/facebook/ads/redexgen/X/J1;)V
    .locals 2

    .line 42381
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/JA;->A05:Lcom/facebook/ads/redexgen/X/JR;

    .line 42382
    iput-object p2, p0, Lcom/facebook/ads/redexgen/X/JA;->A04:Lcom/facebook/ads/redexgen/X/J1;

    .line 42383
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/JA;->A08:Lcom/facebook/ads/redexgen/X/Hd;

    iget-object v0, p1, Lcom/facebook/ads/redexgen/X/JR;->A03:Lcom/facebook/ads/redexgen/X/JO;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/JO;->A07:Lcom/facebook/ads/redexgen/X/qI;

    invoke-interface {v1, v0}, Lcom/facebook/ads/redexgen/X/Hd;->A6e(Lcom/facebook/ads/redexgen/X/qI;)V

    .line 42384
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/JA;->A08()V

    .line 42385
    return-void
.end method

.method public final A0D()Z
    .locals 5

    .line 42386
    iget v0, p0, Lcom/facebook/ads/redexgen/X/JA;->A01:I

    const/4 v4, 0x1

    add-int/2addr v0, v4

    iput v0, p0, Lcom/facebook/ads/redexgen/X/JA;->A01:I

    .line 42387
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/JA;->A06:Z

    const/4 v3, 0x0

    if-nez v0, :cond_0

    .line 42388
    return v3

    .line 42389
    :cond_0
    iget v0, p0, Lcom/facebook/ads/redexgen/X/JA;->A00:I

    add-int/2addr v0, v4

    iput v0, p0, Lcom/facebook/ads/redexgen/X/JA;->A00:I

    .line 42390
    iget v2, p0, Lcom/facebook/ads/redexgen/X/JA;->A00:I

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/JA;->A09:Lcom/facebook/ads/redexgen/X/JQ;

    iget-object v1, v0, Lcom/facebook/ads/redexgen/X/JQ;->A0C:[I

    iget v0, p0, Lcom/facebook/ads/redexgen/X/JA;->A02:I

    aget v0, v1, v0

    if-ne v2, v0, :cond_1

    .line 42391
    iget v0, p0, Lcom/facebook/ads/redexgen/X/JA;->A02:I

    add-int/2addr v0, v4

    iput v0, p0, Lcom/facebook/ads/redexgen/X/JA;->A02:I

    .line 42392
    iput v3, p0, Lcom/facebook/ads/redexgen/X/JA;->A00:I

    .line 42393
    return v3

    .line 42394
    :cond_1
    return v4
.end method
