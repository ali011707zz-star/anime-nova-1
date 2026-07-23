.class public final Lcom/facebook/ads/redexgen/X/Qh;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/ads/redexgen/X/hr;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "LayoutState"
.end annotation


# static fields
.field public static A0C:[Ljava/lang/String;


# instance fields
.field public A00:I

.field public A01:I

.field public A02:I

.field public A03:I

.field public A04:I

.field public A05:I

.field public A06:I

.field public A07:I

.field public A08:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/facebook/ads/redexgen/X/RK;",
            ">;"
        }
    .end annotation
.end field

.field public A09:Z

.field public A0A:Z

.field public A0B:Z


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    .line 1599
    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "zYBO"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "VrDNMGAmElYb4SYFj9Lpkrq1UWScNn1g"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "4mNmwJxO6cgQvBVSRxGC"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "9gqvUwqHV9nyPc72vXSv6mEX866dBdM"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "nltTkdARyojUYdv3T0NiqQmXwvESfaB"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "A7Q8ygVI07x7oKl7LsiAf8"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "TfmPmCKdg"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "Y"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/Qh;->A0C:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 60467
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60468
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/Qh;->A0B:Z

    .line 60469
    const/4 v0, 0x0

    iput v0, p0, Lcom/facebook/ads/redexgen/X/Qh;->A02:I

    .line 60470
    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/Qh;->A0A:Z

    .line 60471
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Qh;->A08:Ljava/util/List;

    return-void
.end method

