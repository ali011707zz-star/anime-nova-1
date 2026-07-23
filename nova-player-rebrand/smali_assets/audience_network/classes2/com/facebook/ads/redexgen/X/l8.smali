.class public final Lcom/facebook/ads/redexgen/X/l8;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/facebook/ads/redexgen/X/H1;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/ads/redexgen/X/l7;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "TsPcrSeeker"
.end annotation


# static fields
.field public static A04:[Ljava/lang/String;


# instance fields
.field public final A00:I

.field public final A01:I

.field public final A02:Lcom/facebook/ads/redexgen/X/4v;

.field public final A03:Lcom/facebook/ads/redexgen/X/53;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    .line 3177
    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "sdKdmhexVnrlWGhX9TH5KtuHBxlX2"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "B98Zkm438dg3YkwTFsWcwjYsIqopE2cW"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "q7DFl2FydsE0DWNk8QJk98tFdBPGU17r"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "uw89PlDwsU5CTp5ALy1o"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "HmpI"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "x0Unc4LQNUVImDERNKiE"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "Klo4tVDdc3zNBBgsT3eAMryjwXw3w"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "mmy2vPNb8zCZX"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/l8;->A04:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(ILcom/facebook/ads/redexgen/X/53;I)V
    .locals 1

    .line 92593
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 92594
    iput p1, p0, Lcom/facebook/ads/redexgen/X/l8;->A00:I

    .line 92595
    iput-object p2, p0, Lcom/facebook/ads/redexgen/X/l8;->A03:Lcom/facebook/ads/redexgen/X/53;

    .line 92596
    iput p3, p0, Lcom/facebook/ads/redexgen/X/l8;->A01:I

    .line 92597
    new-instance v0, Lcom/facebook/ads/redexgen/X/4v;

    invoke-direct {v0}, Lcom/facebook/ads/redexgen/X/4v;-><init>()V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/l8;->A02:Lcom/facebook/ads/redexgen/X/4v;

    .line 92598
    return-void
.end method

.method private A00(Lcom/facebook/ads/redexgen/X/4v;JJ)Lcom/facebook/ads/redexgen/X/Gz;
    .locals 16

    .line 92599
    move-wide/from16 v6, p4

    move-object/from16 v11, p0

    move-object/from16 v12, p1

    invoke-virtual {v12}, Lcom/facebook/ads/redexgen/X/4v;->A0A()I

    move-result v10

    .line 92600
    .local v4, "limit":I
    const-wide/16 v0, -0x1

    .line 92601
    .local v5, "startOfLastPacketPosition":J
    const-wide/16 v2, -0x1

    .line 92602
    .local v7, "endOfLastPacketPosition":J
    const-wide v4, -0x7fffffffffffffffL    # -4.9E-324

    .line 92603
    .local v9, "lastPcrTimeUsInRange":J
    :goto_0
    invoke-virtual {v12}, Lcom/facebook/ads/redexgen/X/4v;->A07()I

    move-result v9

    const/16 v8, 0xbc

    const-wide v14, -0x7fffffffffffffffL    # -4.9E-324

    if-lt v9, v8, :cond_0

    .line 92604
    invoke-virtual {v12}, Lcom/facebook/ads/redexgen/X/4v;->A0l()[B

    move-result-object v9

    invoke-virtual {v12}, Lcom/facebook/ads/redexgen/X/4v;->A09()I

    move-result v8

    invoke-static {v9, v8, v10}, Lcom/facebook/ads/redexgen/X/LI;->A00([BII)I

    move-result v9

    .line 92605
    .local v11, "startOfPacket":I
    add-int/lit16 v8, v9, 0xbc

    .line 92606
    .local v12, "endOfPacket":I
    if-le v8, v10, :cond_1

    .line 92607
    .end local v4    # "limit":I
    .end local v5    # "startOfLastPacketPosition":J
    .end local v7    # "endOfLastPacketPosition":J
    .restart local v15
    .restart local p0    # "this":Lcom/facebook/ads/redexgen/X/l8;
    .restart local p4    # null:J
    :cond_0
    const-wide v8, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v0, v4, v8

    if-eqz v0, :cond_6

    .line 92608
    add-long/2addr v6, v2

    .line 92609
    .local v4, "endOfLastPacketPositionInStream":J
    invoke-static {v4, v5, v6, v7}, Lcom/facebook/ads/redexgen/X/Gz;->A05(JJ)Lcom/facebook/ads/redexgen/X/Gz;

    move-result-object v0

    return-object v0

    .line 92610
    :cond_1
    iget v2, v11, Lcom/facebook/ads/redexgen/X/l8;->A00:I

    .end local v7
    .local p0, "endOfLastPacketPosition":J
    invoke-static {v12, v9, v2}, Lcom/facebook/ads/redexgen/X/LI;->A01(Lcom/facebook/ads/redexgen/X/4v;II)J

    move-result-wide v2

    .line 92611
    .local v7, "pcrValue":J
    cmp-long v13, v2, v14

    if-eqz v13, :cond_5

    .line 92612
    iget-object v13, v11, Lcom/facebook/ads/redexgen/X/l8;->A03:Lcom/facebook/ads/redexgen/X/53;

    invoke-virtual {v13, v2, v3}, Lcom/facebook/ads/redexgen/X/53;->A06(J)J

    move-result-wide v2

    .line 92613
    .local v13, "pcrTimeUs":J
    cmp-long v13, v2, p2

    if-lez v13, :cond_2

    .line 92614
    const-wide v11, -0x7fffffffffffffffL    # -4.9E-324

    sget-object v10, Lcom/facebook/ads/redexgen/X/l8;->A04:[Ljava/lang/String;

    const/4 v8, 0x1

    aget-object v9, v10, v8

    const/4 v8, 0x2

    aget-object v10, v10, v8

    const/16 v8, 0xc

    invoke-virtual {v9, v8}, Ljava/lang/String;->charAt(I)C

    move-result v9

    invoke-virtual {v10, v8}, Ljava/lang/String;->charAt(I)C

    move-result v8

    if-eq v9, v8, :cond_8

    sget-object v10, Lcom/facebook/ads/redexgen/X/l8;->A04:[Ljava/lang/String;

    const-string v9, "aExFpEIrb6zE8t35yvld"

    const/4 v8, 0x3

    aput-object v9, v10, v8

    const-string v9, "jMLoot3yN0lnttWSwPI3"

    const/4 v8, 0x5

    aput-object v9, v10, v8

    cmp-long v8, v4, v11

    if-nez v8, :cond_7

    .line 92615
    invoke-static {v2, v3, v6, v7}, Lcom/facebook/ads/redexgen/X/Gz;->A04(JJ)Lcom/facebook/ads/redexgen/X/Gz;

    move-result-object v0

    return-object v0

    .line 92616
    :cond_2
    const-wide/32 v4, 0x186a0

    add-long v0, v2, v4

    cmp-long v5, v0, p2

    sget-object v4, Lcom/facebook/ads/redexgen/X/l8;->A04:[Ljava/lang/String;

    const/4 v0, 0x1

    aget-object v1, v4, v0

    const/4 v0, 0x2

    aget-object v4, v4, v0

    const/16 v0, 0xc

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v4, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v1, v0, :cond_3

    sget-object v4, Lcom/facebook/ads/redexgen/X/l8;->A04:[Ljava/lang/String;

    const-string v1, "ZHgwZuqrkfLn2FTfbKUV"

    const/4 v0, 0x3

    aput-object v1, v4, v0

    const-string v1, "99YI6qOyfmrUQVvNk1ZB"

    const/4 v0, 0x5

    aput-object v1, v4, v0

    if-lez v5, :cond_4

    .line 92617
    .end local v4    # "endOfLastPacketPositionInStream":J
    .end local v5
    .local v15, "limit":I
    .local p4, "startOfLastPacketPosition":J
    :goto_1
    int-to-long v0, v9

    add-long/2addr v0, v6

    .line 92618
    .local v4, "startOfPacketInStream":J
    invoke-static {v0, v1}, Lcom/facebook/ads/redexgen/X/Gz;->A03(J)Lcom/facebook/ads/redexgen/X/Gz;

    move-result-object v0

    return-object v0

    :cond_3
    sget-object v4, Lcom/facebook/ads/redexgen/X/l8;->A04:[Ljava/lang/String;

    const-string v1, "5ynNf"

    const/4 v0, 0x4

    aput-object v1, v4, v0

    if-lez v5, :cond_4

    goto :goto_1

    .line 92619
    .end local v15    # "limit":I
    .end local p4    # "startOfLastPacketPosition":J
    .local v4, "limit":I
    .restart local v5    # "startOfLastPacketPosition":J
    .end local v4    # "limit":I
    .end local v5    # "startOfLastPacketPosition":J
    .restart local v15    # "limit":I
    .restart local p4    # "startOfLastPacketPosition":J
    .end local v9    # "lastPcrTimeUsInRange":J
    .local v4, "lastPcrTimeUsInRange":J
    :cond_4
    int-to-long v0, v9

    move-wide v4, v2

    .line 92620
    .end local p4    # "startOfLastPacketPosition":J
    .local v9, "startOfLastPacketPosition":J
    .end local v4    # "lastPcrTimeUsInRange":J
    .restart local v15    # "limit":I
    :cond_5
    invoke-virtual {v12, v8}, Lcom/facebook/ads/redexgen/X/4v;->A0f(I)V

    .line 92621
    int-to-long v2, v8

    .line 92622
    .end local v11    # "startOfPacket":I
    .end local v12    # "endOfPacket":I
    .end local p0    # "endOfLastPacketPosition":J
    .local v7, "endOfLastPacketPosition":J
    goto/16 :goto_0

    .line 92623
    .end local v4
    :cond_6
    sget-object v0, Lcom/facebook/ads/redexgen/X/Gz;->A03:Lcom/facebook/ads/redexgen/X/Gz;

    return-object v0

    .line 92624
    :cond_7
    add-long/2addr v6, v0

    invoke-static {v6, v7}, Lcom/facebook/ads/redexgen/X/Gz;->A03(J)Lcom/facebook/ads/redexgen/X/Gz;

    move-result-object v0

    return-object v0

    :cond_8
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
.end method


# virtual methods
.method public final AFs()V
    .locals 2

    .line 92625
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/l8;->A02:Lcom/facebook/ads/redexgen/X/4v;

    sget-object v0, Lcom/facebook/ads/redexgen/X/5C;->A07:[B

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/4v;->A0i([B)V

    .line 92626
    return-void
.end method

.method public final AIw(Lcom/facebook/ads/redexgen/X/ms;J)Lcom/facebook/ads/redexgen/X/Gz;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 92627
    invoke-interface {p1}, Lcom/facebook/ads/redexgen/X/ms;->A8n()J

    move-result-wide v4

    .line 92628
    .local p0, "inputPosition":J
    iget v0, p0, Lcom/facebook/ads/redexgen/X/l8;->A01:I

    int-to-long v2, v0

    invoke-interface {p1}, Lcom/facebook/ads/redexgen/X/ms;->A8O()J

    move-result-wide v0

    sub-long/2addr v0, v4

    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    long-to-int v2, v0

    .line 92629
    .local p2, "bytesToSearch":I
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/l8;->A02:Lcom/facebook/ads/redexgen/X/4v;

    invoke-virtual {v0, v2}, Lcom/facebook/ads/redexgen/X/4v;->A0d(I)V

    .line 92630
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/l8;->A02:Lcom/facebook/ads/redexgen/X/4v;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/4v;->A0l()[B

    move-result-object v1

    const/4 v0, 0x0

    invoke-interface {p1, v1, v0, v2}, Lcom/facebook/ads/redexgen/X/ms;->AGt([BII)V

    .line 92631
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/l8;->A02:Lcom/facebook/ads/redexgen/X/4v;

    move-object v0, p0

    move-wide v2, p2

    invoke-direct/range {v0 .. v5}, Lcom/facebook/ads/redexgen/X/l8;->A00(Lcom/facebook/ads/redexgen/X/4v;JJ)Lcom/facebook/ads/redexgen/X/Gz;

    move-result-object v0

    return-object v0
.end method
