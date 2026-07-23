.class public final Lcom/facebook/ads/redexgen/X/94;
.super Lcom/facebook/ads/redexgen/X/mZ;
.source ""


# static fields
.field public static A03:[Ljava/lang/String;


# instance fields
.field public A00:Lcom/facebook/ads/redexgen/X/53;

.field public final A01:Lcom/facebook/ads/redexgen/X/4u;

.field public final A02:Lcom/facebook/ads/redexgen/X/4v;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    .line 536
    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "LinnqKc1r0Ls5OIb"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "1aWHF9GftncklZYsR1NJvylUpCZwYQhA"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "WIGwItTSIaUh0S"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "86hqVYxCYoyBTLzVv0XRyx6tGel5Hfof"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "L8UaESXrw6FNBEuX"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "ZSKLe1wjy7TzDmQANFt3bVwH52LTNoGA"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "sWuUgP3CrL0lX60YF5iqvlGlBvq7Icsz"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "4dV7lZySL5Inrb"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/94;->A03:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 23549
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/mZ;-><init>()V

    .line 23550
    new-instance v0, Lcom/facebook/ads/redexgen/X/4v;

    invoke-direct {v0}, Lcom/facebook/ads/redexgen/X/4v;-><init>()V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/94;->A02:Lcom/facebook/ads/redexgen/X/4v;

    .line 23551
    new-instance v0, Lcom/facebook/ads/redexgen/X/4u;

    invoke-direct {v0}, Lcom/facebook/ads/redexgen/X/4u;-><init>()V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/94;->A01:Lcom/facebook/ads/redexgen/X/4u;

    .line 23552
    return-void
.end method


# virtual methods
.method public final A0R(Lcom/facebook/ads/redexgen/X/9e;Ljava/nio/ByteBuffer;)Lcom/facebook/ads/androidx/media3/common/Metadata;
    .locals 8

    .line 23553
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/94;->A00:Lcom/facebook/ads/redexgen/X/53;

    if-eqz v0, :cond_0

    iget-wide v3, p1, Lcom/facebook/ads/redexgen/X/9e;->A00:J

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/94;->A00:Lcom/facebook/ads/redexgen/X/53;

    .line 23554
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/53;->A04()J

    move-result-wide v1

    cmp-long v0, v3, v1

    if-eqz v0, :cond_1

    .line 23555
    :cond_0
    iget-wide v1, p1, Lcom/facebook/ads/redexgen/X/p0;->A01:J

    new-instance v0, Lcom/facebook/ads/redexgen/X/53;

    invoke-direct {v0, v1, v2}, Lcom/facebook/ads/redexgen/X/53;-><init>(J)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/94;->A00:Lcom/facebook/ads/redexgen/X/53;

    .line 23556
    iget-object v4, p0, Lcom/facebook/ads/redexgen/X/94;->A00:Lcom/facebook/ads/redexgen/X/53;

    iget-wide v2, p1, Lcom/facebook/ads/redexgen/X/p0;->A01:J

    iget-wide v0, p1, Lcom/facebook/ads/redexgen/X/9e;->A00:J

    sub-long/2addr v2, v0

    invoke-virtual {v4, v2, v3}, Lcom/facebook/ads/redexgen/X/53;->A05(J)J

    .line 23557
    :cond_1
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v2

    .line 23558
    .local v0, "data":[B
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->limit()I

    move-result v1

    .line 23559
    .local v1, "size":I
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/94;->A02:Lcom/facebook/ads/redexgen/X/4v;

    invoke-virtual {v0, v2, v1}, Lcom/facebook/ads/redexgen/X/4v;->A0j([BI)V

    .line 23560
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/94;->A01:Lcom/facebook/ads/redexgen/X/4u;

    invoke-virtual {v0, v2, v1}, Lcom/facebook/ads/redexgen/X/4u;->A0E([BI)V

    .line 23561
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/94;->A01:Lcom/facebook/ads/redexgen/X/4u;

    const/16 v0, 0x27

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/4u;->A09(I)V

    .line 23562
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/94;->A01:Lcom/facebook/ads/redexgen/X/4u;

    const/4 v5, 0x1

    invoke-virtual {v0, v5}, Lcom/facebook/ads/redexgen/X/4u;->A04(I)I

    move-result v0

    int-to-long v2, v0

    .line 23563
    .local v4, "ptsAdjustment":J
    const/16 v1, 0x20

    shl-long/2addr v2, v1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/94;->A01:Lcom/facebook/ads/redexgen/X/4u;

    invoke-virtual {v0, v1}, Lcom/facebook/ads/redexgen/X/4u;->A04(I)I

    move-result v0

    int-to-long v0, v0

    or-long/2addr v2, v0

    .line 23564
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/94;->A01:Lcom/facebook/ads/redexgen/X/4u;

    const/16 v0, 0x14

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/4u;->A09(I)V

    .line 23565
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/94;->A01:Lcom/facebook/ads/redexgen/X/4u;

    const/16 v0, 0xc

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/4u;->A04(I)I

    move-result v7

    .line 23566
    .local v2, "spliceCommandLength":I
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/94;->A01:Lcom/facebook/ads/redexgen/X/4u;

    const/16 v0, 0x8

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/4u;->A04(I)I

    move-result v6

    .line 23567
    .local v6, "spliceCommandType":I
    const/4 v0, 0x0

    .line 23568
    .local v7, "command":Lcom/facebook/ads/androidx/media3/extractor/metadata/scte35/SpliceCommand;
    iget-object v4, p0, Lcom/facebook/ads/redexgen/X/94;->A02:Lcom/facebook/ads/redexgen/X/4v;

    const/16 v1, 0xe

    invoke-virtual {v4, v1}, Lcom/facebook/ads/redexgen/X/4v;->A0g(I)V

    .line 23569
    sparse-switch v6, :sswitch_data_0

    .line 23570
    :goto_0
    const/4 v2, 0x0

    if-nez v0, :cond_2

    new-array v1, v2, [Lcom/facebook/ads/androidx/media3/common/Metadata$Entry;

    new-instance v0, Lcom/facebook/ads/androidx/media3/common/Metadata;

    invoke-direct {v0, v1}, Lcom/facebook/ads/androidx/media3/common/Metadata;-><init>([Lcom/facebook/ads/androidx/media3/common/Metadata$Entry;)V

    :goto_1
    return-object v0

    :cond_2
    new-array v1, v5, [Lcom/facebook/ads/androidx/media3/common/Metadata$Entry;

    aput-object v0, v1, v2

    new-instance v0, Lcom/facebook/ads/androidx/media3/common/Metadata;

    invoke-direct {v0, v1}, Lcom/facebook/ads/androidx/media3/common/Metadata;-><init>([Lcom/facebook/ads/androidx/media3/common/Metadata$Entry;)V

    goto :goto_1

    .line 23571
    :sswitch_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/94;->A02:Lcom/facebook/ads/redexgen/X/4v;

    invoke-static {v0, v7, v2, v3}, Lcom/facebook/ads/androidx/media3/extractor/metadata/scte35/PrivateCommand;->A00(Lcom/facebook/ads/redexgen/X/4v;IJ)Lcom/facebook/ads/androidx/media3/extractor/metadata/scte35/PrivateCommand;

    move-result-object v0

    .line 23572
    goto :goto_0

    .line 23573
    :sswitch_1
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/94;->A02:Lcom/facebook/ads/redexgen/X/4v;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/94;->A00:Lcom/facebook/ads/redexgen/X/53;

    invoke-static {v1, v2, v3, v0}, Lcom/facebook/ads/androidx/media3/extractor/metadata/scte35/TimeSignalCommand;->A01(Lcom/facebook/ads/redexgen/X/4v;JLcom/facebook/ads/redexgen/X/53;)Lcom/facebook/ads/androidx/media3/extractor/metadata/scte35/TimeSignalCommand;

    move-result-object v0

    .line 23574
    goto :goto_0

    .line 23575
    :sswitch_2
    iget-object v6, p0, Lcom/facebook/ads/redexgen/X/94;->A02:Lcom/facebook/ads/redexgen/X/4v;

    sget-object v4, Lcom/facebook/ads/redexgen/X/94;->A03:[Ljava/lang/String;

    const/4 v0, 0x0

    aget-object v1, v4, v0

    const/4 v0, 0x4

    aget-object v0, v4, v0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eq v1, v0, :cond_3

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_3
    sget-object v4, Lcom/facebook/ads/redexgen/X/94;->A03:[Ljava/lang/String;

    const-string v1, "3zG9Y3L3pcSl9hsO"

    const/4 v0, 0x0

    aput-object v1, v4, v0

    const-string v1, "rzd7tnlstbcgZZIh"

    const/4 v0, 0x4

    aput-object v1, v4, v0

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/94;->A00:Lcom/facebook/ads/redexgen/X/53;

    .line 23576
    invoke-static {v6, v2, v3, v0}, Lcom/facebook/ads/androidx/media3/extractor/metadata/scte35/SpliceInsertCommand;->A00(Lcom/facebook/ads/redexgen/X/4v;JLcom/facebook/ads/redexgen/X/53;)Lcom/facebook/ads/androidx/media3/extractor/metadata/scte35/SpliceInsertCommand;

    move-result-object v0

    .line 23577
    goto :goto_0

    .line 23578
    :sswitch_3
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/94;->A02:Lcom/facebook/ads/redexgen/X/4v;

    invoke-static {v0}, Lcom/facebook/ads/androidx/media3/extractor/metadata/scte35/SpliceScheduleCommand;->A00(Lcom/facebook/ads/redexgen/X/4v;)Lcom/facebook/ads/androidx/media3/extractor/metadata/scte35/SpliceScheduleCommand;

    move-result-object v0

    .line 23579
    goto :goto_0

    .line 23580
    :sswitch_4
    new-instance v0, Lcom/facebook/ads/androidx/media3/extractor/metadata/scte35/SpliceNullCommand;

    invoke-direct {v0}, Lcom/facebook/ads/androidx/media3/extractor/metadata/scte35/SpliceNullCommand;-><init>()V

    .line 23581
    goto :goto_0

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_4
        0x4 -> :sswitch_3
        0x5 -> :sswitch_2
        0x6 -> :sswitch_1
        0xff -> :sswitch_0
    .end sparse-switch
.end method