.method private A00()Landroid/view/View;
    .locals 6

    .line 60472
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Qh;->A08:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v5

    .line 60473
    .local v0, "size":I
    const/4 v4, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v4, v5, :cond_2

    .line 60474
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Qh;->A08:Ljava/util/List;

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/redexgen/X/RK;

    iget-object v3, v0, Lcom/facebook/ads/redexgen/X/RK;->A0H:Landroid/view/View;

    .line 60475
    .local v2, "view":Landroid/view/View;
    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Lcom/facebook/ads/redexgen/X/R3;

    .line 60476
    .local v3, "lp":Lcom/facebook/ads/redexgen/X/R3;
    invoke-virtual {v2}, Lcom/facebook/ads/redexgen/X/R3;->A02()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 60477
    .end local v2    # "view":Landroid/view/View;
    .end local v3    # "lp":Lcom/facebook/ads/redexgen/X/R3;
    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 60478
    :cond_1
    iget v1, p0, Lcom/facebook/ads/redexgen/X/Qh;->A01:I

    invoke-virtual {v2}, Lcom/facebook/ads/redexgen/X/R3;->A00()I

    move-result v0

    if-ne v1, v0, :cond_0

    .line 60479
    invoke-direct {p0, v3}, Lcom/facebook/ads/redexgen/X/Qh;->A02(Landroid/view/View;)V

    .line 60480
    return-object v3

    .line 60481
    .end local v1    # "i":I
    :cond_2
    const/4 v3, 0x0

    sget-object v2, Lcom/facebook/ads/redexgen/X/Qh;->A0C:[Ljava/lang/String;

    const/4 v0, 0x3

    aget-object v1, v2, v0

    const/4 v0, 0x4

    aget-object v0, v2, v0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eq v1, v0, :cond_3

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_3
    sget-object v2, Lcom/facebook/ads/redexgen/X/Qh;->A0C:[Ljava/lang/String;

    const-string v1, "XAMH"

    const/4 v0, 0x0

    aput-object v1, v2, v0

    return-object v3
.end method

.method private final A01(Landroid/view/View;)Landroid/view/View;
    .locals 10

    .line 60482
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Qh;->A08:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v6

    .line 60483
    .local v0, "size":I
    const/4 v9, 0x0

    .line 60484
    .local v1, "closest":Landroid/view/View;
    const v5, 0x7fffffff

    .line 60485
    .local v2, "closestDistance":I
    const/4 v4, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v4, v6, :cond_1

    .line 60486
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Qh;->A08:Ljava/util/List;

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/redexgen/X/RK;

    iget-object v3, v0, Lcom/facebook/ads/redexgen/X/RK;->A0H:Landroid/view/View;

    .line 60487
    .local v4, "view":Landroid/view/View;
    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v7

    check-cast v7, Lcom/facebook/ads/redexgen/X/R3;

    .line 60488
    .local v5, "lp":Lcom/facebook/ads/redexgen/X/R3;
    if-eq v3, p1, :cond_3

    invoke-virtual {v7}, Lcom/facebook/ads/redexgen/X/R3;->A02()Z

    move-result v8

    sget-object v1, Lcom/facebook/ads/redexgen/X/Qh;->A0C:[Ljava/lang/String;

    const/4 v0, 0x1

    aget-object v1, v1, v0

    const/16 v0, 0x12

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x4c

    if-eq v1, v0, :cond_2

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    .line 60489
    :cond_0
    if-ge v1, v5, :cond_3

    .line 60490
    move-object v9, v3

    .line 60491
    move v5, v1

    .line 60492
    if-nez v1, :cond_3

    .line 60493
    .end local v3    # "i":I
    :cond_1
    return-object v9

    .line 60494
    :cond_2
    sget-object v2, Lcom/facebook/ads/redexgen/X/Qh;->A0C:[Ljava/lang/String;

    const-string v1, "5fjKcvOJD7"

    const/4 v0, 0x2

    aput-object v1, v2, v0

    if-eqz v8, :cond_4

    .line 60495
    .end local v4    # "view":Landroid/view/View;
    .end local v5    # "lp":Lcom/facebook/ads/redexgen/X/R3;
    .end local v6
    :cond_3
    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 60496
    :cond_4
    invoke-virtual {v7}, Lcom/facebook/ads/redexgen/X/R3;->A00()I

    move-result v1

    iget v0, p0, Lcom/facebook/ads/redexgen/X/Qh;->A01:I

    sub-int/2addr v1, v0

    iget v0, p0, Lcom/facebook/ads/redexgen/X/Qh;->A03:I

    mul-int/2addr v1, v0

    .line 60497
    .local v6, "distance":I
    if-gez v1, :cond_0

    goto :goto_1
.end method

.method private final A02(Landroid/view/View;)V
    .locals 1

    .line 60498
    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/Qh;->A01(Landroid/view/View;)Landroid/view/View;

    move-result-object v0

    .line 60499
    .local v0, "closest":Landroid/view/View;
    if-nez v0, :cond_0

    .line 60500
    const/4 v0, -0x1

    iput v0, p0, Lcom/facebook/ads/redexgen/X/Qh;->A01:I

    .line 60501
    :goto_0
    return-void

    .line 60502
    :cond_0
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/redexgen/X/R3;

    .line 60503
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/R3;->A00()I

    move-result v0

    iput v0, p0, Lcom/facebook/ads/redexgen/X/Qh;->A01:I

    goto :goto_0
.end method


# virtual methods
.method public final A03(Lcom/facebook/ads/redexgen/X/RA;)Landroid/view/View;
    .locals 3

    .line 60504
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Qh;->A08:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 60505
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/Qh;->A00()Landroid/view/View;

    move-result-object v0

    return-object v0

    .line 60506
    :cond_0
    iget v0, p0, Lcom/facebook/ads/redexgen/X/Qh;->A01:I

    invoke-virtual {p1, v0}, Lcom/facebook/ads/redexgen/X/RA;->A0G(I)Landroid/view/View;

    move-result-object v2

    .line 60507
    .local v0, "view":Landroid/view/View;
    iget v1, p0, Lcom/facebook/ads/redexgen/X/Qh;->A01:I

    iget v0, p0, Lcom/facebook/ads/redexgen/X/Qh;->A03:I

    add-int/2addr v1, v0

    iput v1, p0, Lcom/facebook/ads/redexgen/X/Qh;->A01:I

    .line 60508
    return-object v2
.end method

.method public final A04()V
    .locals 1

    .line 60509
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/Qh;->A02(Landroid/view/View;)V

    .line 60510
    return-void
.end method

.method public final A05(Lcom/facebook/ads/redexgen/X/RH;)Z
    .locals 2

    .line 60511
    iget v0, p0, Lcom/facebook/ads/redexgen/X/Qh;->A01:I

    if-ltz v0, :cond_0

    iget v1, p0, Lcom/facebook/ads/redexgen/X/Qh;->A01:I

    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/RH;->A03()I

    move-result v0

    if-ge v1, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
