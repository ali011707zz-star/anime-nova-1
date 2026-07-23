.class public final Lcom/facebook/ads/redexgen/X/lW;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/facebook/ads/redexgen/X/Kv;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/ads/androidx/media3/extractor/ts/Ac3Reader$State;
    }
.end annotation


# static fields
.field public static A0C:[B

.field public static A0D:[Ljava/lang/String;


# instance fields
.field public A00:I

.field public A01:I

.field public A02:I

.field public A03:J

.field public A04:J

.field public A05:Lcom/facebook/ads/redexgen/X/qI;

.field public A06:Lcom/facebook/ads/redexgen/X/Hd;

.field public A07:Ljava/lang/String;

.field public A08:Z

.field public final A09:Lcom/facebook/ads/redexgen/X/4u;

.field public final A0A:Lcom/facebook/ads/redexgen/X/4v;

.field public final A0B:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    .line 3195
    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "zgZfEJGGgdHtew2g1FfNkkcnB"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "zHXWmVVfspRqZTFEHweYGYwJXvEszQMx"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "7abqffqd10TBp3FWdGN7VvMrN7O1UkYM"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "p0MVW5l5"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "JyEkXe6y14TztCHpc8kpfDGRXJv0nuKA"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "euIGF7oBB7KZa"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "ak0CBs2Ex4lMz9dSuXO"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "PviIixxcvW6ZcpMh0sztGl9"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/lW;->A0D:[Ljava/lang/String;

    invoke-static {}, Lcom/facebook/ads/redexgen/X/lW;->A02()V

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 94643
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/lW;-><init>(Ljava/lang/String;)V

    .line 94644
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 2

    .line 94645
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 94646
    const/16 v0, 0x80

    new-array v1, v0, [B

    new-instance v0, Lcom/facebook/ads/redexgen/X/4u;

    invoke-direct {v0, v1}, Lcom/facebook/ads/redexgen/X/4u;-><init>([B)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/lW;->A09:Lcom/facebook/ads/redexgen/X/4u;

    .line 94647
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/lW;->A09:Lcom/facebook/ads/redexgen/X/4u;

    iget-object v1, v0, Lcom/facebook/ads/redexgen/X/4u;->A00:[B

    new-instance v0, Lcom/facebook/ads/redexgen/X/4v;

    invoke-direct {v0, v1}, Lcom/facebook/ads/redexgen/X/4v;-><init>([B)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/lW;->A0A:Lcom/facebook/ads/redexgen/X/4v;

    .line 94648
    const/4 v0, 0x0

    iput v0, p0, Lcom/facebook/ads/redexgen/X/lW;->A02:I

    .line 94649
    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    iput-wide v0, p0, Lcom/facebook/ads/redexgen/X/lW;->A04:J

    .line 94650
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/lW;->A0B:Ljava/lang/String;

    .line 94651
    return-void
.end method

.method public static A00(III)Ljava/lang/String;
    .locals 2

    sget-object v1, Lcom/facebook/ads/redexgen/X/lW;->A0C:[B

    add-int v0, p0, p1

    invoke-static {v1, p0, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p0

    const/4 v1, 0x0

    :goto_0
    array-length v0, p0

    if-ge v1, v0, :cond_0

    aget-byte v0, p0, v1

    xor-int/2addr v0, p2

    xor-int/lit8 v0, v0, 0x56

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
    .locals 6
    .annotation runtime Lorg/checkerframework/checker/nullness/qual/RequiresNonNull;
        value = {
            "output"
        }
    .end annotation

    .line 94652
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/lW;->A09:Lcom/facebook/ads/redexgen/X/4u;

    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/4u;->A08(I)V

    .line 94653
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/lW;->A09:Lcom/facebook/ads/redexgen/X/4u;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Gr;->A09(Lcom/facebook/ads/redexgen/X/4u;)Lcom/facebook/ads/redexgen/X/Gq;

    move-result-object v3

    .line 94654
    .local v0, "frameInfo":Lcom/facebook/ads/redexgen/X/Gq;
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/lW;->A05:Lcom/facebook/ads/redexgen/X/qI;

    if-eqz v0, :cond_0

    iget v5, v3, Lcom/facebook/ads/redexgen/X/Gq;->A01:I

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/lW;->A05:Lcom/facebook/ads/redexgen/X/qI;

    iget v4, v0, Lcom/facebook/ads/redexgen/X/qI;->A06:I

    sget-object v2, Lcom/facebook/ads/redexgen/X/lW;->A0D:[Ljava/lang/String;

    const/4 v0, 0x2

    aget-object v1, v2, v0

    const/4 v0, 0x6

    aget-object v0, v2, v0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eq v1, v0, :cond_4

    sget-object v2, Lcom/facebook/ads/redexgen/X/lW;->A0D:[Ljava/lang/String;

    const-string v1, "s5ZnNr7Ga7MlLfd70p6uFHM8x"

    const/4 v0, 0x0

    aput-object v1, v2, v0

    const-string v1, "utwzV9oXgtTkd"

    const/4 v0, 0x5

    aput-object v1, v2, v0

    if-ne v5, v4, :cond_0

    iget v4, v3, Lcom/facebook/ads/redexgen/X/Gq;->A04:I

    sget-object v2, Lcom/facebook/ads/redexgen/X/lW;->A0D:[Ljava/lang/String;

    const/4 v0, 0x4

    aget-object v1, v2, v0

    const/4 v0, 0x1

    aget-object v2, v2, v0

    const/16 v0, 0xd

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v1, v0, :cond_3

    sget-object v2, Lcom/facebook/ads/redexgen/X/lW;->A0D:[Ljava/lang/String;

    const-string v1, "MPTvnFyqCCYkwFwXTKwYW3O2KaIbPHbI"

    const/4 v0, 0x2

    aput-object v1, v2, v0

    const-string v1, "dVnQ4greYxNN5pQgdCf"

    const/4 v0, 0x6

    aput-object v1, v2, v0

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/lW;->A05:Lcom/facebook/ads/redexgen/X/qI;

    iget v0, v0, Lcom/facebook/ads/redexgen/X/qI;->A0G:I

    if-ne v4, v0, :cond_0

    iget-object v1, v3, Lcom/facebook/ads/redexgen/X/Gq;->A06:Ljava/lang/String;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/lW;->A05:Lcom/facebook/ads/redexgen/X/qI;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/qI;->A0W:Ljava/lang/String;

    .line 94655
    invoke-static {v1, v0}, Lcom/facebook/ads/redexgen/X/5C;->A1E(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 94656
    :cond_0
    new-instance v1, Lcom/facebook/ads/redexgen/X/2p;

    invoke-direct {v1}, Lcom/facebook/ads/redexgen/X/2p;-><init>()V

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/lW;->A07:Ljava/lang/String;

    .line 94657
    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/2p;->A0y(Ljava/lang/String;)Lcom/facebook/ads/redexgen/X/2p;

    move-result-object v1

    iget-object v0, v3, Lcom/facebook/ads/redexgen/X/Gq;->A06:Ljava/lang/String;

    .line 94658
    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/2p;->A11(Ljava/lang/String;)Lcom/facebook/ads/redexgen/X/2p;

    move-result-object v1

    iget v0, v3, Lcom/facebook/ads/redexgen/X/Gq;->A01:I

    .line 94659
    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/2p;->A0b(I)Lcom/facebook/ads/redexgen/X/2p;

    move-result-object v1

    iget v0, v3, Lcom/facebook/ads/redexgen/X/Gq;->A04:I

    .line 94660
    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/2p;->A0m(I)Lcom/facebook/ads/redexgen/X/2p;

    move-result-object v1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/lW;->A0B:Ljava/lang/String;

    .line 94661
    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/2p;->A10(Ljava/lang/String;)Lcom/facebook/ads/redexgen/X/2p;

    move-result-object v1

    iget v0, v3, Lcom/facebook/ads/redexgen/X/Gq;->A00:I

    .line 94662
    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/2p;->A0j(I)Lcom/facebook/ads/redexgen/X/2p;

    move-result-object v4

    .line 94663
    .local v1, "formatBuilder":Lcom/facebook/ads/redexgen/X/2p;
    const/4 v2, 0x0

    const/16 v1, 0x9

    const/16 v0, 0x1f

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/lW;->A00(III)Ljava/lang/String;

    move-result-object v1

    iget-object v0, v3, Lcom/facebook/ads/redexgen/X/Gq;->A06:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 94664
    iget v0, v3, Lcom/facebook/ads/redexgen/X/Gq;->A00:I

    invoke-virtual {v4, v0}, Lcom/facebook/ads/redexgen/X/2p;->A0a(I)Lcom/facebook/ads/redexgen/X/2p;

    .line 94665
    :cond_1
    invoke-virtual {v4}, Lcom/facebook/ads/redexgen/X/2p;->A14()Lcom/facebook/ads/redexgen/X/qI;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/lW;->A05:Lcom/facebook/ads/redexgen/X/qI;

    .line 94666
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/lW;->A06:Lcom/facebook/ads/redexgen/X/Hd;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/lW;->A05:Lcom/facebook/ads/redexgen/X/qI;

    invoke-interface {v1, v0}, Lcom/facebook/ads/redexgen/X/Hd;->A6e(Lcom/facebook/ads/redexgen/X/qI;)V

    .line 94667
    .end local v1    # "formatBuilder":Lcom/facebook/ads/redexgen/X/2p;
    :cond_2
    iget v0, v3, Lcom/facebook/ads/redexgen/X/Gq;->A02:I

    iput v0, p0, Lcom/facebook/ads/redexgen/X/lW;->A01:I

    .line 94668
    iget v0, v3, Lcom/facebook/ads/redexgen/X/Gq;->A03:I

    int-to-long v2, v0

    const-wide/32 v0, 0xf4240

    mul-long/2addr v2, v0

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/lW;->A05:Lcom/facebook/ads/redexgen/X/qI;

    iget v0, v0, Lcom/facebook/ads/redexgen/X/qI;->A0G:I

    int-to-long v0, v0

    div-long/2addr v2, v0

    iput-wide v2, p0, Lcom/facebook/ads/redexgen/X/lW;->A03:J

    .line 94669
    return-void

    :cond_3
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_4
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
.end method

.method public static A02()V
    .locals 1

    const/16 v0, 0x9

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/facebook/ads/redexgen/X/lW;->A0C:[B

    return-void

    :array_0
    .array-data 1
        0x28t
        0x3ct
        0x2dt
        0x20t
        0x26t
        0x66t
        0x28t
        0x2at
        0x7at
    .end array-data
.end method

.method private A03(Lcom/facebook/ads/redexgen/X/4v;)Z
    .locals 5

    .line 94670
    :goto_0
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/4v;->A07()I

    move-result v0

    const/4 v4, 0x0

    if-lez v0, :cond_5

    .line 94671
    iget-boolean v3, p0, Lcom/facebook/ads/redexgen/X/lW;->A08:Z

    sget-object v1, Lcom/facebook/ads/redexgen/X/lW;->A0D:[Ljava/lang/String;

    const/4 v0, 0x3

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v0, 0x8

    if-eq v1, v0, :cond_0

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_0
    sget-object v2, Lcom/facebook/ads/redexgen/X/lW;->A0D:[Ljava/lang/String;

    const-string v1, "9XFIg7618hJvvA4xETZzayJ4sl88kXfd"

    const/4 v0, 0x4

    aput-object v1, v2, v0

    const-string v1, "F6kFQyxnROPq81yNs7RnOkiGPjgAvEmB"

    const/4 v0, 0x1

    aput-object v1, v2, v0

    const/16 v1, 0xb

    const/4 v0, 0x1

    if-nez v3, :cond_2

    .line 94672
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/4v;->A0I()I

    move-result v0

    if-ne v0, v1, :cond_1

    const/4 v4, 0x1

    :cond_1
    iput-boolean v4, p0, Lcom/facebook/ads/redexgen/X/lW;->A08:Z

    .line 94673
    goto :goto_0

    .line 94674
    :cond_2
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/4v;->A0I()I

    move-result v3

    .line 94675
    .local v0, "secondByte":I
    const/16 v2, 0x77

    if-ne v3, v2, :cond_3

    .line 94676
    iput-boolean v4, p0, Lcom/facebook/ads/redexgen/X/lW;->A08:Z

    .line 94677
    return v0

    .line 94678
    :cond_3
    if-ne v3, v1, :cond_4

    const/4 v4, 0x1

    :cond_4
    iput-boolean v4, p0, Lcom/facebook/ads/redexgen/X/lW;->A08:Z

    .line 94679
    .end local v0    # "secondByte":I
    goto :goto_0

    .line 94680
    :cond_5
    return v4
.end method

.method private A04(Lcom/facebook/ads/redexgen/X/4v;[BI)Z
    .locals 2

    .line 94681
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/4v;->A07()I

    move-result v1

    iget v0, p0, Lcom/facebook/ads/redexgen/X/lW;->A00:I

    sub-int v0, p3, v0

    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 94682
    .local v0, "bytesToRead":I
    iget v0, p0, Lcom/facebook/ads/redexgen/X/lW;->A00:I

    invoke-virtual {p1, p2, v0, v1}, Lcom/facebook/ads/redexgen/X/4v;->A0k([BII)V

    .line 94683
    iget v0, p0, Lcom/facebook/ads/redexgen/X/lW;->A00:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/facebook/ads/redexgen/X/lW;->A00:I

    .line 94684
    iget v0, p0, Lcom/facebook/ads/redexgen/X/lW;->A00:I

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
    .locals 8

    .line 94685
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/lW;->A06:Lcom/facebook/ads/redexgen/X/Hd;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/3y;->A02(Ljava/lang/Object;)Ljava/lang/Object;

    .line 94686
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/4v;->A07()I

    move-result v0

    if-lez v0, :cond_3

    .line 94687
    iget v3, p0, Lcom/facebook/ads/redexgen/X/lW;->A02:I

    const/4 v4, 0x2

    sget-object v2, Lcom/facebook/ads/redexgen/X/lW;->A0D:[Ljava/lang/String;

    const/4 v0, 0x0

    aget-object v1, v2, v0

    const/4 v0, 0x5

    aget-object v0, v2, v0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eq v1, v0, :cond_2

    sget-object v2, Lcom/facebook/ads/redexgen/X/lW;->A0D:[Ljava/lang/String;

    const-string v1, "xuhMWsLm7IhyfpFjlZpQdmw9F"

    const/4 v0, 0x0

    aput-object v1, v2, v0

    const-string v1, "BOgMYXTSIypYk"

    const/4 v0, 0x5

    aput-object v1, v2, v0

    const/4 v0, 0x0

    packed-switch v3, :pswitch_data_0

    goto :goto_0

    .line 94688
    :pswitch_0
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/4v;->A07()I

    move-result v3

    iget v2, p0, Lcom/facebook/ads/redexgen/X/lW;->A01:I

    iget v1, p0, Lcom/facebook/ads/redexgen/X/lW;->A00:I

    sub-int/2addr v2, v1

    invoke-static {v3, v2}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 94689
    .local v0, "bytesToRead":I
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/lW;->A06:Lcom/facebook/ads/redexgen/X/Hd;

    invoke-interface {v1, p1, v2}, Lcom/facebook/ads/redexgen/X/Hd;->AIr(Lcom/facebook/ads/redexgen/X/4v;I)V

    .line 94690
    iget v1, p0, Lcom/facebook/ads/redexgen/X/lW;->A00:I

    add-int/2addr v1, v2

    iput v1, p0, Lcom/facebook/ads/redexgen/X/lW;->A00:I

    .line 94691
    iget v2, p0, Lcom/facebook/ads/redexgen/X/lW;->A00:I

    iget v1, p0, Lcom/facebook/ads/redexgen/X/lW;->A01:I

    if-ne v2, v1, :cond_0

    .line 94692
    iget-wide v4, p0, Lcom/facebook/ads/redexgen/X/lW;->A04:J

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v1, v4, v2

    if-eqz v1, :cond_1

    .line 94693
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/lW;->A06:Lcom/facebook/ads/redexgen/X/Hd;

    iget-wide v2, p0, Lcom/facebook/ads/redexgen/X/lW;->A04:J

    iget v5, p0, Lcom/facebook/ads/redexgen/X/lW;->A01:I

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v4, 0x1

    invoke-interface/range {v1 .. v7}, Lcom/facebook/ads/redexgen/X/Hd;->AIu(JIIILcom/facebook/ads/redexgen/X/Hb;)V

    .line 94694
    iget-wide v3, p0, Lcom/facebook/ads/redexgen/X/lW;->A04:J

    iget-wide v1, p0, Lcom/facebook/ads/redexgen/X/lW;->A03:J

    add-long/2addr v3, v1

    iput-wide v3, p0, Lcom/facebook/ads/redexgen/X/lW;->A04:J

    .line 94695
    :cond_1
    iput v0, p0, Lcom/facebook/ads/redexgen/X/lW;->A02:I

    goto :goto_0

    .line 94696
    .end local v0    # "bytesToRead":I
    :pswitch_1
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/lW;->A0A:Lcom/facebook/ads/redexgen/X/4v;

    invoke-virtual {v1}, Lcom/facebook/ads/redexgen/X/4v;->A0l()[B

    move-result-object v1

    const/16 v2, 0x80

    invoke-direct {p0, p1, v1, v2}, Lcom/facebook/ads/redexgen/X/lW;->A04(Lcom/facebook/ads/redexgen/X/4v;[BI)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 94697
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/lW;->A01()V

    .line 94698
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/lW;->A0A:Lcom/facebook/ads/redexgen/X/4v;

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/4v;->A0f(I)V

    .line 94699
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/lW;->A06:Lcom/facebook/ads/redexgen/X/Hd;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/lW;->A0A:Lcom/facebook/ads/redexgen/X/4v;

    invoke-interface {v1, v0, v2}, Lcom/facebook/ads/redexgen/X/Hd;->AIr(Lcom/facebook/ads/redexgen/X/4v;I)V

    .line 94700
    iput v4, p0, Lcom/facebook/ads/redexgen/X/lW;->A02:I

    goto/16 :goto_0

    .line 94701
    :pswitch_2
    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/lW;->A03(Lcom/facebook/ads/redexgen/X/4v;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 94702
    const/4 v3, 0x1

    iput v3, p0, Lcom/facebook/ads/redexgen/X/lW;->A02:I

    .line 94703
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/lW;->A0A:Lcom/facebook/ads/redexgen/X/4v;

    invoke-virtual {v1}, Lcom/facebook/ads/redexgen/X/4v;->A0l()[B

    move-result-object v2

    const/16 v1, 0xb

    aput-byte v1, v2, v0

    .line 94704
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/lW;->A0A:Lcom/facebook/ads/redexgen/X/4v;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/4v;->A0l()[B

    move-result-object v1

    const/16 v0, 0x77

    aput-byte v0, v1, v3

    .line 94705
    iput v4, p0, Lcom/facebook/ads/redexgen/X/lW;->A00:I

    goto/16 :goto_0

    .line 94706
    :cond_2
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    .line 94707
    :cond_3
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final A5c(Lcom/facebook/ads/redexgen/X/HA;Lcom/facebook/ads/redexgen/X/LG;)V
    .locals 2

    .line 94708
    invoke-virtual {p2}, Lcom/facebook/ads/redexgen/X/LG;->A05()V

    .line 94709
    invoke-virtual {p2}, Lcom/facebook/ads/redexgen/X/LG;->A04()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/lW;->A07:Ljava/lang/String;

    .line 94710
    invoke-virtual {p2}, Lcom/facebook/ads/redexgen/X/LG;->A03()I

    move-result v1

    const/4 v0, 0x1

    invoke-interface {p1, v1, v0}, Lcom/facebook/ads/redexgen/X/HA;->AKS(II)Lcom/facebook/ads/redexgen/X/Hd;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/lW;->A06:Lcom/facebook/ads/redexgen/X/Hd;

    .line 94711
    return-void
.end method

.method public final AGp()V
    .locals 0

    .line 94712
    return-void
.end method

.method public final AGq(JI)V
    .locals 3

    .line 94713
    const-wide v1, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v0, p1, v1

    if-eqz v0, :cond_0

    .line 94714
    iput-wide p1, p0, Lcom/facebook/ads/redexgen/X/lW;->A04:J

    .line 94715
    :cond_0
    return-void
.end method

.method public final AJ5()V
    .locals 2

    .line 94716
    const/4 v0, 0x0

    iput v0, p0, Lcom/facebook/ads/redexgen/X/lW;->A02:I

    .line 94717
    iput v0, p0, Lcom/facebook/ads/redexgen/X/lW;->A00:I

    .line 94718
    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/lW;->A08:Z

    .line 94719
    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    iput-wide v0, p0, Lcom/facebook/ads/redexgen/X/lW;->A04:J

    .line 94720
    return-void
.end method
