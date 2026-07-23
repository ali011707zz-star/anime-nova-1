.class public Lcom/facebook/ads/redexgen/X/Fy;
.super Lcom/facebook/ads/redexgen/X/R7;
.source ""


# static fields
.field public static A0H:[B

.field public static A0I:[Ljava/lang/String;


# instance fields
.field public A00:F

.field public A01:I

.field public A02:Lcom/facebook/ads/redexgen/X/cp;

.field public A03:Lcom/facebook/ads/redexgen/X/cr;

.field public A04:Lcom/facebook/ads/redexgen/X/fp;

.field public A05:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/facebook/ads/redexgen/X/e5;",
            ">;"
        }
    .end annotation
.end field

.field public A06:Z

.field public A07:Z

.field public A08:Z

.field public A09:Z

.field public final A0A:I

.field public final A0B:Landroid/content/Context;

.field public final A0C:Lcom/facebook/ads/redexgen/X/hr;

.field public final A0D:Lcom/facebook/ads/redexgen/X/RF;

.field public final A0E:Lcom/facebook/ads/redexgen/X/cs;

.field public final A0F:Lcom/facebook/ads/redexgen/X/ct;

.field public final A0G:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    .line 743
    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "oHxG"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, ""

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "w7XeyG7wcXlBDThCLG4YobF5JePdGcu8"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "IQ8LgqWvoXOpUTXgnww89j6rU6uuZ1nj"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, ""

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "WKMwHhIum9"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "0nm7H4VWCUBWNiJwCQAonSVvBZFyt"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "hLsDwSpuFLAE"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/Fy;->A0I:[Ljava/lang/String;

    invoke-static {}, Lcom/facebook/ads/redexgen/X/Fy;->A08()V

    return-void
.end method

.method public constructor <init>(Lcom/facebook/ads/redexgen/X/1J;ILjava/util/List;Lcom/facebook/ads/redexgen/X/fp;Landroid/os/Bundle;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/ads/redexgen/X/1J;",
            "I",
            "Ljava/util/List<",
            "Lcom/facebook/ads/redexgen/X/e5;",
            ">;",
            "Lcom/facebook/ads/redexgen/X/fp;",
            "Landroid/os/Bundle;",
            ")V"
        }
    .end annotation

    .line 36465
    .local p3, "carouselItems":Ljava/util/List;, "Ljava/util/List<Lcom/facebook/ads/internal/view/interstitial/carousel/CarouselCardInfo;>;"
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/R7;-><init>()V

    .line 36466
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Fy;->A0G:Ljava/util/Set;

    .line 36467
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/Fy;->A08:Z

    .line 36468
    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/Fy;->A06:Z

    .line 36469
    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/Fy;->A07:Z

    .line 36470
    const/4 v0, -0x1

    iput v0, p0, Lcom/facebook/ads/redexgen/X/Fy;->A01:I

    .line 36471
    const/4 v0, 0x0

    iput v0, p0, Lcom/facebook/ads/redexgen/X/Fy;->A00:F

    .line 36472
    new-instance v0, Lcom/facebook/ads/redexgen/X/G1;

    invoke-direct {v0, p0}, Lcom/facebook/ads/redexgen/X/G1;-><init>(Lcom/facebook/ads/redexgen/X/Fy;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Fy;->A0F:Lcom/facebook/ads/redexgen/X/ct;

    .line 36473
    new-instance v0, Lcom/facebook/ads/redexgen/X/G0;

    invoke-direct {v0, p0}, Lcom/facebook/ads/redexgen/X/G0;-><init>(Lcom/facebook/ads/redexgen/X/Fy;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Fy;->A03:Lcom/facebook/ads/redexgen/X/cr;

    .line 36474
    new-instance v0, Lcom/facebook/ads/redexgen/X/Fz;

    invoke-direct {v0, p0}, Lcom/facebook/ads/redexgen/X/Fz;-><init>(Lcom/facebook/ads/redexgen/X/Fy;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Fy;->A0E:Lcom/facebook/ads/redexgen/X/cs;

    .line 36475
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/1J;->getLayoutManager()Lcom/facebook/ads/redexgen/X/hr;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Fy;->A0C:Lcom/facebook/ads/redexgen/X/hr;

    .line 36476
    iput p2, p0, Lcom/facebook/ads/redexgen/X/Fy;->A0A:I

    .line 36477
    iput-object p3, p0, Lcom/facebook/ads/redexgen/X/Fy;->A05:Ljava/util/List;

    .line 36478
    iput-object p4, p0, Lcom/facebook/ads/redexgen/X/Fy;->A04:Lcom/facebook/ads/redexgen/X/fp;

    .line 36479
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/1J;->getContext()Landroid/content/Context;

    move-result-object v1

    new-instance v0, Lcom/facebook/ads/redexgen/X/hq;

    invoke-direct {v0, v1}, Lcom/facebook/ads/redexgen/X/hq;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Fy;->A0D:Lcom/facebook/ads/redexgen/X/RF;

    .line 36480
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/1J;->getContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Fy;->A0B:Landroid/content/Context;

    .line 36481
    invoke-virtual {p1, p0}, Lcom/facebook/ads/redexgen/X/7M;->A1h(Lcom/facebook/ads/redexgen/X/R7;)V

    .line 36482
    invoke-direct {p0, p5}, Lcom/facebook/ads/redexgen/X/Fy;->A0D(Landroid/os/Bundle;)V

    .line 36483
    return-void
.end method

.method private A03(II)Lcom/facebook/ads/redexgen/X/Jg;
    .locals 1

    .line 36484
    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, v0}, Lcom/facebook/ads/redexgen/X/Fy;->A04(IIZ)Lcom/facebook/ads/redexgen/X/Jg;

    move-result-object v0

    return-object v0
.end method

.method private A04(IIZ)Lcom/facebook/ads/redexgen/X/Jg;
    .locals 5

    .line 36485
    const/4 v4, 0x0

    .line 36486
    .local v0, "foundVideo":Lcom/facebook/ads/redexgen/X/Jg;
    .local v1, "i":I
    :goto_0
    if-gt p1, p2, :cond_5

    .line 36487
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Fy;->A0C:Lcom/facebook/ads/redexgen/X/hr;

    invoke-virtual {v0, p1}, Lcom/facebook/ads/redexgen/X/hr;->A1o(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/facebook/ads/redexgen/X/Jg;

    .line 36488
    .local v2, "curCard":Lcom/facebook/ads/redexgen/X/Jg;
    if-eqz v3, :cond_0

    invoke-virtual {v3}, Lcom/facebook/ads/redexgen/X/Jg;->A1U()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 36489
    .restart local v2    # "curCard":Lcom/facebook/ads/redexgen/X/Jg;
    :cond_0
    const/4 v0, 0x0

    return-object v0

    .line 36490
    :cond_1
    invoke-virtual {p0, v3}, Lcom/facebook/ads/redexgen/X/Fy;->A0a(Landroid/view/View;)Z

    move-result v2

    .line 36491
    .local v3, "isCompletelyVisible":Z
    if-nez v4, :cond_3

    .line 36492
    invoke-virtual {v3}, Lcom/facebook/ads/redexgen/X/Jg;->A1V()Z

    move-result v0

    if-eqz v0, :cond_3

    if-eqz v2, :cond_3

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Fy;->A0G:Ljava/util/Set;

    .line 36493
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    if-eqz p3, :cond_2

    iget v0, p0, Lcom/facebook/ads/redexgen/X/Fy;->A0A:I

    .line 36494
    invoke-static {v3, v0}, Lcom/facebook/ads/redexgen/X/Fy;->A0I(Lcom/facebook/ads/redexgen/X/c3;I)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 36495
    :cond_2
    move-object v4, v3

    .line 36496
    :cond_3
    invoke-virtual {v3}, Lcom/facebook/ads/redexgen/X/Jg;->A1V()Z

    move-result v0

    if-eqz v0, :cond_4

    if-nez v2, :cond_4

    .line 36497
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/facebook/ads/redexgen/X/Fy;->A0C(IZ)V

    .line 36498
    .end local v2    # "curCard":Lcom/facebook/ads/redexgen/X/Jg;
    .end local v3    # "isCompletelyVisible":Z
    :cond_4
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    .line 36499
    .end local v1    # "i":I
    .end local v2
    :cond_5
    return-object v4
.end method

.method public static A05(III)Ljava/lang/String;
    .locals 2

    sget-object v1, Lcom/facebook/ads/redexgen/X/Fy;->A0H:[B

    add-int v0, p0, p1

    invoke-static {v1, p0, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p0

    const/4 v1, 0x0

    :goto_0
    array-length v0, p0

    if-ge v1, v0, :cond_0

    aget-byte v0, p0, v1

    sub-int/2addr v0, p2

    add-int/lit8 v0, v0, -0x7

    int-to-byte v0, v0

    aput-byte v0, p0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p0}, Ljava/lang/String;-><init>([B)V

    return-object v0
.end method

.method private A06()V
    .locals 2

    .line 36500
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/Fy;->A07:Z

    if-nez v0, :cond_0

    .line 36501
    return-void

    .line 36502
    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Fy;->A0C:Lcom/facebook/ads/redexgen/X/hr;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/hr;->A26()I

    move-result v1

    .line 36503
    .local v0, "firstVisibleItem":I
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Fy;->A0C:Lcom/facebook/ads/redexgen/X/hr;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/hr;->A27()I

    move-result v0

    .line 36504
    .local v1, "lastVisibleItem":I
    invoke-direct {p0, v1, v0}, Lcom/facebook/ads/redexgen/X/Fy;->A03(II)Lcom/facebook/ads/redexgen/X/Jg;

    move-result-object v0

    .line 36505
    .local p0, "firstAutoplayableVideo":Lcom/facebook/ads/redexgen/X/Jg;
    if-eqz v0, :cond_1

    .line 36506
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Jg;->A1S()V

    .line 36507
    :cond_1
    return-void
.end method

.method private A07()V
    .locals 2

    .line 36508
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Fy;->A0C:Lcom/facebook/ads/redexgen/X/hr;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/hr;->A25()I

    move-result v1

    .line 36509
    .local v0, "curPos":I
    const/4 v0, -0x1

    if-eq v1, v0, :cond_0

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Fy;->A05:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    if-ge v1, v0, :cond_0

    .line 36510
    add-int/lit8 v0, v1, 0x1

    invoke-virtual {p0, v0}, Lcom/facebook/ads/redexgen/X/Fy;->A0U(I)V

    .line 36511
    :cond_0
    return-void
.end method

.method public static A08()V
    .locals 4

    const/16 v3, 0x3d

    sget-object v2, Lcom/facebook/ads/redexgen/X/Fy;->A0I:[Ljava/lang/String;

    const/4 v0, 0x0

    aget-object v1, v2, v0

    const/4 v0, 0x5

    aget-object v0, v2, v0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eq v1, v0, :cond_0

    sget-object v2, Lcom/facebook/ads/redexgen/X/Fy;->A0I:[Ljava/lang/String;

    const-string v1, "Cbp585p0FHy9"

    const/4 v0, 0x7

    aput-object v1, v2, v0

    const-string v1, "QC7w158vCCR5KGktiGCBodiqPhNZq"

    const/4 v0, 0x6

    aput-object v1, v2, v0

    new-array v0, v3, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/facebook/ads/redexgen/X/Fy;->A0H:[B

    return-void

    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :array_0
    .array-data 1
        -0x7at
        -0x66t
        -0x67t
        -0x6ct
        -0x5ct
        -0x6bt
        -0x6ft
        -0x7at
        -0x62t
        -0x5ct
        -0x76t
        -0x6dt
        -0x7at
        -0x79t
        -0x6ft
        -0x76t
        -0x77t
        -0x5ct
        -0x6bt
        -0x7at
        -0x69t
        -0x7at
        -0x6et
        0x51t
        0x5bt
        0x67t
        0x4et
        0x51t
        0x5at
        0x5bt
        0x5ct
        0x67t
        0x5et
        0x51t
        0x4ct
        0x4dt
        0x57t
        0x67t
        0x58t
        0x49t
        0x5at
        0x49t
        0x55t
        -0x33t
        -0x3at
        -0x3dt
        -0x34t
        -0x3ct
        -0x44t
        -0x2at
        -0x3dt
        -0x44t
        -0x33t
        -0x44t
        -0x3dt
        -0x2at
        -0x39t
        -0x48t
        -0x37t
        -0x48t
        -0x3ct
    .end array-data
.end method

.method private A09(I)V
    .locals 3

    .line 36512
    add-int/lit8 v2, p1, 0x1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Fy;->A0C:Lcom/facebook/ads/redexgen/X/hr;

    .line 36513
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/hr;->A27()I

    move-result v1

    const/4 v0, 0x0

    invoke-direct {p0, v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Fy;->A04(IIZ)Lcom/facebook/ads/redexgen/X/Jg;

    move-result-object v1

    .line 36514
    .local v0, "firstAutoplayableVideo":Lcom/facebook/ads/redexgen/X/Jg;
    if-eqz v1, :cond_0

    .line 36515
    invoke-virtual {v1}, Lcom/facebook/ads/redexgen/X/Jg;->A1S()V

    .line 36516
    const v0, -0x5f000010

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/Jg;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/facebook/ads/redexgen/X/Fy;->A0U(I)V

    .line 36517
    :cond_0
    return-void
.end method

.method private A0A(II)V
    .locals 0

    .line 36518
    .local p0, "i":I
    :goto_0
    if-gt p1, p2, :cond_0

    .line 36519
    invoke-virtual {p0, p1}, Lcom/facebook/ads/redexgen/X/Fy;->A0T(I)V

    .line 36520
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    .line 36521
    .end local p0    # "i":I
    :cond_0
    return-void
.end method

.method private final A0B(II)V
    .locals 0

    .line 36522
    invoke-virtual {p0, p1}, Lcom/facebook/ads/redexgen/X/Fy;->A0S(I)V

    .line 36523
    invoke-virtual {p0, p2}, Lcom/facebook/ads/redexgen/X/Fy;->A0S(I)V

    .line 36524
    return-void
.end method

.method private A0C(IZ)V
    .locals 2

    .line 36525
    if-eqz p2, :cond_0

    .line 36526
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Fy;->A0G:Ljava/util/Set;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 36527
    :goto_0
    return-void

    .line 36528
    :cond_0
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Fy;->A0G:Ljava/util/Set;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method private A0D(Landroid/os/Bundle;)V
    .locals 4

    .line 36529
    if-nez p1, :cond_0

    .line 36530
    return-void

    .line 36531
    :cond_0
    const/16 v2, 0x2b

    const/16 v1, 0x12

    const/16 v0, 0x70

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Fy;->A05(III)Ljava/lang/String;

    move-result-object v1

    const/4 v0, 0x0

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;F)F

    move-result v0

    iput v0, p0, Lcom/facebook/ads/redexgen/X/Fy;->A00:F

    .line 36532
    const/4 v2, 0x0

    const/16 v1, 0x17

    const/16 v0, 0x3e

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Fy;->A05(III)Ljava/lang/String;

    move-result-object v0

    const/4 v3, 0x1

    invoke-virtual {p1, v0, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/Fy;->A07:Z

    .line 36533
    const/16 v2, 0x17

    const/16 v1, 0x14

    const/4 v0, 0x1

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Fy;->A05(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/Fy;->A08:Z

    .line 36534
    return-void
.end method

.method public static synthetic A0E(Lcom/facebook/ads/redexgen/X/Fy;)V
    .locals 0

    .line 36535
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/Fy;->A07()V

    return-void
.end method

.method public static synthetic A0F(Lcom/facebook/ads/redexgen/X/Fy;I)V
    .locals 0

    .line 36536
    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/Fy;->A09(I)V

    return-void
.end method

.method public static synthetic A0G(Lcom/facebook/ads/redexgen/X/Fy;IZ)V
    .locals 0

    .line 36537
    invoke-direct {p0, p1, p2}, Lcom/facebook/ads/redexgen/X/Fy;->A0C(IZ)V

    return-void
.end method

.method private A0H()Z
    .locals 2

    .line 36538
    iget v1, p0, Lcom/facebook/ads/redexgen/X/Fy;->A0A:I

    const/4 v0, 0x1

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static A0I(Lcom/facebook/ads/redexgen/X/c3;I)Z
    .locals 6

    .line 36539
    const/high16 v5, 0x40000000    # 2.0f

    const/4 v4, 0x1

    const/4 v2, 0x2

    if-ne p1, v2, :cond_2

    .line 36540
    sget-object v0, Lcom/facebook/ads/redexgen/X/XX;->A04:Landroid/util/DisplayMetrics;

    iget v3, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    sub-int/2addr v3, v4

    .line 36541
    .local v3, "allowedAreaMaxX":I
    :goto_0
    if-ne p1, v2, :cond_1

    .line 36542
    const/4 v2, 0x1

    .line 36543
    .local v0, "allowedAreaMinX":I
    :goto_1
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/c3;->getX()F

    move-result v1

    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/c3;->getWidth()I

    move-result v0

    int-to-float v0, v0

    add-float/2addr v1, v0

    float-to-int v0, v1

    .line 36544
    .local v2, "furthestX":I
    if-gt v0, v3, :cond_0

    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/c3;->getX()F

    move-result v1

    int-to-float v0, v2

    cmpl-float v0, v1, v0

    if-ltz v0, :cond_0

    .line 36545
    .local v1, "result":Z
    :goto_2
    return v4

    .line 36546
    :cond_0
    const/4 v4, 0x0

    goto :goto_2

    .line 36547
    :cond_1
    sget-object v0, Lcom/facebook/ads/redexgen/X/XX;->A04:Landroid/util/DisplayMetrics;

    iget v1, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 36548
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/c3;->getWidth()I

    move-result v0

    sub-int/2addr v1, v0

    int-to-float v1, v1

    const v0, 0x3f333333    # 0.7f

    mul-float/2addr v1, v0

    div-float/2addr v1, v5

    float-to-int v2, v1

    goto :goto_1

    .line 36549
    :cond_2
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/c3;->getWidth()I

    move-result v1

    sget-object v0, Lcom/facebook/ads/redexgen/X/XX;->A04:Landroid/util/DisplayMetrics;

    iget v0, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    add-int/2addr v1, v0

    int-to-float v1, v1

    const v0, 0x3fa66666    # 1.3f

    mul-float/2addr v1, v0

    div-float/2addr v1, v5

    float-to-int v3, v1

    goto :goto_0
.end method

.method private A0J(Lcom/facebook/ads/redexgen/X/Jg;)Z
    .locals 2

    .line 36550
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/Fy;->A08:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/Jg;->A1V()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 36551
    iput-boolean v1, p0, Lcom/facebook/ads/redexgen/X/Fy;->A08:Z

    .line 36552
    const/4 v0, 0x1

    return v0

    .line 36553
    :cond_0
    return v1
.end method

.method public static synthetic A0K(Lcom/facebook/ads/redexgen/X/Fy;)Z
    .locals 0

    .line 36554
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/Fy;->A0H()Z

    move-result p0

    return p0
.end method


# virtual methods
.method public A0L(Lcom/facebook/ads/redexgen/X/7M;I)V
    .locals 1

    .line 36555
    invoke-super {p0, p1, p2}, Lcom/facebook/ads/redexgen/X/R7;->A0L(Lcom/facebook/ads/redexgen/X/7M;I)V

    .line 36556
    if-nez p2, :cond_0

    .line 36557
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/Fy;->A09:Z

    .line 36558
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/Fy;->A06()V

    .line 36559
    :cond_0
    return-void
.end method

.method public A0M(Lcom/facebook/ads/redexgen/X/7M;II)V
    .locals 2

    .line 36560
    invoke-super {p0, p1, p2, p3}, Lcom/facebook/ads/redexgen/X/R7;->A0M(Lcom/facebook/ads/redexgen/X/7M;II)V

    .line 36561
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/facebook/ads/redexgen/X/Fy;->A09:Z

    .line 36562
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/Fy;->A06:Z

    if-eqz v0, :cond_0

    .line 36563
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/Fy;->A09:Z

    .line 36564
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/Fy;->A06()V

    .line 36565
    iput-boolean v1, p0, Lcom/facebook/ads/redexgen/X/Fy;->A06:Z

    .line 36566
    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Fy;->A0C:Lcom/facebook/ads/redexgen/X/hr;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/hr;->A26()I

    move-result v1

    .line 36567
    .local v0, "firstVisibleItem":I
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Fy;->A0C:Lcom/facebook/ads/redexgen/X/hr;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/hr;->A27()I

    move-result v0

    .line 36568
    .local v1, "lastVisibleItem":I
    invoke-direct {p0, v1, v0}, Lcom/facebook/ads/redexgen/X/Fy;->A0B(II)V

    .line 36569
    invoke-direct {p0, v1, v0}, Lcom/facebook/ads/redexgen/X/Fy;->A0A(II)V

    .line 36570
    invoke-virtual {p0, v1, v0, p2}, Lcom/facebook/ads/redexgen/X/Fy;->A0V(III)V

    .line 36571
    return-void
.end method

.method public final A0N()Lcom/facebook/ads/redexgen/X/cr;
    .locals 1

    .line 36572
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Fy;->A03:Lcom/facebook/ads/redexgen/X/cr;

    return-object v0
.end method

.method public final A0O()Lcom/facebook/ads/redexgen/X/cs;
    .locals 1

    .line 36573
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Fy;->A0E:Lcom/facebook/ads/redexgen/X/cs;

    return-object v0
.end method

.method public final A0P()Lcom/facebook/ads/redexgen/X/ct;
    .locals 1

    .line 36574
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Fy;->A0F:Lcom/facebook/ads/redexgen/X/ct;

    return-object v0
.end method

.method public final A0Q()V
    .locals 6

    .line 36575
    const/4 v0, -0x1

    iput v0, p0, Lcom/facebook/ads/redexgen/X/Fy;->A01:I

    .line 36576
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Fy;->A0C:Lcom/facebook/ads/redexgen/X/hr;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/hr;->A26()I

    move-result v5

    .line 36577
    .local v0, "firstPos":I
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Fy;->A0C:Lcom/facebook/ads/redexgen/X/hr;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/hr;->A27()I

    move-result v4

    .line 36578
    .local v1, "lastPos":I
    .local v2, "i":I
    :goto_0
    if-gt v5, v4, :cond_1

    if-ltz v5, :cond_1

    .line 36579
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Fy;->A0C:Lcom/facebook/ads/redexgen/X/hr;

    invoke-virtual {v0, v5}, Lcom/facebook/ads/redexgen/X/hr;->A1o(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/facebook/ads/redexgen/X/Jg;

    sget-object v2, Lcom/facebook/ads/redexgen/X/Fy;->A0I:[Ljava/lang/String;

    const/4 v0, 0x1

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

    .line 36580
    .local v3, "card":Lcom/facebook/ads/redexgen/X/Jg;
    :cond_0
    sget-object v2, Lcom/facebook/ads/redexgen/X/Fy;->A0I:[Ljava/lang/String;

    const-string v1, "4n0r"

    const/4 v0, 0x0

    aput-object v1, v2, v0

    const-string v1, "UAml839wpr"

    const/4 v0, 0x5

    aput-object v1, v2, v0

    if-eqz v3, :cond_2

    invoke-virtual {v3}, Lcom/facebook/ads/redexgen/X/Jg;->A1U()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 36581
    iput v5, p0, Lcom/facebook/ads/redexgen/X/Fy;->A01:I

    .line 36582
    invoke-virtual {v3}, Lcom/facebook/ads/redexgen/X/Jg;->A1R()V

    .line 36583
    .end local v2    # "i":I
    :cond_1
    return-void

    .line 36584
    .end local v3    # "card":Lcom/facebook/ads/redexgen/X/Jg;
    :cond_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_0
.end method

.method public final A0R()V
    .locals 2

    .line 36585
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Fy;->A0C:Lcom/facebook/ads/redexgen/X/hr;

    iget v0, p0, Lcom/facebook/ads/redexgen/X/Fy;->A01:I

    .line 36586
    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/hr;->A1o(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/facebook/ads/redexgen/X/Jg;

    .line 36587
    .local v0, "card":Lcom/facebook/ads/redexgen/X/Jg;
    if-eqz v1, :cond_0

    iget v0, p0, Lcom/facebook/ads/redexgen/X/Fy;->A01:I

    if-ltz v0, :cond_0

    .line 36588
    invoke-virtual {v1}, Lcom/facebook/ads/redexgen/X/Jg;->A1S()V

    .line 36589
    :cond_0
    return-void
.end method

.method public final A0S(I)V
    .locals 2

    .line 36590
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Fy;->A0C:Lcom/facebook/ads/redexgen/X/hr;

    .line 36591
    invoke-virtual {v0, p1}, Lcom/facebook/ads/redexgen/X/hr;->A1o(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/facebook/ads/redexgen/X/Jg;

    .line 36592
    .local v0, "cardLayout":Lcom/facebook/ads/redexgen/X/Jg;
    if-eqz v1, :cond_0

    invoke-virtual {p0, v1}, Lcom/facebook/ads/redexgen/X/Fy;->A0a(Landroid/view/View;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 36593
    const/4 v0, 0x0

    invoke-virtual {p0, v1, v0}, Lcom/facebook/ads/redexgen/X/Fy;->A0Z(Lcom/facebook/ads/redexgen/X/Jg;Z)V

    .line 36594
    :cond_0
    return-void
.end method

.method public final A0T(I)V
    .locals 3

    .line 36595
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Fy;->A0C:Lcom/facebook/ads/redexgen/X/hr;

    .line 36596
    invoke-virtual {v0, p1}, Lcom/facebook/ads/redexgen/X/hr;->A1o(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/facebook/ads/redexgen/X/Jg;

    .line 36597
    .local v0, "cardLayout":Lcom/facebook/ads/redexgen/X/Jg;
    if-nez v2, :cond_0

    .line 36598
    return-void

    .line 36599
    :cond_0
    invoke-virtual {p0, v2}, Lcom/facebook/ads/redexgen/X/Fy;->A0a(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 36600
    const/4 v0, 0x1

    invoke-virtual {p0, v2, v0}, Lcom/facebook/ads/redexgen/X/Fy;->A0Z(Lcom/facebook/ads/redexgen/X/Jg;Z)V

    .line 36601
    :cond_1
    invoke-direct {p0, v2}, Lcom/facebook/ads/redexgen/X/Fy;->A0J(Lcom/facebook/ads/redexgen/X/Jg;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Fy;->A05:Ljava/util/List;

    if-eqz v0, :cond_2

    .line 36602
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Fy;->A05:Ljava/util/List;

    const v0, -0x5f000010

    invoke-virtual {v2, v0}, Lcom/facebook/ads/redexgen/X/Jg;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/redexgen/X/e5;

    .line 36603
    .local v1, "cardInfo":Lcom/facebook/ads/redexgen/X/e5;
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Fy;->A0F:Lcom/facebook/ads/redexgen/X/ct;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/e5;->A03()Lcom/facebook/ads/redexgen/X/NR;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/NR;->A0H()Lcom/facebook/ads/redexgen/X/NU;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/NU;->A0A()Z

    move-result v0

    if-eqz v0, :cond_3

    const/4 v0, 0x0

    :goto_0
    invoke-interface {v1, v0}, Lcom/facebook/ads/redexgen/X/ct;->setVolume(F)V

    .line 36604
    .end local v1    # "cardInfo":Lcom/facebook/ads/redexgen/X/e5;
    :cond_2
    return-void

    .line 36605
    :cond_3
    const/high16 v0, 0x3f800000    # 1.0f

    goto :goto_0
.end method

.method public final A0U(I)V
    .locals 2

    .line 36606
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Fy;->A0D:Lcom/facebook/ads/redexgen/X/RF;

    invoke-virtual {v0, p1}, Lcom/facebook/ads/redexgen/X/RF;->A0A(I)V

    .line 36607
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Fy;->A0C:Lcom/facebook/ads/redexgen/X/hr;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Fy;->A0D:Lcom/facebook/ads/redexgen/X/RF;

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/R2;->A1N(Lcom/facebook/ads/redexgen/X/RF;)V

    .line 36608
    return-void
.end method

.method public final A0V(III)V
    .locals 2

    .line 36609
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/Fy;->A0H()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Fy;->A02:Lcom/facebook/ads/redexgen/X/cp;

    if-nez v0, :cond_1

    .line 36610
    .end local v0
    .end local v1
    :cond_0
    return-void

    .line 36611
    :cond_1
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Fy;->A0C:Lcom/facebook/ads/redexgen/X/hr;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/hr;->A25()I

    move-result v1

    .line 36612
    .local v0, "firstCompletelyVisible":I
    const/4 v0, -0x1

    if-eq v1, v0, :cond_2

    .line 36613
    .local v1, "recomputeFrom":I
    :goto_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Fy;->A02:Lcom/facebook/ads/redexgen/X/cp;

    invoke-interface {v0, v1}, Lcom/facebook/ads/redexgen/X/cp;->AKa(I)V

    .line 36614
    return-void

    .line 36615
    :cond_2
    if-gez p3, :cond_3

    move v1, p1

    goto :goto_0

    :cond_3
    move v1, p2

    goto :goto_0
.end method

.method public final A0W(Landroid/os/Bundle;)V
    .locals 3

    .line 36616
    const/16 v2, 0x2b

    const/16 v1, 0x12

    const/16 v0, 0x70

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Fy;->A05(III)Ljava/lang/String;

    move-result-object v1

    iget v0, p0, Lcom/facebook/ads/redexgen/X/Fy;->A00:F

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    .line 36617
    const/4 v2, 0x0

    const/16 v1, 0x17

    const/16 v0, 0x3e

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Fy;->A05(III)Ljava/lang/String;

    move-result-object v1

    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/Fy;->A07:Z

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 36618
    const/16 v2, 0x17

    const/16 v1, 0x14

    const/4 v0, 0x1

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Fy;->A05(III)Ljava/lang/String;

    move-result-object v1

    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/Fy;->A08:Z

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 36619
    return-void
.end method

.method public A0X(Landroid/view/View;Z)V
    .locals 1

    .line 36620
    if-eqz p2, :cond_0

    const/high16 v0, 0x3f800000    # 1.0f

    :goto_0
    invoke-virtual {p1, v0}, Landroid/view/View;->setAlpha(F)V

    .line 36621
    return-void

    .line 36622
    :cond_0
    const/high16 v0, 0x3f000000    # 0.5f

    goto :goto_0
.end method

.method public final A0Y(Lcom/facebook/ads/redexgen/X/cp;)V
    .locals 0

    .line 36623
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/Fy;->A02:Lcom/facebook/ads/redexgen/X/cp;

    .line 36624
    return-void
.end method

.method public A0Z(Lcom/facebook/ads/redexgen/X/Jg;Z)V
    .locals 1

    .line 36625
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/Fy;->A0H()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 36626
    invoke-virtual {p0, p1, p2}, Lcom/facebook/ads/redexgen/X/Fy;->A0X(Landroid/view/View;Z)V

    .line 36627
    :cond_0
    if-nez p2, :cond_1

    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/Jg;->A1U()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 36628
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/Jg;->A1R()V

    .line 36629
    :cond_1
    return-void
.end method

.method public A0a(Landroid/view/View;)Z
    .locals 2

    .line 36630
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 36631
    .local v0, "rect":Landroid/graphics/Rect;
    invoke-virtual {p1, v0}, Landroid/view/View;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    .line 36632
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    int-to-float v1, v0

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v0

    int-to-float v0, v0

    div-float/2addr v1, v0

    const v0, 0x3e19999a    # 0.15f

    cmpl-float v0, v1, v0

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
