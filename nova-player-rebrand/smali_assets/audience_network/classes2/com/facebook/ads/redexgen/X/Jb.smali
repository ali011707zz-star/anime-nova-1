.class public abstract Lcom/facebook/ads/redexgen/X/Jb;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/ads/redexgen/X/Ja;,
        Lcom/facebook/ads/redexgen/X/lu;
    }
.end annotation


# static fields
.field public static A0D:[Ljava/lang/String;


# instance fields
.field public A00:I

.field public A01:I

.field public A02:J

.field public A03:J

.field public A04:J

.field public A05:J

.field public A06:Lcom/facebook/ads/redexgen/X/HA;

.field public A07:Lcom/facebook/ads/redexgen/X/Hd;

.field public A08:Lcom/facebook/ads/redexgen/X/JY;

.field public A09:Lcom/facebook/ads/redexgen/X/Ja;

.field public A0A:Z

.field public A0B:Z

.field public final A0C:Lcom/facebook/ads/redexgen/X/JW;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    .line 836
    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "XeH1UKKuz1EDpBeQKhAXaKjrjZgsodJU"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "Qh9sfVWsiKdbMkoZ0Fly5mM08PFSskfX"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "g5Vgu"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "IbV76iHRvjKg6MHaSQGzPOhr6f1ApNQX"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "p6vckuBwU2Q2AllMmzSrbAD"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "CWShENYx4MqsFhdcA74Ut20lXSF9FxoW"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "efy3JamC8vBQUYLSbDR2yGzuJR"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "AxMKck"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/Jb;->A0D:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 43135
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43136
    new-instance v0, Lcom/facebook/ads/redexgen/X/JW;

    invoke-direct {v0}, Lcom/facebook/ads/redexgen/X/JW;-><init>()V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Jb;->A0C:Lcom/facebook/ads/redexgen/X/JW;

    .line 43137
    new-instance v0, Lcom/facebook/ads/redexgen/X/Ja;

    invoke-direct {v0}, Lcom/facebook/ads/redexgen/X/Ja;-><init>()V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Jb;->A09:Lcom/facebook/ads/redexgen/X/Ja;

    .line 43138
    return-void
.end method

.method private A00(Lcom/facebook/ads/redexgen/X/ms;)I
    .locals 17
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .annotation runtime Lorg/checkerframework/checker/nullness/qual/RequiresNonNull;
        value = {
            "trackOutput"
        }
    .end annotation

    .line 43139
    move-object/from16 v3, p0

    move-object v3, v3

    move-object/from16 v5, p1

    invoke-direct {v3, v5}, Lcom/facebook/ads/redexgen/X/Jb;->A03(Lcom/facebook/ads/redexgen/X/ms;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 43140
    const/4 v0, -0x1

    return v0

    .line 43141
    :cond_0
    iget-object v0, v3, Lcom/facebook/ads/redexgen/X/Jb;->A09:Lcom/facebook/ads/redexgen/X/Ja;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/Ja;->A00:Lcom/facebook/ads/redexgen/X/qI;

    iget v0, v0, Lcom/facebook/ads/redexgen/X/qI;->A0G:I

    iput v0, v3, Lcom/facebook/ads/redexgen/X/Jb;->A00:I

    .line 43142
    iget-boolean v0, v3, Lcom/facebook/ads/redexgen/X/Jb;->A0A:Z

    const/4 v2, 0x1

    if-nez v0, :cond_1

    .line 43143
    iget-object v1, v3, Lcom/facebook/ads/redexgen/X/Jb;->A07:Lcom/facebook/ads/redexgen/X/Hd;

    iget-object v0, v3, Lcom/facebook/ads/redexgen/X/Jb;->A09:Lcom/facebook/ads/redexgen/X/Ja;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/Ja;->A00:Lcom/facebook/ads/redexgen/X/qI;

    invoke-interface {v1, v0}, Lcom/facebook/ads/redexgen/X/Hd;->A6e(Lcom/facebook/ads/redexgen/X/qI;)V

    .line 43144
    iput-boolean v2, v3, Lcom/facebook/ads/redexgen/X/Jb;->A0A:Z

    .line 43145
    :cond_1
    iget-object v0, v3, Lcom/facebook/ads/redexgen/X/Jb;->A09:Lcom/facebook/ads/redexgen/X/Ja;

    iget-object v4, v0, Lcom/facebook/ads/redexgen/X/Ja;->A01:Lcom/facebook/ads/redexgen/X/JY;

    sget-object v2, Lcom/facebook/ads/redexgen/X/Jb;->A0D:[Ljava/lang/String;

    const/4 v0, 0x5

    aget-object v1, v2, v0

    const/4 v0, 0x3

    aget-object v2, v2, v0

    const/4 v0, 0x2

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v1, v0, :cond_5

    sget-object v2, Lcom/facebook/ads/redexgen/X/Jb;->A0D:[Ljava/lang/String;

    const-string v1, "ikA5IIIrIRBN8L1z"

    const/4 v0, 0x7

    aput-object v1, v2, v0

    const/4 v0, 0x0

    if-eqz v4, :cond_2

    .line 43146
    iget-object v1, v3, Lcom/facebook/ads/redexgen/X/Jb;->A09:Lcom/facebook/ads/redexgen/X/Ja;

    iget-object v1, v1, Lcom/facebook/ads/redexgen/X/Ja;->A01:Lcom/facebook/ads/redexgen/X/JY;

    iput-object v1, v3, Lcom/facebook/ads/redexgen/X/Jb;->A08:Lcom/facebook/ads/redexgen/X/JY;

    .line 43147
    .end local v10
    .end local v13
    :goto_0
    const/4 v1, 0x2

    iput v1, v3, Lcom/facebook/ads/redexgen/X/Jb;->A01:I

    .line 43148
    iget-object v1, v3, Lcom/facebook/ads/redexgen/X/Jb;->A0C:Lcom/facebook/ads/redexgen/X/JW;

    invoke-virtual {v1}, Lcom/facebook/ads/redexgen/X/JW;->A04()V

    .line 43149
    return v0

    .line 43150
    :cond_2
    invoke-interface {v5}, Lcom/facebook/ads/redexgen/X/ms;->A8O()J

    move-result-wide v8

    const-wide/16 v6, -0x1

    cmp-long v1, v8, v6

    if-nez v1, :cond_3

    .line 43151
    const/4 v2, 0x0

    new-instance v1, Lcom/facebook/ads/redexgen/X/lu;

    invoke-direct {v1, v2}, Lcom/facebook/ads/redexgen/X/lu;-><init>(Lcom/facebook/ads/redexgen/X/JZ;)V

    iput-object v1, v3, Lcom/facebook/ads/redexgen/X/Jb;->A08:Lcom/facebook/ads/redexgen/X/JY;

    goto :goto_0

    .line 43152
    :cond_3
    iget-object v1, v3, Lcom/facebook/ads/redexgen/X/Jb;->A0C:Lcom/facebook/ads/redexgen/X/JW;

    invoke-virtual {v1}, Lcom/facebook/ads/redexgen/X/JW;->A02()Lcom/facebook/ads/redexgen/X/JX;

    move-result-object v4

    .line 43153
    .local v13, "firstPayloadPageHeader":Lcom/facebook/ads/redexgen/X/JX;
    iget v1, v4, Lcom/facebook/ads/redexgen/X/JX;->A04:I

    and-int/lit8 v1, v1, 0x4

    if-eqz v1, :cond_4

    const/16 v16, 0x1

    .line 43154
    .local v10, "isLastPage":Z
    :goto_1
    new-instance v6, Lcom/facebook/ads/redexgen/X/m0;

    iget-wide v8, v3, Lcom/facebook/ads/redexgen/X/Jb;->A04:J

    .line 43155
    invoke-interface {v5}, Lcom/facebook/ads/redexgen/X/ms;->A8O()J

    move-result-wide v10

    iget v2, v4, Lcom/facebook/ads/redexgen/X/JX;->A01:I

    iget v1, v4, Lcom/facebook/ads/redexgen/X/JX;->A00:I

    add-int/2addr v2, v1

    int-to-long v12, v2

    iget-wide v14, v4, Lcom/facebook/ads/redexgen/X/JX;->A05:J

    move-object v7, v3

    invoke-direct/range {v6 .. v16}, Lcom/facebook/ads/redexgen/X/m0;-><init>(Lcom/facebook/ads/redexgen/X/Jb;JJJJZ)V

    iput-object v6, v3, Lcom/facebook/ads/redexgen/X/Jb;->A08:Lcom/facebook/ads/redexgen/X/JY;

    goto :goto_0

    .line 43156
    :cond_4
    const/16 v16, 0x0

    goto :goto_1

    :cond_5
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
.end method

.method private A01(Lcom/facebook/ads/redexgen/X/ms;Lcom/facebook/ads/redexgen/X/HV;)I
    .locals 18
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .annotation runtime Lorg/checkerframework/checker/nullness/qual/RequiresNonNull;
        value = {
            "trackOutput",
            "oggSeeker",
            "extractorOutput"
        }
    .end annotation

    .line 43157
    move-object/from16 v7, p0

    iget-object v0, v7, Lcom/facebook/ads/redexgen/X/Jb;->A08:Lcom/facebook/ads/redexgen/X/JY;

    move-object/from16 v12, p1

    invoke-interface {v0, v12}, Lcom/facebook/ads/redexgen/X/JY;->AHN(Lcom/facebook/ads/redexgen/X/ms;)J

    move-result-wide v10

    .line 43158
    .local v2, "position":J
    const/4 v6, 0x1

    const-wide/16 v4, 0x0

    cmp-long v0, v10, v4

    if-ltz v0, :cond_0

    .line 43159
    move-object/from16 v0, p2

    iput-wide v10, v0, Lcom/facebook/ads/redexgen/X/HV;->A00:J

    .line 43160
    return v6

    .line 43161
    :cond_0
    const-wide/16 v0, -0x1

    cmp-long v2, v10, v0

    if-gez v2, :cond_2

    .line 43162
    const-wide/16 v8, 0x2

    sget-object v3, Lcom/facebook/ads/redexgen/X/Jb;->A0D:[Ljava/lang/String;

    const/4 v2, 0x1

    aget-object v3, v3, v2

    const/16 v2, 0x1e

    invoke-virtual {v3, v2}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v2, 0x66

    if-eq v3, v2, :cond_1

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_1
    sget-object v13, Lcom/facebook/ads/redexgen/X/Jb;->A0D:[Ljava/lang/String;

    const-string v3, "VTxPX"

    const/4 v2, 0x2

    aput-object v3, v13, v2

    const-string v3, "vg288hyM3d7P0eFgaD3UTrluSy"

    const/4 v2, 0x6

    aput-object v3, v13, v2

    add-long/2addr v8, v10

    neg-long v2, v8

    invoke-virtual {v7, v2, v3}, Lcom/facebook/ads/redexgen/X/Jb;->A0A(J)V

    .line 43163
    :cond_2
    iget-boolean v2, v7, Lcom/facebook/ads/redexgen/X/Jb;->A0B:Z

    if-nez v2, :cond_3

    .line 43164
    iget-object v2, v7, Lcom/facebook/ads/redexgen/X/Jb;->A08:Lcom/facebook/ads/redexgen/X/JY;

    invoke-interface {v2}, Lcom/facebook/ads/redexgen/X/JY;->A5Z()Lcom/facebook/ads/redexgen/X/HY;

    move-result-object v2

    invoke-static {v2}, Lcom/facebook/ads/redexgen/X/3y;->A02(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/facebook/ads/redexgen/X/HY;

    .line 43165
    .local v10, "seekMap":Lcom/facebook/ads/redexgen/X/HY;
    iget-object v2, v7, Lcom/facebook/ads/redexgen/X/Jb;->A06:Lcom/facebook/ads/redexgen/X/HA;

    invoke-interface {v2, v3}, Lcom/facebook/ads/redexgen/X/HA;->AJ7(Lcom/facebook/ads/redexgen/X/HY;)V

    .line 43166
    iput-boolean v6, v7, Lcom/facebook/ads/redexgen/X/Jb;->A0B:Z

    .line 43167
    .end local v10    # "seekMap":Lcom/facebook/ads/redexgen/X/HY;
    :cond_3
    iget-wide v8, v7, Lcom/facebook/ads/redexgen/X/Jb;->A03:J

    cmp-long v2, v8, v4

    if-gtz v2, :cond_4

    iget-object v2, v7, Lcom/facebook/ads/redexgen/X/Jb;->A0C:Lcom/facebook/ads/redexgen/X/JW;

    invoke-virtual {v2, v12}, Lcom/facebook/ads/redexgen/X/JW;->A05(Lcom/facebook/ads/redexgen/X/ms;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 43168
    :cond_4
    iput-wide v4, v7, Lcom/facebook/ads/redexgen/X/Jb;->A03:J

    .line 43169
    iget-object v2, v7, Lcom/facebook/ads/redexgen/X/Jb;->A0C:Lcom/facebook/ads/redexgen/X/JW;

    invoke-virtual {v2}, Lcom/facebook/ads/redexgen/X/JW;->A01()Lcom/facebook/ads/redexgen/X/4v;

    move-result-object v8

    .line 43170
    .local v4, "payload":Lcom/facebook/ads/redexgen/X/4v;
    invoke-virtual {v7, v8}, Lcom/facebook/ads/redexgen/X/Jb;->A09(Lcom/facebook/ads/redexgen/X/4v;)J

    move-result-wide v9

    .line 43171
    .local v10, "granulesInPacket":J
    cmp-long v2, v9, v4

    if-ltz v2, :cond_5

    iget-wide v5, v7, Lcom/facebook/ads/redexgen/X/Jb;->A02:J

    add-long/2addr v5, v9

    sget-object v4, Lcom/facebook/ads/redexgen/X/Jb;->A0D:[Ljava/lang/String;

    const/4 v2, 0x2

    aget-object v3, v4, v2

    const/4 v2, 0x6

    aget-object v2, v4, v2

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-eq v3, v2, :cond_6

    sget-object v4, Lcom/facebook/ads/redexgen/X/Jb;->A0D:[Ljava/lang/String;

    const-string v3, "EPgFULMjpXPDE9er32WaoAxqXEcFdYah"

    const/4 v2, 0x0

    aput-object v3, v4, v2

    iget-wide v3, v7, Lcom/facebook/ads/redexgen/X/Jb;->A05:J

    cmp-long v2, v5, v3

    if-ltz v2, :cond_5

    .line 43172
    :goto_0
    iget-wide v2, v7, Lcom/facebook/ads/redexgen/X/Jb;->A02:J

    invoke-virtual {v7, v2, v3}, Lcom/facebook/ads/redexgen/X/Jb;->A05(J)J

    move-result-wide v12

    .line 43173
    .local v5, "timeUs":J
    iget-object v3, v7, Lcom/facebook/ads/redexgen/X/Jb;->A07:Lcom/facebook/ads/redexgen/X/Hd;

    invoke-virtual {v8}, Lcom/facebook/ads/redexgen/X/4v;->A0A()I

    move-result v2

    invoke-interface {v3, v8, v2}, Lcom/facebook/ads/redexgen/X/Hd;->AIr(Lcom/facebook/ads/redexgen/X/4v;I)V

    .line 43174
    iget-object v11, v7, Lcom/facebook/ads/redexgen/X/Jb;->A07:Lcom/facebook/ads/redexgen/X/Hd;

    invoke-virtual {v8}, Lcom/facebook/ads/redexgen/X/4v;->A0A()I

    move-result v15

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/4 v14, 0x1

    invoke-interface/range {v11 .. v17}, Lcom/facebook/ads/redexgen/X/Hd;->AIu(JIIILcom/facebook/ads/redexgen/X/Hb;)V

    .line 43175
    iput-wide v0, v7, Lcom/facebook/ads/redexgen/X/Jb;->A05:J

    .line 43176
    .end local v5    # "timeUs":J
    :cond_5
    iget-wide v0, v7, Lcom/facebook/ads/redexgen/X/Jb;->A02:J

    add-long/2addr v0, v9

    iput-wide v0, v7, Lcom/facebook/ads/redexgen/X/Jb;->A02:J

    .line 43177
    .end local v4    # "payload":Lcom/facebook/ads/redexgen/X/4v;
    .end local v10    # "granulesInPacket":J
    const/4 v0, 0x0

    return v0

    :cond_6
    iget-wide v3, v7, Lcom/facebook/ads/redexgen/X/Jb;->A05:J

    cmp-long v2, v5, v3

    if-ltz v2, :cond_5

    goto :goto_0

    .line 43178
    :cond_7
    const/4 v0, 0x3

    iput v0, v7, Lcom/facebook/ads/redexgen/X/Jb;->A01:I

    .line 43179
    const/4 v0, -0x1

    return v0
.end method

.method private A02()V
    .locals 1
    .annotation runtime Lorg/checkerframework/checker/nullness/qual/EnsuresNonNull;
        value = {
            "trackOutput",
            "extractorOutput"
        }
    .end annotation

    .line 43180
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Jb;->A07:Lcom/facebook/ads/redexgen/X/Hd;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/3y;->A02(Ljava/lang/Object;)Ljava/lang/Object;

    .line 43181
    return-void
.end method

.method private A03(Lcom/facebook/ads/redexgen/X/ms;)Z
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .annotation runtime Lorg/checkerframework/checker/nullness/qual/EnsuresNonNullIf;
        expression = {
            "setupData.format"
        }
        result = true
    .end annotation

    .line 43182
    :goto_0
    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/Jb;->A0C:Lcom/facebook/ads/redexgen/X/JW;

    sget-object v2, Lcom/facebook/ads/redexgen/X/Jb;->A0D:[Ljava/lang/String;

    const/4 v0, 0x5

    aget-object v1, v2, v0

    const/4 v0, 0x3

    aget-object v2, v2, v0

    const/4 v0, 0x2

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v1, v0, :cond_2

    sget-object v2, Lcom/facebook/ads/redexgen/X/Jb;->A0D:[Ljava/lang/String;

    const-string v1, "RUb6h5R55PuDixsZqq"

    const/4 v0, 0x7

    aput-object v1, v2, v0

    invoke-virtual {v3, p1}, Lcom/facebook/ads/redexgen/X/JW;->A05(Lcom/facebook/ads/redexgen/X/ms;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 43183
    const/4 v0, 0x3

    iput v0, p0, Lcom/facebook/ads/redexgen/X/Jb;->A01:I

    .line 43184
    const/4 v0, 0x0

    return v0

    .line 43185
    :cond_0
    invoke-interface {p1}, Lcom/facebook/ads/redexgen/X/ms;->A8n()J

    move-result-wide v2

    iget-wide v0, p0, Lcom/facebook/ads/redexgen/X/Jb;->A04:J

    sub-long/2addr v2, v0

    iput-wide v2, p0, Lcom/facebook/ads/redexgen/X/Jb;->A03:J

    .line 43186
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Jb;->A0C:Lcom/facebook/ads/redexgen/X/JW;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/JW;->A01()Lcom/facebook/ads/redexgen/X/4v;

    move-result-object v3

    iget-wide v1, p0, Lcom/facebook/ads/redexgen/X/Jb;->A04:J

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Jb;->A09:Lcom/facebook/ads/redexgen/X/Ja;

    invoke-virtual {p0, v3, v1, v2, v0}, Lcom/facebook/ads/redexgen/X/Jb;->A0C(Lcom/facebook/ads/redexgen/X/4v;JLcom/facebook/ads/redexgen/X/Ja;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 43187
    invoke-interface {p1}, Lcom/facebook/ads/redexgen/X/ms;->A8n()J

    move-result-wide v3

    sget-object v1, Lcom/facebook/ads/redexgen/X/Jb;->A0D:[Ljava/lang/String;

    const/4 v0, 0x7

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v0, 0x11

    if-eq v1, v0, :cond_2

    sget-object v2, Lcom/facebook/ads/redexgen/X/Jb;->A0D:[Ljava/lang/String;

    const-string v1, "MjaWWlFxdP245keDLyVkXHL1D0C1Hazn"

    const/4 v0, 0x0

    aput-object v1, v2, v0

    iput-wide v3, p0, Lcom/facebook/ads/redexgen/X/Jb;->A04:J

    goto :goto_0

    .line 43188
    :cond_1
    const/4 v0, 0x1

    return v0

    :cond_2
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
.end method


# virtual methods
.method public final A04(Lcom/facebook/ads/redexgen/X/ms;Lcom/facebook/ads/redexgen/X/HV;)I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 43189
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/Jb;->A02()V

    .line 43190
    iget v0, p0, Lcom/facebook/ads/redexgen/X/Jb;->A01:I

    packed-switch v0, :pswitch_data_0

    .line 43191
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    .line 43192
    :pswitch_0
    const/4 v0, -0x1

    return v0

    .line 43193
    :pswitch_1
    invoke-direct {p0, p1, p2}, Lcom/facebook/ads/redexgen/X/Jb;->A01(Lcom/facebook/ads/redexgen/X/ms;Lcom/facebook/ads/redexgen/X/HV;)I

    move-result v0

    return v0

    .line 43194
    :pswitch_2
    iget-wide v1, p0, Lcom/facebook/ads/redexgen/X/Jb;->A04:J

    long-to-int v0, v1

    invoke-interface {p1, v0}, Lcom/facebook/ads/redexgen/X/ms;->AK3(I)V

    .line 43195
    const/4 v0, 0x2

    iput v0, p0, Lcom/facebook/ads/redexgen/X/Jb;->A01:I

    .line 43196
    const/4 v0, 0x0

    return v0

    .line 43197
    :pswitch_3
    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/Jb;->A00(Lcom/facebook/ads/redexgen/X/ms;)I

    move-result v0

    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final A05(J)J
    .locals 4

    .line 43198
    const-wide/32 v2, 0xf4240

    mul-long/2addr v2, p1

    iget v0, p0, Lcom/facebook/ads/redexgen/X/Jb;->A00:I

    int-to-long v0, v0

    div-long/2addr v2, v0

    return-wide v2
.end method

.method public final A06(J)J
    .locals 4

    .line 43199
    iget v0, p0, Lcom/facebook/ads/redexgen/X/Jb;->A00:I

    int-to-long v2, v0

    mul-long/2addr v2, p1

    const-wide/32 v0, 0xf4240

    div-long/2addr v2, v0

    return-wide v2
.end method

.method public final A07(JJ)V
    .locals 3

    .line 43200
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Jb;->A0C:Lcom/facebook/ads/redexgen/X/JW;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/JW;->A03()V

    .line 43201
    const-wide/16 v1, 0x0

    cmp-long v0, p1, v1

    if-nez v0, :cond_1

    .line 43202
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/Jb;->A0B:Z

    xor-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Lcom/facebook/ads/redexgen/X/Jb;->A0B(Z)V

    .line 43203
    :cond_0
    :goto_0
    return-void

    .line 43204
    :cond_1
    iget v0, p0, Lcom/facebook/ads/redexgen/X/Jb;->A01:I

    if-eqz v0, :cond_0

    .line 43205
    invoke-virtual {p0, p3, p4}, Lcom/facebook/ads/redexgen/X/Jb;->A06(J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/facebook/ads/redexgen/X/Jb;->A05:J

    .line 43206
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Jb;->A08:Lcom/facebook/ads/redexgen/X/JY;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/5C;->A0f(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/facebook/ads/redexgen/X/JY;

    iget-wide v0, p0, Lcom/facebook/ads/redexgen/X/Jb;->A05:J

    invoke-interface {v2, v0, v1}, Lcom/facebook/ads/redexgen/X/JY;->AKC(J)V

    .line 43207
    const/4 v0, 0x2

    iput v0, p0, Lcom/facebook/ads/redexgen/X/Jb;->A01:I

    goto :goto_0
.end method

.method public final A08(Lcom/facebook/ads/redexgen/X/HA;Lcom/facebook/ads/redexgen/X/Hd;)V
    .locals 1

    .line 43208
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/Jb;->A06:Lcom/facebook/ads/redexgen/X/HA;

    .line 43209
    iput-object p2, p0, Lcom/facebook/ads/redexgen/X/Jb;->A07:Lcom/facebook/ads/redexgen/X/Hd;

    .line 43210
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/facebook/ads/redexgen/X/Jb;->A0B(Z)V

    .line 43211
    return-void
.end method

.method public abstract A09(Lcom/facebook/ads/redexgen/X/4v;)J
.end method

.method public A0A(J)V
    .locals 0

    .line 43212
    iput-wide p1, p0, Lcom/facebook/ads/redexgen/X/Jb;->A02:J

    .line 43213
    return-void
.end method

.method public A0B(Z)V
    .locals 4

    .line 43214
    const-wide/16 v2, 0x0

    if-eqz p1, :cond_0

    .line 43215
    new-instance v0, Lcom/facebook/ads/redexgen/X/Ja;

    invoke-direct {v0}, Lcom/facebook/ads/redexgen/X/Ja;-><init>()V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Jb;->A09:Lcom/facebook/ads/redexgen/X/Ja;

    .line 43216
    iput-wide v2, p0, Lcom/facebook/ads/redexgen/X/Jb;->A04:J

    .line 43217
    const/4 v0, 0x0

    iput v0, p0, Lcom/facebook/ads/redexgen/X/Jb;->A01:I

    .line 43218
    :goto_0
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/facebook/ads/redexgen/X/Jb;->A05:J

    .line 43219
    iput-wide v2, p0, Lcom/facebook/ads/redexgen/X/Jb;->A02:J

    .line 43220
    return-void

    .line 43221
    :cond_0
    const/4 v0, 0x1

    iput v0, p0, Lcom/facebook/ads/redexgen/X/Jb;->A01:I

    goto :goto_0
.end method

.method public abstract A0C(Lcom/facebook/ads/redexgen/X/4v;JLcom/facebook/ads/redexgen/X/Ja;)Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .annotation runtime Lorg/checkerframework/checker/nullness/qual/EnsuresNonNullIf;
        expression = {
            "#3.format"
        }
        result = false
    .end annotation
.end method
