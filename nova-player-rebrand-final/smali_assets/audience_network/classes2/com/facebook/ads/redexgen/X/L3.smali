.class public final Lcom/facebook/ads/redexgen/X/L3;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/ads/redexgen/X/lJ;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "SampleReader"
.end annotation


# static fields
.field public static A0D:[Ljava/lang/String;


# instance fields
.field public A00:I

.field public A01:J

.field public A02:J

.field public A03:J

.field public A04:J

.field public A05:Z

.field public A06:Z

.field public A07:Z

.field public A08:Z

.field public A09:Z

.field public A0A:Z

.field public A0B:Z

.field public final A0C:Lcom/facebook/ads/redexgen/X/Hd;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    .line 965
    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "ITeGogKqorZ7bSCIE87s8DTmQOo7Fv11"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "MgkbApIEYzpKXgGasWREFXTi3GTadnaL"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "OAixFelLhBe3iSBS2M"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "ijopPBuuJeE4Ltql3uBrQuSo8nqq7R3R"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "1SB5ttJ09JcNeK6D9rJTpC1clnicerw7"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "nbktskyiJneEJjHZifeKEa33HsJGsJ62"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "ZYvdfmJVTREWWhesr4Tm9ps4syTvrO"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "VkO2l5JSpUAFzoG39IjRbEodOO78G96O"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/L3;->A0D:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/facebook/ads/redexgen/X/Hd;)V
    .locals 0

    .line 49149
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49150
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/L3;->A0C:Lcom/facebook/ads/redexgen/X/Hd;

    .line 49151
    return-void
.end method

.method private A00(I)V
    .locals 8

    .line 49152
    iget-wide v3, p0, Lcom/facebook/ads/redexgen/X/L3;->A04:J

    const-wide v1, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v0, v3, v1

    if-nez v0, :cond_0

    .line 49153
    return-void

    .line 49154
    :cond_0
    iget-boolean v4, p0, Lcom/facebook/ads/redexgen/X/L3;->A0B:Z

    .line 49155
    .local p0, "flags":I
    iget-wide v2, p0, Lcom/facebook/ads/redexgen/X/L3;->A01:J

    iget-wide v0, p0, Lcom/facebook/ads/redexgen/X/L3;->A03:J

    sub-long/2addr v2, v0

    long-to-int v5, v2

    .line 49156
    .local v1, "size":I
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/L3;->A0C:Lcom/facebook/ads/redexgen/X/Hd;

    iget-wide v2, p0, Lcom/facebook/ads/redexgen/X/L3;->A04:J

    const/4 v7, 0x0

    move v6, p1

    invoke-interface/range {v1 .. v7}, Lcom/facebook/ads/redexgen/X/Hd;->AIu(JIIILcom/facebook/ads/redexgen/X/Hb;)V

    .line 49157
    return-void
.end method

.method public static A01(I)Z
    .locals 1

    .line 49158
    const/16 v0, 0x20

    if-gt v0, p0, :cond_0

    const/16 v0, 0x23

    if-le p0, v0, :cond_1

    :cond_0
    const/16 v0, 0x27

    if-ne p0, v0, :cond_2

    :cond_1
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static A02(I)Z
    .locals 1

    .line 49159
    const/16 v0, 0x20

    if-lt p0, v0, :cond_0

    const/16 v0, 0x28

    if-ne p0, v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public final A03()V
    .locals 1

    .line 49160
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/L3;->A07:Z

    .line 49161
    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/L3;->A06:Z

    .line 49162
    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/L3;->A05:Z

    .line 49163
    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/L3;->A0A:Z

    .line 49164
    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/L3;->A09:Z

    .line 49165
    return-void
.end method

