.class public final Lcom/facebook/ads/redexgen/X/lU;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/facebook/ads/redexgen/X/H9;


# static fields
.field public static A03:[Ljava/lang/String;

.field public static final A04:Lcom/facebook/ads/redexgen/X/HD;


# instance fields
.field public A00:Z

.field public final A01:Lcom/facebook/ads/redexgen/X/4v;

.field public final A02:Lcom/facebook/ads/redexgen/X/lT;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    .line 3194
    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "MPtFkEiIPrQJk6C68eapJqoHhp6zbLCW"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "P1eCuU1JvuL46IL3Xh4EOSVLMCcJCOjT"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "W4WpROs4sm5j6Tf0ztR0Y16lEj4WGQ"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "4wLB1kD6U2fJ8LvWKaQYimBngFnzynrL"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "j1g6H1G7HHWswscQmxGermXRDRDROF5f"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "vYNShvJ8K3s57yIlGqGLfJHMZKUSU02I"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "LyEFdcIU17ooQUQ0BZMXWJLXZvdofmIX"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "P7XGal"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/lU;->A03:[Ljava/lang/String;

    new-instance v0, Lcom/facebook/ads/redexgen/X/lV;

    invoke-direct {v0}, Lcom/facebook/ads/redexgen/X/lV;-><init>()V

    sput-object v0, Lcom/facebook/ads/redexgen/X/lU;->A04:Lcom/facebook/ads/redexgen/X/HD;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 94587
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 94588
    new-instance v0, Lcom/facebook/ads/redexgen/X/lT;

    invoke-direct {v0}, Lcom/facebook/ads/redexgen/X/lT;-><init>()V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/lU;->A02:Lcom/facebook/ads/redexgen/X/lT;

    .line 94589
    const/16 v1, 0x4000

    new-instance v0, Lcom/facebook/ads/redexgen/X/4v;

    invoke-direct {v0, v1}, Lcom/facebook/ads/redexgen/X/4v;-><init>(I)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/lU;->A01:Lcom/facebook/ads/redexgen/X/4v;

    .line 94590
    return-void
.end method

.method public static synthetic A00()[Lcom/facebook/ads/redexgen/X/H9;
    .locals 3

    .line 94591
    const/4 v0, 0x1

    new-array v2, v0, [Lcom/facebook/ads/redexgen/X/H9;

    new-instance v1, Lcom/facebook/ads/redexgen/X/lU;

    invoke-direct {v1}, Lcom/facebook/ads/redexgen/X/lU;-><init>()V

    const/4 v0, 0x0

    aput-object v1, v2, v0

    return-object v2
.end method


# virtual methods
.method public final AAC(Lcom/facebook/ads/redexgen/X/HA;)V
    .locals 4

    .line 94592
    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/lU;->A02:Lcom/facebook/ads/redexgen/X/lT;

    const/4 v2, 0x0

    const/4 v1, 0x1

    new-instance v0, Lcom/facebook/ads/redexgen/X/LG;

    invoke-direct {v0, v2, v1}, Lcom/facebook/ads/redexgen/X/LG;-><init>(II)V

    invoke-virtual {v3, p1, v0}, Lcom/facebook/ads/redexgen/X/lT;->A5c(Lcom/facebook/ads/redexgen/X/HA;Lcom/facebook/ads/redexgen/X/LG;)V

    .line 94593
    invoke-interface {p1}, Lcom/facebook/ads/redexgen/X/HA;->A6O()V

    .line 94594
    const-wide v1, -0x7fffffffffffffffL    # -4.9E-324

    new-instance v0, Lcom/facebook/ads/redexgen/X/mn;

    invoke-direct {v0, v1, v2}, Lcom/facebook/ads/redexgen/X/mn;-><init>(J)V

    invoke-interface {p1, v0}, Lcom/facebook/ads/redexgen/X/HA;->AJ7(Lcom/facebook/ads/redexgen/X/HY;)V

    .line 94595
    return-void
.end method

.method public final AHL(Lcom/facebook/ads/redexgen/X/ms;Lcom/facebook/ads/redexgen/X/HV;)I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 94596
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/lU;->A01:Lcom/facebook/ads/redexgen/X/4v;

    .line 94597
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/4v;->A0l()[B

    move-result-object v1

    const/16 v0, 0x4000

    const/4 v4, 0x0

    invoke-interface {p1, v1, v4, v0}, Lcom/facebook/ads/redexgen/X/ms;->read([BII)I

    move-result v1

    .line 94598
    .local v0, "bytesRead":I
    const/4 v0, -0x1

    if-ne v1, v0, :cond_0

    .line 94599
    return v0

    .line 94600
    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/lU;->A01:Lcom/facebook/ads/redexgen/X/4v;

    invoke-virtual {v0, v4}, Lcom/facebook/ads/redexgen/X/4v;->A0f(I)V

    .line 94601
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/lU;->A01:Lcom/facebook/ads/redexgen/X/4v;

    invoke-virtual {v0, v1}, Lcom/facebook/ads/redexgen/X/4v;->A0e(I)V

    .line 94602
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/lU;->A00:Z

    if-nez v0, :cond_1

    .line 94603
    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/lU;->A02:Lcom/facebook/ads/redexgen/X/lT;

    const-wide/16 v1, 0x0

    const/4 v0, 0x4

    invoke-virtual {v3, v1, v2, v0}, Lcom/facebook/ads/redexgen/X/lT;->AGq(JI)V

    .line 94604
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/lU;->A00:Z

    .line 94605
    :cond_1
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/lU;->A02:Lcom/facebook/ads/redexgen/X/lT;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/lU;->A01:Lcom/facebook/ads/redexgen/X/4v;

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/lT;->A5A(Lcom/facebook/ads/redexgen/X/4v;)V

    .line 94606
    return v4
.end method

.method public final AHb()V
    .locals 0

    .line 94607
    return-void
.end method

.method public final AJ6(JJ)V
    .locals 1

    .line 94608
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/lU;->A00:Z

    .line 94609
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/lU;->A02:Lcom/facebook/ads/redexgen/X/lT;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/lT;->AJ5()V

    .line 94610
    return-void
.end method

.method public final AK5(Lcom/facebook/ads/redexgen/X/ms;)Z
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 94611
    const/16 v5, 0xa

    new-instance v4, Lcom/facebook/ads/redexgen/X/4v;

    invoke-direct {v4, v5}, Lcom/facebook/ads/redexgen/X/4v;-><init>(I)V

    .line 94612
    .local v0, "scratch":Lcom/facebook/ads/redexgen/X/4v;
    const/4 v3, 0x0

    .line 94613
    .local v2, "startPosition":I
    :goto_0
    invoke-virtual {v4}, Lcom/facebook/ads/redexgen/X/4v;->A0l()[B

    move-result-object v6

    sget-object v1, Lcom/facebook/ads/redexgen/X/lU;->A03:[Ljava/lang/String;

    const/4 v0, 0x3

    aget-object v1, v1, v0

    const/16 v0, 0xa

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x66

    if-eq v1, v0, :cond_0

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_0
    sget-object v2, Lcom/facebook/ads/redexgen/X/lU;->A03:[Ljava/lang/String;

    const-string v1, "dKI30oOFAvfBQiacazr45UFgS6k9aj5a"

    const/4 v0, 0x3

    aput-object v1, v2, v0

    const/4 v2, 0x0

    invoke-interface {p1, v6, v2, v5}, Lcom/facebook/ads/redexgen/X/ms;->AGt([BII)V

    .line 94614
    invoke-virtual {v4, v2}, Lcom/facebook/ads/redexgen/X/4v;->A0f(I)V

    .line 94615
    invoke-virtual {v4}, Lcom/facebook/ads/redexgen/X/4v;->A0K()I

    move-result v1

    const v0, 0x494433

    if-eq v1, v0, :cond_5

    .line 94616
    invoke-interface {p1}, Lcom/facebook/ads/redexgen/X/ms;->AIl()V

    .line 94617
    invoke-interface {p1, v3}, Lcom/facebook/ads/redexgen/X/ms;->A47(I)V

    .line 94618
    move v6, v3

    .line 94619
    .local v1, "headerPosition":I
    const/4 v5, 0x0

    .line 94620
    .local v3, "validFramesCount":I
    :goto_1
    invoke-virtual {v4}, Lcom/facebook/ads/redexgen/X/4v;->A0l()[B

    move-result-object v1

    const/4 v0, 0x7

    invoke-interface {p1, v1, v2, v0}, Lcom/facebook/ads/redexgen/X/ms;->AGt([BII)V

    .line 94621
    invoke-virtual {v4, v2}, Lcom/facebook/ads/redexgen/X/4v;->A0f(I)V

    .line 94622
    invoke-virtual {v4}, Lcom/facebook/ads/redexgen/X/4v;->A0M()I

    move-result v1

    .line 94623
    .local v5, "syncBytes":I
    const v0, 0xac40

    if-eq v1, v0, :cond_2

    const v0, 0xac41

    if-eq v1, v0, :cond_2

    .line 94624
    const/4 v5, 0x0

    .line 94625
    invoke-interface {p1}, Lcom/facebook/ads/redexgen/X/ms;->AIl()V

    .line 94626
    add-int/lit8 v6, v6, 0x1

    sub-int v1, v6, v3

    const/16 v0, 0x2000

    if-lt v1, v0, :cond_1

    .line 94627
    return v2

    .line 94628
    :cond_1
    invoke-interface {p1, v6}, Lcom/facebook/ads/redexgen/X/ms;->A47(I)V

    goto :goto_1

    .line 94629
    :cond_2
    add-int/lit8 v5, v5, 0x1

    const/4 v0, 0x4

    if-lt v5, v0, :cond_3

    .line 94630
    const/4 v0, 0x1

    return v0

    .line 94631
    :cond_3
    invoke-virtual {v4}, Lcom/facebook/ads/redexgen/X/4v;->A0l()[B

    move-result-object v0

    invoke-static {v0, v1}, Lcom/facebook/ads/redexgen/X/Gu;->A02([BI)I

    move-result v1

    .line 94632
    .local v6, "frameSize":I
    const/4 v0, -0x1

    if-ne v1, v0, :cond_4

    .line 94633
    return v2

    .line 94634
    :cond_4
    add-int/lit8 v0, v1, -0x7

    invoke-interface {p1, v0}, Lcom/facebook/ads/redexgen/X/ms;->A47(I)V

    goto :goto_1

    .line 94635
    .end local v1    # "headerPosition":I
    .end local v3    # "validFramesCount":I
    :cond_5
    const/4 v0, 0x3

    invoke-virtual {v4, v0}, Lcom/facebook/ads/redexgen/X/4v;->A0g(I)V

    .line 94636
    invoke-virtual {v4}, Lcom/facebook/ads/redexgen/X/4v;->A0H()I

    move-result v1

    .line 94637
    .local v3, "length":I
    add-int/lit8 v0, v1, 0xa

    add-int/2addr v3, v0

    .line 94638
    invoke-interface {p1, v1}, Lcom/facebook/ads/redexgen/X/ms;->A47(I)V

    .line 94639
    .end local v3    # "length":I
    goto/16 :goto_0
.end method
