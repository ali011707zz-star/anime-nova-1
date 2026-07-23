.class public final Lcom/facebook/ads/redexgen/X/QO;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/ads/redexgen/X/QQ;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Bucket"
.end annotation


# static fields
.field public static A02:[B

.field public static A03:[Ljava/lang/String;


# instance fields
.field public A00:J

.field public A01:Lcom/facebook/ads/redexgen/X/QO;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    .line 1593
    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "eKMrgqlCE6gemHc3i8XP3AKPCikI"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "F056EMXFpemItrIKSNHDMT"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "UP7tmvacf"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "VwJuHcYZb6pOUF9c5fygzqO1xhwXl8"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "rbSS0TX92cN6cYo9TUPXDkEXEuy61J"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "qalk034xToBy0kTaZmHtwYGALLiE8EwC"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "z1"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "iDDMQnl7H0FoGDQAr6PhZLTqZy2Xncag"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/QO;->A03:[Ljava/lang/String;

    invoke-static {}, Lcom/facebook/ads/redexgen/X/QO;->A02()V

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 59980
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59981
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/facebook/ads/redexgen/X/QO;->A00:J

    return-void
.end method

.method public static A00(III)Ljava/lang/String;
    .locals 2

    sget-object v1, Lcom/facebook/ads/redexgen/X/QO;->A02:[B

    add-int v0, p0, p1

    invoke-static {v1, p0, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p0

    const/4 v1, 0x0

    :goto_0
    array-length v0, p0

    if-ge v1, v0, :cond_0

    aget-byte v0, p0, v1

    xor-int/2addr v0, p2

    xor-int/lit8 v0, v0, 0x25

    int-to-byte v0, v0

    aput-byte v0, p0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p0}, Ljava/lang/String;-><init>([B)V

    return-object v0
.end method

.method private A01()V
    .locals 1

    .line 59982
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/QO;->A01:Lcom/facebook/ads/redexgen/X/QO;

    if-nez v0, :cond_0

    .line 59983
    new-instance v0, Lcom/facebook/ads/redexgen/X/QO;

    invoke-direct {v0}, Lcom/facebook/ads/redexgen/X/QO;-><init>()V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/QO;->A01:Lcom/facebook/ads/redexgen/X/QO;

    .line 59984
    :cond_0
    return-void
.end method

.method public static A02()V
    .locals 1

    const/4 v0, 0x2

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/facebook/ads/redexgen/X/QO;->A02:[B

    return-void

    nop

    :array_0
    .array-data 1
        0x2ft
        0x2ft
    .end array-data
.end method


# virtual methods
.method public final A03(I)I
    .locals 9

    .line 59985
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/QO;->A01:Lcom/facebook/ads/redexgen/X/QO;

    const/16 v0, 0x40

    const-wide/16 v7, 0x1

    if-nez v1, :cond_2

    .line 59986
    if-lt p1, v0, :cond_0

    .line 59987
    iget-wide v0, p0, Lcom/facebook/ads/redexgen/X/QO;->A00:J

    invoke-static {v0, v1}, Ljava/lang/Long;->bitCount(J)I

    move-result v0

    return v0

    .line 59988
    :cond_0
    iget-wide v2, p0, Lcom/facebook/ads/redexgen/X/QO;->A00:J

    shl-long v5, v7, p1

    sub-long/2addr v5, v7

    sget-object v1, Lcom/facebook/ads/redexgen/X/QO;->A03:[Ljava/lang/String;

    const/4 v0, 0x6

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v0, 0x2

    if-eq v1, v0, :cond_1

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_1
    sget-object v4, Lcom/facebook/ads/redexgen/X/QO;->A03:[Ljava/lang/String;

    const-string v1, "eBNk3oMk3zKdgPZGJWBoIC6ya78Y9W"

    const/4 v0, 0x3

    aput-object v1, v4, v0

    const-string v1, "SZljZRIwDL4qj86IVN03h7W6Ja49N5"

    const/4 v0, 0x4

    aput-object v1, v4, v0

    and-long/2addr v2, v5

    invoke-static {v2, v3}, Ljava/lang/Long;->bitCount(J)I

    move-result v0

    return v0

    .line 59989
    :cond_2
    if-ge p1, v0, :cond_3

    .line 59990
    iget-wide v2, p0, Lcom/facebook/ads/redexgen/X/QO;->A00:J

    shl-long v0, v7, p1

    sub-long/2addr v0, v7

    and-long/2addr v2, v0

    invoke-static {v2, v3}, Ljava/lang/Long;->bitCount(J)I

    move-result v0

    return v0

    .line 59991
    :cond_3
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/QO;->A01:Lcom/facebook/ads/redexgen/X/QO;

    add-int/lit8 v0, p1, -0x40

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/QO;->A03(I)I

    move-result v2

    iget-wide v0, p0, Lcom/facebook/ads/redexgen/X/QO;->A00:J

    invoke-static {v0, v1}, Ljava/lang/Long;->bitCount(J)I

    move-result v0

    add-int/2addr v2, v0

    return v2
.end method

.method public final A04()V
    .locals 4

    .line 59992
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/facebook/ads/redexgen/X/QO;->A00:J

    .line 59993
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/QO;->A01:Lcom/facebook/ads/redexgen/X/QO;

    if-eqz v0, :cond_0

    .line 59994
    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/QO;->A01:Lcom/facebook/ads/redexgen/X/QO;

    sget-object v2, Lcom/facebook/ads/redexgen/X/QO;->A03:[Ljava/lang/String;

    const/4 v0, 0x1

    aget-object v1, v2, v0

    const/4 v0, 0x7

    aget-object v0, v2, v0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eq v1, v0, :cond_1

    sget-object v2, Lcom/facebook/ads/redexgen/X/QO;->A03:[Ljava/lang/String;

    const-string v1, "MSI1mtfoMLAkHcYJR6PW0K"

    const/4 v0, 0x1

    aput-object v1, v2, v0

    const-string v1, "fUjJFSbhC3MyLq7bD4XnyNju1VoRa1IS"

    const/4 v0, 0x7

    aput-object v1, v2, v0

    invoke-virtual {v3}, Lcom/facebook/ads/redexgen/X/QO;->A04()V

    .line 59995
    :cond_0
    return-void

    :cond_1
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
.end method

.method public final A05(I)V
    .locals 6

    .line 59996
    const/16 v0, 0x40

    if-lt p1, v0, :cond_0

    .line 59997
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/QO;->A01:Lcom/facebook/ads/redexgen/X/QO;

    if-eqz v0, :cond_2

    .line 59998
    iget-object v4, p0, Lcom/facebook/ads/redexgen/X/QO;->A01:Lcom/facebook/ads/redexgen/X/QO;

    add-int/lit8 v3, p1, -0x40

    sget-object v1, Lcom/facebook/ads/redexgen/X/QO;->A03:[Ljava/lang/String;

    const/4 v0, 0x6

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v0, 0x2

    if-eq v1, v0, :cond_1

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    .line 59999
    :cond_0
    iget-wide v4, p0, Lcom/facebook/ads/redexgen/X/QO;->A00:J

    const-wide/16 v2, 0x1

    shl-long/2addr v2, p1

    not-long v0, v2

    and-long/2addr v4, v0

    iput-wide v4, p0, Lcom/facebook/ads/redexgen/X/QO;->A00:J

    goto :goto_0

    .line 60000
    :cond_1
    sget-object v2, Lcom/facebook/ads/redexgen/X/QO;->A03:[Ljava/lang/String;

    const-string v1, "gh"

    const/4 v0, 0x6

    aput-object v1, v2, v0

    invoke-virtual {v4, v3}, Lcom/facebook/ads/redexgen/X/QO;->A05(I)V

    .line 60001
    :cond_2
    :goto_0
    return-void
.end method

.method public final A06(I)V
    .locals 4

    .line 60002
    const/16 v0, 0x40

    if-lt p1, v0, :cond_0

    .line 60003
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/QO;->A01()V

    .line 60004
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/QO;->A01:Lcom/facebook/ads/redexgen/X/QO;

    add-int/lit8 v0, p1, -0x40

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/QO;->A06(I)V

    .line 60005
    :goto_0
    return-void

    .line 60006
    :cond_0
    iget-wide v2, p0, Lcom/facebook/ads/redexgen/X/QO;->A00:J

    const-wide/16 v0, 0x1

    shl-long/2addr v0, p1

    or-long/2addr v2, v0

    iput-wide v2, p0, Lcom/facebook/ads/redexgen/X/QO;->A00:J

    goto :goto_0
.end method

.method public final A07(IZ)V
    .locals 11

    .line 60007
    const/16 v0, 0x40

    if-lt p1, v0, :cond_1

    .line 60008
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/QO;->A01()V

    .line 60009
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/QO;->A01:Lcom/facebook/ads/redexgen/X/QO;

    add-int/lit8 v0, p1, -0x40

    invoke-virtual {v1, v0, p2}, Lcom/facebook/ads/redexgen/X/QO;->A07(IZ)V

    .line 60010
    .end local v0
    .end local v1
    .end local v3
    .end local v6
    :cond_0
    :goto_0
    return-void

    .line 60011
    :cond_1
    iget-wide v1, p0, Lcom/facebook/ads/redexgen/X/QO;->A00:J

    const-wide/high16 v3, -0x8000000000000000L

    and-long/2addr v1, v3

    const-wide/16 v3, 0x0

    const/4 v10, 0x1

    const/4 v9, 0x0

    cmp-long v0, v1, v3

    if-eqz v0, :cond_4

    const/4 v8, 0x1

    .line 60012
    .local v0, "lastBit":Z
    :goto_1
    const-wide/16 v0, 0x1

    shl-long v4, v0, p1

    sub-long/2addr v4, v0

    .line 60013
    .local v6, "mask":J
    iget-wide v2, p0, Lcom/facebook/ads/redexgen/X/QO;->A00:J

    and-long/2addr v2, v4

    .line 60014
    .local v1, "before":J
    iget-wide v0, p0, Lcom/facebook/ads/redexgen/X/QO;->A00:J

    not-long v6, v4

    and-long/2addr v0, v6

    shl-long/2addr v0, v10

    .line 60015
    .local v3, "after":J
    or-long/2addr v2, v0

    iput-wide v2, p0, Lcom/facebook/ads/redexgen/X/QO;->A00:J

    .line 60016
    if-eqz p2, :cond_3

    .line 60017
    invoke-virtual {p0, p1}, Lcom/facebook/ads/redexgen/X/QO;->A06(I)V

    .line 60018
    :goto_2
    if-nez v8, :cond_2

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/QO;->A01:Lcom/facebook/ads/redexgen/X/QO;

    if-eqz v0, :cond_0

    .line 60019
    :cond_2
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/QO;->A01()V

    .line 60020
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/QO;->A01:Lcom/facebook/ads/redexgen/X/QO;

    invoke-virtual {v0, v9, v8}, Lcom/facebook/ads/redexgen/X/QO;->A07(IZ)V

    goto :goto_0

    .line 60021
    :cond_3
    invoke-virtual {p0, p1}, Lcom/facebook/ads/redexgen/X/QO;->A05(I)V

    goto :goto_2

    .line 60022
    :cond_4
    const/4 v8, 0x0

    goto :goto_1
.end method

.method public final A08(I)Z
    .locals 5

    .line 60023
    const/16 v0, 0x40

    if-lt p1, v0, :cond_0

    .line 60024
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/QO;->A01()V

    .line 60025
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/QO;->A01:Lcom/facebook/ads/redexgen/X/QO;

    add-int/lit8 v0, p1, -0x40

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/QO;->A08(I)Z

    move-result v0

    return v0

    .line 60026
    :cond_0
    iget-wide v3, p0, Lcom/facebook/ads/redexgen/X/QO;->A00:J

    const-wide/16 v0, 0x1

    shl-long/2addr v0, p1

    and-long/2addr v3, v0

    const-wide/16 v1, 0x0

    cmp-long v0, v3, v1

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final A09(I)Z
    .locals 13

    .line 60027
    const/16 v0, 0x40

    if-lt p1, v0, :cond_0

    .line 60028
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/QO;->A01()V

    .line 60029
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/QO;->A01:Lcom/facebook/ads/redexgen/X/QO;

    add-int/lit8 v0, p1, -0x40

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/QO;->A09(I)Z

    move-result v0

    return v0

    .line 60030
    :cond_0
    const-wide/16 v11, 0x1

    shl-long v7, v11, p1

    .line 60031
    .local v2, "mask":J
    iget-wide v1, p0, Lcom/facebook/ads/redexgen/X/QO;->A00:J

    and-long/2addr v1, v7

    const-wide/16 v3, 0x0

    const/4 v10, 0x1

    const/4 v6, 0x0

    cmp-long v0, v1, v3

    if-eqz v0, :cond_3

    const/4 v9, 0x1

    .line 60032
    .local v4, "value":Z
    :goto_0
    iget-wide v2, p0, Lcom/facebook/ads/redexgen/X/QO;->A00:J

    not-long v0, v7

    and-long/2addr v2, v0

    iput-wide v2, p0, Lcom/facebook/ads/redexgen/X/QO;->A00:J

    .line 60033
    sub-long/2addr v7, v11

    .line 60034
    iget-wide v4, p0, Lcom/facebook/ads/redexgen/X/QO;->A00:J

    and-long/2addr v4, v7

    .line 60035
    .local v0, "before":J
    iget-wide v2, p0, Lcom/facebook/ads/redexgen/X/QO;->A00:J

    not-long v0, v7

    and-long/2addr v2, v0

    invoke-static {v2, v3, v10}, Ljava/lang/Long;->rotateRight(JI)J

    move-result-wide v0

    .line 60036
    .local v5, "after":J
    or-long/2addr v4, v0

    iput-wide v4, p0, Lcom/facebook/ads/redexgen/X/QO;->A00:J

    .line 60037
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/QO;->A01:Lcom/facebook/ads/redexgen/X/QO;

    if-eqz v0, :cond_2

    .line 60038
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/QO;->A01:Lcom/facebook/ads/redexgen/X/QO;

    invoke-virtual {v0, v6}, Lcom/facebook/ads/redexgen/X/QO;->A08(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 60039
    const/16 v0, 0x3f

    invoke-virtual {p0, v0}, Lcom/facebook/ads/redexgen/X/QO;->A06(I)V

    .line 60040
    :cond_1
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/QO;->A01:Lcom/facebook/ads/redexgen/X/QO;

    invoke-virtual {v0, v6}, Lcom/facebook/ads/redexgen/X/QO;->A09(I)Z

    .line 60041
    :cond_2
    return v9

    .line 60042
    :cond_3
    const/4 v9, 0x0

    goto :goto_0
.end method

.method public final toString()Ljava/lang/String;
    .locals 4

    .line 60043
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/QO;->A01:Lcom/facebook/ads/redexgen/X/QO;

    if-nez v0, :cond_0

    iget-wide v0, p0, Lcom/facebook/ads/redexgen/X/QO;->A00:J

    invoke-static {v0, v1}, Ljava/lang/Long;->toBinaryString(J)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    .line 60044
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/QO;->A01:Lcom/facebook/ads/redexgen/X/QO;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/QO;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/4 v2, 0x0

    const/4 v1, 0x2

    const/16 v0, 0x72

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/QO;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-wide v0, p0, Lcom/facebook/ads/redexgen/X/QO;->A00:J

    invoke-static {v0, v1}, Ljava/lang/Long;->toBinaryString(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method
