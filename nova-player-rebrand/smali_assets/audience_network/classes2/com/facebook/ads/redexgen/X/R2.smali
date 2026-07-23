.class public abstract Lcom/facebook/ads/redexgen/X/R2;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/ads/redexgen/X/7M;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "LayoutManager"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/ads/internal/androidx/support/v7/widget/RecyclerView$LayoutManager$Properties;,
        Lcom/facebook/ads/redexgen/X/R0;
    }
.end annotation


# static fields
.field public static A0I:[B

.field public static A0J:[Ljava/lang/String;


# instance fields
.field public A00:I

.field public A01:Lcom/facebook/ads/redexgen/X/QQ;

.field public A02:Lcom/facebook/ads/redexgen/X/RF;

.field public A03:Lcom/facebook/ads/redexgen/X/7M;

.field public A04:Lcom/facebook/ads/redexgen/X/RP;

.field public A05:Lcom/facebook/ads/redexgen/X/RP;

.field public A06:Z

.field public A07:Z

.field public A08:Z

.field public A09:Z

.field public A0A:I

.field public A0B:I

.field public A0C:I

.field public A0D:I

.field public A0E:Z

.field public A0F:Z

.field public final A0G:Lcom/facebook/ads/redexgen/X/RN;

.field public final A0H:Lcom/facebook/ads/redexgen/X/RN;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    .line 1605
    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "xyZ8yvYzp3wrHAf7Yx6bEToOMuLBTkeJ"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "zRc0P2oS"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "sxpemPSbJ0zjH5L170Fpc8WIJnMfTOYM"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "JLvxwq6R3Maitb0M5MelMbaPMbiMlz5H"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "qno0WD9sdyP92Tf9SwtsGsNlEh6m7cws"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "isTf1gingqqcw8OSNjwv80foOygzMJYI"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "cYtNYfyLYrQzxoivZChv"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "OeXF3cqFYKXlQ2ABbzPAkdUOYZHirWRh"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/R2;->A0J:[Ljava/lang/String;

    invoke-static {}, Lcom/facebook/ads/redexgen/X/R2;->A0A()V

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 60691
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60692
    new-instance v0, Lcom/facebook/ads/redexgen/X/hj;

    invoke-direct {v0, p0}, Lcom/facebook/ads/redexgen/X/hj;-><init>(Lcom/facebook/ads/redexgen/X/R2;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/R2;->A0G:Lcom/facebook/ads/redexgen/X/RN;

    .line 60693
    new-instance v0, Lcom/facebook/ads/redexgen/X/hh;

    invoke-direct {v0, p0}, Lcom/facebook/ads/redexgen/X/hh;-><init>(Lcom/facebook/ads/redexgen/X/R2;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/R2;->A0H:Lcom/facebook/ads/redexgen/X/RN;

    .line 60694
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/R2;->A0G:Lcom/facebook/ads/redexgen/X/RN;

    new-instance v0, Lcom/facebook/ads/redexgen/X/RP;

    invoke-direct {v0, v1}, Lcom/facebook/ads/redexgen/X/RP;-><init>(Lcom/facebook/ads/redexgen/X/RN;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/R2;->A04:Lcom/facebook/ads/redexgen/X/RP;

    .line 60695
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/R2;->A0H:Lcom/facebook/ads/redexgen/X/RN;

    new-instance v0, Lcom/facebook/ads/redexgen/X/RP;

    invoke-direct {v0, v1}, Lcom/facebook/ads/redexgen/X/RP;-><init>(Lcom/facebook/ads/redexgen/X/RN;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/R2;->A05:Lcom/facebook/ads/redexgen/X/RP;

    .line 60696
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/R2;->A09:Z

    .line 60697
    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/R2;->A07:Z

    .line 60698
    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/R2;->A06:Z

    .line 60699
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/R2;->A0F:Z

    .line 60700
    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/R2;->A0E:Z

    return-void
.end method

.method public static A02(III)I
    .locals 4

    .line 60701
    invoke-static {p0}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    .line 60702
    .local v0, "mode":I
    invoke-static {p0}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p0

    .line 60703
    .local v1, "size":I
    sparse-switch v0, :sswitch_data_0

    .line 60704
    invoke-static {p1, p2}, Ljava/lang/Math;->max(II)I

    move-result v0

    return v0

    .line 60705
    :sswitch_0
    return p0

    .line 60706
    :sswitch_1
    invoke-static {p1, p2}, Ljava/lang/Math;->max(II)I

    move-result v3

    sget-object v1, Lcom/facebook/ads/redexgen/X/R2;->A0J:[Ljava/lang/String;

    const/4 v0, 0x1

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v0, 0x8

    if-eq v1, v0, :cond_0

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_0
    sget-object v2, Lcom/facebook/ads/redexgen/X/R2;->A0J:[Ljava/lang/String;

    const-string v1, "W1fJ2ceK"

    const/4 v0, 0x1

    aput-object v1, v2, v0

    invoke-static {p0, v3}, Ljava/lang/Math;->min(II)I

    move-result v0

    return v0

    :sswitch_data_0
    .sparse-switch
        -0x80000000 -> :sswitch_1
        0x40000000 -> :sswitch_0
    .end sparse-switch
.end method

.method public static A03(IIIIZ)I
    .locals 4

    .line 60707
    const/4 v0, 0x0

    sub-int/2addr p0, p2

    invoke-static {v0, p0}, Ljava/lang/Math;->max(II)I

    move-result p0

    .line 60708
    .local v0, "size":I
    const/4 v3, 0x0

    .line 60709
    .local v1, "resultSize":I
    const/4 v2, 0x0

    .line 60710
    .local v2, "resultMode":I
    const/4 v1, -0x2

    const/4 v0, -0x1

    if-eqz p4, :cond_3

    .line 60711
    if-ltz p3, :cond_1

    .line 60712
    move v3, p3

    .line 60713
    const/high16 v2, 0x40000000    # 2.0f

    .line 60714
    :cond_0
    :goto_0
    invoke-static {v3, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    return v0

    .line 60715
    :cond_1
    if-ne p3, v0, :cond_2

    .line 60716
    sparse-switch p1, :sswitch_data_0

    goto :goto_0

    .line 60717
    :sswitch_0
    const/4 v3, 0x0

    .line 60718
    const/4 v2, 0x0

    goto :goto_0

    .line 60719
    :sswitch_1
    move v3, p0

    .line 60720
    move v2, p1

    .line 60721
    goto :goto_0

    .line 60722
    :cond_2
    if-ne p3, v1, :cond_0

    .line 60723
    const/4 v3, 0x0

    .line 60724
    const/4 v2, 0x0

    goto :goto_0

    .line 60725
    :cond_3
    if-ltz p3, :cond_4

    .line 60726
    move v3, p3

    .line 60727
    const/high16 v2, 0x40000000    # 2.0f

    goto :goto_0

    .line 60728
    :cond_4
    if-ne p3, v0, :cond_5

    .line 60729
    move v3, p0

    .line 60730
    move v2, p1

    goto :goto_0

    .line 60731
    :cond_5
    if-ne p3, v1, :cond_0

    .line 60732
    move v3, p0

    .line 60733
    const/high16 v0, -0x80000000

    if-eq p1, v0, :cond_6

    const/high16 v0, 0x40000000    # 2.0f

    if-ne p1, v0, :cond_7

    .line 60734
    :cond_6
    const/high16 v2, -0x80000000

    goto :goto_0

    .line 60735
    :cond_7
    const/4 v2, 0x0

    goto :goto_0

    :sswitch_data_0
    .sparse-switch
        -0x80000000 -> :sswitch_1
        0x0 -> :sswitch_0
        0x40000000 -> :sswitch_1
    .end sparse-switch
.end method

.method private final A04(Landroid/view/View;)I
    .locals 1

    .line 60736
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/redexgen/X/R3;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/R3;->A03:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    return v0
.end method

.method private final A05(Landroid/view/View;)I
    .locals 1

    .line 60737
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/redexgen/X/R3;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/R3;->A03:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    return v0
.end method

.method private final A06(Landroid/view/View;)I
    .locals 1

    .line 60738
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/redexgen/X/R3;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/R3;->A03:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->right:I

    return v0
.end method

.method private final A07(Landroid/view/View;)I
    .locals 1

    .line 60739
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/redexgen/X/R3;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/R3;->A03:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->top:I

    return v0
.end method

.method private final A08(Lcom/facebook/ads/redexgen/X/RA;Lcom/facebook/ads/redexgen/X/RH;)I
    .locals 1

    .line 60740
    const/4 v0, 0x0

    return v0
.end method

.method public static A09(III)Ljava/lang/String;
    .locals 2

    sget-object v1, Lcom/facebook/ads/redexgen/X/R2;->A0I:[B

    add-int v0, p0, p1

    invoke-static {v1, p0, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p0

    const/4 v1, 0x0

    :goto_0
    array-length v0, p0

    if-ge v1, v0, :cond_0

    aget-byte v0, p0, v1

    sub-int/2addr v0, p2

    add-int/lit8 v0, v0, -0x14

    int-to-byte v0, v0

    aput-byte v0, p0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p0}, Ljava/lang/String;-><init>([B)V

    return-object v0
.end method

.method public static A0A()V
    .locals 1

    const/16 v0, 0x81

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/facebook/ads/redexgen/X/R2;->A0I:[B

    return-void

    :array_0
    .array-data 1
        0x63t
        -0x7at
        -0x7at
        -0x79t
        -0x7at
        0x42t
        0x78t
        -0x75t
        -0x79t
        -0x67t
        0x42t
        -0x76t
        -0x7dt
        -0x6bt
        0x42t
        0x74t
        -0x79t
        -0x7bt
        -0x65t
        -0x7bt
        -0x72t
        -0x79t
        -0x6ct
        0x78t
        -0x75t
        -0x79t
        -0x67t
        0x42t
        -0x7dt
        -0x6bt
        0x42t
        -0x6et
        -0x7dt
        -0x6ct
        -0x79t
        -0x70t
        -0x6at
        0x42t
        -0x7ct
        -0x69t
        -0x6at
        0x42t
        -0x68t
        -0x75t
        -0x79t
        -0x67t
        0x42t
        -0x75t
        -0x6bt
        0x42t
        -0x70t
        -0x6ft
        -0x6at
        0x42t
        -0x7dt
        0x42t
        -0x6ct
        -0x79t
        -0x7dt
        -0x72t
        0x42t
        -0x7bt
        -0x76t
        -0x75t
        -0x72t
        -0x7at
        0x50t
        0x42t
        0x77t
        -0x70t
        -0x78t
        -0x75t
        -0x72t
        -0x6at
        -0x79t
        -0x6ct
        -0x79t
        -0x7at
        0x42t
        -0x75t
        -0x70t
        -0x7at
        -0x79t
        -0x66t
        0x5ct
        -0x58t
        -0x3at
        -0x2dt
        -0x2dt
        -0x2ct
        -0x27t
        -0x7bt
        -0x2et
        -0x2ct
        -0x25t
        -0x36t
        -0x7bt
        -0x3at
        -0x7bt
        -0x38t
        -0x33t
        -0x32t
        -0x2ft
        -0x37t
        -0x7bt
        -0x35t
        -0x29t
        -0x2ct
        -0x2et
        -0x7bt
        -0x2dt
        -0x2ct
        -0x2dt
        -0x6et
        -0x36t
        -0x23t
        -0x32t
        -0x28t
        -0x27t
        -0x32t
        -0x2dt
        -0x34t
        -0x7bt
        -0x32t
        -0x2dt
        -0x37t
        -0x36t
        -0x23t
        -0x61t
    .end array-data
.end method

.method private final A0B(I)V
    .locals 1

    .line 60741
    invoke-virtual {p0, p1}, Lcom/facebook/ads/redexgen/X/R2;->A0v(I)Landroid/view/View;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/facebook/ads/redexgen/X/R2;->A0E(ILandroid/view/View;)V

    .line 60742
    return-void
.end method

.method private final A0C(I)V
    .locals 1

    .line 60743
    invoke-virtual {p0, p1}, Lcom/facebook/ads/redexgen/X/R2;->A0v(I)Landroid/view/View;

    move-result-object v0

    .line 60744
    .local v0, "child":Landroid/view/View;
    if-eqz v0, :cond_0

    .line 60745
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/R2;->A01:Lcom/facebook/ads/redexgen/X/QQ;

    invoke-virtual {v0, p1}, Lcom/facebook/ads/redexgen/X/QQ;->A0D(I)V

    .line 60746
    :cond_0
    return-void
.end method

.method private final A0D(II)V
    .locals 4

    .line 60747
    invoke-virtual {p0, p1}, Lcom/facebook/ads/redexgen/X/R2;->A0v(I)Landroid/view/View;

    move-result-object v0

    .line 60748
    .local v0, "view":Landroid/view/View;
    if-eqz v0, :cond_1

    .line 60749
    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/R2;->A0B(I)V

    .line 60750
    invoke-direct {p0, v0, p2}, Lcom/facebook/ads/redexgen/X/R2;->A0G(Landroid/view/View;I)V

    sget-object v2, Lcom/facebook/ads/redexgen/X/R2;->A0J:[Ljava/lang/String;

    const/4 v0, 0x2

    aget-object v1, v2, v0

    const/4 v0, 0x5

    aget-object v2, v2, v0

    const/16 v0, 0x1e

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v1, v0, :cond_0

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    .line 60751
    :cond_0
    sget-object v2, Lcom/facebook/ads/redexgen/X/R2;->A0J:[Ljava/lang/String;

    const-string v1, "fev5lwy8caKDFGGcVLFTWETO5UF90dOq"

    const/4 v0, 0x0

    aput-object v1, v2, v0

    const-string v1, "EDoCIrgXqzBYQTf4WlngJinORtzJmrfl"

    const/4 v0, 0x7

    aput-object v1, v2, v0

    return-void

    .line 60752
    :cond_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v2, 0x55

    const/16 v1, 0x2c

    const/16 v0, 0x51

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/R2;->A09(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/R2;->A03:Lcom/facebook/ads/redexgen/X/7M;

    .line 60753
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/7M;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private A0E(ILandroid/view/View;)V
    .locals 1

    .line 60754
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/R2;->A01:Lcom/facebook/ads/redexgen/X/QQ;

    invoke-virtual {v0, p1}, Lcom/facebook/ads/redexgen/X/QQ;->A0C(I)V

    .line 60755
    return-void
.end method

.method private final A0F(Landroid/view/View;)V
    .locals 1

    .line 60756
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/R2;->A01:Lcom/facebook/ads/redexgen/X/QQ;

    invoke-virtual {v0, p1}, Lcom/facebook/ads/redexgen/X/QQ;->A0F(Landroid/view/View;)V

    .line 60757
    return-void
.end method

.method private final A0G(Landroid/view/View;I)V
    .locals 1

    .line 60758
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/redexgen/X/R3;

    invoke-direct {p0, p1, p2, v0}, Lcom/facebook/ads/redexgen/X/R2;->A0H(Landroid/view/View;ILcom/facebook/ads/redexgen/X/R3;)V

    .line 60759
    return-void
.end method

.method private final A0H(Landroid/view/View;ILcom/facebook/ads/redexgen/X/R3;)V
    .locals 3

    .line 60760
    invoke-static {p1}, Lcom/facebook/ads/redexgen/X/7M;->A0F(Landroid/view/View;)Lcom/facebook/ads/redexgen/X/RK;

    move-result-object v2

    .line 60761
    .local v0, "vh":Lcom/facebook/ads/redexgen/X/RK;
    invoke-virtual {v2}, Lcom/facebook/ads/redexgen/X/RK;->A0g()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 60762
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/R2;->A03:Lcom/facebook/ads/redexgen/X/7M;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/7M;->A0t:Lcom/facebook/ads/redexgen/X/RS;

    invoke-virtual {v0, v2}, Lcom/facebook/ads/redexgen/X/RS;->A09(Lcom/facebook/ads/redexgen/X/RK;)V

    .line 60763
    :goto_0
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/R2;->A01:Lcom/facebook/ads/redexgen/X/QQ;

    invoke-virtual {v2}, Lcom/facebook/ads/redexgen/X/RK;->A0g()Z

    move-result v0

    invoke-virtual {v1, p1, p2, p3, v0}, Lcom/facebook/ads/redexgen/X/QQ;->A0H(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;Z)V

    .line 60764
    return-void

    .line 60765
    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/R2;->A03:Lcom/facebook/ads/redexgen/X/7M;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/7M;->A0t:Lcom/facebook/ads/redexgen/X/RS;

    invoke-virtual {v0, v2}, Lcom/facebook/ads/redexgen/X/RS;->A0A(Lcom/facebook/ads/redexgen/X/RK;)V

    goto :goto_0
.end method

.method private A0I(Landroid/view/View;IZ)V
    .locals 8

    .line 60766
    invoke-static {p1}, Lcom/facebook/ads/redexgen/X/7M;->A0F(Landroid/view/View;)Lcom/facebook/ads/redexgen/X/RK;

    move-result-object v5

    .line 60767
    .local v0, "holder":Lcom/facebook/ads/redexgen/X/RK;
    if-nez p3, :cond_0

    invoke-virtual {v5}, Lcom/facebook/ads/redexgen/X/RK;->A0g()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 60768
    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/R2;->A03:Lcom/facebook/ads/redexgen/X/7M;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/7M;->A0t:Lcom/facebook/ads/redexgen/X/RS;

    invoke-virtual {v0, v5}, Lcom/facebook/ads/redexgen/X/RS;->A09(Lcom/facebook/ads/redexgen/X/RK;)V

    .line 60769
    :goto_0
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Lcom/facebook/ads/redexgen/X/R3;

    .line 60770
    .local v1, "lp":Lcom/facebook/ads/redexgen/X/R3;
    invoke-virtual {v5}, Lcom/facebook/ads/redexgen/X/RK;->A0m()Z

    move-result v0

    const/4 v3, 0x0

    if-nez v0, :cond_1

    invoke-virtual {v5}, Lcom/facebook/ads/redexgen/X/RK;->A0h()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 60771
    :cond_1
    invoke-virtual {v5}, Lcom/facebook/ads/redexgen/X/RK;->A0h()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 60772
    invoke-virtual {v5}, Lcom/facebook/ads/redexgen/X/RK;->A0Y()V

    .line 60773
    :goto_1
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/R2;->A01:Lcom/facebook/ads/redexgen/X/QQ;

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    invoke-virtual {v1, p1, p2, v0, v3}, Lcom/facebook/ads/redexgen/X/QQ;->A0H(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;Z)V

    .line 60774
    :cond_2
    :goto_2
    iget-boolean v0, v4, Lcom/facebook/ads/redexgen/X/R3;->A02:Z

    if-eqz v0, :cond_9

    .line 60775
    iget-object v5, v5, Lcom/facebook/ads/redexgen/X/RK;->A0H:Landroid/view/View;

    sget-object v1, Lcom/facebook/ads/redexgen/X/R2;->A0J:[Ljava/lang/String;

    const/4 v0, 0x1

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v0, 0x8

    if-eq v1, v0, :cond_8

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    .line 60776
    :cond_3
    invoke-virtual {v5}, Lcom/facebook/ads/redexgen/X/RK;->A0U()V

    goto :goto_1

    .line 60777
    :cond_4
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v7

    iget-object v6, p0, Lcom/facebook/ads/redexgen/X/R2;->A03:Lcom/facebook/ads/redexgen/X/7M;

    sget-object v1, Lcom/facebook/ads/redexgen/X/R2;->A0J:[Ljava/lang/String;

    const/4 v0, 0x3

    aget-object v1, v1, v0

    const/16 v0, 0x13

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x6b

    if-eq v1, v0, :cond_c

    sget-object v2, Lcom/facebook/ads/redexgen/X/R2;->A0J:[Ljava/lang/String;

    const-string v1, "uqKRxBtg59XPGVJDkfwEUsBOgdJYSppJ"

    const/4 v0, 0x4

    aput-object v1, v2, v0

    if-ne v7, v6, :cond_6

    .line 60778
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/R2;->A01:Lcom/facebook/ads/redexgen/X/QQ;

    invoke-virtual {v0, p1}, Lcom/facebook/ads/redexgen/X/QQ;->A07(Landroid/view/View;)I

    move-result v2

    .line 60779
    .local v2, "currentIndex":I
    const/4 v1, -0x1

    if-ne p2, v1, :cond_5

    .line 60780
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/R2;->A01:Lcom/facebook/ads/redexgen/X/QQ;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/QQ;->A05()I

    move-result p2

    .line 60781
    :cond_5
    if-eq v2, v1, :cond_a

    .line 60782
    if-eq v2, p2, :cond_2

    .line 60783
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/R2;->A03:Lcom/facebook/ads/redexgen/X/7M;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/7M;->A06:Lcom/facebook/ads/redexgen/X/R2;

    invoke-direct {v0, v2, p2}, Lcom/facebook/ads/redexgen/X/R2;->A0D(II)V

    goto :goto_2

    .line 60784
    .end local v2    # "currentIndex":I
    :cond_6
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/R2;->A01:Lcom/facebook/ads/redexgen/X/QQ;

    invoke-virtual {v0, p1, p2, v3}, Lcom/facebook/ads/redexgen/X/QQ;->A0I(Landroid/view/View;IZ)V

    .line 60785
    const/4 v0, 0x1

    iput-boolean v0, v4, Lcom/facebook/ads/redexgen/X/R3;->A01:Z

    .line 60786
    iget-object v6, p0, Lcom/facebook/ads/redexgen/X/R2;->A02:Lcom/facebook/ads/redexgen/X/RF;

    sget-object v1, Lcom/facebook/ads/redexgen/X/R2;->A0J:[Ljava/lang/String;

    const/4 v0, 0x4

    aget-object v1, v1, v0

    const/16 v0, 0xc

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x76

    if-eq v1, v0, :cond_b

    sget-object v2, Lcom/facebook/ads/redexgen/X/R2;->A0J:[Ljava/lang/String;

    const-string v1, "si9YLNjLFs"

    const/4 v0, 0x6

    aput-object v1, v2, v0

    if-eqz v6, :cond_2

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/R2;->A02:Lcom/facebook/ads/redexgen/X/RF;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/RF;->A0F()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 60787
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/R2;->A02:Lcom/facebook/ads/redexgen/X/RF;

    invoke-virtual {v0, p1}, Lcom/facebook/ads/redexgen/X/RF;->A0C(Landroid/view/View;)V

    goto/16 :goto_2

    .line 60788
    :cond_7
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/R2;->A03:Lcom/facebook/ads/redexgen/X/7M;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/7M;->A0t:Lcom/facebook/ads/redexgen/X/RS;

    invoke-virtual {v0, v5}, Lcom/facebook/ads/redexgen/X/RS;->A0A(Lcom/facebook/ads/redexgen/X/RK;)V

    goto/16 :goto_0

    :cond_8
    sget-object v2, Lcom/facebook/ads/redexgen/X/R2;->A0J:[Ljava/lang/String;

    const-string v1, "bg493IDm"

    const/4 v0, 0x1

    aput-object v1, v2, v0

    invoke-virtual {v5}, Landroid/view/View;->invalidate()V

    .line 60789
    iput-boolean v3, v4, Lcom/facebook/ads/redexgen/X/R3;->A02:Z

    .line 60790
    :cond_9
    return-void

    .line 60791
    .restart local v2    # "currentIndex":I
    :cond_a
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v2, 0x0

    const/16 v1, 0x55

    const/16 v0, 0xe

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/R2;->A09(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/R2;->A03:Lcom/facebook/ads/redexgen/X/7M;

    .line 60792
    invoke-virtual {v0, p1}, Lcom/facebook/ads/redexgen/X/7M;->indexOfChild(Landroid/view/View;)I

    move-result v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/R2;->A03:Lcom/facebook/ads/redexgen/X/7M;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/7M;->A1J()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_b
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_c
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
.end method

.method private final A0J(Landroid/view/View;Landroid/graphics/Rect;)V
    .locals 0

    .line 60793
    invoke-static {p1, p2}, Lcom/facebook/ads/redexgen/X/7M;->A0o(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 60794
    return-void
.end method

.method public static synthetic A0K(Lcom/facebook/ads/redexgen/X/R2;Lcom/facebook/ads/redexgen/X/RF;)V
    .locals 0

    .line 60795
    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/R2;->A0O(Lcom/facebook/ads/redexgen/X/RF;)V

    return-void
.end method

.method private A0L(Lcom/facebook/ads/redexgen/X/RA;ILandroid/view/View;)V
    .locals 5

    .line 60796
    invoke-static {p3}, Lcom/facebook/ads/redexgen/X/7M;->A0F(Landroid/view/View;)Lcom/facebook/ads/redexgen/X/RK;

    move-result-object v3

    .line 60797
    .local v0, "viewHolder":Lcom/facebook/ads/redexgen/X/RK;
    invoke-virtual {v3}, Lcom/facebook/ads/redexgen/X/RK;->A0l()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 60798
    return-void

    .line 60799
    :cond_0
    invoke-virtual {v3}, Lcom/facebook/ads/redexgen/X/RK;->A0f()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {v3}, Lcom/facebook/ads/redexgen/X/RK;->A0g()Z

    move-result v4

    sget-object v1, Lcom/facebook/ads/redexgen/X/R2;->A0J:[Ljava/lang/String;

    const/4 v0, 0x3

    aget-object v1, v1, v0

    const/16 v0, 0x13

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x6b

    if-eq v1, v0, :cond_2

    sget-object v2, Lcom/facebook/ads/redexgen/X/R2;->A0J:[Ljava/lang/String;

    const-string v1, "wfzQKDpvqCerNRZHLtQvgaB031c5C1YU"

    const/4 v0, 0x2

    aput-object v1, v2, v0

    const-string v1, "KgFz3HBRwd8cETJWtdM1PF8pjKUjBKYl"

    const/4 v0, 0x5

    aput-object v1, v2, v0

    if-nez v4, :cond_1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/R2;->A03:Lcom/facebook/ads/redexgen/X/7M;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/7M;->A04:Lcom/facebook/ads/redexgen/X/Qq;

    .line 60800
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Qq;->A0M()Z

    move-result v0

    if-nez v0, :cond_1

    .line 60801
    invoke-direct {p0, p2}, Lcom/facebook/ads/redexgen/X/R2;->A0C(I)V

    .line 60802
    invoke-virtual {p1, v3}, Lcom/facebook/ads/redexgen/X/RA;->A0X(Lcom/facebook/ads/redexgen/X/RK;)V

    .line 60803
    :goto_0
    return-void

    .line 60804
    :cond_1
    invoke-direct {p0, p2}, Lcom/facebook/ads/redexgen/X/R2;->A0B(I)V

    .line 60805
    invoke-virtual {p1, p3}, Lcom/facebook/ads/redexgen/X/RA;->A0S(Landroid/view/View;)V

    .line 60806
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/R2;->A03:Lcom/facebook/ads/redexgen/X/7M;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/7M;->A0t:Lcom/facebook/ads/redexgen/X/RS;

    invoke-virtual {v0, v3}, Lcom/facebook/ads/redexgen/X/RS;->A0C(Lcom/facebook/ads/redexgen/X/RK;)V

    goto :goto_0

    :cond_2
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
.end method

.method private final A0M(Lcom/facebook/ads/redexgen/X/RA;Lcom/facebook/ads/redexgen/X/RH;Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 3

    .line 60807
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/R2;->A03:Lcom/facebook/ads/redexgen/X/7M;

    if-eqz v0, :cond_0

    if-nez p3, :cond_1

    .line 60808
    :cond_0
    return-void

    .line 60809
    :cond_1
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/R2;->A03:Lcom/facebook/ads/redexgen/X/7M;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lcom/facebook/ads/redexgen/X/7M;->canScrollVertically(I)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/R2;->A03:Lcom/facebook/ads/redexgen/X/7M;

    .line 60810
    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Lcom/facebook/ads/redexgen/X/7M;->canScrollVertically(I)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/R2;->A03:Lcom/facebook/ads/redexgen/X/7M;

    .line 60811
    invoke-virtual {v0, v1}, Lcom/facebook/ads/redexgen/X/7M;->canScrollHorizontally(I)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/R2;->A03:Lcom/facebook/ads/redexgen/X/7M;

    .line 60812
    invoke-virtual {v0, v2}, Lcom/facebook/ads/redexgen/X/7M;->canScrollHorizontally(I)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 60813
    :cond_2
    :goto_0
    invoke-virtual {p3, v2}, Landroid/view/accessibility/AccessibilityEvent;->setScrollable(Z)V

    .line 60814
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/R2;->A03:Lcom/facebook/ads/redexgen/X/7M;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/7M;->A04:Lcom/facebook/ads/redexgen/X/Qq;

    if-eqz v0, :cond_3

    .line 60815
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/R2;->A03:Lcom/facebook/ads/redexgen/X/7M;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/7M;->A04:Lcom/facebook/ads/redexgen/X/Qq;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Qq;->A0B()I

    move-result v0

    invoke-virtual {p3, v0}, Landroid/view/accessibility/AccessibilityEvent;->setItemCount(I)V

    .line 60816
    :cond_3
    return-void

    .line 60817
    :cond_4
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private final A0N(Lcom/facebook/ads/redexgen/X/RA;Lcom/facebook/ads/redexgen/X/RH;Lcom/facebook/ads/redexgen/X/Q6;)V
    .locals 5

    .line 60818
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/R2;->A03:Lcom/facebook/ads/redexgen/X/7M;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Lcom/facebook/ads/redexgen/X/7M;->canScrollVertically(I)Z

    move-result v0

    const/4 v3, 0x1

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/R2;->A03:Lcom/facebook/ads/redexgen/X/7M;

    invoke-virtual {v0, v1}, Lcom/facebook/ads/redexgen/X/7M;->canScrollHorizontally(I)Z

    move-result v4

    sget-object v1, Lcom/facebook/ads/redexgen/X/R2;->A0J:[Ljava/lang/String;

    const/4 v0, 0x3

    aget-object v1, v1, v0

    const/16 v0, 0x13

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x6b

    if-eq v1, v0, :cond_5

    sget-object v2, Lcom/facebook/ads/redexgen/X/R2;->A0J:[Ljava/lang/String;

    const-string v1, "KDPDh71uiY9dw6lSrmH00w2HuhKAvOYl"

    const/4 v0, 0x2

    aput-object v1, v2, v0

    const-string v1, "F84YzGx02ov8ufnexIEGkhiaGhnINbYS"

    const/4 v0, 0x5

    aput-object v1, v2, v0

    if-eqz v4, :cond_1

    .line 60819
    :cond_0
    const/16 v0, 0x2000

    invoke-virtual {p3, v0}, Lcom/facebook/ads/redexgen/X/Q6;->A0N(I)V

    .line 60820
    invoke-virtual {p3, v3}, Lcom/facebook/ads/redexgen/X/Q6;->A0R(Z)V

    .line 60821
    :cond_1
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/R2;->A03:Lcom/facebook/ads/redexgen/X/7M;

    invoke-virtual {v0, v3}, Lcom/facebook/ads/redexgen/X/7M;->canScrollVertically(I)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v4, p0, Lcom/facebook/ads/redexgen/X/R2;->A03:Lcom/facebook/ads/redexgen/X/7M;

    sget-object v1, Lcom/facebook/ads/redexgen/X/R2;->A0J:[Ljava/lang/String;

    const/4 v0, 0x3

    aget-object v1, v1, v0

    const/16 v0, 0x13

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x6b

    if-eq v1, v0, :cond_4

    sget-object v2, Lcom/facebook/ads/redexgen/X/R2;->A0J:[Ljava/lang/String;

    const-string v1, "8s5rDkFpP"

    const/4 v0, 0x6

    aput-object v1, v2, v0

    invoke-virtual {v4, v3}, Lcom/facebook/ads/redexgen/X/7M;->canScrollHorizontally(I)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 60822
    :cond_2
    :goto_0
    const/16 v0, 0x1000

    invoke-virtual {p3, v0}, Lcom/facebook/ads/redexgen/X/Q6;->A0N(I)V

    .line 60823
    invoke-virtual {p3, v3}, Lcom/facebook/ads/redexgen/X/Q6;->A0R(Z)V

    .line 60824
    :cond_3
    invoke-virtual {p0, p1, p2}, Lcom/facebook/ads/redexgen/X/R2;->A0t(Lcom/facebook/ads/redexgen/X/RA;Lcom/facebook/ads/redexgen/X/RH;)I

    move-result v3

    .line 60825
    invoke-virtual {p0, p1, p2}, Lcom/facebook/ads/redexgen/X/R2;->A0s(Lcom/facebook/ads/redexgen/X/RA;Lcom/facebook/ads/redexgen/X/RH;)I

    move-result v2

    .line 60826
    invoke-direct {p0, p1, p2}, Lcom/facebook/ads/redexgen/X/R2;->A0R(Lcom/facebook/ads/redexgen/X/RA;Lcom/facebook/ads/redexgen/X/RH;)Z

    move-result v1

    .line 60827
    invoke-direct {p0, p1, p2}, Lcom/facebook/ads/redexgen/X/R2;->A08(Lcom/facebook/ads/redexgen/X/RA;Lcom/facebook/ads/redexgen/X/RH;)I

    move-result v0

    .line 60828
    invoke-static {v3, v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Q3;->A00(IIZI)Lcom/facebook/ads/redexgen/X/Q3;

    move-result-object v0

    .line 60829
    .local v0, "collectionInfo":Lcom/facebook/ads/redexgen/X/Q3;
    invoke-virtual {p3, v0}, Lcom/facebook/ads/redexgen/X/Q6;->A0P(Ljava/lang/Object;)V

    .line 60830
    return-void

    :cond_4
    sget-object v2, Lcom/facebook/ads/redexgen/X/R2;->A0J:[Ljava/lang/String;

    const-string v1, "3WqpoC752q4h2Wya5fT3BPHdY3ZkhgYP"

    const/4 v0, 0x2

    aput-object v1, v2, v0

    const-string v1, "HauWKBzmz4VUJQZuXSWVI1MWGOc6zBYt"

    const/4 v0, 0x5

    aput-object v1, v2, v0

    invoke-virtual {v4, v3}, Lcom/facebook/ads/redexgen/X/7M;->canScrollHorizontally(I)Z

    move-result v0

    if-eqz v0, :cond_3

    goto :goto_0

    :cond_5
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
.end method

.method private A0O(Lcom/facebook/ads/redexgen/X/RF;)V
    .locals 1

    .line 60831
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/R2;->A02:Lcom/facebook/ads/redexgen/X/RF;

    if-ne v0, p1, :cond_0

    .line 60832
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/R2;->A02:Lcom/facebook/ads/redexgen/X/RF;

    .line 60833
    :cond_0
    return-void
.end method

.method private final A0P()Z
    .locals 1

    .line 60834
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/R2;->A02:Lcom/facebook/ads/redexgen/X/RF;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/R2;->A02:Lcom/facebook/ads/redexgen/X/RF;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/RF;->A0F()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static A0Q(III)Z
    .locals 4

    .line 60835
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v3

    .line 60836
    .local v0, "specMode":I
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v2

    .line 60837
    .local v1, "specSize":I
    const/4 v1, 0x0

    if-lez p2, :cond_0

    if-eq p0, p2, :cond_0

    .line 60838
    return v1

    .line 60839
    :cond_0
    const/4 v0, 0x1

    sparse-switch v3, :sswitch_data_0

    .line 60840
    return v1

    .line 60841
    :sswitch_0
    if-ne v2, p0, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1

    .line 60842
    :sswitch_1
    return v0

    .line 60843
    :sswitch_2
    if-lt v2, p0, :cond_2

    const/4 v1, 0x1

    :cond_2
    return v1

    :sswitch_data_0
    .sparse-switch
        -0x80000000 -> :sswitch_2
        0x0 -> :sswitch_1
        0x40000000 -> :sswitch_0
    .end sparse-switch
.end method

.method private final A0R(Lcom/facebook/ads/redexgen/X/RA;Lcom/facebook/ads/redexgen/X/RH;)Z
    .locals 1

    .line 60844
    const/4 v0, 0x0

    return v0
.end method

.method private final A0S(Lcom/facebook/ads/redexgen/X/RA;Lcom/facebook/ads/redexgen/X/RH;ILandroid/os/Bundle;)Z
    .locals 6

    .line 60845
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/R2;->A03:Lcom/facebook/ads/redexgen/X/7M;

    const/4 v5, 0x0

    if-nez v0, :cond_0

    .line 60846
    return v5

    .line 60847
    :cond_0
    const/4 v2, 0x0

    .local v0, "vScroll":I
    const/4 v1, 0x0

    .line 60848
    .local v2, "hScroll":I
    const/4 v3, 0x1

    sparse-switch p3, :sswitch_data_0

    .line 60849
    :cond_1
    :goto_0
    if-nez v2, :cond_4

    if-nez v1, :cond_4

    .line 60850
    return v5

    .line 60851
    :sswitch_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/R2;->A03:Lcom/facebook/ads/redexgen/X/7M;

    const/4 v4, -0x1

    invoke-virtual {v0, v4}, Lcom/facebook/ads/redexgen/X/7M;->canScrollVertically(I)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 60852
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/R2;->A0Z()I

    move-result v2

    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/R2;->A0i()I

    move-result v0

    sub-int/2addr v2, v0

    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/R2;->A0f()I

    move-result v0

    sub-int/2addr v2, v0

    neg-int v2, v2

    .line 60853
    :cond_2
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/R2;->A03:Lcom/facebook/ads/redexgen/X/7M;

    invoke-virtual {v0, v4}, Lcom/facebook/ads/redexgen/X/7M;->canScrollHorizontally(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 60854
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/R2;->A0j()I

    move-result v1

    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/R2;->A0g()I

    move-result v0

    sub-int/2addr v1, v0

    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/R2;->A0h()I

    move-result v0

    sub-int/2addr v1, v0

    neg-int v1, v1

    goto :goto_0

    .line 60855
    :sswitch_1
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/R2;->A03:Lcom/facebook/ads/redexgen/X/7M;

    invoke-virtual {v0, v3}, Lcom/facebook/ads/redexgen/X/7M;->canScrollVertically(I)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 60856
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/R2;->A0Z()I

    move-result v2

    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/R2;->A0i()I

    move-result v0

    sub-int/2addr v2, v0

    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/R2;->A0f()I

    move-result v0

    sub-int/2addr v2, v0

    .line 60857
    :cond_3
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/R2;->A03:Lcom/facebook/ads/redexgen/X/7M;

    invoke-virtual {v0, v3}, Lcom/facebook/ads/redexgen/X/7M;->canScrollHorizontally(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 60858
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/R2;->A0j()I

    move-result v1

    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/R2;->A0g()I

    move-result v0

    sub-int/2addr v1, v0

    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/R2;->A0h()I

    move-result v0

    sub-int/2addr v1, v0

    goto :goto_0

    .line 60859
    :cond_4
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/R2;->A03:Lcom/facebook/ads/redexgen/X/7M;

    invoke-virtual {v0, v1, v2}, Lcom/facebook/ads/redexgen/X/7M;->scrollBy(II)V

    .line 60860
    return v3

    :sswitch_data_0
    .sparse-switch
        0x1000 -> :sswitch_1
        0x2000 -> :sswitch_0
    .end sparse-switch
.end method

.method private final A0T(Lcom/facebook/ads/redexgen/X/RA;Lcom/facebook/ads/redexgen/X/RH;Landroid/view/View;ILandroid/os/Bundle;)Z
    .locals 1

    .line 60861
    const/4 v0, 0x0

    return v0
.end method

.method private A0U(Lcom/facebook/ads/redexgen/X/7M;II)Z
    .locals 8

    .line 60862
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/7M;->getFocusedChild()Landroid/view/View;

    move-result-object v7

    .line 60863
    .local v0, "focusedChild":Landroid/view/View;
    const/4 v6, 0x0

    if-nez v7, :cond_0

    .line 60864
    return v6

    .line 60865
    :cond_0
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/R2;->A0g()I

    move-result v5

    .line 60866
    .local v2, "parentLeft":I
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/R2;->A0i()I

    move-result v4

    .line 60867
    .local v3, "parentTop":I
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/R2;->A0j()I

    move-result v3

    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/R2;->A0h()I

    move-result v0

    sub-int/2addr v3, v0

    .line 60868
    .local v4, "parentRight":I
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/R2;->A0Z()I

    move-result v2

    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/R2;->A0f()I

    move-result v0

    sub-int/2addr v2, v0

    .line 60869
    .local v5, "parentBottom":I
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/R2;->A03:Lcom/facebook/ads/redexgen/X/7M;

    iget-object v1, v0, Lcom/facebook/ads/redexgen/X/7M;->A0p:Landroid/graphics/Rect;

    .line 60870
    .local v6, "bounds":Landroid/graphics/Rect;
    invoke-direct {p0, v7, v1}, Lcom/facebook/ads/redexgen/X/R2;->A0J(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 60871
    iget v0, v1, Landroid/graphics/Rect;->left:I

    sub-int/2addr v0, p2

    if-ge v0, v3, :cond_1

    iget v0, v1, Landroid/graphics/Rect;->right:I

    sub-int/2addr v0, p2

    if-le v0, v5, :cond_1

    iget v0, v1, Landroid/graphics/Rect;->top:I

    sub-int/2addr v0, p3

    if-ge v0, v2, :cond_1

    iget v0, v1, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v0, p3

    if-gt v0, v4, :cond_2

    .line 60872
    :cond_1
    return v6

    .line 60873
    :cond_2
    const/4 v0, 0x1

    return v0
.end method

.method private final A0V(Lcom/facebook/ads/redexgen/X/7M;Landroid/view/View;Landroid/view/View;)Z
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 60874
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/R2;->A0P()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/7M;->A1s()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private A0W(Landroid/view/View;Landroid/graphics/Rect;)[I
    .locals 14

    .line 60875
    const/4 v0, 0x2

    new-array v7, v0, [I

    .line 60876
    .local v1, "out":[I
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/R2;->A0g()I

    move-result v13

    .line 60877
    .local v2, "parentLeft":I
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/R2;->A0i()I

    move-result v12

    .line 60878
    .local v3, "parentTop":I
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/R2;->A0j()I

    move-result v11

    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/R2;->A0h()I

    move-result v0

    sub-int/2addr v11, v0

    .line 60879
    .local v4, "parentRight":I
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/R2;->A0Z()I

    move-result v10

    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/R2;->A0f()I

    move-result v0

    sub-int/2addr v10, v0

    .line 60880
    .local v5, "parentBottom":I
    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v9

    move-object/from16 v1, p2

    iget v0, v1, Landroid/graphics/Rect;->left:I

    add-int/2addr v9, v0

    invoke-virtual {p1}, Landroid/view/View;->getScrollX()I

    move-result v0

    sub-int/2addr v9, v0

    .line 60881
    .local v6, "childLeft":I
    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v8

    iget v0, v1, Landroid/graphics/Rect;->top:I

    add-int/2addr v8, v0

    invoke-virtual {p1}, Landroid/view/View;->getScrollY()I

    move-result v0

    sub-int/2addr v8, v0

    .line 60882
    .local v7, "childTop":I
    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v6

    add-int/2addr v6, v9

    .line 60883
    .local v8, "childRight":I
    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v2

    add-int/2addr v2, v8

    .line 60884
    .local v9, "childBottom":I
    sub-int v0, v9, v13

    const/4 v1, 0x0

    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    move-result v5

    .line 60885
    .local v10, "offScreenLeft":I
    sub-int v0, v8, v12

    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    move-result v4

    .line 60886
    .local v12, "offScreenTop":I
    sub-int v0, v6, v11

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v3

    .line 60887
    .local v13, "offScreenRight":I
    sub-int/2addr v2, v10

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 60888
    .local p0, "offScreenBottom":I
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/R2;->A0c()I

    move-result v1

    const/4 v0, 0x1

    if-ne v1, v0, :cond_2

    .line 60889
    if-eqz v3, :cond_1

    .line 60890
    .restart local p1    # null:Landroid/view/View;
    :goto_0
    if-eqz v4, :cond_0

    .line 60891
    .local v11, "dy":I
    :goto_1
    const/4 v0, 0x0

    aput v3, v7, v0

    .line 60892
    const/4 v0, 0x1

    aput v4, v7, v0

    .line 60893
    return-object v7

    .line 60894
    :cond_0
    sub-int/2addr v8, v12

    invoke-static {v8, v2}, Ljava/lang/Math;->min(II)I

    move-result v4

    goto :goto_1

    .line 60895
    :cond_1
    sub-int/2addr v6, v11

    invoke-static {v5, v6}, Ljava/lang/Math;->max(II)I

    move-result v3

    goto :goto_0

    .line 60896
    .end local p1    # null:Landroid/view/View;
    :cond_2
    if-eqz v5, :cond_3

    move v3, v5

    goto :goto_0

    .line 60897
    :cond_3
    sub-int/2addr v9, v13

    invoke-static {v9, v3}, Ljava/lang/Math;->min(II)I

    move-result v3

    goto :goto_0
.end method


# virtual methods
.method public final A0X()I
    .locals 1

    .line 60898
    const/4 v0, -0x1

    return v0
.end method

.method public final A0Y()I
    .locals 1

    .line 60899
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/R2;->A01:Lcom/facebook/ads/redexgen/X/QQ;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/R2;->A01:Lcom/facebook/ads/redexgen/X/QQ;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/QQ;->A05()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final A0Z()I
    .locals 1

    .line 60900
    iget v0, p0, Lcom/facebook/ads/redexgen/X/R2;->A0A:I

    return v0
.end method

.method public final A0a()I
    .locals 1

    .line 60901
    iget v0, p0, Lcom/facebook/ads/redexgen/X/R2;->A0B:I

    return v0
.end method

.method public final A0b()I
    .locals 4

    .line 60902
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/R2;->A03:Lcom/facebook/ads/redexgen/X/7M;

    if-eqz v0, :cond_1

    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/R2;->A03:Lcom/facebook/ads/redexgen/X/7M;

    sget-object v1, Lcom/facebook/ads/redexgen/X/R2;->A0J:[Ljava/lang/String;

    const/4 v0, 0x3

    aget-object v1, v1, v0

    const/16 v0, 0x13

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x6b

    if-eq v1, v0, :cond_2

    sget-object v2, Lcom/facebook/ads/redexgen/X/R2;->A0J:[Ljava/lang/String;

    const-string v1, "NhHtbEzlhB3n2IblVpNcmlHtdyAdrFMd"

    const/4 v0, 0x4

    aput-object v1, v2, v0

    invoke-virtual {v3}, Lcom/facebook/ads/redexgen/X/7M;->getAdapter()Lcom/facebook/ads/redexgen/X/Qq;

    move-result-object v0

    .line 60903
    .local v0, "a":Lcom/facebook/ads/redexgen/X/Qq;
    :goto_0
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Qq;->A0B()I

    move-result v0

    :goto_1
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    .line 60904
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    :cond_2
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
.end method

.method public final A0c()I
    .locals 1

    .line 60905
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/R2;->A03:Lcom/facebook/ads/redexgen/X/7M;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Ph;->A01(Landroid/view/View;)I

    move-result v0

    return v0
.end method

.method public final A0d()I
    .locals 1

    .line 60906
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/R2;->A03:Lcom/facebook/ads/redexgen/X/7M;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Ph;->A02(Landroid/view/View;)I

    move-result v0

    return v0
.end method

.method public final A0e()I
    .locals 1

    .line 60907
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/R2;->A03:Lcom/facebook/ads/redexgen/X/7M;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Ph;->A03(Landroid/view/View;)I

    move-result v0

    return v0
.end method

.method public final A0f()I
    .locals 1

    .line 60908
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/R2;->A03:Lcom/facebook/ads/redexgen/X/7M;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/R2;->A03:Lcom/facebook/ads/redexgen/X/7M;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/7M;->getPaddingBottom()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final A0g()I
    .locals 1

    .line 60909
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/R2;->A03:Lcom/facebook/ads/redexgen/X/7M;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/R2;->A03:Lcom/facebook/ads/redexgen/X/7M;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/7M;->getPaddingLeft()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final A0h()I
    .locals 1

    .line 60910
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/R2;->A03:Lcom/facebook/ads/redexgen/X/7M;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/R2;->A03:Lcom/facebook/ads/redexgen/X/7M;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/7M;->getPaddingRight()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final A0i()I
    .locals 1

    .line 60911
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/R2;->A03:Lcom/facebook/ads/redexgen/X/7M;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/R2;->A03:Lcom/facebook/ads/redexgen/X/7M;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/7M;->getPaddingTop()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final A0j()I
    .locals 1

    .line 60912
    iget v0, p0, Lcom/facebook/ads/redexgen/X/R2;->A0C:I

    return v0
.end method

.method public final A0k()I
    .locals 1

    .line 60913
    iget v0, p0, Lcom/facebook/ads/redexgen/X/R2;->A0D:I

    return v0
.end method

.method public final A0l(Landroid/view/View;)I
    .locals 2

    .line 60914
    invoke-virtual {p1}, Landroid/view/View;->getBottom()I

    move-result v1

    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/R2;->A04(Landroid/view/View;)I

    move-result v0

    add-int/2addr v1, v0

    return v1
.end method

.method public final A0m(Landroid/view/View;)I
    .locals 2

    .line 60915
    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v1

    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/R2;->A05(Landroid/view/View;)I

    move-result v0

    sub-int/2addr v1, v0

    return v1
.end method

.method public final A0n(Landroid/view/View;)I
    .locals 3

    .line 60916
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/redexgen/X/R3;

    iget-object v2, v0, Lcom/facebook/ads/redexgen/X/R3;->A03:Landroid/graphics/Rect;

    .line 60917
    .local v0, "insets":Landroid/graphics/Rect;
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    iget v0, v2, Landroid/graphics/Rect;->top:I

    add-int/2addr v1, v0

    iget v0, v2, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v1, v0

    return v1
.end method

.method public final A0o(Landroid/view/View;)I
    .locals 3

    .line 60918
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/redexgen/X/R3;

    iget-object v2, v0, Lcom/facebook/ads/redexgen/X/R3;->A03:Landroid/graphics/Rect;

    .line 60919
    .local v0, "insets":Landroid/graphics/Rect;
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    iget v0, v2, Landroid/graphics/Rect;->left:I

    add-int/2addr v1, v0

    iget v0, v2, Landroid/graphics/Rect;->right:I

    add-int/2addr v1, v0

    return v1
.end method

.method public final A0p(Landroid/view/View;)I
    .locals 2

    .line 60920
    invoke-virtual {p1}, Landroid/view/View;->getRight()I

    move-result v1

    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/R2;->A06(Landroid/view/View;)I

    move-result v0

    add-int/2addr v1, v0

    return v1
.end method

.method public final A0q(Landroid/view/View;)I
    .locals 2

    .line 60921
    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v1

    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/R2;->A07(Landroid/view/View;)I

    move-result v0

    sub-int/2addr v1, v0

    return v1
.end method

.method public final A0r(Landroid/view/View;)I
    .locals 1

    .line 60922
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/redexgen/X/R3;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/R3;->A00()I

    move-result v0

    return v0
.end method

.method public A0s(Lcom/facebook/ads/redexgen/X/RA;Lcom/facebook/ads/redexgen/X/RH;)I
    .locals 2

    .line 60923
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/R2;->A03:Lcom/facebook/ads/redexgen/X/7M;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/R2;->A03:Lcom/facebook/ads/redexgen/X/7M;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/7M;->A04:Lcom/facebook/ads/redexgen/X/Qq;

    if-nez v0, :cond_1

    .line 60924
    :cond_0
    return v1

    .line 60925
    :cond_1
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/R2;->A22()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/R2;->A03:Lcom/facebook/ads/redexgen/X/7M;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/7M;->A04:Lcom/facebook/ads/redexgen/X/Qq;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Qq;->A0B()I

    move-result v1

    :cond_2
    return v1
.end method

.method public A0t(Lcom/facebook/ads/redexgen/X/RA;Lcom/facebook/ads/redexgen/X/RH;)I
    .locals 2

    .line 60926
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/R2;->A03:Lcom/facebook/ads/redexgen/X/7M;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/R2;->A03:Lcom/facebook/ads/redexgen/X/7M;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/7M;->A04:Lcom/facebook/ads/redexgen/X/Qq;

    if-nez v0, :cond_1

    .line 60927
    :cond_0
    return v1

    .line 60928
    :cond_1
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/R2;->A23()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/R2;->A03:Lcom/facebook/ads/redexgen/X/7M;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/7M;->A04:Lcom/facebook/ads/redexgen/X/Qq;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Qq;->A0B()I

    move-result v1

    :cond_2
    return v1
.end method

.method public final A0u()Landroid/view/View;
    .locals 3

    .line 60929
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/R2;->A03:Lcom/facebook/ads/redexgen/X/7M;

    const/4 v2, 0x0

    if-nez v0, :cond_0

    .line 60930
    return-object v2

    .line 60931
    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/R2;->A03:Lcom/facebook/ads/redexgen/X/7M;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/7M;->getFocusedChild()Landroid/view/View;

    move-result-object v1

    .line 60932
    .local v0, "focused":Landroid/view/View;
    if-eqz v1, :cond_1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/R2;->A01:Lcom/facebook/ads/redexgen/X/QQ;

    invoke-virtual {v0, v1}, Lcom/facebook/ads/redexgen/X/QQ;->A0K(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 60933
    :cond_1
    return-object v2

    .line 60934
    :cond_2
    return-object v1
.end method

.method public final A0v(I)Landroid/view/View;
    .locals 1

    .line 60935
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/R2;->A01:Lcom/facebook/ads/redexgen/X/QQ;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/R2;->A01:Lcom/facebook/ads/redexgen/X/QQ;

    invoke-virtual {v0, p1}, Lcom/facebook/ads/redexgen/X/QQ;->A09(I)Landroid/view/View;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final A0w(Landroid/view/View;I)Landroid/view/View;
    .locals 1

    .line 60936
    const/4 v0, 0x0

    return-object v0
.end method

.method public A0x(Landroid/content/Context;Landroid/util/AttributeSet;)Lcom/facebook/ads/redexgen/X/R3;
    .locals 1

    .line 60937
    new-instance v0, Lcom/facebook/ads/redexgen/X/R3;

    invoke-direct {v0, p1, p2}, Lcom/facebook/ads/redexgen/X/R3;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-object v0
.end method

.method public A0y(Landroid/view/ViewGroup$LayoutParams;)Lcom/facebook/ads/redexgen/X/R3;
    .locals 1

    .line 60938
    instance-of v0, p1, Lcom/facebook/ads/redexgen/X/R3;

    if-eqz v0, :cond_0

    .line 60939
    check-cast p1, Lcom/facebook/ads/redexgen/X/R3;

    new-instance v0, Lcom/facebook/ads/redexgen/X/R3;

    invoke-direct {v0, p1}, Lcom/facebook/ads/redexgen/X/R3;-><init>(Lcom/facebook/ads/redexgen/X/R3;)V

    return-object v0

    .line 60940
    :cond_0
    instance-of v0, p1, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz v0, :cond_1

    .line 60941
    check-cast p1, Landroid/view/ViewGroup$MarginLayoutParams;

    new-instance v0, Lcom/facebook/ads/redexgen/X/R3;

    invoke-direct {v0, p1}, Lcom/facebook/ads/redexgen/X/R3;-><init>(Landroid/view/ViewGroup$MarginLayoutParams;)V

    return-object v0

    .line 60942
    :cond_1
    new-instance v0, Lcom/facebook/ads/redexgen/X/R3;

    invoke-direct {v0, p1}, Lcom/facebook/ads/redexgen/X/R3;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    return-object v0
.end method

.method public final A0z()V
    .locals 1

    .line 60943
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/R2;->A02:Lcom/facebook/ads/redexgen/X/RF;

    if-eqz v0, :cond_0

    .line 60944
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/R2;->A02:Lcom/facebook/ads/redexgen/X/RF;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/RF;->A09()V

    .line 60945
    :cond_0
    return-void
.end method

.method public final A10()V
    .locals 1

    .line 60946
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/R2;->A03:Lcom/facebook/ads/redexgen/X/7M;

    if-eqz v0, :cond_0

    .line 60947
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/R2;->A03:Lcom/facebook/ads/redexgen/X/7M;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/7M;->requestLayout()V

    .line 60948
    :cond_0
    return-void
.end method

.method public final A11(I)V
    .locals 1

    .line 60949
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/R2;->A03:Lcom/facebook/ads/redexgen/X/7M;

    if-eqz v0, :cond_0

    .line 60950
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/R2;->A03:Lcom/facebook/ads/redexgen/X/7M;

    invoke-virtual {v0, p1}, Lcom/facebook/ads/redexgen/X/7M;->A1V(I)V

    .line 60951
    :cond_0
    return-void
.end method

.method public final A12(I)V
    .locals 1

    .line 60952
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/R2;->A03:Lcom/facebook/ads/redexgen/X/7M;

    if-eqz v0, :cond_0

    .line 60953
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/R2;->A03:Lcom/facebook/ads/redexgen/X/7M;

    invoke-virtual {v0, p1}, Lcom/facebook/ads/redexgen/X/7M;->A1W(I)V

    .line 60954
    :cond_0
    return-void
.end method

.method public final A13(II)V
    .locals 2

    .line 60955
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    iput v0, p0, Lcom/facebook/ads/redexgen/X/R2;->A0C:I

    .line 60956
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    iput v0, p0, Lcom/facebook/ads/redexgen/X/R2;->A0D:I

    .line 60957
    iget v0, p0, Lcom/facebook/ads/redexgen/X/R2;->A0D:I

    const/4 v1, 0x0

    if-nez v0, :cond_0

    sget-boolean v0, Lcom/facebook/ads/redexgen/X/7M;->A1B:Z

    if-nez v0, :cond_0

    .line 60958
    iput v1, p0, Lcom/facebook/ads/redexgen/X/R2;->A0C:I

    .line 60959
    :cond_0
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    iput v0, p0, Lcom/facebook/ads/redexgen/X/R2;->A0A:I

    .line 60960
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    iput v0, p0, Lcom/facebook/ads/redexgen/X/R2;->A0B:I

    .line 60961
    iget v0, p0, Lcom/facebook/ads/redexgen/X/R2;->A0B:I

    if-nez v0, :cond_1

    sget-boolean v0, Lcom/facebook/ads/redexgen/X/7M;->A1B:Z

    if-nez v0, :cond_1

    .line 60962
    iput v1, p0, Lcom/facebook/ads/redexgen/X/R2;->A0A:I

    .line 60963
    :cond_1
    return-void
.end method

.method public final A14(II)V
    .locals 9

    .line 60964
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/R2;->A0Y()I

    move-result v8

    .line 60965
    .local v0, "count":I
    if-nez v8, :cond_1

    .line 60966
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/R2;->A03:Lcom/facebook/ads/redexgen/X/7M;

    invoke-virtual {v0, p1, p2}, Lcom/facebook/ads/redexgen/X/7M;->A1c(II)V

    sget-object v2, Lcom/facebook/ads/redexgen/X/R2;->A0J:[Ljava/lang/String;

    const/4 v0, 0x2

    aget-object v1, v2, v0

    const/4 v0, 0x5

    aget-object v2, v2, v0

    const/16 v0, 0x1e

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v1, v0, :cond_0

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    .line 60967
    :cond_0
    sget-object v2, Lcom/facebook/ads/redexgen/X/R2;->A0J:[Ljava/lang/String;

    const-string v1, "XwkGDyjU"

    const/4 v0, 0x1

    aput-object v1, v2, v0

    return-void

    .line 60968
    :cond_1
    const v6, 0x7fffffff

    .line 60969
    .local v1, "minX":I
    const v5, 0x7fffffff

    .line 60970
    .local v2, "minY":I
    const/high16 v4, -0x80000000

    .line 60971
    .local v3, "maxX":I
    const/high16 v3, -0x80000000

    .line 60972
    .local v4, "maxY":I
    const/4 v7, 0x0

    .local v5, "i":I
    :goto_0
    if-ge v7, v8, :cond_6

    .line 60973
    invoke-virtual {p0, v7}, Lcom/facebook/ads/redexgen/X/R2;->A0v(I)Landroid/view/View;

    move-result-object v2

    .line 60974
    .local v6, "child":Landroid/view/View;
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/R2;->A03:Lcom/facebook/ads/redexgen/X/7M;

    iget-object v1, v0, Lcom/facebook/ads/redexgen/X/7M;->A0p:Landroid/graphics/Rect;

    .line 60975
    .local v7, "bounds":Landroid/graphics/Rect;
    invoke-direct {p0, v2, v1}, Lcom/facebook/ads/redexgen/X/R2;->A0J(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 60976
    iget v0, v1, Landroid/graphics/Rect;->left:I

    if-ge v0, v6, :cond_2

    .line 60977
    iget v6, v1, Landroid/graphics/Rect;->left:I

    .line 60978
    :cond_2
    iget v0, v1, Landroid/graphics/Rect;->right:I

    if-le v0, v4, :cond_3

    .line 60979
    iget v4, v1, Landroid/graphics/Rect;->right:I

    .line 60980
    :cond_3
    iget v0, v1, Landroid/graphics/Rect;->top:I

    if-ge v0, v5, :cond_4

    .line 60981
    iget v5, v1, Landroid/graphics/Rect;->top:I

    .line 60982
    :cond_4
    iget v0, v1, Landroid/graphics/Rect;->bottom:I

    if-le v0, v3, :cond_5

    .line 60983
    iget v3, v1, Landroid/graphics/Rect;->bottom:I

    .line 60984
    .end local v6    # "child":Landroid/view/View;
    .end local v7    # "bounds":Landroid/graphics/Rect;
    :cond_5
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 60985
    .end local v5    # "i":I
    :cond_6
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/R2;->A03:Lcom/facebook/ads/redexgen/X/7M;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/7M;->A0p:Landroid/graphics/Rect;

    invoke-virtual {v0, v6, v5, v4, v3}, Landroid/graphics/Rect;->set(IIII)V

    .line 60986
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/R2;->A03:Lcom/facebook/ads/redexgen/X/7M;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/7M;->A0p:Landroid/graphics/Rect;

    invoke-virtual {p0, v0, p1, p2}, Lcom/facebook/ads/redexgen/X/R2;->A17(Landroid/graphics/Rect;II)V

    .line 60987
    return-void
.end method

.method public final A15(II)V
    .locals 1

    .line 60988
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/R2;->A03:Lcom/facebook/ads/redexgen/X/7M;

    invoke-static {v0, p1, p2}, Lcom/facebook/ads/redexgen/X/7M;->A0v(Lcom/facebook/ads/redexgen/X/7M;II)V

    .line 60989
    return-void
.end method

.method public final A16(ILcom/facebook/ads/redexgen/X/RA;)V
    .locals 1

    .line 60990
    invoke-virtual {p0, p1}, Lcom/facebook/ads/redexgen/X/R2;->A0v(I)Landroid/view/View;

    move-result-object v0

    .line 60991
    .local v0, "view":Landroid/view/View;
    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/R2;->A0C(I)V

    .line 60992
    invoke-virtual {p2, v0}, Lcom/facebook/ads/redexgen/X/RA;->A0T(Landroid/view/View;)V

    .line 60993
    return-void
.end method

.method public A17(Landroid/graphics/Rect;II)V
    .locals 3

    .line 60994
    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v1

    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/R2;->A0g()I

    move-result v0

    add-int/2addr v1, v0

    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/R2;->A0h()I

    move-result v0

    add-int/2addr v1, v0

    .line 60995
    .local v0, "usedWidth":I
    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v2

    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/R2;->A0i()I

    move-result v0

    add-int/2addr v2, v0

    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/R2;->A0f()I

    move-result v0

    add-int/2addr v2, v0

    .line 60996
    .local v1, "usedHeight":I
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/R2;->A0e()I

    move-result v0

    invoke-static {p2, v1, v0}, Lcom/facebook/ads/redexgen/X/R2;->A02(III)I

    move-result v1

    .line 60997
    .local v2, "width":I
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/R2;->A0d()I

    move-result v0

    invoke-static {p3, v2, v0}, Lcom/facebook/ads/redexgen/X/R2;->A02(III)I

    move-result v0

    .line 60998
    .local p0, "height":I
    invoke-virtual {p0, v1, v0}, Lcom/facebook/ads/redexgen/X/R2;->A15(II)V

    .line 60999
    return-void
.end method

.method public final A18(Landroid/view/View;)V
    .locals 1

    .line 61000
    const/4 v0, -0x1

    invoke-virtual {p0, p1, v0}, Lcom/facebook/ads/redexgen/X/R2;->A1A(Landroid/view/View;I)V

    .line 61001
    return-void
.end method

.method public final A19(Landroid/view/View;)V
    .locals 1

    .line 61002
    const/4 v0, -0x1

    invoke-virtual {p0, p1, v0}, Lcom/facebook/ads/redexgen/X/R2;->A1B(Landroid/view/View;I)V

    .line 61003
    return-void
.end method

.method public final A1A(Landroid/view/View;I)V
    .locals 1

    .line 61004
    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, v0}, Lcom/facebook/ads/redexgen/X/R2;->A0I(Landroid/view/View;IZ)V

    .line 61005
    return-void
.end method

.method public final A1B(Landroid/view/View;I)V
    .locals 1

    .line 61006
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/facebook/ads/redexgen/X/R2;->A0I(Landroid/view/View;IZ)V

    .line 61007
    return-void
.end method

.method public final A1C(Landroid/view/View;II)V
    .locals 7

    .line 61008
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    check-cast v6, Lcom/facebook/ads/redexgen/X/R3;

    .line 61009
    .local v0, "lp":Lcom/facebook/ads/redexgen/X/R3;
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/R2;->A03:Lcom/facebook/ads/redexgen/X/7M;

    invoke-virtual {v0, p1}, Lcom/facebook/ads/redexgen/X/7M;->A1D(Landroid/view/View;)Landroid/graphics/Rect;

    move-result-object v2

    .line 61010
    .local v1, "insets":Landroid/graphics/Rect;
    iget v1, v2, Landroid/graphics/Rect;->left:I

    iget v0, v2, Landroid/graphics/Rect;->right:I

    add-int/2addr v1, v0

    add-int/2addr p2, v1

    .line 61011
    iget v1, v2, Landroid/graphics/Rect;->top:I

    iget v0, v2, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v1, v0

    add-int/2addr p3, v1

    .line 61012
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/R2;->A0j()I

    move-result v4

    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/R2;->A0k()I

    move-result v3

    .line 61013
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/R2;->A0g()I

    move-result v2

    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/R2;->A0h()I

    move-result v0

    add-int/2addr v2, v0

    iget v0, v6, Lcom/facebook/ads/redexgen/X/R3;->leftMargin:I

    add-int/2addr v2, v0

    iget v0, v6, Lcom/facebook/ads/redexgen/X/R3;->rightMargin:I

    add-int/2addr v2, v0

    add-int/2addr v2, p2

    iget v1, v6, Lcom/facebook/ads/redexgen/X/R3;->width:I

    .line 61014
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/R2;->A22()Z

    move-result v0

    .line 61015
    invoke-static {v4, v3, v2, v1, v0}, Lcom/facebook/ads/redexgen/X/R2;->A03(IIIIZ)I

    move-result v5

    .line 61016
    .local v2, "widthSpec":I
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/R2;->A0Z()I

    move-result v4

    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/R2;->A0a()I

    move-result v3

    .line 61017
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/R2;->A0i()I

    move-result v2

    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/R2;->A0f()I

    move-result v0

    add-int/2addr v2, v0

    iget v0, v6, Lcom/facebook/ads/redexgen/X/R3;->topMargin:I

    add-int/2addr v2, v0

    iget v0, v6, Lcom/facebook/ads/redexgen/X/R3;->bottomMargin:I

    add-int/2addr v2, v0

    add-int/2addr v2, p3

    iget v1, v6, Lcom/facebook/ads/redexgen/X/R3;->height:I

    .line 61018
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/R2;->A23()Z

    move-result v0

    .line 61019
    invoke-static {v4, v3, v2, v1, v0}, Lcom/facebook/ads/redexgen/X/R2;->A03(IIIIZ)I

    move-result v1

    .line 61020
    .local v3, "heightSpec":I
    invoke-virtual {p0, p1, v5, v1, v6}, Lcom/facebook/ads/redexgen/X/R2;->A1Y(Landroid/view/View;IILcom/facebook/ads/redexgen/X/R3;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 61021
    invoke-virtual {p1, v5, v1}, Landroid/view/View;->measure(II)V

    .line 61022
    :cond_0
    return-void
.end method

.method public final A1D(Landroid/view/View;IIII)V
    .locals 5

    .line 61023
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Lcom/facebook/ads/redexgen/X/R3;

    .line 61024
    .local v0, "lp":Lcom/facebook/ads/redexgen/X/R3;
    iget-object v3, v4, Lcom/facebook/ads/redexgen/X/R3;->A03:Landroid/graphics/Rect;

    .line 61025
    .local v1, "insets":Landroid/graphics/Rect;
    iget v2, v3, Landroid/graphics/Rect;->left:I

    add-int/2addr v2, p2

    iget v0, v4, Lcom/facebook/ads/redexgen/X/R3;->leftMargin:I

    add-int/2addr v2, v0

    iget v1, v3, Landroid/graphics/Rect;->top:I

    add-int/2addr v1, p3

    iget v0, v4, Lcom/facebook/ads/redexgen/X/R3;->topMargin:I

    add-int/2addr v1, v0

    iget v0, v3, Landroid/graphics/Rect;->right:I

    sub-int/2addr p4, v0

    iget v0, v4, Lcom/facebook/ads/redexgen/X/R3;->rightMargin:I

    sub-int/2addr p4, v0

    iget v0, v3, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr p5, v0

    iget v0, v4, Lcom/facebook/ads/redexgen/X/R3;->bottomMargin:I

    sub-int/2addr p5, v0

    invoke-virtual {p1, v2, v1, p4, p5}, Landroid/view/View;->layout(IIII)V

    .line 61026
    return-void
.end method

.method public final A1E(Landroid/view/View;Lcom/facebook/ads/redexgen/X/Q6;)V
    .locals 5

    .line 61027
    invoke-static {p1}, Lcom/facebook/ads/redexgen/X/7M;->A0F(Landroid/view/View;)Lcom/facebook/ads/redexgen/X/RK;

    move-result-object v4

    .line 61028
    .local v0, "vh":Lcom/facebook/ads/redexgen/X/RK;
    if-eqz v4, :cond_0

    invoke-virtual {v4}, Lcom/facebook/ads/redexgen/X/RK;->A0g()Z

    move-result v3

    sget-object v1, Lcom/facebook/ads/redexgen/X/R2;->A0J:[Ljava/lang/String;

    const/4 v0, 0x4

    aget-object v1, v1, v0

    const/16 v0, 0xc

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x76

    if-eq v1, v0, :cond_1

    sget-object v2, Lcom/facebook/ads/redexgen/X/R2;->A0J:[Ljava/lang/String;

    const-string v1, "uJMRqraa"

    const/4 v0, 0x1

    aput-object v1, v2, v0

    if-nez v3, :cond_0

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/R2;->A01:Lcom/facebook/ads/redexgen/X/QQ;

    iget-object v0, v4, Lcom/facebook/ads/redexgen/X/RK;->A0H:Landroid/view/View;

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/QQ;->A0K(Landroid/view/View;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 61029
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/R2;->A03:Lcom/facebook/ads/redexgen/X/7M;

    iget-object v1, v0, Lcom/facebook/ads/redexgen/X/7M;->A0r:Lcom/facebook/ads/redexgen/X/RA;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/R2;->A03:Lcom/facebook/ads/redexgen/X/7M;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/7M;->A0s:Lcom/facebook/ads/redexgen/X/RH;

    invoke-virtual {p0, v1, v0, p1, p2}, Lcom/facebook/ads/redexgen/X/R2;->A1M(Lcom/facebook/ads/redexgen/X/RA;Lcom/facebook/ads/redexgen/X/RH;Landroid/view/View;Lcom/facebook/ads/redexgen/X/Q6;)V

    .line 61030
    :cond_0
    return-void

    :cond_1
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
.end method

.method public final A1F(Landroid/view/View;Lcom/facebook/ads/redexgen/X/RA;)V
    .locals 0

    .line 61031
    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/R2;->A0F(Landroid/view/View;)V

    .line 61032
    invoke-virtual {p2, p1}, Lcom/facebook/ads/redexgen/X/RA;->A0T(Landroid/view/View;)V

    .line 61033
    return-void
.end method

.method public final A1G(Landroid/view/View;ZLandroid/graphics/Rect;)V
    .locals 8

    .line 61034
    if-eqz p2, :cond_0

    .line 61035
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/redexgen/X/R3;

    iget-object v5, v0, Lcom/facebook/ads/redexgen/X/R3;->A03:Landroid/graphics/Rect;

    .line 61036
    .local v0, "insets":Landroid/graphics/Rect;
    iget v0, v5, Landroid/graphics/Rect;->left:I

    neg-int v4, v0

    iget v0, v5, Landroid/graphics/Rect;->top:I

    neg-int v3, v0

    .line 61037
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v2

    iget v0, v5, Landroid/graphics/Rect;->right:I

    add-int/2addr v2, v0

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v1

    iget v0, v5, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v1, v0

    .line 61038
    invoke-virtual {p3, v4, v3, v2, v1}, Landroid/graphics/Rect;->set(IIII)V

    .line 61039
    .end local v0    # "insets":Landroid/graphics/Rect;
    :goto_0
    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/R2;->A03:Lcom/facebook/ads/redexgen/X/7M;

    sget-object v2, Lcom/facebook/ads/redexgen/X/R2;->A0J:[Ljava/lang/String;

    const/4 v0, 0x0

    aget-object v1, v2, v0

    const/4 v0, 0x7

    aget-object v2, v2, v0

    const/16 v0, 0x17

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v1, v0, :cond_1

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    .line 61040
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v2

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v1

    const/4 v0, 0x0

    invoke-virtual {p3, v0, v0, v2, v1}, Landroid/graphics/Rect;->set(IIII)V

    goto :goto_0

    :cond_1
    sget-object v2, Lcom/facebook/ads/redexgen/X/R2;->A0J:[Ljava/lang/String;

    const-string v1, "0LJ8GvUexdNG1AG11Ii0XfPOyD5lBlCr"

    const/4 v0, 0x0

    aput-object v1, v2, v0

    const-string v1, "NwYNIOYDHD2wNBVOHxFlNgVOQtOI4Jp5"

    const/4 v0, 0x7

    aput-object v1, v2, v0

    if-eqz v3, :cond_2

    .line 61041
    invoke-virtual {p1}, Landroid/view/View;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v1

    .line 61042
    .local v0, "childMatrix":Landroid/graphics/Matrix;
    if-eqz v1, :cond_2

    invoke-virtual {v1}, Landroid/graphics/Matrix;->isIdentity()Z

    move-result v0

    if-nez v0, :cond_2

    .line 61043
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/R2;->A03:Lcom/facebook/ads/redexgen/X/7M;

    iget-object v7, v0, Lcom/facebook/ads/redexgen/X/7M;->A0q:Landroid/graphics/RectF;

    .line 61044
    .local v1, "tempRectF":Landroid/graphics/RectF;
    invoke-virtual {v7, p3}, Landroid/graphics/RectF;->set(Landroid/graphics/Rect;)V

    .line 61045
    invoke-virtual {v1, v7}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    .line 61046
    iget v0, v7, Landroid/graphics/RectF;->left:F

    float-to-double v0, v0

    .line 61047
    invoke-static {v0, v1}, Ljava/lang/Math;->floor(D)D

    move-result-wide v0

    double-to-int v5, v0

    iget v0, v7, Landroid/graphics/RectF;->top:F

    float-to-double v0, v0

    .line 61048
    invoke-static {v0, v1}, Ljava/lang/Math;->floor(D)D

    move-result-wide v0

    double-to-int v4, v0

    iget v0, v7, Landroid/graphics/RectF;->right:F

    float-to-double v1, v0

    sget-object v3, Lcom/facebook/ads/redexgen/X/R2;->A0J:[Ljava/lang/String;

    const/4 v0, 0x6

    aget-object v0, v3, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    const/16 v0, 0xf

    if-eq v3, v0, :cond_3

    .line 61049
    sget-object v6, Lcom/facebook/ads/redexgen/X/R2;->A0J:[Ljava/lang/String;

    const-string v3, "AxZOVdXnwoPa2hByvRQIxFpOdsFmpigD"

    const/4 v0, 0x0

    aput-object v3, v6, v0

    const-string v3, "eNbgBcin3tlOsNhY3b3xdMmObUbY1NrP"

    const/4 v0, 0x7

    aput-object v3, v6, v0

    invoke-static {v1, v2}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    double-to-int v3, v0

    iget v0, v7, Landroid/graphics/RectF;->bottom:F

    float-to-double v0, v0

    .line 61050
    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v1

    double-to-int v0, v1

    .line 61051
    invoke-virtual {p3, v5, v4, v3, v0}, Landroid/graphics/Rect;->set(IIII)V

    .line 61052
    .end local v0    # "childMatrix":Landroid/graphics/Matrix;
    .end local v1    # "tempRectF":Landroid/graphics/RectF;
    :cond_2
    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v1

    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v0

    invoke-virtual {p3, v1, v0}, Landroid/graphics/Rect;->offset(II)V

    .line 61053
    return-void

    :cond_3
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
.end method

.method public final A1H(Lcom/facebook/ads/redexgen/X/Q6;)V
    .locals 2

    .line 61054
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/R2;->A03:Lcom/facebook/ads/redexgen/X/7M;

    iget-object v1, v0, Lcom/facebook/ads/redexgen/X/7M;->A0r:Lcom/facebook/ads/redexgen/X/RA;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/R2;->A03:Lcom/facebook/ads/redexgen/X/7M;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/7M;->A0s:Lcom/facebook/ads/redexgen/X/RH;

    invoke-direct {p0, v1, v0, p1}, Lcom/facebook/ads/redexgen/X/R2;->A0N(Lcom/facebook/ads/redexgen/X/RA;Lcom/facebook/ads/redexgen/X/RH;Lcom/facebook/ads/redexgen/X/Q6;)V

    .line 61055
    return-void
.end method

.method public final A1I(Lcom/facebook/ads/redexgen/X/RA;)V
    .locals 6

    .line 61056
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/RA;->A0E()I

    move-result v5

    .line 61057
    .local v0, "scrapCount":I
    add-int/lit8 v4, v5, -0x1

    .local v1, "i":I
    :goto_0
    if-ltz v4, :cond_3

    .line 61058
    invoke-virtual {p1, v4}, Lcom/facebook/ads/redexgen/X/RA;->A0F(I)Landroid/view/View;

    move-result-object v3

    .line 61059
    .local v2, "scrap":Landroid/view/View;
    invoke-static {v3}, Lcom/facebook/ads/redexgen/X/7M;->A0F(Landroid/view/View;)Lcom/facebook/ads/redexgen/X/RK;

    move-result-object v2

    .line 61060
    .local v3, "vh":Lcom/facebook/ads/redexgen/X/RK;
    invoke-virtual {v2}, Lcom/facebook/ads/redexgen/X/RK;->A0l()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 61061
    .end local v2    # "scrap":Landroid/view/View;
    .end local v3    # "vh":Lcom/facebook/ads/redexgen/X/RK;
    :goto_1
    add-int/lit8 v4, v4, -0x1

    goto :goto_0

    .line 61062
    :cond_0
    const/4 v1, 0x0

    invoke-virtual {v2, v1}, Lcom/facebook/ads/redexgen/X/RK;->A0d(Z)V

    .line 61063
    invoke-virtual {v2}, Lcom/facebook/ads/redexgen/X/RK;->A0i()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 61064
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/R2;->A03:Lcom/facebook/ads/redexgen/X/7M;

    invoke-virtual {v0, v3, v1}, Lcom/facebook/ads/redexgen/X/7M;->removeDetachedView(Landroid/view/View;Z)V

    .line 61065
    :cond_1
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/R2;->A03:Lcom/facebook/ads/redexgen/X/7M;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/7M;->A05:Lcom/facebook/ads/redexgen/X/Qy;

    if-eqz v0, :cond_2

    .line 61066
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/R2;->A03:Lcom/facebook/ads/redexgen/X/7M;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/7M;->A05:Lcom/facebook/ads/redexgen/X/Qy;

    invoke-virtual {v0, v2}, Lcom/facebook/ads/redexgen/X/Qy;->A0L(Lcom/facebook/ads/redexgen/X/RK;)V

    .line 61067
    :cond_2
    const/4 v0, 0x1

    invoke-virtual {v2, v0}, Lcom/facebook/ads/redexgen/X/RK;->A0d(Z)V

    .line 61068
    invoke-virtual {p1, v3}, Lcom/facebook/ads/redexgen/X/RA;->A0R(Landroid/view/View;)V

    goto :goto_1

    .line 61069
    .end local v1    # "i":I
    :cond_3
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/RA;->A0L()V

    .line 61070
    if-lez v5, :cond_4

    .line 61071
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/R2;->A03:Lcom/facebook/ads/redexgen/X/7M;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/7M;->invalidate()V

    .line 61072
    :cond_4
    return-void
.end method

.method public final A1J(Lcom/facebook/ads/redexgen/X/RA;)V
    .locals 2

    .line 61073
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/R2;->A0Y()I

    move-result v0

    .line 61074
    .local v0, "childCount":I
    add-int/lit8 v1, v0, -0x1

    .local v1, "i":I
    :goto_0
    if-ltz v1, :cond_0

    .line 61075
    invoke-virtual {p0, v1}, Lcom/facebook/ads/redexgen/X/R2;->A0v(I)Landroid/view/View;

    move-result-object v0

    .line 61076
    .local p0, "v":Landroid/view/View;
    invoke-direct {p0, p1, v1, v0}, Lcom/facebook/ads/redexgen/X/R2;->A0L(Lcom/facebook/ads/redexgen/X/RA;ILandroid/view/View;)V

    .line 61077
    .end local p0    # "v":Landroid/view/View;
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 61078
    .end local v1    # "i":I
    :cond_0
    return-void
.end method

.method public final A1K(Lcom/facebook/ads/redexgen/X/RA;)V
    .locals 2

    .line 61079
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/R2;->A0Y()I

    move-result v0

    add-int/lit8 v1, v0, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v1, :cond_1

    .line 61080
    invoke-virtual {p0, v1}, Lcom/facebook/ads/redexgen/X/R2;->A0v(I)Landroid/view/View;

    move-result-object v0

    .line 61081
    .local v1, "view":Landroid/view/View;
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/7M;->A0F(Landroid/view/View;)Lcom/facebook/ads/redexgen/X/RK;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/RK;->A0l()Z

    move-result v0

    if-nez v0, :cond_0

    .line 61082
    invoke-virtual {p0, v1, p1}, Lcom/facebook/ads/redexgen/X/R2;->A16(ILcom/facebook/ads/redexgen/X/RA;)V

    .line 61083
    .end local v1    # "view":Landroid/view/View;
    :cond_0
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 61084
    .end local v0    # "i":I
    :cond_1
    return-void
.end method

.method public A1L(Lcom/facebook/ads/redexgen/X/RA;Lcom/facebook/ads/redexgen/X/RH;II)V
    .locals 1

    .line 61085
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/R2;->A03:Lcom/facebook/ads/redexgen/X/7M;

    invoke-virtual {v0, p3, p4}, Lcom/facebook/ads/redexgen/X/7M;->A1c(II)V

    .line 61086
    return-void
.end method

.method public A1M(Lcom/facebook/ads/redexgen/X/RA;Lcom/facebook/ads/redexgen/X/RH;Landroid/view/View;Lcom/facebook/ads/redexgen/X/Q6;)V
    .locals 7

    .line 61087
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/R2;->A23()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0, p3}, Lcom/facebook/ads/redexgen/X/R2;->A0r(Landroid/view/View;)I

    move-result v1

    .line 61088
    .local v2, "rowIndexGuess":I
    :goto_0
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/R2;->A22()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, p3}, Lcom/facebook/ads/redexgen/X/R2;->A0r(Landroid/view/View;)I

    move-result v3

    .line 61089
    .local v4, "columnIndexGuess":I
    :goto_1
    const/4 v2, 0x1

    const/4 v4, 0x1

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-static/range {v1 .. v6}, Lcom/facebook/ads/redexgen/X/Q4;->A00(IIIIZZ)Lcom/facebook/ads/redexgen/X/Q4;

    move-result-object v0

    .line 61090
    .local v0, "itemInfo":Lcom/facebook/ads/redexgen/X/Q4;
    invoke-virtual {p4, v0}, Lcom/facebook/ads/redexgen/X/Q6;->A0Q(Ljava/lang/Object;)V

    .line 61091
    return-void

    .line 61092
    :cond_0
    const/4 v3, 0x0

    goto :goto_1

    .line 61093
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public final A1N(Lcom/facebook/ads/redexgen/X/RF;)V
    .locals 4

    .line 61094
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/R2;->A02:Lcom/facebook/ads/redexgen/X/RF;

    if-eqz v0, :cond_0

    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/R2;->A02:Lcom/facebook/ads/redexgen/X/RF;

    sget-object v1, Lcom/facebook/ads/redexgen/X/R2;->A0J:[Ljava/lang/String;

    const/4 v0, 0x4

    aget-object v1, v1, v0

    const/16 v0, 0xc

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x76

    if-eq v1, v0, :cond_2

    sget-object v2, Lcom/facebook/ads/redexgen/X/R2;->A0J:[Ljava/lang/String;

    const-string v1, "G"

    const/4 v0, 0x6

    aput-object v1, v2, v0

    if-eq p1, v3, :cond_0

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/R2;->A02:Lcom/facebook/ads/redexgen/X/RF;

    .line 61095
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/RF;->A0F()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 61096
    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/R2;->A02:Lcom/facebook/ads/redexgen/X/RF;

    sget-object v1, Lcom/facebook/ads/redexgen/X/R2;->A0J:[Ljava/lang/String;

    const/4 v0, 0x6

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v0, 0xf

    if-eq v1, v0, :cond_1

    sget-object v2, Lcom/facebook/ads/redexgen/X/R2;->A0J:[Ljava/lang/String;

    const-string v1, "jdqDA9lv9LoPYcF6nkiuFYbBQf2p3Jna"

    const/4 v0, 0x3

    aput-object v1, v2, v0

    invoke-virtual {v3}, Lcom/facebook/ads/redexgen/X/RF;->A09()V

    .line 61097
    :cond_0
    :goto_0
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/R2;->A02:Lcom/facebook/ads/redexgen/X/RF;

    .line 61098
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/R2;->A02:Lcom/facebook/ads/redexgen/X/RF;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/R2;->A03:Lcom/facebook/ads/redexgen/X/7M;

    invoke-virtual {v1, v0, p0}, Lcom/facebook/ads/redexgen/X/RF;->A0D(Lcom/facebook/ads/redexgen/X/7M;Lcom/facebook/ads/redexgen/X/R2;)V

    .line 61099
    return-void

    :cond_1
    sget-object v2, Lcom/facebook/ads/redexgen/X/R2;->A0J:[Ljava/lang/String;

    const-string v1, "CfhUeeIqQu1BzHSX9SgRD70OnW7YoiZA"

    const/4 v0, 0x0

    aput-object v1, v2, v0

    const-string v1, "rBLjTriW7e2LTgD4knhZEnVORkWVeovT"

    const/4 v0, 0x7

    aput-object v1, v2, v0

    invoke-virtual {v3}, Lcom/facebook/ads/redexgen/X/RF;->A09()V

    goto :goto_0

    :cond_2
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
.end method

.method public A1O(Lcom/facebook/ads/redexgen/X/7M;)V
    .locals 0

    .line 61100
    return-void
.end method

.method public final A1P(Lcom/facebook/ads/redexgen/X/7M;)V
    .locals 1

    .line 61101
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/R2;->A07:Z

    .line 61102
    return-void
.end method

.method public final A1Q(Lcom/facebook/ads/redexgen/X/7M;)V
    .locals 3

    .line 61103
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/7M;->getWidth()I

    move-result v0

    const/high16 v2, 0x40000000    # 2.0f

    invoke-static {v0, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    .line 61104
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/7M;->getHeight()I

    move-result v0

    invoke-static {v0, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    .line 61105
    invoke-virtual {p0, v1, v0}, Lcom/facebook/ads/redexgen/X/R2;->A13(II)V

    .line 61106
    return-void
.end method

.method public final A1R(Lcom/facebook/ads/redexgen/X/7M;)V
    .locals 1

    .line 61107
    if-nez p1, :cond_0

    .line 61108
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/R2;->A03:Lcom/facebook/ads/redexgen/X/7M;

    .line 61109
    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/R2;->A01:Lcom/facebook/ads/redexgen/X/QQ;

    .line 61110
    const/4 v0, 0x0

    iput v0, p0, Lcom/facebook/ads/redexgen/X/R2;->A0C:I

    .line 61111
    iput v0, p0, Lcom/facebook/ads/redexgen/X/R2;->A0A:I

    .line 61112
    :goto_0
    const/high16 v0, 0x40000000    # 2.0f

    iput v0, p0, Lcom/facebook/ads/redexgen/X/R2;->A0D:I

    .line 61113
    iput v0, p0, Lcom/facebook/ads/redexgen/X/R2;->A0B:I

    .line 61114
    return-void

    .line 61115
    :cond_0
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/R2;->A03:Lcom/facebook/ads/redexgen/X/7M;

    .line 61116
    iget-object v0, p1, Lcom/facebook/ads/redexgen/X/7M;->A01:Lcom/facebook/ads/redexgen/X/QQ;

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/R2;->A01:Lcom/facebook/ads/redexgen/X/QQ;

    .line 61117
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/7M;->getWidth()I

    move-result v0

    iput v0, p0, Lcom/facebook/ads/redexgen/X/R2;->A0C:I

    .line 61118
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/7M;->getHeight()I

    move-result v0

    iput v0, p0, Lcom/facebook/ads/redexgen/X/R2;->A0A:I

    goto :goto_0
.end method

.method public final A1S(Lcom/facebook/ads/redexgen/X/7M;Lcom/facebook/ads/redexgen/X/RA;)V
    .locals 1

    .line 61119
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/R2;->A07:Z

    .line 61120
    invoke-virtual {p0, p1, p2}, Lcom/facebook/ads/redexgen/X/R2;->A1y(Lcom/facebook/ads/redexgen/X/7M;Lcom/facebook/ads/redexgen/X/RA;)V

    .line 61121
    return-void
.end method

.method public final A1T(Z)V
    .locals 0

    .line 61122
    iput-boolean p1, p0, Lcom/facebook/ads/redexgen/X/R2;->A06:Z

    .line 61123
    return-void
.end method

.method public final A1U()Z
    .locals 4

    .line 61124
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/R2;->A0Y()I

    move-result v3

    .line 61125
    .local v0, "childCount":I
    const/4 v2, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v2, v3, :cond_1

    .line 61126
    invoke-virtual {p0, v2}, Lcom/facebook/ads/redexgen/X/R2;->A0v(I)Landroid/view/View;

    move-result-object v0

    .line 61127
    .local v2, "child":Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    .line 61128
    .local v3, "lp":Landroid/view/ViewGroup$LayoutParams;
    iget v0, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    if-gez v0, :cond_0

    iget v0, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    if-gez v0, :cond_0

    .line 61129
    const/4 v0, 0x1

    return v0

    .line 61130
    .end local v2    # "child":Landroid/view/View;
    .end local v3    # "lp":Landroid/view/ViewGroup$LayoutParams;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 61131
    .end local v1    # "i":I
    :cond_1
    const/4 v3, 0x0

    sget-object v1, Lcom/facebook/ads/redexgen/X/R2;->A0J:[Ljava/lang/String;

    const/4 v0, 0x4

    aget-object v1, v1, v0

    const/16 v0, 0xc

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x76

    if-eq v1, v0, :cond_2

    sget-object v2, Lcom/facebook/ads/redexgen/X/R2;->A0J:[Ljava/lang/String;

    const-string v1, "WAOKNqtGQ8ovYE750tJA7vys4k4qcWl2"

    const/4 v0, 0x3

    aput-object v1, v2, v0

    return v3

    :cond_2
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
.end method

.method public final A1V()Z
    .locals 1

    .line 61132
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/R2;->A03:Lcom/facebook/ads/redexgen/X/7M;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/R2;->A03:Lcom/facebook/ads/redexgen/X/7M;

    iget-boolean v0, v0, Lcom/facebook/ads/redexgen/X/7M;->A0B:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final A1W()Z
    .locals 1

    .line 61133
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/R2;->A0E:Z

    return v0
.end method

.method public final A1X(ILandroid/os/Bundle;)Z
    .locals 2

    .line 61134
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/R2;->A03:Lcom/facebook/ads/redexgen/X/7M;

    iget-object v1, v0, Lcom/facebook/ads/redexgen/X/7M;->A0r:Lcom/facebook/ads/redexgen/X/RA;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/R2;->A03:Lcom/facebook/ads/redexgen/X/7M;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/7M;->A0s:Lcom/facebook/ads/redexgen/X/RH;

    invoke-direct {p0, v1, v0, p1, p2}, Lcom/facebook/ads/redexgen/X/R2;->A0S(Lcom/facebook/ads/redexgen/X/RA;Lcom/facebook/ads/redexgen/X/RH;ILandroid/os/Bundle;)Z

    move-result v0

    return v0
.end method

.method public final A1Y(Landroid/view/View;IILcom/facebook/ads/redexgen/X/R3;)Z
    .locals 4

    .line 61135
    invoke-virtual {p1}, Landroid/view/View;->isLayoutRequested()Z

    move-result v0

    if-nez v0, :cond_1

    iget-boolean v3, p0, Lcom/facebook/ads/redexgen/X/R2;->A0F:Z

    sget-object v2, Lcom/facebook/ads/redexgen/X/R2;->A0J:[Ljava/lang/String;

    const/4 v0, 0x0

    aget-object v1, v2, v0

    const/4 v0, 0x7

    aget-object v2, v2, v0

    const/16 v0, 0x17

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v1, v0, :cond_0

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_0
    sget-object v2, Lcom/facebook/ads/redexgen/X/R2;->A0J:[Ljava/lang/String;

    const-string v1, "WuiXnf3Uz62WBJXd3E4QIRzbwyGUV3fL"

    const/4 v0, 0x4

    aput-object v1, v2, v0

    if-eqz v3, :cond_1

    .line 61136
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v1

    iget v0, p4, Lcom/facebook/ads/redexgen/X/R3;->width:I

    invoke-static {v1, p2, v0}, Lcom/facebook/ads/redexgen/X/R2;->A0Q(III)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 61137
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v1

    iget v0, p4, Lcom/facebook/ads/redexgen/X/R3;->height:I

    invoke-static {v1, p3, v0}, Lcom/facebook/ads/redexgen/X/R2;->A0Q(III)Z

    move-result v0

    if-nez v0, :cond_2

    :cond_1
    const/4 v0, 0x1

    .line 61138
    :goto_0
    return v0

    .line 61139
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final A1Z(Landroid/view/View;ILandroid/os/Bundle;)Z
    .locals 6

    .line 61140
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/R2;->A03:Lcom/facebook/ads/redexgen/X/7M;

    iget-object v1, v0, Lcom/facebook/ads/redexgen/X/7M;->A0r:Lcom/facebook/ads/redexgen/X/RA;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/R2;->A03:Lcom/facebook/ads/redexgen/X/7M;

    iget-object v2, v0, Lcom/facebook/ads/redexgen/X/7M;->A0s:Lcom/facebook/ads/redexgen/X/RH;

    move-object v0, p0

    move-object v5, p3

    move v4, p2

    move-object v3, p1

    invoke-direct/range {v0 .. v5}, Lcom/facebook/ads/redexgen/X/R2;->A0T(Lcom/facebook/ads/redexgen/X/RA;Lcom/facebook/ads/redexgen/X/RH;Landroid/view/View;ILandroid/os/Bundle;)Z

    move-result v0

    return v0
.end method

.method public A1a(Lcom/facebook/ads/redexgen/X/R3;)Z
    .locals 1

    .line 61141
    if-eqz p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final A1b(Lcom/facebook/ads/redexgen/X/7M;Landroid/view/View;Landroid/graphics/Rect;Z)Z
    .locals 6

    .line 61142
    const/4 v5, 0x0

    move-object v0, p0

    move v4, p4

    move-object v3, p3

    move-object v2, p2

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Lcom/facebook/ads/redexgen/X/R2;->A1c(Lcom/facebook/ads/redexgen/X/7M;Landroid/view/View;Landroid/graphics/Rect;ZZ)Z

    move-result v0

    return v0
.end method

.method public final A1c(Lcom/facebook/ads/redexgen/X/7M;Landroid/view/View;Landroid/graphics/Rect;ZZ)Z
    .locals 5

    .line 61143
    invoke-direct {p0, p2, p3}, Lcom/facebook/ads/redexgen/X/R2;->A0W(Landroid/view/View;Landroid/graphics/Rect;)[I

    move-result-object v0

    .line 61144
    .local v0, "scrollAmount":[I
    const/4 v4, 0x0

    aget v3, v0, v4

    .line 61145
    .local v2, "dx":I
    const/4 v2, 0x1

    aget v1, v0, v2

    .line 61146
    .local v4, "dy":I
    if-eqz p5, :cond_0

    invoke-direct {p0, p1, v3, v1}, Lcom/facebook/ads/redexgen/X/R2;->A0U(Lcom/facebook/ads/redexgen/X/7M;II)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 61147
    :cond_0
    if-nez v3, :cond_1

    if-eqz v1, :cond_3

    .line 61148
    :cond_1
    if-eqz p4, :cond_2

    .line 61149
    invoke-virtual {p1, v3, v1}, Lcom/facebook/ads/redexgen/X/7M;->scrollBy(II)V

    .line 61150
    :goto_0
    return v2

    .line 61151
    :cond_2
    invoke-virtual {p1, v3, v1}, Lcom/facebook/ads/redexgen/X/7M;->A1e(II)V

    goto :goto_0

    .line 61152
    :cond_3
    return v4
.end method

.method public final A1d(Lcom/facebook/ads/redexgen/X/7M;Lcom/facebook/ads/redexgen/X/RH;Landroid/view/View;Landroid/view/View;)Z
    .locals 1

    .line 61153
    invoke-direct {p0, p1, p3, p4}, Lcom/facebook/ads/redexgen/X/R2;->A0V(Lcom/facebook/ads/redexgen/X/7M;Landroid/view/View;Landroid/view/View;)Z

    move-result v0

    return v0
.end method

.method public final A1e(Lcom/facebook/ads/redexgen/X/7M;Ljava/util/ArrayList;II)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/ads/redexgen/X/7M;",
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;II)Z"
        }
    .end annotation

    .line 61154
    .local p2, "views":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    const/4 v0, 0x0

    return v0
.end method

.method public abstract A1f(ILcom/facebook/ads/redexgen/X/RA;Lcom/facebook/ads/redexgen/X/RH;)I
.end method

.method public abstract A1g(ILcom/facebook/ads/redexgen/X/RA;Lcom/facebook/ads/redexgen/X/RH;)I
.end method

.method public abstract A1h(Lcom/facebook/ads/redexgen/X/RH;)I
.end method

.method public abstract A1i(Lcom/facebook/ads/redexgen/X/RH;)I
.end method

.method public abstract A1j(Lcom/facebook/ads/redexgen/X/RH;)I
.end method

.method public abstract A1k(Lcom/facebook/ads/redexgen/X/RH;)I
.end method

.method public abstract A1l(Lcom/facebook/ads/redexgen/X/RH;)I
.end method

.method public abstract A1m(Lcom/facebook/ads/redexgen/X/RH;)I
.end method

.method public abstract A1n()Landroid/os/Parcelable;
.end method

.method public A1o(I)Landroid/view/View;
    .locals 5

    .line 61155
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/R2;->A0Y()I

    move-result v4

    .line 61156
    .local v0, "childCount":I
    const/4 v3, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v3, v4, :cond_3

    .line 61157
    invoke-virtual {p0, v3}, Lcom/facebook/ads/redexgen/X/R2;->A0v(I)Landroid/view/View;

    move-result-object v2

    .line 61158
    .local v2, "child":Landroid/view/View;
    invoke-static {v2}, Lcom/facebook/ads/redexgen/X/7M;->A0F(Landroid/view/View;)Lcom/facebook/ads/redexgen/X/RK;

    move-result-object v1

    .line 61159
    .local v3, "vh":Lcom/facebook/ads/redexgen/X/RK;
    if-nez v1, :cond_1

    .line 61160
    .end local v2    # "child":Landroid/view/View;
    .end local v3    # "vh":Lcom/facebook/ads/redexgen/X/RK;
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 61161
    :cond_1
    invoke-virtual {v1}, Lcom/facebook/ads/redexgen/X/RK;->A0O()I

    move-result v0

    if-ne v0, p1, :cond_0

    invoke-virtual {v1}, Lcom/facebook/ads/redexgen/X/RK;->A0l()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/R2;->A03:Lcom/facebook/ads/redexgen/X/7M;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/7M;->A0s:Lcom/facebook/ads/redexgen/X/RH;

    .line 61162
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/RH;->A07()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {v1}, Lcom/facebook/ads/redexgen/X/RK;->A0g()Z

    move-result v0

    if-nez v0, :cond_0

    .line 61163
    :cond_2
    return-object v2

    .line 61164
    .end local v1    # "i":I
    :cond_3
    const/4 v0, 0x0

    return-object v0
.end method

.method public abstract A1p(Landroid/view/View;ILcom/facebook/ads/redexgen/X/RA;Lcom/facebook/ads/redexgen/X/RH;)Landroid/view/View;
.end method

.method public abstract A1q()Lcom/facebook/ads/redexgen/X/R3;
.end method

.method public abstract A1r(I)V
.end method

.method public abstract A1s(IILcom/facebook/ads/redexgen/X/RH;Lcom/facebook/ads/redexgen/X/R0;)V
.end method

.method public abstract A1t(ILcom/facebook/ads/redexgen/X/R0;)V
.end method

.method public abstract A1u(Landroid/os/Parcelable;)V
.end method

.method public A1v(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 2

    .line 61165
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/R2;->A03:Lcom/facebook/ads/redexgen/X/7M;

    iget-object v1, v0, Lcom/facebook/ads/redexgen/X/7M;->A0r:Lcom/facebook/ads/redexgen/X/RA;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/R2;->A03:Lcom/facebook/ads/redexgen/X/7M;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/7M;->A0s:Lcom/facebook/ads/redexgen/X/RH;

    invoke-direct {p0, v1, v0, p1}, Lcom/facebook/ads/redexgen/X/R2;->A0M(Lcom/facebook/ads/redexgen/X/RA;Lcom/facebook/ads/redexgen/X/RH;Landroid/view/accessibility/AccessibilityEvent;)V

    .line 61166
    return-void
.end method

.method public abstract A1w(Lcom/facebook/ads/redexgen/X/RA;Lcom/facebook/ads/redexgen/X/RH;)V
.end method

.method public A1x(Lcom/facebook/ads/redexgen/X/RH;)V
    .locals 0

    .line 61167
    return-void
.end method

.method public A1y(Lcom/facebook/ads/redexgen/X/7M;Lcom/facebook/ads/redexgen/X/RA;)V
    .locals 0

    .line 61168
    return-void
.end method

.method public abstract A1z(Lcom/facebook/ads/redexgen/X/7M;Lcom/facebook/ads/redexgen/X/RH;I)V
.end method

.method public A20(Ljava/lang/String;)V
    .locals 1

    .line 61169
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/R2;->A03:Lcom/facebook/ads/redexgen/X/7M;

    if-eqz v0, :cond_0

    .line 61170
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/R2;->A03:Lcom/facebook/ads/redexgen/X/7M;

    invoke-virtual {v0, p1}, Lcom/facebook/ads/redexgen/X/7M;->A1n(Ljava/lang/String;)V

    .line 61171
    :cond_0
    return-void
.end method

.method public abstract A21()Z
.end method

.method public abstract A22()Z
.end method

.method public abstract A23()Z
.end method

.method public abstract A24()Z
.end method
