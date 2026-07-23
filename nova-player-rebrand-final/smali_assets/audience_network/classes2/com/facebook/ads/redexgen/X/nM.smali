.class public final Lcom/facebook/ads/redexgen/X/nM;
.super Lcom/facebook/ads/redexgen/X/Eh;
.source ""

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/ads/redexgen/X/9h;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "AudioTrackInfo"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/facebook/ads/redexgen/X/Eh<",
        "Lcom/facebook/ads/redexgen/X/nM;",
        ">;",
        "Ljava/lang/Comparable<",
        "Lcom/facebook/ads/redexgen/X/nM;",
        ">;"
    }
.end annotation


# static fields
.field public static A0I:[Ljava/lang/String;


# instance fields
.field public final A00:I

.field public final A01:I

.field public final A02:I

.field public final A03:I

.field public final A04:I

.field public final A05:I

.field public final A06:I

.field public final A07:I

.field public final A08:I

.field public final A09:I

.field public final A0A:Lcom/facebook/ads/redexgen/X/9i;

.field public final A0B:Ljava/lang/String;

.field public final A0C:Z

.field public final A0D:Z

.field public final A0E:Z

.field public final A0F:Z

.field public final A0G:Z

.field public final A0H:Z


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    .line 3296
    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "kuPF6Ds61I7lkNvdz9bcVPsTInik8V3M"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "Qk0zKRkYsaxRz9XBLHG1rmY7ne3qL"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "U5xl3sY91uvZaW"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "4oEkNGaUX02G9U6MTdWApFSB5pjWlUNx"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "CFtCC3eFdvC"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "EnNVjubCw6rdwWEp5vRTdV2Ipxq1ST06"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "834ujo2VifTXBI2K"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "5tr2zEJniV6LNy5ijK5ku"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/nM;->A0I:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(ILcom/facebook/ads/redexgen/X/pg;ILcom/facebook/ads/redexgen/X/9i;IZLcom/facebook/ads/redexgen/X/kj;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/facebook/ads/redexgen/X/pg;",
            "I",
            "Lcom/facebook/ads/redexgen/X/9i;",
            "IZ",
            "Lcom/facebook/ads/redexgen/X/kj<",
            "Lcom/facebook/ads/redexgen/X/qI;",
            ">;)V"
        }
    .end annotation

    .line 100519
    .local p14, "withinAudioChannelCountConstraints":Lcom/facebook/ads/redexgen/X/kj;, "Lcom/google/common/base/Predicate<Lcom/facebook/ads/androidx/media3/common/Format;>;"
    move-object v2, p0

    invoke-direct {p0, p1, p2, p3}, Lcom/facebook/ads/redexgen/X/Eh;-><init>(ILcom/facebook/ads/redexgen/X/pg;I)V

    .line 100520
    iput-object p4, v2, Lcom/facebook/ads/redexgen/X/nM;->A0A:Lcom/facebook/ads/redexgen/X/9i;

    .line 100521
    iget-object v0, v2, Lcom/facebook/ads/redexgen/X/Eh;->A02:Lcom/facebook/ads/redexgen/X/qI;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/qI;->A0V:Ljava/lang/String;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/9h;->A0K(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v2, Lcom/facebook/ads/redexgen/X/nM;->A0B:Ljava/lang/String;

    .line 100522
    const/4 v3, 0x0

    invoke-static {p5, v3}, Lcom/facebook/ads/redexgen/X/9h;->A0S(IZ)Z

    move-result v0

    iput-boolean v0, v2, Lcom/facebook/ads/redexgen/X/nM;->A0F:Z

    .line 100523
    const/4 v6, 0x0

    .line 100524
    .local v4, "bestLanguageScore":I
    const v5, 0x7fffffff

    .line 100525
    .local v5, "bestLanguageIndex":I
    const/4 v4, 0x0

    .local v6, "i":I
    :goto_0
    iget-object v0, p4, Lcom/facebook/ads/redexgen/X/pc;->A0I:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v4, v0, :cond_0

    .line 100526
    iget-object v1, v2, Lcom/facebook/ads/redexgen/X/Eh;->A02:Lcom/facebook/ads/redexgen/X/qI;

    iget-object v0, p4, Lcom/facebook/ads/redexgen/X/pc;->A0I:Ljava/util/List;

    .line 100527
    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 100528
    invoke-static {v1, v0, v3}, Lcom/facebook/ads/redexgen/X/9h;->A02(Lcom/facebook/ads/redexgen/X/qI;Ljava/lang/String;Z)I

    move-result v0

    .line 100529
    .local v7, "score":I
    if-lez v0, :cond_d

    .line 100530
    move v5, v4

    .line 100531
    move v6, v0

    .line 100532
    .end local v6    # "i":I
    :cond_0
    iput v5, v2, Lcom/facebook/ads/redexgen/X/nM;->A04:I

    .line 100533
    iput v6, v2, Lcom/facebook/ads/redexgen/X/nM;->A05:I

    .line 100534
    iget-object v0, v2, Lcom/facebook/ads/redexgen/X/Eh;->A02:Lcom/facebook/ads/redexgen/X/qI;

    iget v1, v0, Lcom/facebook/ads/redexgen/X/qI;->A0E:I

    iget v0, p4, Lcom/facebook/ads/redexgen/X/pc;->A0B:I

    .line 100535
    invoke-static {v1, v0}, Lcom/facebook/ads/redexgen/X/9h;->A01(II)I

    move-result v0

    iput v0, v2, Lcom/facebook/ads/redexgen/X/nM;->A07:I

    .line 100536
    iget-object v0, v2, Lcom/facebook/ads/redexgen/X/Eh;->A02:Lcom/facebook/ads/redexgen/X/qI;

    iget v0, v0, Lcom/facebook/ads/redexgen/X/qI;->A0E:I

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    iget-object v0, v2, Lcom/facebook/ads/redexgen/X/Eh;->A02:Lcom/facebook/ads/redexgen/X/qI;

    iget v0, v0, Lcom/facebook/ads/redexgen/X/qI;->A0E:I

    and-int/2addr v0, v1

    if-eqz v0, :cond_c

    :cond_1
    const/4 v0, 0x1

    :goto_1
    iput-boolean v0, v2, Lcom/facebook/ads/redexgen/X/nM;->A0C:Z

    .line 100537
    iget-object v0, v2, Lcom/facebook/ads/redexgen/X/Eh;->A02:Lcom/facebook/ads/redexgen/X/qI;

    iget v0, v0, Lcom/facebook/ads/redexgen/X/qI;->A0H:I

    and-int/2addr v0, v1

    if-eqz v0, :cond_b

    const/4 v0, 0x1

    :goto_2
    iput-boolean v0, v2, Lcom/facebook/ads/redexgen/X/nM;->A0D:Z

    .line 100538
    iget-object v0, v2, Lcom/facebook/ads/redexgen/X/Eh;->A02:Lcom/facebook/ads/redexgen/X/qI;

    iget v0, v0, Lcom/facebook/ads/redexgen/X/qI;->A06:I

    iput v0, v2, Lcom/facebook/ads/redexgen/X/nM;->A01:I

    .line 100539
    iget-object v0, v2, Lcom/facebook/ads/redexgen/X/Eh;->A02:Lcom/facebook/ads/redexgen/X/qI;

    iget v0, v0, Lcom/facebook/ads/redexgen/X/qI;->A0G:I

    iput v0, v2, Lcom/facebook/ads/redexgen/X/nM;->A08:I

    .line 100540
    iget-object v0, v2, Lcom/facebook/ads/redexgen/X/Eh;->A02:Lcom/facebook/ads/redexgen/X/qI;

    iget v0, v0, Lcom/facebook/ads/redexgen/X/qI;->A05:I

    iput v0, v2, Lcom/facebook/ads/redexgen/X/nM;->A00:I

    .line 100541
    iget-object v0, v2, Lcom/facebook/ads/redexgen/X/Eh;->A02:Lcom/facebook/ads/redexgen/X/qI;

    iget v0, v0, Lcom/facebook/ads/redexgen/X/qI;->A05:I

    const/4 v4, -0x1

    if-eq v0, v4, :cond_2

    iget-object v0, v2, Lcom/facebook/ads/redexgen/X/Eh;->A02:Lcom/facebook/ads/redexgen/X/qI;

    iget v1, v0, Lcom/facebook/ads/redexgen/X/qI;->A05:I

    iget v0, p4, Lcom/facebook/ads/redexgen/X/pc;->A01:I

    if-gt v1, v0, :cond_a

    :cond_2
    iget-object v0, v2, Lcom/facebook/ads/redexgen/X/Eh;->A02:Lcom/facebook/ads/redexgen/X/qI;

    iget v0, v0, Lcom/facebook/ads/redexgen/X/qI;->A06:I

    if-eq v0, v4, :cond_3

    iget-object v0, v2, Lcom/facebook/ads/redexgen/X/Eh;->A02:Lcom/facebook/ads/redexgen/X/qI;

    iget v1, v0, Lcom/facebook/ads/redexgen/X/qI;->A06:I

    iget v0, p4, Lcom/facebook/ads/redexgen/X/pc;->A02:I

    if-gt v1, v0, :cond_a

    :cond_3
    iget-object v0, v2, Lcom/facebook/ads/redexgen/X/Eh;->A02:Lcom/facebook/ads/redexgen/X/qI;

    .line 100542
    invoke-interface {p7, v0}, Lcom/facebook/ads/redexgen/X/kj;->A4C(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    const/4 v0, 0x1

    :goto_3
    iput-boolean v0, v2, Lcom/facebook/ads/redexgen/X/nM;->A0E:Z

    .line 100543
    invoke-static {}, Lcom/facebook/ads/redexgen/X/5C;->A1L()[Ljava/lang/String;

    move-result-object v7

    .line 100544
    .local v6, "localeLanguages":[Ljava/lang/String;
    const v6, 0x7fffffff

    .line 100545
    .local p1, "bestLocaleMatchIndex":I
    const/4 v5, 0x0

    .line 100546
    .local p2, "bestLocaleMatchScore":I
    const/4 v4, 0x0

    .local p3, "i":I
    :goto_4
    array-length v0, v7

    if-ge v4, v0, :cond_4

    .line 100547
    iget-object v1, v2, Lcom/facebook/ads/redexgen/X/Eh;->A02:Lcom/facebook/ads/redexgen/X/qI;

    aget-object v0, v7, v4

    .line 100548
    invoke-static {v1, v0, v3}, Lcom/facebook/ads/redexgen/X/9h;->A02(Lcom/facebook/ads/redexgen/X/qI;Ljava/lang/String;Z)I

    move-result v0

    .line 100549
    .local p4, "score":I
    if-lez v0, :cond_9

    .line 100550
    move v6, v4

    .line 100551
    move v5, v0

    .line 100552
    .end local p3    # "i":I
    :cond_4
    iput v6, v2, Lcom/facebook/ads/redexgen/X/nM;->A02:I

    .line 100553
    iput v5, v2, Lcom/facebook/ads/redexgen/X/nM;->A03:I

    .line 100554
    const v5, 0x7fffffff

    .line 100555
    .local p3, "bestMimeTypeMatchIndex":I
    const/4 v4, 0x0

    .local p4, "i":I
    :goto_5
    iget-object v0, p4, Lcom/facebook/ads/redexgen/X/pc;->A0J:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v4, v0, :cond_5

    .line 100556
    iget-object v0, v2, Lcom/facebook/ads/redexgen/X/Eh;->A02:Lcom/facebook/ads/redexgen/X/qI;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/qI;->A0W:Ljava/lang/String;

    if-eqz v0, :cond_8

    iget-object v0, v2, Lcom/facebook/ads/redexgen/X/Eh;->A02:Lcom/facebook/ads/redexgen/X/qI;

    iget-object v1, v0, Lcom/facebook/ads/redexgen/X/qI;->A0W:Ljava/lang/String;

    iget-object v0, p4, Lcom/facebook/ads/redexgen/X/pc;->A0J:Ljava/util/List;

    .line 100557
    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 100558
    move v5, v4

    .line 100559
    .end local p4    # "i":I
    :cond_5
    iput v5, v2, Lcom/facebook/ads/redexgen/X/nM;->A06:I

    .line 100560
    invoke-static {p5}, Lcom/facebook/ads/redexgen/X/7i;->A02(I)I

    move-result v1

    const/16 v0, 0x80

    if-ne v1, v0, :cond_7

    const/4 v0, 0x1

    :goto_6
    iput-boolean v0, v2, Lcom/facebook/ads/redexgen/X/nM;->A0H:Z

    .line 100561
    invoke-static {p5}, Lcom/facebook/ads/redexgen/X/7i;->A04(I)I

    move-result v1

    const/16 v0, 0x40

    if-ne v1, v0, :cond_6

    const/4 v3, 0x1

    :cond_6
    iput-boolean v3, v2, Lcom/facebook/ads/redexgen/X/nM;->A0G:Z

    .line 100562
    invoke-direct {p0, p5, p6}, Lcom/facebook/ads/redexgen/X/nM;->A00(IZ)I

    move-result v0

    iput v0, v2, Lcom/facebook/ads/redexgen/X/nM;->A09:I

    .line 100563
    return-void

    .line 100564
    :cond_7
    const/4 v0, 0x0

    goto :goto_6

    .line 100565
    :cond_8
    add-int/lit8 v4, v4, 0x1

    goto :goto_5

    .line 100566
    .end local p4
    :cond_9
    add-int/lit8 v4, v4, 0x1

    goto :goto_4

    .line 100567
    :cond_a
    const/4 v0, 0x0

    goto :goto_3

    .line 100568
    :cond_b
    const/4 v0, 0x0

    goto/16 :goto_2

    .line 100569
    :cond_c
    const/4 v0, 0x0

    goto/16 :goto_1

    .line 100570
    .end local v7    # "score":I
    :cond_d
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_0
.end method

.method private A00(IZ)I
    .locals 2

    .line 100571
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/nM;->A0A:Lcom/facebook/ads/redexgen/X/9i;

    iget-boolean v0, v0, Lcom/facebook/ads/redexgen/X/9i;->A0B:Z

    invoke-static {p1, v0}, Lcom/facebook/ads/redexgen/X/9h;->A0S(IZ)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 100572
    return v1

    .line 100573
    :cond_0
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/nM;->A0E:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/nM;->A0A:Lcom/facebook/ads/redexgen/X/9i;

    iget-boolean v0, v0, Lcom/facebook/ads/redexgen/X/9i;->A09:Z

    if-nez v0, :cond_1

    .line 100574
    return v1

    .line 100575
    :cond_1
    invoke-static {p1, v1}, Lcom/facebook/ads/redexgen/X/9h;->A0S(IZ)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/nM;->A0E:Z

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Eh;->A02:Lcom/facebook/ads/redexgen/X/qI;

    iget v1, v0, Lcom/facebook/ads/redexgen/X/qI;->A05:I

    const/4 v0, -0x1

    if-eq v1, v0, :cond_3

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/nM;->A0A:Lcom/facebook/ads/redexgen/X/9i;

    iget-boolean v0, v0, Lcom/facebook/ads/redexgen/X/pc;->A0N:Z

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/nM;->A0A:Lcom/facebook/ads/redexgen/X/9i;

    iget-boolean v0, v0, Lcom/facebook/ads/redexgen/X/pc;->A0O:Z

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/nM;->A0A:Lcom/facebook/ads/redexgen/X/9i;

    iget-boolean v0, v0, Lcom/facebook/ads/redexgen/X/9i;->A04:Z

    if-nez v0, :cond_2

    if-nez p2, :cond_3

    .line 100576
    :cond_2
    const/4 v0, 0x2

    .line 100577
    :goto_0
    return v0

    .line 100578
    :cond_3
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private final A01(Lcom/facebook/ads/redexgen/X/nM;)I
    .locals 6

    .line 100579
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/nM;->A0E:Z

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/nM;->A0F:Z

    if-eqz v0, :cond_2

    .line 100580
    invoke-static {}, Lcom/facebook/ads/redexgen/X/9h;->A0H()Lcom/facebook/ads/redexgen/X/qK;

    move-result-object v5

    .line 100581
    .local v0, "qualityOrdering":Lcom/facebook/ads/redexgen/X/qK;, "Lcom/google/common/collect/Ordering<Ljava/lang/Integer;>;"
    :goto_0
    invoke-static {}, Lcom/facebook/ads/redexgen/X/ns;->A01()Lcom/facebook/ads/redexgen/X/ns;

    move-result-object v2

    iget-boolean v1, p0, Lcom/facebook/ads/redexgen/X/nM;->A0F:Z

    iget-boolean v0, p1, Lcom/facebook/ads/redexgen/X/nM;->A0F:Z

    .line 100582
    invoke-virtual {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/ns;->A09(ZZ)Lcom/facebook/ads/redexgen/X/ns;

    move-result-object v3

    iget v0, p0, Lcom/facebook/ads/redexgen/X/nM;->A04:I

    .line 100583
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget v0, p1, Lcom/facebook/ads/redexgen/X/nM;->A04:I

    .line 100584
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 100585
    invoke-static {}, Lcom/facebook/ads/redexgen/X/qK;->A03()Lcom/facebook/ads/redexgen/X/BB;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/BB;->A06()Lcom/facebook/ads/redexgen/X/qK;

    move-result-object v0

    .line 100586
    invoke-virtual {v3, v2, v1, v0}, Lcom/facebook/ads/redexgen/X/ns;->A08(Ljava/lang/Object;Ljava/lang/Object;Ljava/util/Comparator;)Lcom/facebook/ads/redexgen/X/ns;

    move-result-object v2

    iget v1, p0, Lcom/facebook/ads/redexgen/X/nM;->A05:I

    iget v0, p1, Lcom/facebook/ads/redexgen/X/nM;->A05:I

    .line 100587
    invoke-virtual {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/ns;->A06(II)Lcom/facebook/ads/redexgen/X/ns;

    move-result-object v2

    iget v1, p0, Lcom/facebook/ads/redexgen/X/nM;->A07:I

    iget v0, p1, Lcom/facebook/ads/redexgen/X/nM;->A07:I

    .line 100588
    invoke-virtual {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/ns;->A06(II)Lcom/facebook/ads/redexgen/X/ns;

    move-result-object v2

    iget-boolean v1, p0, Lcom/facebook/ads/redexgen/X/nM;->A0D:Z

    iget-boolean v0, p1, Lcom/facebook/ads/redexgen/X/nM;->A0D:Z

    .line 100589
    invoke-virtual {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/ns;->A09(ZZ)Lcom/facebook/ads/redexgen/X/ns;

    move-result-object v2

    iget-boolean v1, p0, Lcom/facebook/ads/redexgen/X/nM;->A0C:Z

    iget-boolean v0, p1, Lcom/facebook/ads/redexgen/X/nM;->A0C:Z

    .line 100590
    invoke-virtual {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/ns;->A09(ZZ)Lcom/facebook/ads/redexgen/X/ns;

    move-result-object v3

    iget v0, p0, Lcom/facebook/ads/redexgen/X/nM;->A02:I

    .line 100591
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget v0, p1, Lcom/facebook/ads/redexgen/X/nM;->A02:I

    .line 100592
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 100593
    invoke-static {}, Lcom/facebook/ads/redexgen/X/qK;->A03()Lcom/facebook/ads/redexgen/X/BB;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/BB;->A06()Lcom/facebook/ads/redexgen/X/qK;

    move-result-object v0

    .line 100594
    invoke-virtual {v3, v2, v1, v0}, Lcom/facebook/ads/redexgen/X/ns;->A08(Ljava/lang/Object;Ljava/lang/Object;Ljava/util/Comparator;)Lcom/facebook/ads/redexgen/X/ns;

    move-result-object v2

    iget v1, p0, Lcom/facebook/ads/redexgen/X/nM;->A03:I

    iget v0, p1, Lcom/facebook/ads/redexgen/X/nM;->A03:I

    .line 100595
    invoke-virtual {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/ns;->A06(II)Lcom/facebook/ads/redexgen/X/ns;

    move-result-object v2

    iget-boolean v1, p0, Lcom/facebook/ads/redexgen/X/nM;->A0E:Z

    iget-boolean v0, p1, Lcom/facebook/ads/redexgen/X/nM;->A0E:Z

    .line 100596
    invoke-virtual {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/ns;->A09(ZZ)Lcom/facebook/ads/redexgen/X/ns;

    move-result-object v3

    iget v0, p0, Lcom/facebook/ads/redexgen/X/nM;->A06:I

    .line 100597
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget v0, p1, Lcom/facebook/ads/redexgen/X/nM;->A06:I

    .line 100598
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 100599
    invoke-static {}, Lcom/facebook/ads/redexgen/X/qK;->A03()Lcom/facebook/ads/redexgen/X/BB;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/BB;->A06()Lcom/facebook/ads/redexgen/X/qK;

    move-result-object v0

    .line 100600
    invoke-virtual {v3, v2, v1, v0}, Lcom/facebook/ads/redexgen/X/ns;->A08(Ljava/lang/Object;Ljava/lang/Object;Ljava/util/Comparator;)Lcom/facebook/ads/redexgen/X/ns;

    move-result-object v3

    iget v0, p0, Lcom/facebook/ads/redexgen/X/nM;->A00:I

    .line 100601
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget v0, p1, Lcom/facebook/ads/redexgen/X/nM;->A00:I

    .line 100602
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 100603
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/nM;->A0A:Lcom/facebook/ads/redexgen/X/9i;

    iget-boolean v0, v0, Lcom/facebook/ads/redexgen/X/pc;->A0O:Z

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/facebook/ads/redexgen/X/9h;->A0H()Lcom/facebook/ads/redexgen/X/qK;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/qK;->A06()Lcom/facebook/ads/redexgen/X/qK;

    move-result-object v0

    .line 100604
    :goto_1
    invoke-virtual {v3, v2, v1, v0}, Lcom/facebook/ads/redexgen/X/ns;->A08(Ljava/lang/Object;Ljava/lang/Object;Ljava/util/Comparator;)Lcom/facebook/ads/redexgen/X/ns;

    move-result-object v2

    iget-boolean v1, p0, Lcom/facebook/ads/redexgen/X/nM;->A0H:Z

    iget-boolean v0, p1, Lcom/facebook/ads/redexgen/X/nM;->A0H:Z

    .line 100605
    invoke-virtual {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/ns;->A09(ZZ)Lcom/facebook/ads/redexgen/X/ns;

    move-result-object v2

    iget-boolean v1, p0, Lcom/facebook/ads/redexgen/X/nM;->A0G:Z

    iget-boolean v0, p1, Lcom/facebook/ads/redexgen/X/nM;->A0G:Z

    .line 100606
    invoke-virtual {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/ns;->A09(ZZ)Lcom/facebook/ads/redexgen/X/ns;

    move-result-object v2

    iget v0, p0, Lcom/facebook/ads/redexgen/X/nM;->A01:I

    .line 100607
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget v0, p1, Lcom/facebook/ads/redexgen/X/nM;->A01:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v2, v1, v0, v5}, Lcom/facebook/ads/redexgen/X/ns;->A08(Ljava/lang/Object;Ljava/lang/Object;Ljava/util/Comparator;)Lcom/facebook/ads/redexgen/X/ns;

    move-result-object v2

    iget v0, p0, Lcom/facebook/ads/redexgen/X/nM;->A08:I

    .line 100608
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget v0, p1, Lcom/facebook/ads/redexgen/X/nM;->A08:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v2, v1, v0, v5}, Lcom/facebook/ads/redexgen/X/ns;->A08(Ljava/lang/Object;Ljava/lang/Object;Ljava/util/Comparator;)Lcom/facebook/ads/redexgen/X/ns;

    move-result-object v4

    iget v0, p0, Lcom/facebook/ads/redexgen/X/nM;->A00:I

    .line 100609
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iget v0, p1, Lcom/facebook/ads/redexgen/X/nM;->A00:I

    .line 100610
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 100611
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/nM;->A0B:Ljava/lang/String;

    iget-object v0, p1, Lcom/facebook/ads/redexgen/X/nM;->A0B:Ljava/lang/String;

    invoke-static {v1, v0}, Lcom/facebook/ads/redexgen/X/5C;->A1E(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 100612
    :goto_2
    invoke-virtual {v4, v3, v2, v5}, Lcom/facebook/ads/redexgen/X/ns;->A08(Ljava/lang/Object;Ljava/lang/Object;Ljava/util/Comparator;)Lcom/facebook/ads/redexgen/X/ns;

    move-result-object v0

    .line 100613
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/ns;->A05()I

    move-result v0

    .line 100614
    return v0

    .line 100615
    :cond_0
    invoke-static {}, Lcom/facebook/ads/redexgen/X/9h;->A0I()Lcom/facebook/ads/redexgen/X/qK;

    move-result-object v5

    goto :goto_2

    .line 100616
    :cond_1
    invoke-static {}, Lcom/facebook/ads/redexgen/X/9h;->A0I()Lcom/facebook/ads/redexgen/X/qK;

    move-result-object v0

    goto :goto_1

    .line 100617
    :cond_2
    invoke-static {}, Lcom/facebook/ads/redexgen/X/9h;->A0H()Lcom/facebook/ads/redexgen/X/qK;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/qK;->A06()Lcom/facebook/ads/redexgen/X/qK;

    move-result-object v5

    goto/16 :goto_0
.end method

.method public static A02(Ljava/util/List;Ljava/util/List;)I
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/facebook/ads/redexgen/X/nM;",
            ">;",
            "Ljava/util/List<",
            "Lcom/facebook/ads/redexgen/X/nM;",
            ">;)I"
        }
    .end annotation

    .line 100618
    .local p1, "infos1":Ljava/util/List;, "Ljava/util/List<Lcom/facebook/ads/androidx/media3/exoplayer/trackselection/DefaultTrackSelector$AudioTrackInfo;>;"
    .local p2, "infos2":Ljava/util/List;, "Ljava/util/List<Lcom/facebook/ads/androidx/media3/exoplayer/trackselection/DefaultTrackSelector$AudioTrackInfo;>;"
    invoke-static {p0}, Ljava/util/Collections;->max(Ljava/util/Collection;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/facebook/ads/redexgen/X/nM;

    invoke-static {p1}, Ljava/util/Collections;->max(Ljava/util/Collection;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/redexgen/X/nM;

    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/nM;->A01(Lcom/facebook/ads/redexgen/X/nM;)I

    move-result v0

    return v0
.end method

.method public static A03(ILcom/facebook/ads/redexgen/X/pg;Lcom/facebook/ads/redexgen/X/9i;[IZLcom/facebook/ads/redexgen/X/kj;)Lcom/facebook/ads/redexgen/X/BP;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/facebook/ads/redexgen/X/pg;",
            "Lcom/facebook/ads/redexgen/X/9i;",
            "[IZ",
            "Lcom/facebook/ads/redexgen/X/kj<",
            "Lcom/facebook/ads/redexgen/X/qI;",
            ">;)",
            "Lcom/facebook/ads/redexgen/X/BP<",
            "Lcom/facebook/ads/redexgen/X/nM;",
            ">;"
        }
    .end annotation

    .line 100619
    .local p7, "withinAudioChannelCountConstraints":Lcom/facebook/ads/redexgen/X/kj;, "Lcom/google/common/base/Predicate<Lcom/facebook/ads/androidx/media3/common/Format;>;"
    invoke-static {}, Lcom/facebook/ads/redexgen/X/BP;->A01()Lcom/facebook/ads/redexgen/X/2K;

    move-result-object v1

    .line 100620
    .local v0, "listBuilder":Lcom/facebook/ads/redexgen/X/2K;, "Lcom/google/common/collect/ImmutableList$Builder<Lcom/facebook/ads/androidx/media3/exoplayer/trackselection/DefaultTrackSelector$AudioTrackInfo;>;"
    const/4 v5, 0x0

    .local v1, "i":I
    :goto_0
    move-object v4, p1

    iget v0, v4, Lcom/facebook/ads/redexgen/X/pg;->A01:I

    if-ge v5, v0, :cond_0

    .line 100621
    new-instance v2, Lcom/facebook/ads/redexgen/X/nM;

    aget v7, p3, v5

    move v8, p4

    move-object v6, p2

    move-object v9, p5

    move v3, p0

    invoke-direct/range {v2 .. v9}, Lcom/facebook/ads/redexgen/X/nM;-><init>(ILcom/facebook/ads/redexgen/X/pg;ILcom/facebook/ads/redexgen/X/9i;IZLcom/facebook/ads/redexgen/X/kj;)V

    invoke-virtual {v1, v2}, Lcom/facebook/ads/redexgen/X/2K;->A04(Ljava/lang/Object;)Lcom/facebook/ads/redexgen/X/2K;

    .line 100622
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 100623
    .end local v1    # "i":I
    :cond_0
    invoke-virtual {v1}, Lcom/facebook/ads/redexgen/X/2K;->A05()Lcom/facebook/ads/redexgen/X/BP;

    move-result-object v0

    return-object v0
.end method

.method private final A04(Lcom/facebook/ads/redexgen/X/nM;)Z
    .locals 5

    .line 100624
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/nM;->A0A:Lcom/facebook/ads/redexgen/X/9i;

    iget-boolean v0, v0, Lcom/facebook/ads/redexgen/X/9i;->A00:Z

    const/4 v3, -0x1

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Eh;->A02:Lcom/facebook/ads/redexgen/X/qI;

    iget v0, v0, Lcom/facebook/ads/redexgen/X/qI;->A06:I

    if-eq v0, v3, :cond_4

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Eh;->A02:Lcom/facebook/ads/redexgen/X/qI;

    iget v4, v0, Lcom/facebook/ads/redexgen/X/qI;->A06:I

    sget-object v2, Lcom/facebook/ads/redexgen/X/nM;->A0I:[Ljava/lang/String;

    const/4 v0, 0x5

    aget-object v1, v2, v0

    const/4 v0, 0x0

    aget-object v2, v2, v0

    const/4 v0, 0x5

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v1, v0, :cond_5

    sget-object v2, Lcom/facebook/ads/redexgen/X/nM;->A0I:[Ljava/lang/String;

    const-string v1, "4j0Ebeo7wJOJZxGoc5hIgJQJaA3nIP6d"

    const/4 v0, 0x5

    aput-object v1, v2, v0

    const-string v1, "7JU6hRyIHJ6Xx4Pnq3EsCWmSiYve8JpD"

    const/4 v0, 0x0

    aput-object v1, v2, v0

    iget-object v0, p1, Lcom/facebook/ads/redexgen/X/Eh;->A02:Lcom/facebook/ads/redexgen/X/qI;

    iget v0, v0, Lcom/facebook/ads/redexgen/X/qI;->A06:I

    if-ne v4, v0, :cond_4

    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/nM;->A0A:Lcom/facebook/ads/redexgen/X/9i;

    iget-boolean v0, v0, Lcom/facebook/ads/redexgen/X/9i;->A02:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Eh;->A02:Lcom/facebook/ads/redexgen/X/qI;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/qI;->A0W:Ljava/lang/String;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Eh;->A02:Lcom/facebook/ads/redexgen/X/qI;

    iget-object v1, v0, Lcom/facebook/ads/redexgen/X/qI;->A0W:Ljava/lang/String;

    iget-object v0, p1, Lcom/facebook/ads/redexgen/X/Eh;->A02:Lcom/facebook/ads/redexgen/X/qI;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/qI;->A0W:Ljava/lang/String;

    .line 100625
    invoke-static {v1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_4

    :cond_1
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/nM;->A0A:Lcom/facebook/ads/redexgen/X/9i;

    iget-boolean v0, v0, Lcom/facebook/ads/redexgen/X/9i;->A03:Z

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Eh;->A02:Lcom/facebook/ads/redexgen/X/qI;

    iget v0, v0, Lcom/facebook/ads/redexgen/X/qI;->A0G:I

    if-eq v0, v3, :cond_4

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Eh;->A02:Lcom/facebook/ads/redexgen/X/qI;

    iget v1, v0, Lcom/facebook/ads/redexgen/X/qI;->A0G:I

    iget-object v0, p1, Lcom/facebook/ads/redexgen/X/Eh;->A02:Lcom/facebook/ads/redexgen/X/qI;

    iget v0, v0, Lcom/facebook/ads/redexgen/X/qI;->A0G:I

    if-ne v1, v0, :cond_4

    :cond_2
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/nM;->A0A:Lcom/facebook/ads/redexgen/X/9i;

    iget-boolean v0, v0, Lcom/facebook/ads/redexgen/X/9i;->A01:Z

    if-nez v0, :cond_3

    iget-boolean v1, p0, Lcom/facebook/ads/redexgen/X/nM;->A0H:Z

    iget-boolean v0, p1, Lcom/facebook/ads/redexgen/X/nM;->A0H:Z

    if-ne v1, v0, :cond_4

    iget-boolean v1, p0, Lcom/facebook/ads/redexgen/X/nM;->A0G:Z

    iget-boolean v0, p1, Lcom/facebook/ads/redexgen/X/nM;->A0G:Z

    if-ne v1, v0, :cond_4

    :cond_3
    const/4 v0, 0x1

    .line 100626
    :goto_0
    return v0

    .line 100627
    :cond_4
    const/4 v0, 0x0

    goto :goto_0

    :cond_5
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
.end method


# virtual methods
.method public final A08()I
    .locals 1

    .line 100628
    iget v0, p0, Lcom/facebook/ads/redexgen/X/nM;->A09:I

    return v0
.end method

.method public final bridge synthetic A09(Lcom/facebook/ads/redexgen/X/Eh;)Z
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 100629
    check-cast p1, Lcom/facebook/ads/redexgen/X/nM;

    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/nM;->A04(Lcom/facebook/ads/redexgen/X/nM;)Z

    move-result v0

    return v0
.end method

.method public final bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 100630
    check-cast p1, Lcom/facebook/ads/redexgen/X/nM;

    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/nM;->A01(Lcom/facebook/ads/redexgen/X/nM;)I

    move-result v0

    return v0
.end method
