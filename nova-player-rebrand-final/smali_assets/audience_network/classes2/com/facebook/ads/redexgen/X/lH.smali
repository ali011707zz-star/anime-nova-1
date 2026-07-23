.class public final Lcom/facebook/ads/redexgen/X/lH;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/facebook/ads/redexgen/X/Kv;


# static fields
.field public static A0L:[B

.field public static A0M:[Ljava/lang/String;


# instance fields
.field public A00:I

.field public A01:I

.field public A02:I

.field public A03:I

.field public A04:I

.field public A05:I

.field public A06:I

.field public A07:I

.field public A08:I

.field public A09:J

.field public A0A:J

.field public A0B:J

.field public A0C:Lcom/facebook/ads/redexgen/X/qI;

.field public A0D:Lcom/facebook/ads/redexgen/X/Hd;

.field public A0E:Ljava/lang/String;

.field public A0F:Ljava/lang/String;

.field public A0G:Z

.field public A0H:Z

.field public final A0I:Lcom/facebook/ads/redexgen/X/4u;

.field public final A0J:Lcom/facebook/ads/redexgen/X/4v;

.field public final A0K:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    .line 3183
    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "j9JFF3HN4WHOogTAo3Zp2vJcrDXalLKC"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "xTu"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "o"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "YpEMu"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "L"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "xqkbJV3NP5tWtCpR6dlW7fuQWbu0Okpq"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "9ZwPJyvjhOXD2"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "3pAsgJTRE4XOqhE7"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/lH;->A0M:[Ljava/lang/String;

    invoke-static {}, Lcom/facebook/ads/redexgen/X/lH;->A04()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 2

    .line 93119
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 93120
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/lH;->A0K:Ljava/lang/String;

    .line 93121
    const/16 v1, 0x400

    new-instance v0, Lcom/facebook/ads/redexgen/X/4v;

    invoke-direct {v0, v1}, Lcom/facebook/ads/redexgen/X/4v;-><init>(I)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/lH;->A0J:Lcom/facebook/ads/redexgen/X/4v;

    .line 93122
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/lH;->A0J:Lcom/facebook/ads/redexgen/X/4v;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/4v;->A0l()[B

    move-result-object v1

    new-instance v0, Lcom/facebook/ads/redexgen/X/4u;

    invoke-direct {v0, v1}, Lcom/facebook/ads/redexgen/X/4u;-><init>([B)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/lH;->A0I:Lcom/facebook/ads/redexgen/X/4u;

    .line 93123
    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    iput-wide v0, p0, Lcom/facebook/ads/redexgen/X/lH;->A0B:J

    .line 93124
    return-void
.end method

.method private A00(Lcom/facebook/ads/redexgen/X/4u;)I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/facebook/ads/redexgen/X/3K;
        }
    .end annotation

    .line 93125
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/4u;->A01()I

    move-result v2

    .line 93126
    .local v0, "bitsLeft":I
    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/facebook/ads/redexgen/X/Gn;->A02(Lcom/facebook/ads/redexgen/X/4u;Z)Lcom/facebook/ads/redexgen/X/Gm;

    move-result-object v1

    .line 93127
    .local v1, "config":Lcom/facebook/ads/redexgen/X/Gm;
    iget-object v0, v1, Lcom/facebook/ads/redexgen/X/Gm;->A02:Ljava/lang/String;

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/lH;->A0E:Ljava/lang/String;

    .line 93128
    iget v0, v1, Lcom/facebook/ads/redexgen/X/Gm;->A01:I

    iput v0, p0, Lcom/facebook/ads/redexgen/X/lH;->A05:I

    .line 93129
    iget v0, v1, Lcom/facebook/ads/redexgen/X/Gm;->A00:I

    iput v0, p0, Lcom/facebook/ads/redexgen/X/lH;->A02:I

    .line 93130
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/4u;->A01()I

    move-result v0

    sub-int/2addr v2, v0

    return v2
.end method

.method private A01(Lcom/facebook/ads/redexgen/X/4u;)I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/facebook/ads/redexgen/X/3K;
        }
    .end annotation

    .line 93131
    const/4 v2, 0x0

    .line 93132
    .local v0, "muxSlotLengthBytes":I
    iget v0, p0, Lcom/facebook/ads/redexgen/X/lH;->A03:I

    if-nez v0, :cond_1

    .line 93133
    :cond_0
    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Lcom/facebook/ads/redexgen/X/4u;->A04(I)I

    move-result v1

    .line 93134
    .local v1, "tmp":I
    add-int/2addr v2, v1

    .line 93135
    const/16 v0, 0xff

    if-eq v1, v0, :cond_0

    .line 93136
    return v2

    .line 93137
    .end local v1    # "tmp":I
    :cond_1
    const/4 v0, 0x0

    invoke-static {v0, v0}, Lcom/facebook/ads/redexgen/X/3K;->A01(Ljava/lang/String;Ljava/lang/Throwable;)Lcom/facebook/ads/redexgen/X/3K;

    move-result-object v0

    throw v0
.end method

.method public static A02(Lcom/facebook/ads/redexgen/X/4u;)J
    .locals 1

    .line 93138
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/facebook/ads/redexgen/X/4u;->A04(I)I

    move-result v0

    .line 93139
    .local v0, "bytesForValue":I
    add-int/lit8 v0, v0, 0x1

    mul-int/lit8 v0, v0, 0x8

    invoke-virtual {p0, v0}, Lcom/facebook/ads/redexgen/X/4u;->A04(I)I

    move-result v0

    int-to-long v0, v0

    return-wide v0
.end method

.method public static A03(III)Ljava/lang/String;
    .locals 4

    sget-object v1, Lcom/facebook/ads/redexgen/X/lH;->A0L:[B

    add-int v0, p0, p1

    invoke-static {v1, p0, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v3

    const/4 p0, 0x0

    :goto_0
    array-length p1, v3

    sget-object v2, Lcom/facebook/ads/redexgen/X/lH;->A0M:[Ljava/lang/String;

    const/4 v0, 0x2

    aget-object v1, v2, v0

    const/4 v0, 0x4

    aget-object v0, v2, v0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eq v1, v0, :cond_0

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_0
    sget-object v2, Lcom/facebook/ads/redexgen/X/lH;->A0M:[Ljava/lang/String;

    const-string v1, "ZyB29Ut14cj6jISqnQaPpNUB2bA7E60q"

    const/4 v0, 0x5

    aput-object v1, v2, v0

    if-ge p0, p1, :cond_1

    aget-byte v0, v3, p0

    xor-int/2addr v0, p2

    xor-int/lit8 v0, v0, 0x39

    int-to-byte v0, v0

    aput-byte v0, v3, p0

    add-int/lit8 p0, p0, 0x1

    goto :goto_0

    :cond_1
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v3}, Ljava/lang/String;-><init>([B)V

    return-object v0
.end method

.method public static A04()V
    .locals 1

    const/16 v0, 0xf

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/facebook/ads/redexgen/X/lH;->A0L:[B

    return-void

    :array_0
    .array-data 1
        0x3t
        0x17t
        0x6t
        0xbt
        0xdt
        0x4dt
        0xft
        0x12t
        0x56t
        0x3t
        0x4ft
        0xet
        0x3t
        0x16t
        0xft
    .end array-data
.end method

.method private A05(I)V
    .locals 2

    .line 93140
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/lH;->A0J:Lcom/facebook/ads/redexgen/X/4v;

    invoke-virtual {v0, p1}, Lcom/facebook/ads/redexgen/X/4v;->A0d(I)V

    .line 93141
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/lH;->A0I:Lcom/facebook/ads/redexgen/X/4u;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/lH;->A0J:Lcom/facebook/ads/redexgen/X/4v;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/4v;->A0l()[B

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/4u;->A0D([B)V

    .line 93142
    return-void
.end method

.method private A06(Lcom/facebook/ads/redexgen/X/4u;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/facebook/ads/redexgen/X/3K;
        }
    .end annotation

    .annotation runtime Lorg/checkerframework/checker/nullness/qual/RequiresNonNull;
        value = {
            "output"
        }
    .end annotation

    .line 93143
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/4u;->A0H()Z

    move-result v0

    .line 93144
    .local v0, "useSameStreamMux":Z
    if-nez v0, :cond_2

    .line 93145
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/lH;->A0H:Z

    .line 93146
    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/lH;->A08(Lcom/facebook/ads/redexgen/X/4u;)V

    .line 93147
    :cond_0
    iget v0, p0, Lcom/facebook/ads/redexgen/X/lH;->A00:I

    const/4 v1, 0x0

    if-nez v0, :cond_4

    .line 93148
    iget v0, p0, Lcom/facebook/ads/redexgen/X/lH;->A04:I

    if-nez v0, :cond_3

    .line 93149
    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/lH;->A01(Lcom/facebook/ads/redexgen/X/4u;)I

    move-result v0

    .line 93150
    .local v1, "muxSlotLengthBytes":I
    invoke-direct {p0, p1, v0}, Lcom/facebook/ads/redexgen/X/lH;->A09(Lcom/facebook/ads/redexgen/X/4u;I)V

    .line 93151
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/lH;->A0G:Z

    if-eqz v0, :cond_1

    .line 93152
    iget-wide v1, p0, Lcom/facebook/ads/redexgen/X/lH;->A09:J

    long-to-int v0, v1

    invoke-virtual {p1, v0}, Lcom/facebook/ads/redexgen/X/4u;->A09(I)V

    .line 93153
    .end local v1    # "muxSlotLengthBytes":I
    :cond_1
    return-void

    .line 93154
    :cond_2
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/lH;->A0H:Z

    if-nez v0, :cond_0

    .line 93155
    return-void

    .line 93156
    :cond_3
    invoke-static {v1, v1}, Lcom/facebook/ads/redexgen/X/3K;->A01(Ljava/lang/String;Ljava/lang/Throwable;)Lcom/facebook/ads/redexgen/X/3K;

    move-result-object v0

    throw v0

    .line 93157
    :cond_4
    invoke-static {v1, v1}, Lcom/facebook/ads/redexgen/X/3K;->A01(Ljava/lang/String;Ljava/lang/Throwable;)Lcom/facebook/ads/redexgen/X/3K;

    move-result-object v0

    throw v0
.end method

.method private A07(Lcom/facebook/ads/redexgen/X/4u;)V
    .locals 1

    .line 93158
    const/4 v0, 0x3

    invoke-virtual {p1, v0}, Lcom/facebook/ads/redexgen/X/4u;->A04(I)I

    move-result v0

    iput v0, p0, Lcom/facebook/ads/redexgen/X/lH;->A03:I

    .line 93159
    iget v0, p0, Lcom/facebook/ads/redexgen/X/lH;->A03:I

    packed-switch v0, :pswitch_data_0

    .line 93160
    :pswitch_0
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    .line 93161
    :pswitch_1
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/facebook/ads/redexgen/X/4u;->A09(I)V

    .line 93162
    goto :goto_0

    .line 93163
    :pswitch_2
    const/4 v0, 0x6

    invoke-virtual {p1, v0}, Lcom/facebook/ads/redexgen/X/4u;->A09(I)V

    .line 93164
    goto :goto_0

    .line 93165
    :pswitch_3
    const/16 v0, 0x9

    invoke-virtual {p1, v0}, Lcom/facebook/ads/redexgen/X/4u;->A09(I)V

    .line 93166
    goto :goto_0

    .line 93167
    :pswitch_4
    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Lcom/facebook/ads/redexgen/X/4u;->A09(I)V

    .line 93168
    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_0
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method private A08(Lcom/facebook/ads/redexgen/X/4u;)V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/facebook/ads/redexgen/X/3K;
        }
    .end annotation

    .annotation runtime Lorg/checkerframework/checker/nullness/qual/RequiresNonNull;
        value = {
            "output"
        }
    .end annotation

    .line 93169
    const/4 v5, 0x1

    invoke-virtual {p1, v5}, Lcom/facebook/ads/redexgen/X/4u;->A04(I)I

    move-result v4

    .line 93170
    .local v1, "audioMuxVersion":I
    const/4 v3, 0x0

    if-ne v4, v5, :cond_1

    invoke-virtual {p1, v5}, Lcom/facebook/ads/redexgen/X/4u;->A04(I)I

    move-result v0

    :goto_0
    iput v0, p0, Lcom/facebook/ads/redexgen/X/lH;->A00:I

    .line 93171
    iget v0, p0, Lcom/facebook/ads/redexgen/X/lH;->A00:I

    const/4 v6, 0x0

    if-nez v0, :cond_a

    .line 93172
    if-ne v4, v5, :cond_0

    .line 93173
    invoke-static {p1}, Lcom/facebook/ads/redexgen/X/lH;->A02(Lcom/facebook/ads/redexgen/X/4u;)J

    .line 93174
    :cond_0
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/4u;->A0H()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 93175
    const/4 v0, 0x6

    invoke-virtual {p1, v0}, Lcom/facebook/ads/redexgen/X/4u;->A04(I)I

    move-result v0

    iput v0, p0, Lcom/facebook/ads/redexgen/X/lH;->A04:I

    .line 93176
    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Lcom/facebook/ads/redexgen/X/4u;->A04(I)I

    move-result v8

    .line 93177
    .local v3, "numProgram":I
    const/4 v7, 0x3

    sget-object v1, Lcom/facebook/ads/redexgen/X/lH;->A0M:[Ljava/lang/String;

    const/4 v0, 0x5

    aget-object v1, v1, v0

    const/16 v0, 0x19

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x62

    if-eq v1, v0, :cond_2

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    .line 93178
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    :cond_2
    sget-object v2, Lcom/facebook/ads/redexgen/X/lH;->A0M:[Ljava/lang/String;

    const-string v1, "b1jqAFGEyfNrz2WgotNy1OFmmbCQivCc"

    const/4 v0, 0x5

    aput-object v1, v2, v0

    invoke-virtual {p1, v7}, Lcom/facebook/ads/redexgen/X/4u;->A04(I)I

    move-result v0

    .line 93179
    .local v5, "numLayer":I
    if-nez v8, :cond_8

    if-nez v0, :cond_8

    .line 93180
    const/16 v6, 0x8

    if-nez v4, :cond_7

    .line 93181
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/4u;->A03()I

    move-result v0

    .line 93182
    .local v6, "startPosition":I
    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/lH;->A00(Lcom/facebook/ads/redexgen/X/4u;)I

    move-result v1

    .line 93183
    .local v7, "readBits":I
    invoke-virtual {p1, v0}, Lcom/facebook/ads/redexgen/X/4u;->A08(I)V

    .line 93184
    add-int/lit8 v0, v1, 0x7

    div-int/2addr v0, v6

    new-array v2, v0, [B

    .line 93185
    .local v8, "initData":[B
    invoke-virtual {p1, v2, v3, v1}, Lcom/facebook/ads/redexgen/X/4u;->A0F([BII)V

    .line 93186
    new-instance v1, Lcom/facebook/ads/redexgen/X/2p;

    invoke-direct {v1}, Lcom/facebook/ads/redexgen/X/2p;-><init>()V

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/lH;->A0F:Ljava/lang/String;

    .line 93187
    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/2p;->A0y(Ljava/lang/String;)Lcom/facebook/ads/redexgen/X/2p;

    move-result-object v7

    .line 93188
    const/4 v3, 0x0

    const/16 v1, 0xf

    const/16 v0, 0x5b

    invoke-static {v3, v1, v0}, Lcom/facebook/ads/redexgen/X/lH;->A03(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Lcom/facebook/ads/redexgen/X/2p;->A11(Ljava/lang/String;)Lcom/facebook/ads/redexgen/X/2p;

    move-result-object v1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/lH;->A0E:Ljava/lang/String;

    .line 93189
    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/2p;->A0w(Ljava/lang/String;)Lcom/facebook/ads/redexgen/X/2p;

    move-result-object v1

    iget v0, p0, Lcom/facebook/ads/redexgen/X/lH;->A02:I

    .line 93190
    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/2p;->A0b(I)Lcom/facebook/ads/redexgen/X/2p;

    move-result-object v1

    iget v0, p0, Lcom/facebook/ads/redexgen/X/lH;->A05:I

    .line 93191
    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/2p;->A0m(I)Lcom/facebook/ads/redexgen/X/2p;

    move-result-object v1

    .line 93192
    invoke-static {v2}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/2p;->A12(Ljava/util/List;)Lcom/facebook/ads/redexgen/X/2p;

    move-result-object v1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/lH;->A0K:Ljava/lang/String;

    .line 93193
    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/2p;->A10(Ljava/lang/String;)Lcom/facebook/ads/redexgen/X/2p;

    move-result-object v0

    .line 93194
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/2p;->A14()Lcom/facebook/ads/redexgen/X/qI;

    move-result-object v7

    .line 93195
    .local v2, "format":Lcom/facebook/ads/redexgen/X/qI;
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/lH;->A0C:Lcom/facebook/ads/redexgen/X/qI;

    invoke-virtual {v7, v0}, Lcom/facebook/ads/redexgen/X/qI;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 93196
    iput-object v7, p0, Lcom/facebook/ads/redexgen/X/lH;->A0C:Lcom/facebook/ads/redexgen/X/qI;

    .line 93197
    iget v0, v7, Lcom/facebook/ads/redexgen/X/qI;->A0G:I

    int-to-long v2, v0

    const-wide/32 v0, 0x3d090000

    div-long/2addr v0, v2

    iput-wide v0, p0, Lcom/facebook/ads/redexgen/X/lH;->A0A:J

    .line 93198
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/lH;->A0D:Lcom/facebook/ads/redexgen/X/Hd;

    invoke-interface {v0, v7}, Lcom/facebook/ads/redexgen/X/Hd;->A6e(Lcom/facebook/ads/redexgen/X/qI;)V

    .line 93199
    .end local v2    # "format":Lcom/facebook/ads/redexgen/X/qI;
    .end local v6    # "startPosition":I
    :cond_3
    :goto_1
    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/lH;->A07(Lcom/facebook/ads/redexgen/X/4u;)V

    .line 93200
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/4u;->A0H()Z

    move-result v0

    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/lH;->A0G:Z

    .line 93201
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/facebook/ads/redexgen/X/lH;->A09:J

    .line 93202
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/lH;->A0G:Z

    if-eqz v0, :cond_4

    .line 93203
    if-ne v4, v5, :cond_6

    .line 93204
    invoke-static {p1}, Lcom/facebook/ads/redexgen/X/lH;->A02(Lcom/facebook/ads/redexgen/X/4u;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/facebook/ads/redexgen/X/lH;->A09:J

    .line 93205
    .end local v0
    :cond_4
    :goto_2
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/4u;->A0H()Z

    move-result v0

    .line 93206
    .local v0, "crcCheckPresent":Z
    if-eqz v0, :cond_5

    .line 93207
    invoke-virtual {p1, v6}, Lcom/facebook/ads/redexgen/X/4u;->A09(I)V

    .line 93208
    .end local v0    # "crcCheckPresent":Z
    .end local v3    # "numProgram":I
    .end local v5    # "numLayer":I
    :cond_5
    return-void

    .line 93209
    :cond_6
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/4u;->A0H()Z

    move-result v4

    .line 93210
    .local v0, "otherDataLenEsc":Z
    iget-wide v2, p0, Lcom/facebook/ads/redexgen/X/lH;->A09:J

    shl-long/2addr v2, v6

    invoke-virtual {p1, v6}, Lcom/facebook/ads/redexgen/X/4u;->A04(I)I

    move-result v0

    int-to-long v0, v0

    add-long/2addr v2, v0

    iput-wide v2, p0, Lcom/facebook/ads/redexgen/X/lH;->A09:J

    .line 93211
    if-nez v4, :cond_6

    goto :goto_2

    .line 93212
    :cond_7
    invoke-static {p1}, Lcom/facebook/ads/redexgen/X/lH;->A02(Lcom/facebook/ads/redexgen/X/4u;)J

    move-result-wide v2

    long-to-int v1, v2

    .line 93213
    .local v2, "ascLen":I
    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/lH;->A00(Lcom/facebook/ads/redexgen/X/4u;)I

    move-result v0

    .line 93214
    .local v6, "bitsRead":I
    sub-int/2addr v1, v0

    invoke-virtual {p1, v1}, Lcom/facebook/ads/redexgen/X/4u;->A09(I)V

    goto :goto_1

    .line 93215
    .restart local v3    # "numProgram":I
    .restart local v5    # "numLayer":I
    :cond_8
    invoke-static {v6, v6}, Lcom/facebook/ads/redexgen/X/3K;->A01(Ljava/lang/String;Ljava/lang/Throwable;)Lcom/facebook/ads/redexgen/X/3K;

    move-result-object v0

    throw v0

    .line 93216
    .end local v3    # "numProgram":I
    .end local v5    # "numLayer":I
    :cond_9
    invoke-static {v6, v6}, Lcom/facebook/ads/redexgen/X/3K;->A01(Ljava/lang/String;Ljava/lang/Throwable;)Lcom/facebook/ads/redexgen/X/3K;

    move-result-object v0

    throw v0

    .line 93217
    :cond_a
    invoke-static {v6, v6}, Lcom/facebook/ads/redexgen/X/3K;->A01(Ljava/lang/String;Ljava/lang/Throwable;)Lcom/facebook/ads/redexgen/X/3K;

    move-result-object v0

    throw v0
.end method

.method private A09(Lcom/facebook/ads/redexgen/X/4u;I)V
    .locals 8
    .annotation runtime Lorg/checkerframework/checker/nullness/qual/RequiresNonNull;
        value = {
            "output"
        }
    .end annotation

    .line 93218
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/4u;->A03()I

    move-result v2

    .line 93219
    .local v0, "bitPosition":I
    and-int/lit8 v0, v2, 0x7

    move v5, p2

    if-nez v0, :cond_1

    .line 93220
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/lH;->A0J:Lcom/facebook/ads/redexgen/X/4v;

    shr-int/lit8 v0, v2, 0x3

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/4v;->A0f(I)V

    .line 93221
    :goto_0
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/lH;->A0D:Lcom/facebook/ads/redexgen/X/Hd;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/lH;->A0J:Lcom/facebook/ads/redexgen/X/4v;

    invoke-interface {v1, v0, v5}, Lcom/facebook/ads/redexgen/X/Hd;->AIr(Lcom/facebook/ads/redexgen/X/4v;I)V

    .line 93222
    iget-wide v3, p0, Lcom/facebook/ads/redexgen/X/lH;->A0B:J

    const-wide v1, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v0, v3, v1

    if-eqz v0, :cond_0

    .line 93223
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/lH;->A0D:Lcom/facebook/ads/redexgen/X/Hd;

    iget-wide v2, p0, Lcom/facebook/ads/redexgen/X/lH;->A0B:J

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v4, 0x1

    invoke-interface/range {v1 .. v7}, Lcom/facebook/ads/redexgen/X/Hd;->AIu(JIIILcom/facebook/ads/redexgen/X/Hb;)V

    .line 93224
    iget-wide v2, p0, Lcom/facebook/ads/redexgen/X/lH;->A0B:J

    iget-wide v0, p0, Lcom/facebook/ads/redexgen/X/lH;->A0A:J

    add-long/2addr v2, v0

    iput-wide v2, p0, Lcom/facebook/ads/redexgen/X/lH;->A0B:J

    .line 93225
    :cond_0
    return-void

    .line 93226
    :cond_1
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/lH;->A0J:Lcom/facebook/ads/redexgen/X/4v;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/4v;->A0l()[B

    move-result-object v2

    mul-int/lit8 v0, v5, 0x8

    const/4 v1, 0x0

    invoke-virtual {p1, v2, v1, v0}, Lcom/facebook/ads/redexgen/X/4u;->A0F([BII)V

    .line 93227
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/lH;->A0J:Lcom/facebook/ads/redexgen/X/4v;

    invoke-virtual {v0, v1}, Lcom/facebook/ads/redexgen/X/4v;->A0f(I)V

    goto :goto_0
.end method


# virtual methods
.method public final A5A(Lcom/facebook/ads/redexgen/X/4v;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/facebook/ads/redexgen/X/3K;
        }
    .end annotation

    .line 93228
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/lH;->A0D:Lcom/facebook/ads/redexgen/X/Hd;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/3y;->A02(Ljava/lang/Object;)Ljava/lang/Object;

    .line 93229
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/4v;->A07()I

    move-result v0

    if-lez v0, :cond_3

    .line 93230
    iget v0, p0, Lcom/facebook/ads/redexgen/X/lH;->A08:I

    const/16 v4, 0x56

    const/4 v3, 0x0

    packed-switch v0, :pswitch_data_0

    .line 93231
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    .line 93232
    :pswitch_0
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/4v;->A07()I

    move-result v2

    iget v1, p0, Lcom/facebook/ads/redexgen/X/lH;->A06:I

    iget v0, p0, Lcom/facebook/ads/redexgen/X/lH;->A01:I

    sub-int/2addr v1, v0

    invoke-static {v2, v1}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 93233
    .local v0, "bytesToRead":I
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/lH;->A0I:Lcom/facebook/ads/redexgen/X/4u;

    iget-object v1, v0, Lcom/facebook/ads/redexgen/X/4u;->A00:[B

    iget v0, p0, Lcom/facebook/ads/redexgen/X/lH;->A01:I

    invoke-virtual {p1, v1, v0, v2}, Lcom/facebook/ads/redexgen/X/4v;->A0k([BII)V

    .line 93234
    iget v0, p0, Lcom/facebook/ads/redexgen/X/lH;->A01:I

    add-int/2addr v0, v2

    iput v0, p0, Lcom/facebook/ads/redexgen/X/lH;->A01:I

    .line 93235
    iget v1, p0, Lcom/facebook/ads/redexgen/X/lH;->A01:I

    iget v0, p0, Lcom/facebook/ads/redexgen/X/lH;->A06:I

    if-ne v1, v0, :cond_0

    .line 93236
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/lH;->A0I:Lcom/facebook/ads/redexgen/X/4u;

    invoke-virtual {v0, v3}, Lcom/facebook/ads/redexgen/X/4u;->A08(I)V

    .line 93237
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/lH;->A0I:Lcom/facebook/ads/redexgen/X/4u;

    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/lH;->A06(Lcom/facebook/ads/redexgen/X/4u;)V

    .line 93238
    iput v3, p0, Lcom/facebook/ads/redexgen/X/lH;->A08:I

    goto :goto_0

    .line 93239
    .end local v0    # "bytesToRead":I
    :pswitch_1
    iget v0, p0, Lcom/facebook/ads/redexgen/X/lH;->A07:I

    and-int/lit16 v0, v0, -0xe1

    shl-int/lit8 v1, v0, 0x8

    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/4v;->A0I()I

    move-result v0

    or-int/2addr v1, v0

    iput v1, p0, Lcom/facebook/ads/redexgen/X/lH;->A06:I

    .line 93240
    iget v1, p0, Lcom/facebook/ads/redexgen/X/lH;->A06:I

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/lH;->A0J:Lcom/facebook/ads/redexgen/X/4v;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/4v;->A0l()[B

    move-result-object v0

    array-length v0, v0

    if-le v1, v0, :cond_1

    .line 93241
    iget v0, p0, Lcom/facebook/ads/redexgen/X/lH;->A06:I

    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/lH;->A05(I)V

    .line 93242
    :cond_1
    iput v3, p0, Lcom/facebook/ads/redexgen/X/lH;->A01:I

    .line 93243
    const/4 v0, 0x3

    iput v0, p0, Lcom/facebook/ads/redexgen/X/lH;->A08:I

    .line 93244
    goto :goto_0

    .line 93245
    :pswitch_2
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/4v;->A0I()I

    move-result v2

    .line 93246
    .local v0, "secondByte":I
    and-int/lit16 v1, v2, 0xe0

    const/16 v0, 0xe0

    if-ne v1, v0, :cond_2

    .line 93247
    iput v2, p0, Lcom/facebook/ads/redexgen/X/lH;->A07:I

    .line 93248
    const/4 v0, 0x2

    iput v0, p0, Lcom/facebook/ads/redexgen/X/lH;->A08:I

    goto :goto_0

    .line 93249
    :cond_2
    if-eq v2, v4, :cond_0

    .line 93250
    iput v3, p0, Lcom/facebook/ads/redexgen/X/lH;->A08:I

    goto :goto_0

    .line 93251
    .end local v0    # "secondByte":I
    :pswitch_3
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/4v;->A0I()I

    move-result v0

    if-ne v0, v4, :cond_0

    .line 93252
    const/4 v0, 0x1

    iput v0, p0, Lcom/facebook/ads/redexgen/X/lH;->A08:I

    goto/16 :goto_0

    .line 93253
    :cond_3
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final A5c(Lcom/facebook/ads/redexgen/X/HA;Lcom/facebook/ads/redexgen/X/LG;)V
    .locals 2

    .line 93254
    invoke-virtual {p2}, Lcom/facebook/ads/redexgen/X/LG;->A05()V

    .line 93255
    invoke-virtual {p2}, Lcom/facebook/ads/redexgen/X/LG;->A03()I

    move-result v1

    const/4 v0, 0x1

    invoke-interface {p1, v1, v0}, Lcom/facebook/ads/redexgen/X/HA;->AKS(II)Lcom/facebook/ads/redexgen/X/Hd;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/lH;->A0D:Lcom/facebook/ads/redexgen/X/Hd;

    .line 93256
    invoke-virtual {p2}, Lcom/facebook/ads/redexgen/X/LG;->A04()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/lH;->A0F:Ljava/lang/String;

    .line 93257
    return-void
.end method

.method public final AGp()V
    .locals 0

    .line 93258
    return-void
.end method

.method public final AGq(JI)V
    .locals 3

    .line 93259
    const-wide v1, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v0, p1, v1

    if-eqz v0, :cond_0

    .line 93260
    iput-wide p1, p0, Lcom/facebook/ads/redexgen/X/lH;->A0B:J

    .line 93261
    :cond_0
    return-void
.end method

.method public final AJ5()V
    .locals 3

    .line 93262
    const/4 v2, 0x0

    iput v2, p0, Lcom/facebook/ads/redexgen/X/lH;->A08:I

    .line 93263
    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    iput-wide v0, p0, Lcom/facebook/ads/redexgen/X/lH;->A0B:J

    .line 93264
    iput-boolean v2, p0, Lcom/facebook/ads/redexgen/X/lH;->A0H:Z

    .line 93265
    return-void
.end method