.method public final A04(JIIJZ)V
    .locals 3

    .line 49166
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/facebook/ads/redexgen/X/L3;->A06:Z

    .line 49167
    iput-boolean v1, p0, Lcom/facebook/ads/redexgen/X/L3;->A05:Z

    .line 49168
    iput-wide p5, p0, Lcom/facebook/ads/redexgen/X/L3;->A02:J

    .line 49169
    iput v1, p0, Lcom/facebook/ads/redexgen/X/L3;->A00:I

    .line 49170
    iput-wide p1, p0, Lcom/facebook/ads/redexgen/X/L3;->A01:J

    .line 49171
    invoke-static {p4}, Lcom/facebook/ads/redexgen/X/L3;->A02(I)Z

    move-result v0

    const/4 v2, 0x1

    if-nez v0, :cond_2

    .line 49172
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/L3;->A0A:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/L3;->A09:Z

    if-nez v0, :cond_1

    .line 49173
    if-eqz p7, :cond_0

    .line 49174
    invoke-direct {p0, p3}, Lcom/facebook/ads/redexgen/X/L3;->A00(I)V

    .line 49175
    :cond_0
    iput-boolean v1, p0, Lcom/facebook/ads/redexgen/X/L3;->A0A:Z

    .line 49176
    :cond_1
    invoke-static {p4}, Lcom/facebook/ads/redexgen/X/L3;->A01(I)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 49177
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/L3;->A09:Z

    xor-int/2addr v0, v2

    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/L3;->A05:Z

    .line 49178
    iput-boolean v2, p0, Lcom/facebook/ads/redexgen/X/L3;->A09:Z

    .line 49179
    :cond_2
    const/16 v0, 0x10

    if-lt p4, v0, :cond_5

    const/16 v0, 0x15

    if-gt p4, v0, :cond_5

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/L3;->A08:Z

    .line 49180
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/L3;->A08:Z

    if-nez v0, :cond_3

    const/16 v0, 0x9

    if-gt p4, v0, :cond_4

    :cond_3
    const/4 v1, 0x1

    :cond_4
    iput-boolean v1, p0, Lcom/facebook/ads/redexgen/X/L3;->A07:Z

    sget-object v1, Lcom/facebook/ads/redexgen/X/L3;->A0D:[Ljava/lang/String;

    const/4 v0, 0x6

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v0, 0x1e

    if-eq v1, v0, :cond_6

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    .line 49181
    :cond_5
    const/4 v0, 0x0

    goto :goto_0

    .line 49182
    :cond_6
    sget-object v2, Lcom/facebook/ads/redexgen/X/L3;->A0D:[Ljava/lang/String;

    const-string v1, "HIa27EP0rmwgvhPEN5RK7GL0DsepbL"

    const/4 v0, 0x6

    aput-object v1, v2, v0

    return-void
.end method

.method public final A05(JIZ)V
    .locals 2

    .line 49183
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/L3;->A09:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/L3;->A06:Z

    if-eqz v0, :cond_1

    .line 49184
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/L3;->A08:Z

    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/L3;->A0B:Z

    .line 49185
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/L3;->A09:Z

    .line 49186
    :cond_0
    :goto_0
    return-void

    .line 49187
    :cond_1
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/L3;->A05:Z

    if-nez v0, :cond_2

    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/L3;->A06:Z

    if-eqz v0, :cond_0

    .line 49188
    :cond_2
    if-eqz p4, :cond_3

    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/L3;->A0A:Z

    if-eqz v0, :cond_3

    .line 49189
    iget-wide v0, p0, Lcom/facebook/ads/redexgen/X/L3;->A01:J

    sub-long/2addr p1, v0

    long-to-int v0, p1

    .line 49190
    .local v1, "nalUnitLength":I
    add-int/2addr p3, v0

    invoke-direct {p0, p3}, Lcom/facebook/ads/redexgen/X/L3;->A00(I)V

    .line 49191
    .end local v1    # "nalUnitLength":I
    :cond_3
    iget-wide v0, p0, Lcom/facebook/ads/redexgen/X/L3;->A01:J

    iput-wide v0, p0, Lcom/facebook/ads/redexgen/X/L3;->A03:J

    .line 49192
    iget-wide v0, p0, Lcom/facebook/ads/redexgen/X/L3;->A02:J

    iput-wide v0, p0, Lcom/facebook/ads/redexgen/X/L3;->A04:J

    .line 49193
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/L3;->A08:Z

    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/L3;->A0B:Z

    .line 49194
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/L3;->A0A:Z

    goto :goto_0
.end method

.method public final A06([BII)V
    .locals 2

    .line 49195
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/L3;->A07:Z

    if-eqz v0, :cond_0

    .line 49196
    add-int/lit8 v1, p2, 0x2

    iget v0, p0, Lcom/facebook/ads/redexgen/X/L3;->A00:I

    sub-int/2addr v1, v0

    .line 49197
    .local v0, "headerOffset":I
    if-ge v1, p3, :cond_2

    .line 49198
    aget-byte v0, p1, v1

    and-int/lit16 v0, v0, 0x80

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/L3;->A06:Z

    .line 49199
    iput-boolean v1, p0, Lcom/facebook/ads/redexgen/X/L3;->A07:Z

    .line 49200
    .end local v0    # "headerOffset":I
    :cond_0
    :goto_1
    return-void

    .line 49201
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 49202
    :cond_2
    iget v0, p0, Lcom/facebook/ads/redexgen/X/L3;->A00:I

    sub-int/2addr p3, p2

    add-int/2addr v0, p3

    iput v0, p0, Lcom/facebook/ads/redexgen/X/L3;->A00:I

    goto :goto_1
.end method
