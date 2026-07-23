.class public final Lcom/facebook/ads/redexgen/X/lO;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/facebook/ads/redexgen/X/Kv;


# static fields
.field public static A0B:[Ljava/lang/String;


# instance fields
.field public A00:I

.field public A01:I

.field public A02:I

.field public A03:I

.field public A04:J

.field public A05:J

.field public A06:Lcom/facebook/ads/redexgen/X/qI;

.field public A07:Lcom/facebook/ads/redexgen/X/Hd;

.field public A08:Ljava/lang/String;

.field public final A09:Lcom/facebook/ads/redexgen/X/4v;

.field public final A0A:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    .line 3189
    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "dLkHlusgcNv2NHu1x"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "kOXDYUAe8n5k0zIrGkajB2ICMzhCI1bW"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "J2PER8S0U1OpHQWQYcrbTTlLRvEHJnnX"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "68SowiJizkgZ7NsO9"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "yBvkDSkIOuw9vvMDA"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "yIdyl2Bhz3wOi3n7q0uPuN"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "BOu02ldMHGg7m0a8qy56aJXpGwCl3gmF"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "zi7PV4PgK11phQSkaHF2tMz4gZWLtpOH"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/lO;->A0B:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 2

    .line 94013
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 94014
    const/16 v0, 0x12

    new-array v1, v0, [B

    new-instance v0, Lcom/facebook/ads/redexgen/X/4v;

    invoke-direct {v0, v1}, Lcom/facebook/ads/redexgen/X/4v;-><init>([B)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/lO;->A09:Lcom/facebook/ads/redexgen/X/4v;

    .line 94015
    const/4 v0, 0x0

    iput v0, p0, Lcom/facebook/ads/redexgen/X/lO;->A02:I

    .line 94016
    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    iput-wide v0, p0, Lcom/facebook/ads/redexgen/X/lO;->A05:J

    .line 94017
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/lO;->A0A:Ljava/lang/String;

    .line 94018
    return-void
.end method

.method private A00()V
    .locals 4
    .annotation runtime Lorg/checkerframework/checker/nullness/qual/RequiresNonNull;
        value = {
            "output"
        }
    .end annotation

    .line 94019
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/lO;->A09:Lcom/facebook/ads/redexgen/X/4v;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/4v;->A0l()[B

    move-result-object v3

    .line 94020
    .local v0, "frameData":[B
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/lO;->A06:Lcom/facebook/ads/redexgen/X/qI;

    if-nez v0, :cond_0

    .line 94021
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/lO;->A08:Ljava/lang/String;

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/lO;->A0A:Ljava/lang/String;

    const/4 v0, 0x0

    invoke-static {v3, v2, v1, v0}, Lcom/facebook/ads/redexgen/X/H7;->A03([BLjava/lang/String;Ljava/lang/String;Lcom/facebook/ads/androidx/media3/common/DrmInitData;)Lcom/facebook/ads/redexgen/X/qI;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/lO;->A06:Lcom/facebook/ads/redexgen/X/qI;

    .line 94022
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/lO;->A07:Lcom/facebook/ads/redexgen/X/Hd;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/lO;->A06:Lcom/facebook/ads/redexgen/X/qI;

    invoke-interface {v1, v0}, Lcom/facebook/ads/redexgen/X/Hd;->A6e(Lcom/facebook/ads/redexgen/X/qI;)V

    .line 94023
    :cond_0
    invoke-static {v3}, Lcom/facebook/ads/redexgen/X/H7;->A01([B)I

    move-result v0

    iput v0, p0, Lcom/facebook/ads/redexgen/X/lO;->A01:I

    .line 94024
    invoke-static {v3}, Lcom/facebook/ads/redexgen/X/H7;->A02([B)I

    move-result v0

    int-to-long v2, v0

    const-wide/32 v0, 0xf4240

    mul-long/2addr v2, v0

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/lO;->A06:Lcom/facebook/ads/redexgen/X/qI;

    iget v0, v0, Lcom/facebook/ads/redexgen/X/qI;->A0G:I

    int-to-long v0, v0

    div-long/2addr v2, v0

    long-to-int v0, v2

    int-to-long v0, v0

    iput-wide v0, p0, Lcom/facebook/ads/redexgen/X/lO;->A04:J

    .line 94025
    return-void
.end method

.method private A01(Lcom/facebook/ads/redexgen/X/4v;)Z
    .locals 6

    .line 94026
    :cond_0
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/4v;->A07()I

    move-result v0

    const/4 v4, 0x0

    if-lez v0, :cond_2

    .line 94027
    iget v0, p0, Lcom/facebook/ads/redexgen/X/lO;->A03:I

    shl-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/facebook/ads/redexgen/X/lO;->A03:I

    .line 94028
    iget v1, p0, Lcom/facebook/ads/redexgen/X/lO;->A03:I

    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/4v;->A0I()I

    move-result v0

    or-int/2addr v1, v0

    iput v1, p0, Lcom/facebook/ads/redexgen/X/lO;->A03:I

    .line 94029
    iget v0, p0, Lcom/facebook/ads/redexgen/X/lO;->A03:I

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/H7;->A07(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 94030
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/lO;->A09:Lcom/facebook/ads/redexgen/X/4v;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/4v;->A0l()[B

    move-result-object v2

    .line 94031
    .local v0, "headerData":[B
    iget v0, p0, Lcom/facebook/ads/redexgen/X/lO;->A03:I

    shr-int/lit8 v0, v0, 0x18

    and-int/lit16 v0, v0, 0xff

    int-to-byte v0, v0

    aput-byte v0, v2, v4

    .line 94032
    iget v0, p0, Lcom/facebook/ads/redexgen/X/lO;->A03:I

    shr-int/lit8 v0, v0, 0x10

    and-int/lit16 v0, v0, 0xff

    int-to-byte v0, v0

    const/4 v5, 0x1

    aput-byte v0, v2, v5

    .line 94033
    iget v0, p0, Lcom/facebook/ads/redexgen/X/lO;->A03:I

    shr-int/lit8 v0, v0, 0x8

    and-int/lit16 v0, v0, 0xff

    int-to-byte v1, v0

    const/4 v0, 0x2

    aput-byte v1, v2, v0

    .line 94034
    iget v0, p0, Lcom/facebook/ads/redexgen/X/lO;->A03:I

    and-int/lit16 v0, v0, 0xff

    int-to-byte v1, v0

    const/4 v0, 0x3

    aput-byte v1, v2, v0

    .line 94035
    const/4 v3, 0x4

    sget-object v1, Lcom/facebook/ads/redexgen/X/lO;->A0B:[Ljava/lang/String;

    const/4 v0, 0x2

    aget-object v1, v1, v0

    const/16 v0, 0x1b

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x34

    if-eq v1, v0, :cond_1

    sget-object v2, Lcom/facebook/ads/redexgen/X/lO;->A0B:[Ljava/lang/String;

    const-string v1, "EvoORA1qucNZxupBm89VmEjcctmXNkxV"

    const/4 v0, 0x2

    aput-object v1, v2, v0

    iput v3, p0, Lcom/facebook/ads/redexgen/X/lO;->A00:I

    .line 94036
    iput v4, p0, Lcom/facebook/ads/redexgen/X/lO;->A03:I

    .line 94037
    return v5

    :cond_1
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    .line 94038
    .end local v0    # "headerData":[B
    :cond_2
    return v4
.end method

.method private A02(Lcom/facebook/ads/redexgen/X/4v;[BI)Z
    .locals 2

    .line 94039
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/4v;->A07()I

    move-result v1

    iget v0, p0, Lcom/facebook/ads/redexgen/X/lO;->A00:I

    sub-int v0, p3, v0

    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 94040
    .local v0, "bytesToRead":I
    iget v0, p0, Lcom/facebook/ads/redexgen/X/lO;->A00:I

    invoke-virtual {p1, p2, v0, v1}, Lcom/facebook/ads/redexgen/X/4v;->A0k([BII)V

    .line 94041
    iget v0, p0, Lcom/facebook/ads/redexgen/X/lO;->A00:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/facebook/ads/redexgen/X/lO;->A00:I

    .line 94042
    iget v0, p0, Lcom/facebook/ads/redexgen/X/lO;->A00:I

    if-ne v0, p3, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public final A5A(Lcom/facebook/ads/redexgen/X/4v;)V
    .locals 9

    .line 94043
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/lO;->A07:Lcom/facebook/ads/redexgen/X/Hd;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/3y;->A02(Ljava/lang/Object;)Ljava/lang/Object;

    .line 94044
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/4v;->A07()I

    move-result v0

    if-lez v0, :cond_3

    .line 94045
    iget v0, p0, Lcom/facebook/ads/redexgen/X/lO;->A02:I

    const/4 v1, 0x0

    packed-switch v0, :pswitch_data_0

    .line 94046
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    .line 94047
    :pswitch_0
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/4v;->A07()I

    move-result v3

    iget v2, p0, Lcom/facebook/ads/redexgen/X/lO;->A01:I

    iget v0, p0, Lcom/facebook/ads/redexgen/X/lO;->A00:I

    sub-int/2addr v2, v0

    invoke-static {v3, v2}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 94048
    .local v0, "bytesToRead":I
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/lO;->A07:Lcom/facebook/ads/redexgen/X/Hd;

    invoke-interface {v0, p1, v2}, Lcom/facebook/ads/redexgen/X/Hd;->AIr(Lcom/facebook/ads/redexgen/X/4v;I)V

    .line 94049
    iget v0, p0, Lcom/facebook/ads/redexgen/X/lO;->A00:I

    add-int/2addr v0, v2

    iput v0, p0, Lcom/facebook/ads/redexgen/X/lO;->A00:I

    .line 94050
    iget v2, p0, Lcom/facebook/ads/redexgen/X/lO;->A00:I

    iget v0, p0, Lcom/facebook/ads/redexgen/X/lO;->A01:I

    if-ne v2, v0, :cond_0

    .line 94051
    iget-wide v4, p0, Lcom/facebook/ads/redexgen/X/lO;->A05:J

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v0, v4, v2

    if-eqz v0, :cond_1

    .line 94052
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/lO;->A07:Lcom/facebook/ads/redexgen/X/Hd;

    iget-wide v3, p0, Lcom/facebook/ads/redexgen/X/lO;->A05:J

    iget v6, p0, Lcom/facebook/ads/redexgen/X/lO;->A01:I

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v5, 0x1

    invoke-interface/range {v2 .. v8}, Lcom/facebook/ads/redexgen/X/Hd;->AIu(JIIILcom/facebook/ads/redexgen/X/Hb;)V

    .line 94053
    iget-wide v4, p0, Lcom/facebook/ads/redexgen/X/lO;->A05:J

    iget-wide v2, p0, Lcom/facebook/ads/redexgen/X/lO;->A04:J

    add-long/2addr v4, v2

    iput-wide v4, p0, Lcom/facebook/ads/redexgen/X/lO;->A05:J

    .line 94054
    :cond_1
    iput v1, p0, Lcom/facebook/ads/redexgen/X/lO;->A02:I

    goto :goto_0

    .line 94055
    .end local v0    # "bytesToRead":I
    :pswitch_1
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/lO;->A09:Lcom/facebook/ads/redexgen/X/4v;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/4v;->A0l()[B

    move-result-object v0

    const/16 v2, 0x12

    invoke-direct {p0, p1, v0, v2}, Lcom/facebook/ads/redexgen/X/lO;->A02(Lcom/facebook/ads/redexgen/X/4v;[BI)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 94056
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/lO;->A00()V

    .line 94057
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/lO;->A09:Lcom/facebook/ads/redexgen/X/4v;

    invoke-virtual {v0, v1}, Lcom/facebook/ads/redexgen/X/4v;->A0f(I)V

    .line 94058
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/lO;->A07:Lcom/facebook/ads/redexgen/X/Hd;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/lO;->A09:Lcom/facebook/ads/redexgen/X/4v;

    invoke-interface {v1, v0, v2}, Lcom/facebook/ads/redexgen/X/Hd;->AIr(Lcom/facebook/ads/redexgen/X/4v;I)V

    .line 94059
    const/4 v0, 0x2

    iput v0, p0, Lcom/facebook/ads/redexgen/X/lO;->A02:I

    goto :goto_0

    .line 94060
    :pswitch_2
    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/lO;->A01(Lcom/facebook/ads/redexgen/X/4v;)Z

    move-result v3

    sget-object v1, Lcom/facebook/ads/redexgen/X/lO;->A0B:[Ljava/lang/String;

    const/4 v0, 0x6

    aget-object v1, v1, v0

    const/16 v0, 0xe

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x61

    if-eq v1, v0, :cond_2

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_2
    sget-object v2, Lcom/facebook/ads/redexgen/X/lO;->A0B:[Ljava/lang/String;

    const-string v1, "LnG0CahPOhXel4OI27B1IhRoFtWtCxEm"

    const/4 v0, 0x1

    aput-object v1, v2, v0

    const-string v1, "4f6V0CDv6EuXljjMlCYsbwPtjLzOLcdT"

    const/4 v0, 0x7

    aput-object v1, v2, v0

    if-eqz v3, :cond_0

    .line 94061
    const/4 v0, 0x1

    iput v0, p0, Lcom/facebook/ads/redexgen/X/lO;->A02:I

    goto/16 :goto_0

    .line 94062
    :cond_3
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final A5c(Lcom/facebook/ads/redexgen/X/HA;Lcom/facebook/ads/redexgen/X/LG;)V
    .locals 2

    .line 94063
    invoke-virtual {p2}, Lcom/facebook/ads/redexgen/X/LG;->A05()V

    .line 94064
    invoke-virtual {p2}, Lcom/facebook/ads/redexgen/X/LG;->A04()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/lO;->A08:Ljava/lang/String;

    .line 94065
    invoke-virtual {p2}, Lcom/facebook/ads/redexgen/X/LG;->A03()I

    move-result v1

    const/4 v0, 0x1

    invoke-interface {p1, v1, v0}, Lcom/facebook/ads/redexgen/X/HA;->AKS(II)Lcom/facebook/ads/redexgen/X/Hd;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/lO;->A07:Lcom/facebook/ads/redexgen/X/Hd;

    .line 94066
    return-void
.end method

.method public final AGp()V
    .locals 0

    .line 94067
    return-void
.end method

.method public final AGq(JI)V
    .locals 3

    .line 94068
    const-wide v1, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v0, p1, v1

    if-eqz v0, :cond_0

    .line 94069
    iput-wide p1, p0, Lcom/facebook/ads/redexgen/X/lO;->A05:J

    .line 94070
    :cond_0
    return-void
.end method

.method public final AJ5()V
    .locals 2

    .line 94071
    const/4 v0, 0x0

    iput v0, p0, Lcom/facebook/ads/redexgen/X/lO;->A02:I

    .line 94072
    iput v0, p0, Lcom/facebook/ads/redexgen/X/lO;->A00:I

    .line 94073
    iput v0, p0, Lcom/facebook/ads/redexgen/X/lO;->A03:I

    .line 94074
    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    iput-wide v0, p0, Lcom/facebook/ads/redexgen/X/lO;->A05:J

    .line 94075
    return-void
.end method
