.class public final Lcom/facebook/ads/redexgen/X/FH;
.super Lcom/facebook/ads/redexgen/X/Qq;
.source ""


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/facebook/ads/redexgen/X/Qq<",
        "Lcom/facebook/ads/redexgen/X/FC;",
        ">;"
    }
.end annotation


# instance fields
.field public final A00:I

.field public final A01:Lcom/facebook/ads/redexgen/X/gi;

.field public final A02:Lcom/facebook/ads/redexgen/X/Kr;

.field public final A03:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/facebook/ads/redexgen/X/gi;Ljava/util/List;ILcom/facebook/ads/redexgen/X/Kr;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/ads/redexgen/X/gi;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;I",
            "Lcom/facebook/ads/redexgen/X/Kr;",
            ")V"
        }
    .end annotation

    .line 35593
    .local p2, "screenshotUrls":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/Qq;-><init>()V

    .line 35594
    iput-object p2, p0, Lcom/facebook/ads/redexgen/X/FH;->A03:Ljava/util/List;

    .line 35595
    iput p3, p0, Lcom/facebook/ads/redexgen/X/FH;->A00:I

    .line 35596
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/FH;->A01:Lcom/facebook/ads/redexgen/X/gi;

    .line 35597
    iput-object p4, p0, Lcom/facebook/ads/redexgen/X/FH;->A02:Lcom/facebook/ads/redexgen/X/Kr;

    .line 35598
    return-void
.end method

.method public static synthetic A00(Lcom/facebook/ads/redexgen/X/FH;)Lcom/facebook/ads/redexgen/X/Kr;
    .locals 0

    .line 35599
    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/FH;->A02:Lcom/facebook/ads/redexgen/X/Kr;

    return-object p0
.end method

.method private final A01(Landroid/view/ViewGroup;I)Lcom/facebook/ads/redexgen/X/FC;
    .locals 2

    .line 35600
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/FH;->A01:Lcom/facebook/ads/redexgen/X/gi;

    new-instance v1, Lcom/facebook/ads/redexgen/X/FD;

    invoke-direct {v1, v0}, Lcom/facebook/ads/redexgen/X/FD;-><init>(Lcom/facebook/ads/redexgen/X/gi;)V

    .line 35601
    .local v0, "view":Lcom/facebook/ads/redexgen/X/FD;
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/FH;->A01:Lcom/facebook/ads/redexgen/X/gi;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Up;->A1D(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 35602
    new-instance v0, Lcom/facebook/ads/redexgen/X/eZ;

    invoke-direct {v0, p0}, Lcom/facebook/ads/redexgen/X/eZ;-><init>(Lcom/facebook/ads/redexgen/X/FH;)V

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/FD;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 35603
    :cond_0
    new-instance v0, Lcom/facebook/ads/redexgen/X/FC;

    invoke-direct {v0, v1}, Lcom/facebook/ads/redexgen/X/FC;-><init>(Lcom/facebook/ads/redexgen/X/FD;)V

    return-object v0
.end method

.method private final A02(Lcom/facebook/ads/redexgen/X/FC;I)V
    .locals 5

    .line 35604
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/FH;->A03:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 35605
    .local v0, "url":Ljava/lang/String;
    const/4 v1, -0x2

    const/4 v0, -0x1

    new-instance v3, Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-direct {v3, v1, v0}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(II)V

    .line 35606
    .local v1, "layoutParams":Landroid/view/ViewGroup$MarginLayoutParams;
    iget v0, p0, Lcom/facebook/ads/redexgen/X/FH;->A00:I

    mul-int/lit8 v2, v0, 0x4

    .line 35607
    .local v2, "startSpacing":I
    if-nez p2, :cond_1

    .line 35608
    .local v3, "leftMargin":I
    :goto_0
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/FH;->A0B()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    if-lt p2, v0, :cond_0

    iget v0, p0, Lcom/facebook/ads/redexgen/X/FH;->A00:I

    mul-int/lit8 v1, v0, 0x4

    .line 35609
    .local v4, "rightMargin":I
    :goto_1
    const/4 v0, 0x0

    invoke-virtual {v3, v2, v0, v1, v0}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    .line 35610
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/FC;->A0p()Lcom/facebook/ads/redexgen/X/FD;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/facebook/ads/redexgen/X/FD;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 35611
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/FC;->A0p()Lcom/facebook/ads/redexgen/X/FD;

    move-result-object v0

    invoke-virtual {v0, v4}, Lcom/facebook/ads/redexgen/X/FD;->A00(Ljava/lang/String;)V

    .line 35612
    return-void

    .line 35613
    :cond_0
    iget v1, p0, Lcom/facebook/ads/redexgen/X/FH;->A00:I

    goto :goto_1

    .line 35614
    :cond_1
    iget v2, p0, Lcom/facebook/ads/redexgen/X/FH;->A00:I

    goto :goto_0
.end method


# virtual methods
.method public final A0B()I
    .locals 1

    .line 35615
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/FH;->A03:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public final bridge synthetic A0F(Landroid/view/ViewGroup;I)Lcom/facebook/ads/redexgen/X/RK;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000
        }
        names = {
            null,
            null
        }
    .end annotation

    .line 35616
    invoke-direct {p0, p1, p2}, Lcom/facebook/ads/redexgen/X/FH;->A01(Landroid/view/ViewGroup;I)Lcom/facebook/ads/redexgen/X/FC;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic A0K(Lcom/facebook/ads/redexgen/X/RK;I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000
        }
        names = {
            null,
            null
        }
    .end annotation

    .line 35617
    check-cast p1, Lcom/facebook/ads/redexgen/X/FC;

    invoke-direct {p0, p1, p2}, Lcom/facebook/ads/redexgen/X/FH;->A02(Lcom/facebook/ads/redexgen/X/FC;I)V

    return-void
.end method
