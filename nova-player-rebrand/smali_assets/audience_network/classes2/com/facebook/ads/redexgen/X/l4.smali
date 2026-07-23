.class public final Lcom/facebook/ads/redexgen/X/l4;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/facebook/ads/redexgen/X/L8;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/ads/redexgen/X/l3;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "PmtReader"
.end annotation


# static fields
.field public static A05:[Ljava/lang/String;


# instance fields
.field public final A00:I

.field public final A01:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/facebook/ads/redexgen/X/LH;",
            ">;"
        }
    .end annotation
.end field

.field public final A02:Landroid/util/SparseIntArray;

.field public final A03:Lcom/facebook/ads/redexgen/X/4u;

.field public final synthetic A04:Lcom/facebook/ads/redexgen/X/l3;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    .line 3176
    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "ueDbV1wfakHSWIQF7BEzGoLlZXsjLXAz"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "DUk"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "o0l"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "JXBQRCbHgV51hCMTPiBs95yrGLtJ9vRB"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "UUCtZFjpq77XJSMaCIYouODFHgisrwF4"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "OUp13aafPcRzH6W84Z44X0AbLYnCU3jN"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "RRsP4MaHzu2rfmisltpPpgYoVzHnYDNm"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "WbSPhlBTq3Mh8neaDCFEdYJRI0JZWypJ"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/l4;->A05:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/facebook/ads/redexgen/X/l3;I)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x0
        }
        names = {
            null,
            null
        }
    .end annotation

    .line 92426
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/l4;->A04:Lcom/facebook/ads/redexgen/X/l3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 92427
    const/4 v0, 0x5

    new-array v1, v0, [B

    new-instance v0, Lcom/facebook/ads/redexgen/X/4u;

    invoke-direct {v0, v1}, Lcom/facebook/ads/redexgen/X/4u;-><init>([B)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/l4;->A03:Lcom/facebook/ads/redexgen/X/4u;

    .line 92428
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/l4;->A01:Landroid/util/SparseArray;

    .line 92429
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/l4;->A02:Landroid/util/SparseIntArray;

    .line 92430
    iput p2, p0, Lcom/facebook/ads/redexgen/X/l4;->A00:I

    .line 92431
    return-void
.end method

.method private A00(Lcom/facebook/ads/redexgen/X/4v;I)Lcom/facebook/ads/redexgen/X/LD;
    .locals 12

    .line 92432
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/4v;->A09()I

    move-result v6

    .line 92433
    .local v1, "descriptorsStartPosition":I
    add-int v7, v6, p2

    .line 92434
    .local v2, "descriptorsEndPosition":I
    const/4 v5, -0x1

    .line 92435
    .local v3, "streamType":I
    const/4 v9, 0x0

    .line 92436
    .local v4, "language":Ljava/lang/String;
    const/4 v3, 0x0

    .line 92437
    .local v5, "dvbSubtitleInfos":Ljava/util/List;, "Ljava/util/List<Lcom/facebook/ads/androidx/media3/extractor/ts/TsPayloadReader$DvbSubtitleInfo;>;"
    :goto_0
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/4v;->A09()I

    move-result v0

    if-ge v0, v7, :cond_0

    .line 92438
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/4v;->A0I()I

    move-result v8

    .line 92439
    .local v6, "descriptorTag":I
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/4v;->A0I()I

    move-result v0

    .line 92440
    .local v7, "descriptorLength":I
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/4v;->A09()I

    move-result v4

    add-int/2addr v4, v0

    .line 92441
    .local v8, "positionOfNextDescriptor":I
    if-le v4, v7, :cond_1

    .line 92442
    :cond_0
    invoke-virtual {p1, v7}, Lcom/facebook/ads/redexgen/X/4v;->A0f(I)V

    .line 92443
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/4v;->A0l()[B

    move-result-object v0

    invoke-static {v0, v6, v7}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v1

    new-instance v0, Lcom/facebook/ads/redexgen/X/LD;

    invoke-direct {v0, v5, v9, v3, v1}, Lcom/facebook/ads/redexgen/X/LD;-><init>(ILjava/lang/String;Ljava/util/List;[B)V

    .line 92444
    return-object v0

    .line 92445
    :cond_1
    const/4 v0, 0x5

    if-ne v8, v0, :cond_6

    .line 92446
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/4v;->A0Q()J

    move-result-wide v10

    .line 92447
    .local v9, "formatIdentifier":J
    const-wide/32 v1, 0x41432d33

    cmp-long v0, v10, v1

    if-nez v0, :cond_3

    .line 92448
    const/16 v5, 0x81

    .line 92449
    :cond_2
    :goto_1
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/4v;->A09()I

    move-result v0

    sub-int/2addr v4, v0

    invoke-virtual {p1, v4}, Lcom/facebook/ads/redexgen/X/4v;->A0g(I)V

    .line 92450
    .end local v6    # "descriptorTag":I
    .end local v7    # "descriptorLength":I
    .end local v8    # "positionOfNextDescriptor":I
    goto :goto_0

    .line 92451
    :cond_3
    const-wide/32 v1, 0x45414333

    cmp-long v0, v10, v1

    if-nez v0, :cond_4

    .line 92452
    const/16 v5, 0x87

    goto :goto_1

    .line 92453
    :cond_4
    const-wide/32 v1, 0x41432d34

    cmp-long v0, v10, v1

    if-nez v0, :cond_5

    .line 92454
    const/16 v5, 0xac

    goto :goto_1

    .line 92455
    :cond_5
    const-wide/32 v1, 0x48455643

    cmp-long v0, v10, v1

    if-nez v0, :cond_2

    .line 92456
    const/16 v5, 0x24

    goto :goto_1

    .line 92457
    :cond_6
    const/16 v0, 0x6a

    if-ne v8, v0, :cond_7

    .line 92458
    const/16 v5, 0x81

    goto :goto_1

    .line 92459
    :cond_7
    const/16 v0, 0x7a

    if-ne v8, v0, :cond_8

    .line 92460
    const/16 v5, 0x87

    goto :goto_1

    .line 92461
    :cond_8
    const/16 v10, 0x7f

    sget-object v2, Lcom/facebook/ads/redexgen/X/l4;->A05:[Ljava/lang/String;

    const/4 v0, 0x1

    aget-object v1, v2, v0

    const/4 v0, 0x2

    aget-object v0, v2, v0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eq v1, v0, :cond_9

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_9
    sget-object v2, Lcom/facebook/ads/redexgen/X/l4;->A05:[Ljava/lang/String;

    const-string v1, "GzIOqzBb8TAh93bRV2CN08O62ZCaAqRX"

    const/4 v0, 0x0

    aput-object v1, v2, v0

    const-string v1, "fp9XAk3ifz38aVsym619EhTf04al4HEa"

    const/4 v0, 0x3

    aput-object v1, v2, v0

    if-ne v8, v10, :cond_a

    .line 92462
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/4v;->A0I()I

    move-result v1

    .line 92463
    .local v9, "descriptorTagExt":I
    const/16 v0, 0x15

    if-ne v1, v0, :cond_2

    .line 92464
    const/16 v5, 0xac

    goto :goto_1

    .line 92465
    :cond_a
    const/16 v0, 0x7b

    if-ne v8, v0, :cond_b

    .line 92466
    const/16 v5, 0x8a

    goto :goto_1

    .line 92467
    :cond_b
    const/16 v11, 0xa

    const/4 v10, 0x3

    sget-object v2, Lcom/facebook/ads/redexgen/X/l4;->A05:[Ljava/lang/String;

    const/4 v0, 0x1

    aget-object v1, v2, v0

    const/4 v0, 0x2

    aget-object v0, v2, v0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eq v1, v0, :cond_c

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_c
    sget-object v2, Lcom/facebook/ads/redexgen/X/l4;->A05:[Ljava/lang/String;

    const-string v1, "wqYpRyaK4cDMDpt9hZQKwXCqV01Ydwf6"

    const/4 v0, 0x5

    aput-object v1, v2, v0

    const-string v1, "1qKbohas3rI7JmruTyrxsTuTEMq9fdbm"

    const/4 v0, 0x4

    aput-object v1, v2, v0

    if-ne v8, v11, :cond_e

    .line 92468
    invoke-virtual {p1, v10}, Lcom/facebook/ads/redexgen/X/4v;->A0W(I)Ljava/lang/String;

    move-result-object v8

    sget-object v2, Lcom/facebook/ads/redexgen/X/l4;->A05:[Ljava/lang/String;

    const/4 v0, 0x1

    aget-object v1, v2, v0

    const/4 v0, 0x2

    aget-object v0, v2, v0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eq v1, v0, :cond_d

    invoke-virtual {v8}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v9

    goto/16 :goto_1

    :cond_d
    sget-object v2, Lcom/facebook/ads/redexgen/X/l4;->A05:[Ljava/lang/String;

    const-string v1, "aW10g0SpfKclE3j5mqsPv8AasgcB3Ji3"

    const/4 v0, 0x6

    aput-object v1, v2, v0

    invoke-virtual {v8}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v9

    goto/16 :goto_1

    .line 92469
    :cond_e
    const/16 v0, 0x59

    if-ne v8, v0, :cond_f

    .line 92470
    const/16 v5, 0x59

    .line 92471
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 92472
    :goto_2
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/4v;->A09()I

    move-result v0

    if-ge v0, v4, :cond_2

    .line 92473
    invoke-virtual {p1, v10}, Lcom/facebook/ads/redexgen/X/4v;->A0W(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v11

    .line 92474
    .local v9, "dvbLanguage":Ljava/lang/String;
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/4v;->A0I()I

    move-result v8

    .line 92475
    .local v11, "dvbSubtitlingType":I
    const/4 v2, 0x4

    new-array v1, v2, [B

    .line 92476
    .local p1, "initializationData":[B
    const/4 v0, 0x0

    invoke-virtual {p1, v1, v0, v2}, Lcom/facebook/ads/redexgen/X/4v;->A0k([BII)V

    .line 92477
    new-instance v0, Lcom/facebook/ads/redexgen/X/LC;

    invoke-direct {v0, v11, v8, v1}, Lcom/facebook/ads/redexgen/X/LC;-><init>(Ljava/lang/String;I[B)V

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 92478
    .end local v9    # "dvbLanguage":Ljava/lang/String;
    .end local v11    # "dvbSubtitlingType":I
    .end local p1    # "initializationData":[B
    goto :goto_2

    .line 92479
    :cond_f
    const/16 v0, 0x6f

    if-ne v8, v0, :cond_2

    .line 92480
    const/16 v5, 0x101

    goto/16 :goto_1
.end method


# virtual methods
.method public final A5A(Lcom/facebook/ads/redexgen/X/4v;)V
    .locals 12

    .line 92481
    move-object v3, p0

    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/4v;->A0I()I

    move-result v0

    .line 92482
    .local v2, "tableId":I
    const/4 v4, 0x2

    if-eq v0, v4, :cond_0

    .line 92483
    return-void

    .line 92484
    :cond_0
    iget-object v0, v3, Lcom/facebook/ads/redexgen/X/l4;->A04:Lcom/facebook/ads/redexgen/X/l3;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/l3;->A03(Lcom/facebook/ads/redexgen/X/l3;)I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eq v0, v2, :cond_1

    iget-object v0, v3, Lcom/facebook/ads/redexgen/X/l4;->A04:Lcom/facebook/ads/redexgen/X/l3;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/l3;->A03(Lcom/facebook/ads/redexgen/X/l3;)I

    move-result v0

    if-eq v0, v4, :cond_1

    iget-object v0, v3, Lcom/facebook/ads/redexgen/X/l4;->A04:Lcom/facebook/ads/redexgen/X/l3;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/l3;->A01(Lcom/facebook/ads/redexgen/X/l3;)I

    move-result v0

    if-ne v0, v2, :cond_2

    .line 92485
    .end local v4
    :cond_1
    iget-object v0, v3, Lcom/facebook/ads/redexgen/X/l4;->A04:Lcom/facebook/ads/redexgen/X/l3;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/l3;->A0E(Lcom/facebook/ads/redexgen/X/l3;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/facebook/ads/redexgen/X/53;

    .line 92486
    .restart local v4
    :goto_0
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/4v;->A0I()I

    move-result v0

    .line 92487
    .local v7, "secondHeaderByte":I
    and-int/lit16 v0, v0, 0x80

    if-nez v0, :cond_3

    .line 92488
    return-void

    .line 92489
    :cond_2
    iget-object v0, v3, Lcom/facebook/ads/redexgen/X/l4;->A04:Lcom/facebook/ads/redexgen/X/l3;

    .line 92490
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/l3;->A0E(Lcom/facebook/ads/redexgen/X/l3;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/redexgen/X/53;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/53;->A02()J

    move-result-wide v0

    new-instance v6, Lcom/facebook/ads/redexgen/X/53;

    invoke-direct {v6, v0, v1}, Lcom/facebook/ads/redexgen/X/53;-><init>(J)V

    .line 92491
    .local v4, "timestampAdjuster":Lcom/facebook/ads/redexgen/X/53;
    iget-object v0, v3, Lcom/facebook/ads/redexgen/X/l4;->A04:Lcom/facebook/ads/redexgen/X/l3;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/l3;->A0E(Lcom/facebook/ads/redexgen/X/l3;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 92492
    :cond_3
    invoke-virtual {p1, v2}, Lcom/facebook/ads/redexgen/X/4v;->A0g(I)V

    .line 92493
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/4v;->A0M()I

    move-result v5

    .line 92494
    .local v8, "programNumber":I
    const/4 v10, 0x3

    invoke-virtual {p1, v10}, Lcom/facebook/ads/redexgen/X/4v;->A0g(I)V

    .line 92495
    iget-object v0, v3, Lcom/facebook/ads/redexgen/X/l4;->A03:Lcom/facebook/ads/redexgen/X/4u;

    invoke-virtual {p1, v0, v4}, Lcom/facebook/ads/redexgen/X/4v;->A0h(Lcom/facebook/ads/redexgen/X/4u;I)V

    .line 92496
    iget-object v0, v3, Lcom/facebook/ads/redexgen/X/l4;->A03:Lcom/facebook/ads/redexgen/X/4u;

    invoke-virtual {v0, v10}, Lcom/facebook/ads/redexgen/X/4u;->A09(I)V

    .line 92497
    iget-object v1, v3, Lcom/facebook/ads/redexgen/X/l4;->A04:Lcom/facebook/ads/redexgen/X/l3;

    iget-object v0, v3, Lcom/facebook/ads/redexgen/X/l4;->A03:Lcom/facebook/ads/redexgen/X/4u;

    const/16 v7, 0xd

    invoke-virtual {v0, v7}, Lcom/facebook/ads/redexgen/X/4u;->A04(I)I

    move-result v0

    invoke-static {v1, v0}, Lcom/facebook/ads/redexgen/X/l3;->A05(Lcom/facebook/ads/redexgen/X/l3;I)I

    .line 92498
    iget-object v0, v3, Lcom/facebook/ads/redexgen/X/l4;->A03:Lcom/facebook/ads/redexgen/X/4u;

    invoke-virtual {p1, v0, v4}, Lcom/facebook/ads/redexgen/X/4v;->A0h(Lcom/facebook/ads/redexgen/X/4u;I)V

    .line 92499
    iget-object v0, v3, Lcom/facebook/ads/redexgen/X/l4;->A03:Lcom/facebook/ads/redexgen/X/4u;

    const/4 v2, 0x4

    invoke-virtual {v0, v2}, Lcom/facebook/ads/redexgen/X/4u;->A09(I)V

    .line 92500
    iget-object v1, v3, Lcom/facebook/ads/redexgen/X/l4;->A03:Lcom/facebook/ads/redexgen/X/4u;

    const/16 v0, 0xc

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/4u;->A04(I)I

    move-result v0

    .line 92501
    .local v10, "programInfoLength":I
    invoke-virtual {p1, v0}, Lcom/facebook/ads/redexgen/X/4v;->A0g(I)V

    .line 92502
    iget-object v0, v3, Lcom/facebook/ads/redexgen/X/l4;->A04:Lcom/facebook/ads/redexgen/X/l3;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/l3;->A03(Lcom/facebook/ads/redexgen/X/l3;)I

    move-result v0

    const/16 v8, 0x2000

    const/16 v9, 0x15

    if-ne v0, v4, :cond_4

    iget-object v0, v3, Lcom/facebook/ads/redexgen/X/l4;->A04:Lcom/facebook/ads/redexgen/X/l3;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/l3;->A0B(Lcom/facebook/ads/redexgen/X/l3;)Lcom/facebook/ads/redexgen/X/LH;

    move-result-object v0

    if-nez v0, :cond_4

    .line 92503
    sget-object v1, Lcom/facebook/ads/redexgen/X/5C;->A07:[B

    const/4 v0, 0x0

    new-instance v4, Lcom/facebook/ads/redexgen/X/LD;

    invoke-direct {v4, v9, v0, v0, v1}, Lcom/facebook/ads/redexgen/X/LD;-><init>(ILjava/lang/String;Ljava/util/List;[B)V

    .line 92504
    .local v3, "id3EsInfo":Lcom/facebook/ads/redexgen/X/LD;
    iget-object v1, v3, Lcom/facebook/ads/redexgen/X/l4;->A04:Lcom/facebook/ads/redexgen/X/l3;

    iget-object v0, v3, Lcom/facebook/ads/redexgen/X/l4;->A04:Lcom/facebook/ads/redexgen/X/l3;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/l3;->A0A(Lcom/facebook/ads/redexgen/X/l3;)Lcom/facebook/ads/redexgen/X/LE;

    move-result-object v0

    invoke-interface {v0, v9, v4}, Lcom/facebook/ads/redexgen/X/LE;->A5V(ILcom/facebook/ads/redexgen/X/LD;)Lcom/facebook/ads/redexgen/X/LH;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/facebook/ads/redexgen/X/l3;->A0C(Lcom/facebook/ads/redexgen/X/l3;Lcom/facebook/ads/redexgen/X/LH;)Lcom/facebook/ads/redexgen/X/LH;

    .line 92505
    iget-object v0, v3, Lcom/facebook/ads/redexgen/X/l4;->A04:Lcom/facebook/ads/redexgen/X/l3;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/l3;->A0B(Lcom/facebook/ads/redexgen/X/l3;)Lcom/facebook/ads/redexgen/X/LH;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 92506
    iget-object v0, v3, Lcom/facebook/ads/redexgen/X/l4;->A04:Lcom/facebook/ads/redexgen/X/l3;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/l3;->A0B(Lcom/facebook/ads/redexgen/X/l3;)Lcom/facebook/ads/redexgen/X/LH;

    move-result-object v4

    iget-object v0, v3, Lcom/facebook/ads/redexgen/X/l4;->A04:Lcom/facebook/ads/redexgen/X/l3;

    .line 92507
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/l3;->A09(Lcom/facebook/ads/redexgen/X/l3;)Lcom/facebook/ads/redexgen/X/HA;

    move-result-object v1

    new-instance v0, Lcom/facebook/ads/redexgen/X/LG;

    invoke-direct {v0, v5, v9, v8}, Lcom/facebook/ads/redexgen/X/LG;-><init>(III)V

    .line 92508
    invoke-interface {v4, v6, v1, v0}, Lcom/facebook/ads/redexgen/X/LH;->AAA(Lcom/facebook/ads/redexgen/X/53;Lcom/facebook/ads/redexgen/X/HA;Lcom/facebook/ads/redexgen/X/LG;)V

    .line 92509
    .end local v3    # "id3EsInfo":Lcom/facebook/ads/redexgen/X/LD;
    :cond_4
    iget-object v0, v3, Lcom/facebook/ads/redexgen/X/l4;->A01:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    .line 92510
    iget-object v0, v3, Lcom/facebook/ads/redexgen/X/l4;->A02:Landroid/util/SparseIntArray;

    invoke-virtual {v0}, Landroid/util/SparseIntArray;->clear()V

    .line 92511
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/4v;->A07()I

    move-result v11

    .line 92512
    .local v3, "remainingEntriesLength":I
    :goto_1
    if-lez v11, :cond_d

    .line 92513
    iget-object v0, v3, Lcom/facebook/ads/redexgen/X/l4;->A03:Lcom/facebook/ads/redexgen/X/4u;

    const/4 v4, 0x5

    invoke-virtual {p1, v0, v4}, Lcom/facebook/ads/redexgen/X/4v;->A0h(Lcom/facebook/ads/redexgen/X/4u;I)V

    .line 92514
    iget-object v1, v3, Lcom/facebook/ads/redexgen/X/l4;->A03:Lcom/facebook/ads/redexgen/X/4u;

    const/16 v0, 0x8

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/4u;->A04(I)I

    move-result v8

    .line 92515
    .local v6, "streamType":I
    iget-object v0, v3, Lcom/facebook/ads/redexgen/X/l4;->A03:Lcom/facebook/ads/redexgen/X/4u;

    invoke-virtual {v0, v10}, Lcom/facebook/ads/redexgen/X/4u;->A09(I)V

    .line 92516
    iget-object v0, v3, Lcom/facebook/ads/redexgen/X/l4;->A03:Lcom/facebook/ads/redexgen/X/4u;

    invoke-virtual {v0, v7}, Lcom/facebook/ads/redexgen/X/4u;->A04(I)I

    move-result v7

    .line 92517
    .local p2, "elementaryPid":I
    iget-object v0, v3, Lcom/facebook/ads/redexgen/X/l4;->A03:Lcom/facebook/ads/redexgen/X/4u;

    invoke-virtual {v0, v2}, Lcom/facebook/ads/redexgen/X/4u;->A09(I)V

    .line 92518
    iget-object v1, v3, Lcom/facebook/ads/redexgen/X/l4;->A03:Lcom/facebook/ads/redexgen/X/4u;

    const/16 v0, 0xc

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/4u;->A04(I)I

    move-result v1

    .line 92519
    .local v9, "esInfoLength":I
    invoke-direct {v3, p1, v1}, Lcom/facebook/ads/redexgen/X/l4;->A00(Lcom/facebook/ads/redexgen/X/4v;I)Lcom/facebook/ads/redexgen/X/LD;

    move-result-object v2

    .line 92520
    .local v11, "esInfo":Lcom/facebook/ads/redexgen/X/LD;
    const/4 v0, 0x6

    if-eq v8, v0, :cond_5

    if-ne v8, v4, :cond_6

    .line 92521
    :cond_5
    iget v8, v2, Lcom/facebook/ads/redexgen/X/LD;->A00:I

    .line 92522
    :cond_6
    add-int/lit8 v0, v1, 0x5

    sub-int/2addr v11, v0

    .line 92523
    iget-object v0, v3, Lcom/facebook/ads/redexgen/X/l4;->A04:Lcom/facebook/ads/redexgen/X/l3;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/l3;->A03(Lcom/facebook/ads/redexgen/X/l3;)I

    move-result v1

    const/4 v0, 0x2

    if-ne v1, v0, :cond_b

    move v4, v8

    .line 92524
    .local p0, "trackId":I
    :goto_2
    iget-object v0, v3, Lcom/facebook/ads/redexgen/X/l4;->A04:Lcom/facebook/ads/redexgen/X/l3;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/l3;->A07(Lcom/facebook/ads/redexgen/X/l3;)Landroid/util/SparseBooleanArray;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 92525
    :cond_7
    :goto_3
    const/16 v9, 0x15

    const/4 v10, 0x3

    const/4 v2, 0x4

    const/16 v7, 0xd

    goto :goto_1

    .line 92526
    :cond_8
    iget-object v0, v3, Lcom/facebook/ads/redexgen/X/l4;->A04:Lcom/facebook/ads/redexgen/X/l3;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/l3;->A03(Lcom/facebook/ads/redexgen/X/l3;)I

    move-result v1

    const/4 v0, 0x2

    if-ne v1, v0, :cond_a

    if-ne v8, v9, :cond_a

    .line 92527
    iget-object v0, v3, Lcom/facebook/ads/redexgen/X/l4;->A04:Lcom/facebook/ads/redexgen/X/l3;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/l3;->A0B(Lcom/facebook/ads/redexgen/X/l3;)Lcom/facebook/ads/redexgen/X/LH;

    move-result-object v8

    .line 92528
    .local p1, "reader":Lcom/facebook/ads/redexgen/X/LH;
    :goto_4
    iget-object v0, v3, Lcom/facebook/ads/redexgen/X/l4;->A04:Lcom/facebook/ads/redexgen/X/l3;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/l3;->A03(Lcom/facebook/ads/redexgen/X/l3;)I

    move-result v1

    const/4 v0, 0x2

    if-ne v1, v0, :cond_9

    iget-object v10, v3, Lcom/facebook/ads/redexgen/X/l4;->A02:Landroid/util/SparseIntArray;

    .line 92529
    const/16 v9, 0x2000

    sget-object v2, Lcom/facebook/ads/redexgen/X/l4;->A05:[Ljava/lang/String;

    const/4 v0, 0x0

    aget-object v1, v2, v0

    const/4 v0, 0x3

    aget-object v2, v2, v0

    const/16 v0, 0x15

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v1, v0, :cond_c

    sget-object v2, Lcom/facebook/ads/redexgen/X/l4;->A05:[Ljava/lang/String;

    const-string v1, "JJxGvbQzsWrYD5XHKTSp80Ux1McJryio"

    const/4 v0, 0x7

    aput-object v1, v2, v0

    invoke-virtual {v10, v4, v9}, Landroid/util/SparseIntArray;->get(II)I

    move-result v0

    if-ge v7, v0, :cond_7

    .line 92530
    :cond_9
    iget-object v0, v3, Lcom/facebook/ads/redexgen/X/l4;->A02:Landroid/util/SparseIntArray;

    invoke-virtual {v0, v4, v7}, Landroid/util/SparseIntArray;->put(II)V

    .line 92531
    iget-object v0, v3, Lcom/facebook/ads/redexgen/X/l4;->A01:Landroid/util/SparseArray;

    invoke-virtual {v0, v4, v8}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_3

    .line 92532
    :cond_a
    iget-object v0, v3, Lcom/facebook/ads/redexgen/X/l4;->A04:Lcom/facebook/ads/redexgen/X/l3;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/l3;->A0A(Lcom/facebook/ads/redexgen/X/l3;)Lcom/facebook/ads/redexgen/X/LE;

    move-result-object v0

    invoke-interface {v0, v8, v2}, Lcom/facebook/ads/redexgen/X/LE;->A5V(ILcom/facebook/ads/redexgen/X/LD;)Lcom/facebook/ads/redexgen/X/LH;

    move-result-object v8

    goto :goto_4

    .line 92533
    :cond_b
    move v4, v7

    goto :goto_2

    :cond_c
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    .line 92534
    :cond_d
    iget-object v0, v3, Lcom/facebook/ads/redexgen/X/l4;->A02:Landroid/util/SparseIntArray;

    invoke-virtual {v0}, Landroid/util/SparseIntArray;->size()I

    move-result v9

    .line 92535
    .local v5, "trackIdCount":I
    const/4 v8, 0x0

    .local v6, "i":I
    :goto_5
    if-ge v8, v9, :cond_10

    .line 92536
    iget-object v0, v3, Lcom/facebook/ads/redexgen/X/l4;->A02:Landroid/util/SparseIntArray;

    invoke-virtual {v0, v8}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v10

    .line 92537
    .local v9, "trackId":I
    iget-object v0, v3, Lcom/facebook/ads/redexgen/X/l4;->A02:Landroid/util/SparseIntArray;

    invoke-virtual {v0, v8}, Landroid/util/SparseIntArray;->valueAt(I)I

    move-result v7

    .line 92538
    .local v11, "trackPid":I
    iget-object v0, v3, Lcom/facebook/ads/redexgen/X/l4;->A04:Lcom/facebook/ads/redexgen/X/l3;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/l3;->A07(Lcom/facebook/ads/redexgen/X/l3;)Landroid/util/SparseBooleanArray;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v10, v1}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 92539
    iget-object v0, v3, Lcom/facebook/ads/redexgen/X/l4;->A04:Lcom/facebook/ads/redexgen/X/l3;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/l3;->A08(Lcom/facebook/ads/redexgen/X/l3;)Landroid/util/SparseBooleanArray;

    move-result-object v0

    invoke-virtual {v0, v7, v1}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 92540
    iget-object v0, v3, Lcom/facebook/ads/redexgen/X/l4;->A01:Landroid/util/SparseArray;

    invoke-virtual {v0, v8}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/facebook/ads/redexgen/X/LH;

    .line 92541
    .local p0, "reader":Lcom/facebook/ads/redexgen/X/LH;
    if-eqz v4, :cond_f

    .line 92542
    iget-object v0, v3, Lcom/facebook/ads/redexgen/X/l4;->A04:Lcom/facebook/ads/redexgen/X/l3;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/l3;->A0B(Lcom/facebook/ads/redexgen/X/l3;)Lcom/facebook/ads/redexgen/X/LH;

    move-result-object v0

    if-eq v4, v0, :cond_e

    .line 92543
    iget-object v0, v3, Lcom/facebook/ads/redexgen/X/l4;->A04:Lcom/facebook/ads/redexgen/X/l3;

    .line 92544
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/l3;->A09(Lcom/facebook/ads/redexgen/X/l3;)Lcom/facebook/ads/redexgen/X/HA;

    move-result-object v2

    const/16 v1, 0x2000

    new-instance v0, Lcom/facebook/ads/redexgen/X/LG;

    invoke-direct {v0, v5, v10, v1}, Lcom/facebook/ads/redexgen/X/LG;-><init>(III)V

    .line 92545
    invoke-interface {v4, v6, v2, v0}, Lcom/facebook/ads/redexgen/X/LH;->AAA(Lcom/facebook/ads/redexgen/X/53;Lcom/facebook/ads/redexgen/X/HA;Lcom/facebook/ads/redexgen/X/LG;)V

    .line 92546
    :cond_e
    iget-object v0, v3, Lcom/facebook/ads/redexgen/X/l4;->A04:Lcom/facebook/ads/redexgen/X/l3;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/l3;->A06(Lcom/facebook/ads/redexgen/X/l3;)Landroid/util/SparseArray;

    move-result-object v0

    invoke-virtual {v0, v7, v4}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 92547
    .end local v9    # "trackId":I
    .end local v11    # "trackPid":I
    .end local p0    # "reader":Lcom/facebook/ads/redexgen/X/LH;
    :cond_f
    add-int/lit8 v8, v8, 0x1

    goto :goto_5

    .line 92548
    .end local v6    # "i":I
    :cond_10
    iget-object v0, v3, Lcom/facebook/ads/redexgen/X/l4;->A04:Lcom/facebook/ads/redexgen/X/l3;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/l3;->A03(Lcom/facebook/ads/redexgen/X/l3;)I

    move-result v1

    const/4 v0, 0x2

    if-ne v1, v0, :cond_11

    .line 92549
    iget-object v0, v3, Lcom/facebook/ads/redexgen/X/l4;->A04:Lcom/facebook/ads/redexgen/X/l3;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/l3;->A0K(Lcom/facebook/ads/redexgen/X/l3;)Z

    move-result v0

    if-nez v0, :cond_14

    .line 92550
    iget-object v0, v3, Lcom/facebook/ads/redexgen/X/l4;->A04:Lcom/facebook/ads/redexgen/X/l3;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/l3;->A09(Lcom/facebook/ads/redexgen/X/l3;)Lcom/facebook/ads/redexgen/X/HA;

    move-result-object v4

    sget-object v2, Lcom/facebook/ads/redexgen/X/l4;->A05:[Ljava/lang/String;

    const/4 v0, 0x1

    aget-object v1, v2, v0

    const/4 v0, 0x2

    aget-object v0, v2, v0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eq v1, v0, :cond_13

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    .line 92551
    :cond_11
    const/4 v0, 0x0

    iget-object v1, v3, Lcom/facebook/ads/redexgen/X/l4;->A04:Lcom/facebook/ads/redexgen/X/l3;

    invoke-static {v1}, Lcom/facebook/ads/redexgen/X/l3;->A06(Lcom/facebook/ads/redexgen/X/l3;)Landroid/util/SparseArray;

    move-result-object v2

    iget v1, v3, Lcom/facebook/ads/redexgen/X/l4;->A00:I

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->remove(I)V

    .line 92552
    iget-object v4, v3, Lcom/facebook/ads/redexgen/X/l4;->A04:Lcom/facebook/ads/redexgen/X/l3;

    iget-object v1, v3, Lcom/facebook/ads/redexgen/X/l4;->A04:Lcom/facebook/ads/redexgen/X/l3;

    invoke-static {v1}, Lcom/facebook/ads/redexgen/X/l3;->A03(Lcom/facebook/ads/redexgen/X/l3;)I

    move-result v2

    const/4 v1, 0x1

    if-ne v2, v1, :cond_12

    :goto_6
    invoke-static {v4, v0}, Lcom/facebook/ads/redexgen/X/l3;->A04(Lcom/facebook/ads/redexgen/X/l3;I)I

    .line 92553
    iget-object v0, v3, Lcom/facebook/ads/redexgen/X/l4;->A04:Lcom/facebook/ads/redexgen/X/l3;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/l3;->A01(Lcom/facebook/ads/redexgen/X/l3;)I

    move-result v0

    if-nez v0, :cond_14

    .line 92554
    iget-object v0, v3, Lcom/facebook/ads/redexgen/X/l4;->A04:Lcom/facebook/ads/redexgen/X/l3;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/l3;->A09(Lcom/facebook/ads/redexgen/X/l3;)Lcom/facebook/ads/redexgen/X/HA;

    move-result-object v0

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/HA;->A6O()V

    .line 92555
    iget-object v1, v3, Lcom/facebook/ads/redexgen/X/l4;->A04:Lcom/facebook/ads/redexgen/X/l3;

    const/4 v0, 0x1

    invoke-static {v1, v0}, Lcom/facebook/ads/redexgen/X/l3;->A0L(Lcom/facebook/ads/redexgen/X/l3;Z)Z

    goto :goto_7

    .line 92556
    :cond_12
    iget-object v0, v3, Lcom/facebook/ads/redexgen/X/l4;->A04:Lcom/facebook/ads/redexgen/X/l3;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/l3;->A01(Lcom/facebook/ads/redexgen/X/l3;)I

    move-result v0

    sub-int/2addr v0, v1

    goto :goto_6

    .line 92557
    :cond_13
    sget-object v2, Lcom/facebook/ads/redexgen/X/l4;->A05:[Ljava/lang/String;

    const-string v1, "hBvWu7G0FYrLQDeafFD7KKlceKy2jgRX"

    const/4 v0, 0x0

    aput-object v1, v2, v0

    const-string v1, "VoSHbxg0JUdlXnrGoiizfFeUaWFRK7d9"

    const/4 v0, 0x3

    aput-object v1, v2, v0

    invoke-interface {v4}, Lcom/facebook/ads/redexgen/X/HA;->A6O()V

    .line 92558
    iget-object v1, v3, Lcom/facebook/ads/redexgen/X/l4;->A04:Lcom/facebook/ads/redexgen/X/l3;

    const/4 v0, 0x0

    invoke-static {v1, v0}, Lcom/facebook/ads/redexgen/X/l3;->A04(Lcom/facebook/ads/redexgen/X/l3;I)I

    .line 92559
    iget-object v1, v3, Lcom/facebook/ads/redexgen/X/l4;->A04:Lcom/facebook/ads/redexgen/X/l3;

    const/4 v0, 0x1

    invoke-static {v1, v0}, Lcom/facebook/ads/redexgen/X/l3;->A0L(Lcom/facebook/ads/redexgen/X/l3;Z)Z

    .line 92560
    :cond_14
    :goto_7
    return-void
.end method

.method public final AAA(Lcom/facebook/ads/redexgen/X/53;Lcom/facebook/ads/redexgen/X/HA;Lcom/facebook/ads/redexgen/X/LG;)V
    .locals 0

    .line 92561
    return-void
.end method
