.class public final Lcom/facebook/ads/redexgen/X/Ip;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static A02:[Ljava/lang/String;


# instance fields
.field public A00:I

.field public final A01:Lcom/facebook/ads/redexgen/X/4v;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    .line 811
    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "FbN3icTzKhcmmOzEdUfRhsUcZXOxDMx7"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "gRO2jrgUj"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "b8s"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "WfQv3ylCa"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "vfaK2gbRuWFTNhe4O3MK62WfTyU3BnZK"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "pVe6dBWT2JPKzaWtvTS73YU0fEYT7kcM"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "E55gBTZIZGS8er9hAJqyKM4XsX"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "9GOGOeqncrOiIcn9"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/Ip;->A02:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 40814
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40815
    const/16 v1, 0x8

    new-instance v0, Lcom/facebook/ads/redexgen/X/4v;

    invoke-direct {v0, v1}, Lcom/facebook/ads/redexgen/X/4v;-><init>(I)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Ip;->A01:Lcom/facebook/ads/redexgen/X/4v;

    .line 40816
    return-void
.end method

.method private A00(Lcom/facebook/ads/redexgen/X/ms;)J
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 40817
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Ip;->A01:Lcom/facebook/ads/redexgen/X/4v;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/4v;->A0l()[B

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-interface {p1, v0, v1, v2}, Lcom/facebook/ads/redexgen/X/ms;->AGt([BII)V

    .line 40818
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Ip;->A01:Lcom/facebook/ads/redexgen/X/4v;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/4v;->A0l()[B

    move-result-object v0

    aget-byte v0, v0, v1

    and-int/lit16 v4, v0, 0xff

    .line 40819
    .local v0, "value":I
    if-nez v4, :cond_0

    .line 40820
    const-wide/high16 v0, -0x8000000000000000L

    return-wide v0

    .line 40821
    :cond_0
    const/16 v1, 0x80

    .line 40822
    .local v1, "mask":I
    const/4 v3, 0x0

    .line 40823
    .local v3, "length":I
    :goto_0
    and-int v0, v4, v1

    if-nez v0, :cond_1

    .line 40824
    shr-int/lit8 v1, v1, 0x1

    .line 40825
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 40826
    :cond_1
    not-int v0, v1

    and-int/2addr v4, v0

    .line 40827
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Ip;->A01:Lcom/facebook/ads/redexgen/X/4v;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/4v;->A0l()[B

    move-result-object v0

    invoke-interface {p1, v0, v2, v3}, Lcom/facebook/ads/redexgen/X/ms;->AGt([BII)V

    .line 40828
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    if-ge v2, v3, :cond_2

    .line 40829
    shl-int/lit8 v4, v4, 0x8

    .line 40830
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Ip;->A01:Lcom/facebook/ads/redexgen/X/4v;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/4v;->A0l()[B

    move-result-object v1

    add-int/lit8 v0, v2, 0x1

    aget-byte v0, v1, v0

    and-int/lit16 v0, v0, 0xff

    add-int/2addr v4, v0

    .line 40831
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 40832
    .end local v2    # "i":I
    :cond_2
    iget v1, p0, Lcom/facebook/ads/redexgen/X/Ip;->A00:I

    add-int/lit8 v0, v3, 0x1

    add-int/2addr v1, v0

    iput v1, p0, Lcom/facebook/ads/redexgen/X/Ip;->A00:I

    .line 40833
    int-to-long v0, v4

    return-wide v0
.end method


# virtual methods
.method public final A01(Lcom/facebook/ads/redexgen/X/ms;)Z
    .locals 19
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 40834
    move-object/from16 v7, p0

    move-object v7, v7

    move-object/from16 v8, p1

    invoke-interface {v8}, Lcom/facebook/ads/redexgen/X/ms;->A8O()J

    move-result-wide v17

    .line 40835
    .local v2, "inputLength":J
    const-wide/16 v1, 0x400

    const-wide/16 v15, -0x1

    cmp-long v0, v17, v15

    if-eqz v0, :cond_0

    cmp-long v0, v17, v1

    if-lez v0, :cond_2

    .line 40836
    :cond_0
    :goto_0
    long-to-int v3, v1

    .line 40837
    .local v5, "bytesToSearch":I
    iget-object v0, v7, Lcom/facebook/ads/redexgen/X/Ip;->A01:Lcom/facebook/ads/redexgen/X/4v;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/4v;->A0l()[B

    move-result-object v0

    const/4 v5, 0x0

    const/4 v1, 0x4

    invoke-interface {v8, v0, v5, v1}, Lcom/facebook/ads/redexgen/X/ms;->AGt([BII)V

    .line 40838
    iget-object v0, v7, Lcom/facebook/ads/redexgen/X/Ip;->A01:Lcom/facebook/ads/redexgen/X/4v;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/4v;->A0Q()J

    move-result-wide v11

    .line 40839
    .local v10, "tag":J
    iput v1, v7, Lcom/facebook/ads/redexgen/X/Ip;->A00:I

    .line 40840
    :goto_1
    const-wide/32 v9, 0x1a45dfa3

    const/4 v1, 0x1

    cmp-long v0, v11, v9

    if-eqz v0, :cond_4

    .line 40841
    iget v0, v7, Lcom/facebook/ads/redexgen/X/Ip;->A00:I

    add-int/2addr v0, v1

    iput v0, v7, Lcom/facebook/ads/redexgen/X/Ip;->A00:I

    if-ne v0, v3, :cond_1

    .line 40842
    return v5

    .line 40843
    :cond_1
    iget-object v0, v7, Lcom/facebook/ads/redexgen/X/Ip;->A01:Lcom/facebook/ads/redexgen/X/4v;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/4v;->A0l()[B

    move-result-object v0

    invoke-interface {v8, v0, v5, v1}, Lcom/facebook/ads/redexgen/X/ms;->AGt([BII)V

    .line 40844
    const/16 v0, 0x8

    shl-long/2addr v11, v0

    const-wide/16 v9, -0x100

    sget-object v1, Lcom/facebook/ads/redexgen/X/Ip;->A02:[Ljava/lang/String;

    const/4 v0, 0x5

    aget-object v1, v1, v0

    const/16 v0, 0x9

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x5a

    if-eq v1, v0, :cond_3

    sget-object v2, Lcom/facebook/ads/redexgen/X/Ip;->A02:[Ljava/lang/String;

    const-string v1, "keWgERcis7TdroPm"

    const/4 v0, 0x7

    aput-object v1, v2, v0

    const-string v1, "OXY"

    const/4 v0, 0x2

    aput-object v1, v2, v0

    and-long/2addr v11, v9

    .line 40845
    .end local v10    # "tag":J
    .local v9, "tag":J
    iget-object v0, v7, Lcom/facebook/ads/redexgen/X/Ip;->A01:Lcom/facebook/ads/redexgen/X/4v;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/4v;->A0l()[B

    move-result-object v0

    aget-byte v0, v0, v5

    and-int/lit16 v0, v0, 0xff

    int-to-long v0, v0

    or-long/2addr v11, v0

    .end local v9    # "tag":J
    .restart local v10    # "tag":J
    goto :goto_1

    .line 40846
    :cond_2
    move-wide/from16 v1, v17

    goto :goto_0

    :cond_3
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    .line 40847
    :cond_4
    invoke-direct {v7, v8}, Lcom/facebook/ads/redexgen/X/Ip;->A00(Lcom/facebook/ads/redexgen/X/ms;)J

    move-result-wide v13

    .line 40848
    .local v12, "headerSize":J
    iget v3, v7, Lcom/facebook/ads/redexgen/X/Ip;->A00:I

    sget-object v2, Lcom/facebook/ads/redexgen/X/Ip;->A02:[Ljava/lang/String;

    const/4 v0, 0x7

    aget-object v1, v2, v0

    const/4 v0, 0x2

    aget-object v0, v2, v0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eq v1, v0, :cond_e

    sget-object v2, Lcom/facebook/ads/redexgen/X/Ip;->A02:[Ljava/lang/String;

    const-string v1, "8USntBNRnGq1k7YndUZ918x7mjNkxlAo"

    const/4 v0, 0x0

    aput-object v1, v2, v0

    const-string v1, "NlU12704XsvvTftMDquGsme1zZ9M6Gib"

    const/4 v0, 0x4

    aput-object v1, v2, v0

    int-to-long v3, v3

    .line 40849
    .local v14, "headerStart":J
    const-wide/high16 v9, -0x8000000000000000L

    cmp-long v0, v13, v9

    if-eqz v0, :cond_5

    cmp-long v0, v17, v15

    if-eqz v0, :cond_6

    add-long v1, v3, v13

    cmp-long v0, v1, v17

    if-ltz v0, :cond_6

    .line 40850
    .end local v5    # "bytesToSearch":I
    .restart local v9    # "tag":J
    :cond_5
    const/4 v0, 0x0

    return v0

    .line 40851
    :cond_6
    :goto_2
    iget v0, v7, Lcom/facebook/ads/redexgen/X/Ip;->A00:I

    int-to-long v0, v0

    add-long v11, v3, v13

    cmp-long v2, v0, v11

    if-gez v2, :cond_c

    .line 40852
    invoke-direct {v7, v8}, Lcom/facebook/ads/redexgen/X/Ip;->A00(Lcom/facebook/ads/redexgen/X/ms;)J

    move-result-wide v1

    .line 40853
    .local v6, "id":J
    cmp-long v0, v1, v9

    if-nez v0, :cond_7

    .line 40854
    return v5

    .line 40855
    .end local v5
    .local v9, "bytesToSearch":I
    :cond_7
    invoke-direct {v7, v8}, Lcom/facebook/ads/redexgen/X/Ip;->A00(Lcom/facebook/ads/redexgen/X/ms;)J

    move-result-wide v5

    .line 40856
    .local v4, "size":J
    const-wide/16 v11, 0x0

    sget-object v2, Lcom/facebook/ads/redexgen/X/Ip;->A02:[Ljava/lang/String;

    const/4 v0, 0x0

    aget-object v1, v2, v0

    const/4 v0, 0x4

    aget-object v2, v2, v0

    const/16 v0, 0xc

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v1, v0, :cond_9

    sget-object v2, Lcom/facebook/ads/redexgen/X/Ip;->A02:[Ljava/lang/String;

    const-string v1, "WOjoKoWSnEX2mR88EDllzX7MR8FXWjEu"

    const/4 v0, 0x0

    aput-object v1, v2, v0

    const-string v1, "zFQ8S5RVgPrJFIVyTDDE2qr0iqJgcsXB"

    const/4 v0, 0x4

    aput-object v1, v2, v0

    cmp-long v0, v5, v11

    if-ltz v0, :cond_8

    :goto_3
    const-wide/32 v1, 0x7fffffff

    cmp-long v0, v5, v1

    if-lez v0, :cond_a

    .line 40857
    .restart local v4    # "size":J
    .restart local v6    # "id":J
    :cond_8
    const/4 v0, 0x0

    return v0

    :cond_9
    sget-object v2, Lcom/facebook/ads/redexgen/X/Ip;->A02:[Ljava/lang/String;

    const-string v1, "uJmDg5c2xISP09FpPwUdNktwoy"

    const/4 v0, 0x6

    aput-object v1, v2, v0

    cmp-long v0, v5, v11

    if-ltz v0, :cond_8

    goto :goto_3

    .line 40858
    :cond_a
    cmp-long v0, v5, v11

    if-eqz v0, :cond_b

    .line 40859
    long-to-int v1, v5

    .line 40860
    .local v8, "sizeInt":I
    invoke-interface {v8, v1}, Lcom/facebook/ads/redexgen/X/ms;->A47(I)V

    .line 40861
    iget v0, v7, Lcom/facebook/ads/redexgen/X/Ip;->A00:I

    add-int/2addr v0, v1

    iput v0, v7, Lcom/facebook/ads/redexgen/X/Ip;->A00:I

    .line 40862
    .end local v4    # "size":J
    .end local v6    # "id":J
    .end local v8    # "sizeInt":I
    :cond_b
    const/4 v5, 0x0

    goto :goto_2

    .line 40863
    .end local v4
    .end local v6
    .end local v9    # "bytesToSearch":I
    .restart local v5    # "bytesToSearch":I
    .end local v5    # "bytesToSearch":I
    .restart local v9    # "bytesToSearch":I
    :cond_c
    iget v0, v7, Lcom/facebook/ads/redexgen/X/Ip;->A00:I

    int-to-long v1, v0

    add-long/2addr v3, v13

    cmp-long v0, v1, v3

    if-nez v0, :cond_d

    const/4 v0, 0x1

    :goto_4
    return v0

    :cond_d
    const/4 v0, 0x0

    goto :goto_4

    :cond_e
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
.end method
