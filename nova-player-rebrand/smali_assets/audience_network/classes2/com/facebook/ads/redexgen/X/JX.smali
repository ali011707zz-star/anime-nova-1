.class public final Lcom/facebook/ads/redexgen/X/JX;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static A0B:[B

.field public static A0C:[Ljava/lang/String;


# instance fields
.field public A00:I

.field public A01:I

.field public A02:I

.field public A03:I

.field public A04:I

.field public A05:J

.field public A06:J

.field public A07:J

.field public A08:J

.field public final A09:[I

.field public final A0A:Lcom/facebook/ads/redexgen/X/4v;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    .line 835
    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "k49nAlN8KevTPYFSOASLph6sBsYk4fa7"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "ZHcqIGWhgUaBv559uPYodmfdla4z6YNf"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "jyudHMVcZvePNcLp"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "lBa1kLRes0ajIcq6EZkhg1VE2ZO4hxQe"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "m2AqQobddrkuylEWDBAfxEjZEg6GjKoy"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "b8nnr3L8PmBoSjec6BWbo41G2gNha3bi"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, ""

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, ""

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/JX;->A0C:[Ljava/lang/String;

    invoke-static {}, Lcom/facebook/ads/redexgen/X/JX;->A01()V

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 43081
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43082
    const/16 v1, 0xff

    new-array v0, v1, [I

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/JX;->A09:[I

    .line 43083
    new-instance v0, Lcom/facebook/ads/redexgen/X/4v;

    invoke-direct {v0, v1}, Lcom/facebook/ads/redexgen/X/4v;-><init>(I)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/JX;->A0A:Lcom/facebook/ads/redexgen/X/4v;

    return-void
.end method

.method public static A00(III)Ljava/lang/String;
    .locals 2

    sget-object v1, Lcom/facebook/ads/redexgen/X/JX;->A0B:[B

    add-int v0, p0, p1

    invoke-static {v1, p0, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p0

    const/4 v1, 0x0

    :goto_0
    array-length v0, p0

    if-ge v1, v0, :cond_0

    aget-byte v0, p0, v1

    xor-int/2addr v0, p2

    xor-int/lit8 v0, v0, 0x15

    int-to-byte v0, v0

    aput-byte v0, p0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p0}, Ljava/lang/String;-><init>([B)V

    return-object v0
.end method

.method public static A01()V
    .locals 1

    const/16 v0, 0x1f

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/facebook/ads/redexgen/X/JX;->A0B:[B

    return-void

    :array_0
    .array-data 1
        0x37t
        0x2ct
        0x31t
        0x37t
        0x32t
        0x32t
        0x2dt
        0x30t
        0x36t
        0x27t
        0x26t
        0x62t
        0x20t
        0x2bt
        0x36t
        0x62t
        0x31t
        0x36t
        0x30t
        0x27t
        0x23t
        0x2ft
        0x62t
        0x30t
        0x27t
        0x34t
        0x2bt
        0x31t
        0x2bt
        0x2dt
        0x2ct
    .end array-data
.end method


# virtual methods
.method public final A02()V
    .locals 3

    .line 43084
    const/4 v2, 0x0

    iput v2, p0, Lcom/facebook/ads/redexgen/X/JX;->A03:I

    .line 43085
    iput v2, p0, Lcom/facebook/ads/redexgen/X/JX;->A04:I

    .line 43086
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/facebook/ads/redexgen/X/JX;->A05:J

    .line 43087
    iput-wide v0, p0, Lcom/facebook/ads/redexgen/X/JX;->A08:J

    .line 43088
    iput-wide v0, p0, Lcom/facebook/ads/redexgen/X/JX;->A07:J

    .line 43089
    iput-wide v0, p0, Lcom/facebook/ads/redexgen/X/JX;->A06:J

    .line 43090
    iput v2, p0, Lcom/facebook/ads/redexgen/X/JX;->A02:I

    .line 43091
    iput v2, p0, Lcom/facebook/ads/redexgen/X/JX;->A01:I

    .line 43092
    iput v2, p0, Lcom/facebook/ads/redexgen/X/JX;->A00:I

    .line 43093
    return-void
.end method

.method public final A03(Lcom/facebook/ads/redexgen/X/ms;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 43094
    const-wide/16 v0, -0x1

    invoke-virtual {p0, p1, v0, v1}, Lcom/facebook/ads/redexgen/X/JX;->A04(Lcom/facebook/ads/redexgen/X/ms;J)Z

    move-result v0

    return v0
.end method

.method public final A04(Lcom/facebook/ads/redexgen/X/ms;J)Z
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 43095
    invoke-interface {p1}, Lcom/facebook/ads/redexgen/X/ms;->A8n()J

    move-result-wide v5

    invoke-interface {p1}, Lcom/facebook/ads/redexgen/X/ms;->A8i()J

    move-result-wide v1

    const/4 v4, 0x0

    const/4 v3, 0x1

    cmp-long v0, v5, v1

    if-nez v0, :cond_2

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/3y;->A07(Z)V

    .line 43096
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/JX;->A0A:Lcom/facebook/ads/redexgen/X/4v;

    const/4 v7, 0x4

    invoke-virtual {v0, v7}, Lcom/facebook/ads/redexgen/X/4v;->A0d(I)V

    .line 43097
    :goto_1
    const-wide/16 v8, -0x1

    cmp-long v0, p2, v8

    if-eqz v0, :cond_0

    invoke-interface {p1}, Lcom/facebook/ads/redexgen/X/ms;->A8n()J

    move-result-wide v5

    const-wide/16 v0, 0x4

    add-long/2addr v5, v0

    cmp-long v0, v5, p2

    if-gez v0, :cond_4

    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/JX;->A0A:Lcom/facebook/ads/redexgen/X/4v;

    .line 43098
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/4v;->A0l()[B

    move-result-object v0

    .line 43099
    invoke-static {p1, v0, v4, v7, v3}, Lcom/facebook/ads/redexgen/X/HB;->A04(Lcom/facebook/ads/redexgen/X/ms;[BIIZ)Z

    move-result v5

    sget-object v1, Lcom/facebook/ads/redexgen/X/JX;->A0C:[Ljava/lang/String;

    const/4 v0, 0x4

    aget-object v1, v1, v0

    const/16 v0, 0x1e

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x35

    if-eq v1, v0, :cond_3

    sget-object v2, Lcom/facebook/ads/redexgen/X/JX;->A0C:[Ljava/lang/String;

    const-string v1, "pwarRjQHbZVi4rcQZ7lOEWakVYY08Z6g"

    const/4 v0, 0x0

    aput-object v1, v2, v0

    if-eqz v5, :cond_4

    .line 43100
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/JX;->A0A:Lcom/facebook/ads/redexgen/X/4v;

    invoke-virtual {v0, v4}, Lcom/facebook/ads/redexgen/X/4v;->A0f(I)V

    .line 43101
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/JX;->A0A:Lcom/facebook/ads/redexgen/X/4v;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/4v;->A0Q()J

    move-result-wide v5

    const-wide/32 v1, 0x4f676753

    cmp-long v0, v5, v1

    if-nez v0, :cond_1

    .line 43102
    invoke-interface {p1}, Lcom/facebook/ads/redexgen/X/ms;->AIl()V

    .line 43103
    return v3

    .line 43104
    :cond_1
    invoke-interface {p1, v3}, Lcom/facebook/ads/redexgen/X/ms;->AK3(I)V

    goto :goto_1

    .line 43105
    :cond_2
    const/4 v0, 0x0

    goto :goto_0

    :cond_3
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    .line 43106
    :cond_4
    :goto_2
    cmp-long v0, p2, v8

    if-eqz v0, :cond_5

    invoke-interface {p1}, Lcom/facebook/ads/redexgen/X/ms;->A8n()J

    move-result-wide v1

    cmp-long v0, v1, p2

    if-gez v0, :cond_7

    .line 43107
    :cond_5
    invoke-interface {p1, v3}, Lcom/facebook/ads/redexgen/X/ms;->AK0(I)I

    move-result v6

    const/4 v5, -0x1

    sget-object v1, Lcom/facebook/ads/redexgen/X/JX;->A0C:[Ljava/lang/String;

    const/4 v0, 0x0

    aget-object v1, v1, v0

    const/16 v0, 0x1a

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x59

    if-eq v1, v0, :cond_6

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_6
    sget-object v2, Lcom/facebook/ads/redexgen/X/JX;->A0C:[Ljava/lang/String;

    const-string v1, "68cxMfwSaXaldqHF3br6ENxggzqDHiHt"

    const/4 v0, 0x3

    aput-object v1, v2, v0

    const-string v1, "gDTREffoH4ayxQFZG5Xi34FUHKUeipYB"

    const/4 v0, 0x1

    aput-object v1, v2, v0

    if-eq v6, v5, :cond_7

    goto :goto_2

    .line 43108
    :cond_7
    return v4
.end method

.method public final A05(Lcom/facebook/ads/redexgen/X/ms;Z)Z
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 43109
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/JX;->A02()V

    .line 43110
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/JX;->A0A:Lcom/facebook/ads/redexgen/X/4v;

    const/16 v4, 0x1b

    invoke-virtual {v0, v4}, Lcom/facebook/ads/redexgen/X/4v;->A0d(I)V

    .line 43111
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/JX;->A0A:Lcom/facebook/ads/redexgen/X/4v;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/4v;->A0l()[B

    move-result-object v0

    const/4 v3, 0x0

    invoke-static {p1, v0, v3, v4, p2}, Lcom/facebook/ads/redexgen/X/HB;->A04(Lcom/facebook/ads/redexgen/X/ms;[BIIZ)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/JX;->A0A:Lcom/facebook/ads/redexgen/X/4v;

    .line 43112
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/4v;->A0Q()J

    move-result-wide v5

    const-wide/32 v1, 0x4f676753

    cmp-long v0, v5, v1

    if-eqz v0, :cond_1

    .line 43113
    :cond_0
    return v3

    .line 43114
    :cond_1
    iget-object v5, p0, Lcom/facebook/ads/redexgen/X/JX;->A0A:Lcom/facebook/ads/redexgen/X/4v;

    sget-object v1, Lcom/facebook/ads/redexgen/X/JX;->A0C:[Ljava/lang/String;

    const/4 v0, 0x0

    aget-object v1, v1, v0

    const/16 v0, 0x1a

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x59

    if-eq v1, v0, :cond_2

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_2
    sget-object v2, Lcom/facebook/ads/redexgen/X/JX;->A0C:[Ljava/lang/String;

    const-string v1, "M9XA72oAU7"

    const/4 v0, 0x2

    aput-object v1, v2, v0

    invoke-virtual {v5}, Lcom/facebook/ads/redexgen/X/4v;->A0I()I

    move-result v0

    iput v0, p0, Lcom/facebook/ads/redexgen/X/JX;->A03:I

    .line 43115
    iget v0, p0, Lcom/facebook/ads/redexgen/X/JX;->A03:I

    if-eqz v0, :cond_4

    .line 43116
    if-eqz p2, :cond_3

    .line 43117
    return v3

    .line 43118
    :cond_3
    const/4 v2, 0x0

    const/16 v1, 0x1f

    const/16 v0, 0x57

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/JX;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/3K;->A00(Ljava/lang/String;)Lcom/facebook/ads/redexgen/X/3K;

    move-result-object v0

    throw v0

    .line 43119
    :cond_4
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/JX;->A0A:Lcom/facebook/ads/redexgen/X/4v;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/4v;->A0I()I

    move-result v0

    iput v0, p0, Lcom/facebook/ads/redexgen/X/JX;->A04:I

    .line 43120
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/JX;->A0A:Lcom/facebook/ads/redexgen/X/4v;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/4v;->A0N()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/facebook/ads/redexgen/X/JX;->A05:J

    .line 43121
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/JX;->A0A:Lcom/facebook/ads/redexgen/X/4v;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/4v;->A0O()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/facebook/ads/redexgen/X/JX;->A08:J

    .line 43122
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/JX;->A0A:Lcom/facebook/ads/redexgen/X/4v;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/4v;->A0O()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/facebook/ads/redexgen/X/JX;->A07:J

    .line 43123
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/JX;->A0A:Lcom/facebook/ads/redexgen/X/4v;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/4v;->A0O()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/facebook/ads/redexgen/X/JX;->A06:J

    .line 43124
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/JX;->A0A:Lcom/facebook/ads/redexgen/X/4v;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/4v;->A0I()I

    move-result v0

    iput v0, p0, Lcom/facebook/ads/redexgen/X/JX;->A02:I

    .line 43125
    iget v0, p0, Lcom/facebook/ads/redexgen/X/JX;->A02:I

    add-int/2addr v0, v4

    iput v0, p0, Lcom/facebook/ads/redexgen/X/JX;->A01:I

    .line 43126
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/JX;->A0A:Lcom/facebook/ads/redexgen/X/4v;

    iget v0, p0, Lcom/facebook/ads/redexgen/X/JX;->A02:I

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/4v;->A0d(I)V

    .line 43127
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/JX;->A0A:Lcom/facebook/ads/redexgen/X/4v;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/4v;->A0l()[B

    move-result-object v1

    iget v0, p0, Lcom/facebook/ads/redexgen/X/JX;->A02:I

    invoke-static {p1, v1, v3, v0, p2}, Lcom/facebook/ads/redexgen/X/HB;->A04(Lcom/facebook/ads/redexgen/X/ms;[BIIZ)Z

    move-result v0

    if-nez v0, :cond_5

    .line 43128
    return v3

    .line 43129
    :cond_5
    const/4 v2, 0x0

    .local v0, "i":I
    :goto_0
    iget v0, p0, Lcom/facebook/ads/redexgen/X/JX;->A02:I

    if-ge v2, v0, :cond_6

    .line 43130
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/JX;->A09:[I

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/JX;->A0A:Lcom/facebook/ads/redexgen/X/4v;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/4v;->A0I()I

    move-result v0

    aput v0, v1, v2

    .line 43131
    iget v1, p0, Lcom/facebook/ads/redexgen/X/JX;->A00:I

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/JX;->A09:[I

    aget v0, v0, v2

    add-int/2addr v1, v0

    iput v1, p0, Lcom/facebook/ads/redexgen/X/JX;->A00:I

    .line 43132
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 43133
    .end local v0    # "i":I
    :cond_6
    const/4 v0, 0x1

    return v0
.end method
