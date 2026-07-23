.class public final Lcom/facebook/ads/redexgen/X/ow;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/facebook/ads/redexgen/X/78;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/ads/redexgen/X/6P;
    }
.end annotation


# static fields
.field public static A07:[B

.field public static A08:[Ljava/lang/String;


# instance fields
.field public A00:Lcom/facebook/ads/redexgen/X/78;

.field public A01:Lcom/facebook/ads/redexgen/X/oo;

.field public A02:Z
    .annotation runtime Lcom/facebook/video/heroplayer/exocustom/MetaExoPlayerCustomization;
        type = {
            "NEW_CLASS_ARG"
        }
        value = "This reverts a bug introduced in D48802706. The upgraded exoaccounts for this but not the old exo. Hence, this is needed here temporarily"
    .end annotation
.end field

.field public A03:Z

.field public A04:Z

.field public final A05:Lcom/facebook/ads/redexgen/X/6P;

.field public final A06:Lcom/facebook/ads/redexgen/X/ok;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    .line 3337
    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "yII62Bxz4ePSH41vB2jdKSugEbZVWw1P"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "xxJts2URfaqafakNk2KbG7F81xmmDazV"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "4dv2SznKWSxWwafbIX2ls1ujl8jSHd2n"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "ZTUBGrXVNXomnx09AH"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "GEOoy7FoThRACcjBmfZ1TUIlEpKlWtQ8"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "rZtP7yRh3duuKSKGXoPyzbqapeA3agH5"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "0fM4GZ86zQsT7VByU2LW0lXLtFUbu0NT"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "1qHBrVxL1wzL98lt8KL7QvczAsaDn4yk"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/ow;->A08:[Ljava/lang/String;

    invoke-static {}, Lcom/facebook/ads/redexgen/X/ow;->A01()V

    return-void
.end method

.method public constructor <init>(Lcom/facebook/ads/redexgen/X/6P;Lcom/facebook/ads/redexgen/X/45;)V
    .locals 1

    .line 103525
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 103526
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/ow;->A05:Lcom/facebook/ads/redexgen/X/6P;

    .line 103527
    new-instance v0, Lcom/facebook/ads/redexgen/X/ok;

    invoke-direct {v0, p2}, Lcom/facebook/ads/redexgen/X/ok;-><init>(Lcom/facebook/ads/redexgen/X/45;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/ow;->A06:Lcom/facebook/ads/redexgen/X/ok;

    .line 103528
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/ow;->A03:Z

    .line 103529
    sget-object v0, Lcom/facebook/ads/redexgen/X/jX;->A1h:Lcom/facebook/ads/redexgen/X/jX;

    .line 103530
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/ja;->A03(Lcom/facebook/ads/redexgen/X/jX;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/ow;->A02:Z

    .line 103531
    return-void
.end method

.method public static A00(III)Ljava/lang/String;
    .locals 2

    sget-object v1, Lcom/facebook/ads/redexgen/X/ow;->A07:[B

    add-int v0, p0, p1

    invoke-static {v1, p0, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p0

    const/4 v1, 0x0

    :goto_0
    array-length v0, p0

    if-ge v1, v0, :cond_0

    aget-byte v0, p0, v1

    xor-int/2addr v0, p2

    xor-int/lit8 v0, v0, 0x13

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

    const/16 v0, 0x27

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/facebook/ads/redexgen/X/ow;->A07:[B

    return-void

    :array_0
    .array-data 1
        0x56t
        0x6et
        0x77t
        0x6ft
        0x72t
        0x6bt
        0x77t
        0x7et
        0x3bt
        0x69t
        0x7et
        0x75t
        0x7ft
        0x7et
        0x69t
        0x7et
        0x69t
        0x3bt
        0x76t
        0x7et
        0x7ft
        0x72t
        0x7at
        0x3bt
        0x78t
        0x77t
        0x74t
        0x78t
        0x70t
        0x68t
        0x3bt
        0x7et
        0x75t
        0x7at
        0x79t
        0x77t
        0x7et
        0x7ft
        0x35t
    .end array-data
.end method

.method private A02(Z)V
    .locals 7

    .line 103532
    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/ow;->A03(Z)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 103533
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/ow;->A03:Z

    .line 103534
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/ow;->A04:Z

    if-eqz v0, :cond_0

    .line 103535
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/ow;->A06:Lcom/facebook/ads/redexgen/X/ok;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/ok;->A00()V

    .line 103536
    :cond_0
    return-void

    .line 103537
    :cond_1
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/ow;->A00:Lcom/facebook/ads/redexgen/X/78;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/3y;->A01(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/facebook/ads/redexgen/X/78;

    .line 103538
    .local v0, "rendererClock":Lcom/facebook/ads/redexgen/X/78;
    invoke-interface {v5}, Lcom/facebook/ads/redexgen/X/78;->A8p()J

    move-result-wide v3

    .line 103539
    .local v1, "rendererClockPositionUs":J
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/ow;->A03:Z

    if-eqz v0, :cond_4

    .line 103540
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/ow;->A06:Lcom/facebook/ads/redexgen/X/ok;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/ok;->A8p()J

    move-result-wide v1

    cmp-long v0, v3, v1

    if-gez v0, :cond_2

    .line 103541
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/ow;->A06:Lcom/facebook/ads/redexgen/X/ok;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/ok;->A01()V

    .line 103542
    return-void

    .line 103543
    :cond_2
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/ow;->A03:Z

    .line 103544
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/ow;->A04:Z

    if-eqz v0, :cond_4

    .line 103545
    iget-object v6, p0, Lcom/facebook/ads/redexgen/X/ow;->A06:Lcom/facebook/ads/redexgen/X/ok;

    sget-object v2, Lcom/facebook/ads/redexgen/X/ow;->A08:[Ljava/lang/String;

    const/4 v0, 0x0

    aget-object v1, v2, v0

    const/4 v0, 0x7

    aget-object v2, v2, v0

    const/4 v0, 0x6

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v1, v0, :cond_3

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_3
    sget-object v2, Lcom/facebook/ads/redexgen/X/ow;->A08:[Ljava/lang/String;

    const-string v1, "DdBgGw0WSHdH6u"

    const/4 v0, 0x3

    aput-object v1, v2, v0

    invoke-virtual {v6}, Lcom/facebook/ads/redexgen/X/ok;->A00()V

    .line 103546
    :cond_4
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/ow;->A06:Lcom/facebook/ads/redexgen/X/ok;

    invoke-virtual {v0, v3, v4}, Lcom/facebook/ads/redexgen/X/ok;->A02(J)V

    .line 103547
    invoke-interface {v5}, Lcom/facebook/ads/redexgen/X/78;->A8m()Lcom/facebook/ads/redexgen/X/px;

    move-result-object v1

    .line 103548
    .local v3, "playbackParameters":Lcom/facebook/ads/redexgen/X/px;
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/ow;->A06:Lcom/facebook/ads/redexgen/X/ok;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/ok;->A8m()Lcom/facebook/ads/redexgen/X/px;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/px;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 103549
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/ow;->A06:Lcom/facebook/ads/redexgen/X/ok;

    invoke-virtual {v0, v1}, Lcom/facebook/ads/redexgen/X/ok;->AJd(Lcom/facebook/ads/redexgen/X/px;)V

    .line 103550
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/ow;->A05:Lcom/facebook/ads/redexgen/X/6P;

    invoke-interface {v0, v1}, Lcom/facebook/ads/redexgen/X/6P;->AFI(Lcom/facebook/ads/redexgen/X/px;)V

    .line 103551
    :cond_5
    return-void
.end method

.method private A03(Z)Z
    .locals 4

    .line 103552
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/ow;->A01:Lcom/facebook/ads/redexgen/X/oo;

    if-eqz v0, :cond_1

    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/ow;->A01:Lcom/facebook/ads/redexgen/X/oo;

    sget-object v2, Lcom/facebook/ads/redexgen/X/ow;->A08:[Ljava/lang/String;

    const/4 v0, 0x0

    aget-object v1, v2, v0

    const/4 v0, 0x7

    aget-object v2, v2, v0

    const/4 v0, 0x6

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v1, v0, :cond_0

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    .line 103553
    :cond_0
    sget-object v2, Lcom/facebook/ads/redexgen/X/ow;->A08:[Ljava/lang/String;

    const-string v1, "259perxNRfR5uYao2q6cSAfIVJfeeK6N"

    const/4 v0, 0x0

    aput-object v1, v2, v0

    const-string v1, "EI3wTVxb9Zi5034aB38J7XgUXur7uJJK"

    const/4 v0, 0x7

    aput-object v1, v2, v0

    invoke-interface {v3}, Lcom/facebook/ads/redexgen/X/oo;->AAP()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/ow;->A01:Lcom/facebook/ads/redexgen/X/oo;

    .line 103554
    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/oo;->AAe()Z

    move-result v0

    if-nez v0, :cond_3

    if-nez p1, :cond_1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/ow;->A01:Lcom/facebook/ads/redexgen/X/oo;

    .line 103555
    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/oo;->A9p()Z

    move-result v3

    sget-object v2, Lcom/facebook/ads/redexgen/X/ow;->A08:[Ljava/lang/String;

    const/4 v0, 0x4

    aget-object v1, v2, v0

    const/4 v0, 0x5

    aget-object v2, v2, v0

    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v1, v0, :cond_2

    sget-object v2, Lcom/facebook/ads/redexgen/X/ow;->A08:[Ljava/lang/String;

    const-string v1, "UNE8e4mByuhRiLOUb8sZtJ"

    const/4 v0, 0x3

    aput-object v1, v2, v0

    if-eqz v3, :cond_3

    :cond_1
    :goto_0
    const/4 v0, 0x1

    .line 103556
    :goto_1
    return v0

    :cond_2
    if-eqz v3, :cond_3

    goto :goto_0

    .line 103557
    :cond_3
    const/4 v0, 0x0

    goto :goto_1
.end method


# virtual methods
.method public final A04(Z)J
    .locals 2

    .line 103558
    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/ow;->A02(Z)V

    .line 103559
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/ow;->A8p()J

    move-result-wide v0

    return-wide v0
.end method

.method public final A05()V
    .locals 1

    .line 103560
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/ow;->A04:Z

    .line 103561
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/ow;->A06:Lcom/facebook/ads/redexgen/X/ok;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/ok;->A00()V

    .line 103562
    return-void
.end method

.method public final A06()V
    .locals 1

    .line 103563
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/ow;->A04:Z

    .line 103564
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/ow;->A06:Lcom/facebook/ads/redexgen/X/ok;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/ok;->A01()V

    .line 103565
    return-void
.end method

.method public final A07(J)V
    .locals 1

    .line 103566
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/ow;->A06:Lcom/facebook/ads/redexgen/X/ok;

    invoke-virtual {v0, p1, p2}, Lcom/facebook/ads/redexgen/X/ok;->A02(J)V

    .line 103567
    return-void
.end method

.method public final A08(Lcom/facebook/ads/redexgen/X/oo;)V
    .locals 1

    .line 103568
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/ow;->A01:Lcom/facebook/ads/redexgen/X/oo;

    if-ne p1, v0, :cond_0

    .line 103569
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/ow;->A00:Lcom/facebook/ads/redexgen/X/78;

    .line 103570
    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/ow;->A01:Lcom/facebook/ads/redexgen/X/oo;

    .line 103571
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/ow;->A03:Z

    .line 103572
    :cond_0
    return-void
.end method

.method public final A09(Lcom/facebook/ads/redexgen/X/oo;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/facebook/ads/redexgen/X/AD;
        }
    .end annotation

    .line 103573
    invoke-interface {p1}, Lcom/facebook/ads/redexgen/X/oo;->A8T()Lcom/facebook/ads/redexgen/X/78;

    move-result-object v4

    .line 103574
    .local v0, "rendererMediaClock":Lcom/facebook/ads/redexgen/X/78;
    if-eqz v4, :cond_1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/ow;->A00:Lcom/facebook/ads/redexgen/X/78;

    if-eq v4, v0, :cond_1

    .line 103575
    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/ow;->A00:Lcom/facebook/ads/redexgen/X/78;

    sget-object v2, Lcom/facebook/ads/redexgen/X/ow;->A08:[Ljava/lang/String;

    const/4 v0, 0x0

    aget-object v1, v2, v0

    const/4 v0, 0x7

    aget-object v2, v2, v0

    const/4 v0, 0x6

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v1, v0, :cond_0

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_0
    sget-object v2, Lcom/facebook/ads/redexgen/X/ow;->A08:[Ljava/lang/String;

    const-string v1, "dGOISEf"

    const/4 v0, 0x3

    aput-object v1, v2, v0

    if-nez v3, :cond_2

    .line 103576
    iput-object v4, p0, Lcom/facebook/ads/redexgen/X/ow;->A00:Lcom/facebook/ads/redexgen/X/78;

    .line 103577
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/ow;->A01:Lcom/facebook/ads/redexgen/X/oo;

    .line 103578
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/ow;->A00:Lcom/facebook/ads/redexgen/X/78;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/ow;->A06:Lcom/facebook/ads/redexgen/X/ok;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/ok;->A8m()Lcom/facebook/ads/redexgen/X/px;

    move-result-object v0

    invoke-interface {v1, v0}, Lcom/facebook/ads/redexgen/X/78;->AJd(Lcom/facebook/ads/redexgen/X/px;)V

    .line 103579
    :cond_1
    return-void

    .line 103580
    :cond_2
    const/4 v2, 0x0

    const/16 v1, 0x27

    const/16 v0, 0x8

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/ow;->A00(III)Ljava/lang/String;

    move-result-object v1

    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/AD;->A02(Ljava/lang/RuntimeException;)Lcom/facebook/ads/redexgen/X/AD;

    move-result-object v0

    throw v0
.end method

.method public final A8m()Lcom/facebook/ads/redexgen/X/px;
    .locals 1

    .line 103581
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/ow;->A00:Lcom/facebook/ads/redexgen/X/78;

    if-eqz v0, :cond_0

    .line 103582
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/ow;->A00:Lcom/facebook/ads/redexgen/X/78;

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/78;->A8m()Lcom/facebook/ads/redexgen/X/px;

    move-result-object v0

    .line 103583
    :goto_0
    return-object v0

    .line 103584
    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/ow;->A06:Lcom/facebook/ads/redexgen/X/ok;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/ok;->A8m()Lcom/facebook/ads/redexgen/X/px;

    move-result-object v0

    goto :goto_0
.end method

.method public final A8p()J
    .locals 2

    .line 103585
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/ow;->A03:Z

    if-eqz v0, :cond_0

    .line 103586
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/ow;->A06:Lcom/facebook/ads/redexgen/X/ok;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/ok;->A8p()J

    move-result-wide v0

    .line 103587
    :goto_0
    return-wide v0

    .line 103588
    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/ow;->A00:Lcom/facebook/ads/redexgen/X/78;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/3y;->A01(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/redexgen/X/78;

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/78;->A8p()J

    move-result-wide v0

    goto :goto_0
.end method

.method public final AJd(Lcom/facebook/ads/redexgen/X/px;)V
    .locals 1
    .annotation runtime Lcom/facebook/video/heroplayer/exocustom/MetaExoPlayerCustomization;
        type = {
            "FEATURE_LOGIC"
        }
        value = "This reverts a bug introduced in D48802706. The upgraded exoaccounts for this but not the old exo. Hence, this is needed here temporarily"
    .end annotation

    .line 103589
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/ow;->A00:Lcom/facebook/ads/redexgen/X/78;

    if-eqz v0, :cond_0

    .line 103590
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/ow;->A00:Lcom/facebook/ads/redexgen/X/78;

    invoke-interface {v0, p1}, Lcom/facebook/ads/redexgen/X/78;->AJd(Lcom/facebook/ads/redexgen/X/px;)V

    .line 103591
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/ow;->A00:Lcom/facebook/ads/redexgen/X/78;

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/78;->A8m()Lcom/facebook/ads/redexgen/X/px;

    move-result-object p1

    .line 103592
    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/ow;->A06:Lcom/facebook/ads/redexgen/X/ok;

    invoke-virtual {v0, p1}, Lcom/facebook/ads/redexgen/X/ok;->AJd(Lcom/facebook/ads/redexgen/X/px;)V

    .line 103593
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/ow;->A02:Z

    if-eqz v0, :cond_1

    .line 103594
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/ow;->A05:Lcom/facebook/ads/redexgen/X/6P;

    invoke-interface {v0, p1}, Lcom/facebook/ads/redexgen/X/6P;->AFI(Lcom/facebook/ads/redexgen/X/px;)V

    .line 103595
    :cond_1
    return-void
.end method
