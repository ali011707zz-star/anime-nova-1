.class public final Lcom/facebook/ads/redexgen/X/l9;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/facebook/ads/redexgen/X/LH;


# static fields
.field public static A06:[Ljava/lang/String;


# instance fields
.field public A00:I

.field public A01:I

.field public A02:Z

.field public A03:Z

.field public final A04:Lcom/facebook/ads/redexgen/X/4v;

.field public final A05:Lcom/facebook/ads/redexgen/X/L8;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    .line 3178
    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "EnQWPJ3V2xjVAThncas5joPITTvIB7EF"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "1EuaMqG73HQ"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "rjBteZjJ0vNfufCjCKCkAuxJVtJJHvWb"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "xDvWT2DyWg3zA1fFgEAgA6zc8FBdFJ1B"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "sfKNNRwM9cmkD7QHngaf04"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "qaF2qGcI8dYBUqEwfxAr3oVVO8wm"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "moKLjsoCWr0SdwKtjYcTHr1Csc5rll9E"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "bRjHr7kF"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/l9;->A06:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/facebook/ads/redexgen/X/L8;)V
    .locals 2

    .line 92632
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 92633
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/l9;->A05:Lcom/facebook/ads/redexgen/X/L8;

    .line 92634
    const/16 v1, 0x20

    new-instance v0, Lcom/facebook/ads/redexgen/X/4v;

    invoke-direct {v0, v1}, Lcom/facebook/ads/redexgen/X/4v;-><init>(I)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/l9;->A04:Lcom/facebook/ads/redexgen/X/4v;

    .line 92635
    return-void
.end method


# virtual methods
.method public final A5B(Lcom/facebook/ads/redexgen/X/4v;I)V
    .locals 6

    .line 92636
    and-int/lit8 v0, p2, 0x1

    const/4 v5, 0x0

    const/4 v4, 0x1

    if-eqz v0, :cond_1

    const/4 v2, 0x1

    .line 92637
    .local v0, "payloadUnitStartIndicator":Z
    :goto_0
    const/4 v1, -0x1

    .line 92638
    .local v3, "payloadStartPosition":I
    if-eqz v2, :cond_0

    .line 92639
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/4v;->A0I()I

    move-result v0

    .line 92640
    .local v4, "payloadStartOffset":I
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/4v;->A09()I

    move-result v1

    add-int/2addr v1, v0

    .line 92641
    .end local v4    # "payloadStartOffset":I
    :cond_0
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/l9;->A03:Z

    if-eqz v0, :cond_3

    .line 92642
    if-nez v2, :cond_2

    .line 92643
    return-void

    .line 92644
    :cond_1
    const/4 v2, 0x0

    goto :goto_0

    .line 92645
    :cond_2
    iput-boolean v5, p0, Lcom/facebook/ads/redexgen/X/l9;->A03:Z

    .line 92646
    invoke-virtual {p1, v1}, Lcom/facebook/ads/redexgen/X/4v;->A0f(I)V

    .line 92647
    iput v5, p0, Lcom/facebook/ads/redexgen/X/l9;->A00:I

    .line 92648
    :cond_3
    :goto_1
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/4v;->A07()I

    move-result v0

    if-lez v0, :cond_a

    .line 92649
    iget v0, p0, Lcom/facebook/ads/redexgen/X/l9;->A00:I

    const/4 v3, 0x3

    if-ge v0, v3, :cond_6

    .line 92650
    iget v0, p0, Lcom/facebook/ads/redexgen/X/l9;->A00:I

    if-nez v0, :cond_4

    .line 92651
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/4v;->A0I()I

    move-result v1

    .line 92652
    .local v4, "tableId":I
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/4v;->A09()I

    move-result v0

    sub-int/2addr v0, v4

    invoke-virtual {p1, v0}, Lcom/facebook/ads/redexgen/X/4v;->A0f(I)V

    .line 92653
    const/16 v0, 0xff

    if-ne v1, v0, :cond_4

    .line 92654
    iput-boolean v4, p0, Lcom/facebook/ads/redexgen/X/l9;->A03:Z

    .line 92655
    return-void

    .line 92656
    .end local v4    # "tableId":I
    :cond_4
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/4v;->A07()I

    move-result v1

    iget v0, p0, Lcom/facebook/ads/redexgen/X/l9;->A00:I

    rsub-int/lit8 v0, v0, 0x3

    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 92657
    .local v4, "headerBytesToRead":I
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/l9;->A04:Lcom/facebook/ads/redexgen/X/4v;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/4v;->A0l()[B

    move-result-object v1

    iget v0, p0, Lcom/facebook/ads/redexgen/X/l9;->A00:I

    invoke-virtual {p1, v1, v0, v2}, Lcom/facebook/ads/redexgen/X/4v;->A0k([BII)V

    .line 92658
    iget v0, p0, Lcom/facebook/ads/redexgen/X/l9;->A00:I

    add-int/2addr v0, v2

    iput v0, p0, Lcom/facebook/ads/redexgen/X/l9;->A00:I

    .line 92659
    iget v0, p0, Lcom/facebook/ads/redexgen/X/l9;->A00:I

    if-ne v0, v3, :cond_3

    .line 92660
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/l9;->A04:Lcom/facebook/ads/redexgen/X/4v;

    invoke-virtual {v0, v5}, Lcom/facebook/ads/redexgen/X/4v;->A0f(I)V

    .line 92661
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/l9;->A04:Lcom/facebook/ads/redexgen/X/4v;

    invoke-virtual {v0, v3}, Lcom/facebook/ads/redexgen/X/4v;->A0e(I)V

    .line 92662
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/l9;->A04:Lcom/facebook/ads/redexgen/X/4v;

    invoke-virtual {v0, v4}, Lcom/facebook/ads/redexgen/X/4v;->A0g(I)V

    .line 92663
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/l9;->A04:Lcom/facebook/ads/redexgen/X/4v;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/4v;->A0I()I

    move-result v2

    .line 92664
    .local p0, "secondHeaderByte":I
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/l9;->A04:Lcom/facebook/ads/redexgen/X/4v;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/4v;->A0I()I

    move-result v1

    .line 92665
    .local p1, "thirdHeaderByte":I
    and-int/lit16 v0, v2, 0x80

    if-eqz v0, :cond_5

    const/4 v0, 0x1

    :goto_2
    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/l9;->A02:Z

    .line 92666
    and-int/lit8 v0, v2, 0xf

    shl-int/lit8 v0, v0, 0x8

    or-int/2addr v0, v1

    add-int/2addr v0, v3

    iput v0, p0, Lcom/facebook/ads/redexgen/X/l9;->A01:I

    .line 92667
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/l9;->A04:Lcom/facebook/ads/redexgen/X/4v;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/4v;->A08()I

    move-result v1

    iget v0, p0, Lcom/facebook/ads/redexgen/X/l9;->A01:I

    if-ge v1, v0, :cond_3

    .line 92668
    iget v1, p0, Lcom/facebook/ads/redexgen/X/l9;->A01:I

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/l9;->A04:Lcom/facebook/ads/redexgen/X/4v;

    .line 92669
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/4v;->A08()I

    move-result v0

    mul-int/lit8 v0, v0, 0x2

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v1

    const/16 v0, 0x1002

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 92670
    .local v5, "limit":I
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/l9;->A04:Lcom/facebook/ads/redexgen/X/4v;

    invoke-virtual {v0, v1}, Lcom/facebook/ads/redexgen/X/4v;->A0c(I)V

    goto/16 :goto_1

    .line 92671
    :cond_5
    const/4 v0, 0x0

    goto :goto_2

    .line 92672
    :cond_6
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/4v;->A07()I

    move-result v2

    iget v1, p0, Lcom/facebook/ads/redexgen/X/l9;->A01:I

    iget v0, p0, Lcom/facebook/ads/redexgen/X/l9;->A00:I

    sub-int/2addr v1, v0

    invoke-static {v2, v1}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 92673
    .local v4, "bodyBytesToRead":I
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/l9;->A04:Lcom/facebook/ads/redexgen/X/4v;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/4v;->A0l()[B

    move-result-object v1

    iget v0, p0, Lcom/facebook/ads/redexgen/X/l9;->A00:I

    invoke-virtual {p1, v1, v0, v2}, Lcom/facebook/ads/redexgen/X/4v;->A0k([BII)V

    .line 92674
    iget v0, p0, Lcom/facebook/ads/redexgen/X/l9;->A00:I

    add-int/2addr v0, v2

    iput v0, p0, Lcom/facebook/ads/redexgen/X/l9;->A00:I

    .line 92675
    iget v1, p0, Lcom/facebook/ads/redexgen/X/l9;->A00:I

    iget v0, p0, Lcom/facebook/ads/redexgen/X/l9;->A01:I

    if-ne v1, v0, :cond_3

    .line 92676
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/l9;->A02:Z

    if-eqz v0, :cond_8

    .line 92677
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/l9;->A04:Lcom/facebook/ads/redexgen/X/4v;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/4v;->A0l()[B

    move-result-object v2

    iget v1, p0, Lcom/facebook/ads/redexgen/X/l9;->A01:I

    const/4 v0, -0x1

    invoke-static {v2, v5, v1, v0}, Lcom/facebook/ads/redexgen/X/5C;->A0I([BIII)I

    move-result v0

    if-eqz v0, :cond_7

    .line 92678
    iput-boolean v4, p0, Lcom/facebook/ads/redexgen/X/l9;->A03:Z

    .line 92679
    return-void

    .line 92680
    :cond_7
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/l9;->A04:Lcom/facebook/ads/redexgen/X/4v;

    iget v0, p0, Lcom/facebook/ads/redexgen/X/l9;->A01:I

    add-int/lit8 v0, v0, -0x4

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/4v;->A0e(I)V

    goto :goto_3

    .line 92681
    :cond_8
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/l9;->A04:Lcom/facebook/ads/redexgen/X/4v;

    iget v0, p0, Lcom/facebook/ads/redexgen/X/l9;->A01:I

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/4v;->A0e(I)V

    .line 92682
    :goto_3
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/l9;->A04:Lcom/facebook/ads/redexgen/X/4v;

    invoke-virtual {v0, v5}, Lcom/facebook/ads/redexgen/X/4v;->A0f(I)V

    .line 92683
    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/l9;->A05:Lcom/facebook/ads/redexgen/X/L8;

    sget-object v1, Lcom/facebook/ads/redexgen/X/l9;->A06:[Ljava/lang/String;

    const/4 v0, 0x3

    aget-object v1, v1, v0

    const/16 v0, 0x12

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x36

    if-eq v1, v0, :cond_9

    sget-object v2, Lcom/facebook/ads/redexgen/X/l9;->A06:[Ljava/lang/String;

    const-string v1, "q6sMTbjJkDPtFUqTMgY1hgSKkn8mDgdv"

    const/4 v0, 0x6

    aput-object v1, v2, v0

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/l9;->A04:Lcom/facebook/ads/redexgen/X/4v;

    invoke-interface {v3, v0}, Lcom/facebook/ads/redexgen/X/L8;->A5A(Lcom/facebook/ads/redexgen/X/4v;)V

    .line 92684
    iput v5, p0, Lcom/facebook/ads/redexgen/X/l9;->A00:I

    goto/16 :goto_1

    :cond_9
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    .line 92685
    :cond_a
    return-void
.end method

.method public final AAA(Lcom/facebook/ads/redexgen/X/53;Lcom/facebook/ads/redexgen/X/HA;Lcom/facebook/ads/redexgen/X/LG;)V
    .locals 1

    .line 92686
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/l9;->A05:Lcom/facebook/ads/redexgen/X/L8;

    invoke-interface {v0, p1, p2, p3}, Lcom/facebook/ads/redexgen/X/L8;->AAA(Lcom/facebook/ads/redexgen/X/53;Lcom/facebook/ads/redexgen/X/HA;Lcom/facebook/ads/redexgen/X/LG;)V

    .line 92687
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/l9;->A03:Z

    .line 92688
    return-void
.end method

.method public final AJ5()V
    .locals 1

    .line 92689
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/l9;->A03:Z

    .line 92690
    return-void
.end method
