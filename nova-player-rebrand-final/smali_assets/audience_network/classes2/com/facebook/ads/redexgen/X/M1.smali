.class public final Lcom/facebook/ads/redexgen/X/M1;
.super Lcom/facebook/ads/redexgen/X/Qq;
.source ""


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/facebook/ads/redexgen/X/Qq<",
        "Lcom/facebook/ads/redexgen/X/Fq;",
        ">;"
    }
.end annotation


# instance fields
.field public A00:I

.field public A01:I

.field public A02:I

.field public A03:Lcom/facebook/ads/redexgen/X/Yh;

.field public A04:Lcom/facebook/ads/redexgen/X/fp;

.field public A05:Ljava/lang/String;

.field public A06:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/facebook/ads/redexgen/X/e5;",
            ">;"
        }
    .end annotation
.end field

.field public final A07:Landroid/util/SparseBooleanArray;

.field public final A08:Lcom/facebook/ads/redexgen/X/jd;

.field public final A09:Lcom/facebook/ads/redexgen/X/Sx;

.field public final A0A:Lcom/facebook/ads/redexgen/X/gi;

.field public final A0B:Lcom/facebook/ads/redexgen/X/VA;

.field public final A0C:Lcom/facebook/ads/redexgen/X/UK;

.field public final A0D:Lcom/facebook/ads/redexgen/X/Y2;

.field public final A0E:Lcom/facebook/ads/redexgen/X/6X;

.field public final A0F:Lcom/facebook/ads/redexgen/X/DZ;


# direct methods
.method public constructor <init>(Lcom/facebook/ads/redexgen/X/gi;Ljava/util/List;Lcom/facebook/ads/redexgen/X/jd;Lcom/facebook/ads/redexgen/X/VA;Lcom/facebook/ads/redexgen/X/UK;Lcom/facebook/ads/redexgen/X/Yh;Ljava/lang/String;Lcom/facebook/ads/redexgen/X/6X;Lcom/facebook/ads/redexgen/X/DZ;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/ads/redexgen/X/gi;",
            "Ljava/util/List<",
            "Lcom/facebook/ads/redexgen/X/e5;",
            ">;",
            "Lcom/facebook/ads/redexgen/X/jd;",
            "Lcom/facebook/ads/redexgen/X/VA;",
            "Lcom/facebook/ads/redexgen/X/UK;",
            "Lcom/facebook/ads/redexgen/X/Yh;",
            "Ljava/lang/String;",
            "Lcom/facebook/ads/redexgen/X/6X;",
            "Lcom/facebook/ads/redexgen/X/DZ;",
            ")V"
        }
    .end annotation

    .line 50713
    .local p2, "carouselItems":Ljava/util/List;, "Ljava/util/List<Lcom/facebook/ads/internal/view/interstitial/carousel/CarouselCardInfo;>;"
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/Qq;-><init>()V

    .line 50714
    new-instance v0, Landroid/util/SparseBooleanArray;

    invoke-direct {v0}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/M1;->A07:Landroid/util/SparseBooleanArray;

    .line 50715
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/M1;->A0A:Lcom/facebook/ads/redexgen/X/gi;

    .line 50716
    iput-object p4, p0, Lcom/facebook/ads/redexgen/X/M1;->A0B:Lcom/facebook/ads/redexgen/X/VA;

    .line 50717
    iput-object p5, p0, Lcom/facebook/ads/redexgen/X/M1;->A0C:Lcom/facebook/ads/redexgen/X/UK;

    .line 50718
    invoke-virtual {p5}, Lcom/facebook/ads/redexgen/X/UK;->A14()Lcom/facebook/ads/redexgen/X/Sx;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/M1;->A09:Lcom/facebook/ads/redexgen/X/Sx;

    .line 50719
    invoke-virtual {p5}, Lcom/facebook/ads/redexgen/X/UK;->A1G()Lcom/facebook/ads/redexgen/X/fp;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/M1;->A04:Lcom/facebook/ads/redexgen/X/fp;

    .line 50720
    invoke-virtual {p5}, Lcom/facebook/ads/redexgen/X/UK;->A1E()Lcom/facebook/ads/redexgen/X/Y2;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/M1;->A0D:Lcom/facebook/ads/redexgen/X/Y2;

    .line 50721
    iput-object p6, p0, Lcom/facebook/ads/redexgen/X/M1;->A03:Lcom/facebook/ads/redexgen/X/Yh;

    .line 50722
    iput-object p3, p0, Lcom/facebook/ads/redexgen/X/M1;->A08:Lcom/facebook/ads/redexgen/X/jd;

    .line 50723
    iput-object p2, p0, Lcom/facebook/ads/redexgen/X/M1;->A06:Ljava/util/List;

    .line 50724
    iput-object p7, p0, Lcom/facebook/ads/redexgen/X/M1;->A05:Ljava/lang/String;

    .line 50725
    iput-object p8, p0, Lcom/facebook/ads/redexgen/X/M1;->A0E:Lcom/facebook/ads/redexgen/X/6X;

    .line 50726
    iput-object p9, p0, Lcom/facebook/ads/redexgen/X/M1;->A0F:Lcom/facebook/ads/redexgen/X/DZ;

    .line 50727
    return-void
.end method

.method private final A00(Landroid/view/ViewGroup;I)Lcom/facebook/ads/redexgen/X/Fq;
    .locals 9

    .line 50728
    new-instance v1, Lcom/facebook/ads/redexgen/X/c6;

    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/M1;->A0A:Lcom/facebook/ads/redexgen/X/gi;

    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/M1;->A0B:Lcom/facebook/ads/redexgen/X/VA;

    iget-object v4, p0, Lcom/facebook/ads/redexgen/X/M1;->A03:Lcom/facebook/ads/redexgen/X/Yh;

    iget-object v5, p0, Lcom/facebook/ads/redexgen/X/M1;->A08:Lcom/facebook/ads/redexgen/X/jd;

    iget-object v7, p0, Lcom/facebook/ads/redexgen/X/M1;->A04:Lcom/facebook/ads/redexgen/X/fp;

    iget-object v8, p0, Lcom/facebook/ads/redexgen/X/M1;->A0D:Lcom/facebook/ads/redexgen/X/Y2;

    const/4 v6, 0x0

    invoke-direct/range {v1 .. v8}, Lcom/facebook/ads/redexgen/X/c6;-><init>(Lcom/facebook/ads/redexgen/X/gi;Lcom/facebook/ads/redexgen/X/VA;Lcom/facebook/ads/redexgen/X/Yh;Lcom/facebook/ads/redexgen/X/jd;Landroid/view/View;Lcom/facebook/ads/redexgen/X/fp;Lcom/facebook/ads/redexgen/X/Y2;)V

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/M1;->A0F:Lcom/facebook/ads/redexgen/X/DZ;

    .line 50729
    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/c6;->A0R(Lcom/facebook/ads/redexgen/X/DZ;)Lcom/facebook/ads/redexgen/X/c6;

    move-result-object v1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/M1;->A0C:Lcom/facebook/ads/redexgen/X/UK;

    .line 50730
    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/c6;->A0N(Lcom/facebook/ads/redexgen/X/UK;)Lcom/facebook/ads/redexgen/X/c6;

    move-result-object v0

    .line 50731
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/c6;->A0U()Lcom/facebook/ads/redexgen/X/c7;

    move-result-object v3

    .line 50732
    .local v0, "params":Lcom/facebook/ads/redexgen/X/c7;
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/M1;->A0C:Lcom/facebook/ads/redexgen/X/UK;

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/M1;->A05:Ljava/lang/String;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/M1;->A0E:Lcom/facebook/ads/redexgen/X/6X;

    .line 50733
    invoke-static {v3, v2, v1, v0}, Lcom/facebook/ads/redexgen/X/bW;->A00(Lcom/facebook/ads/redexgen/X/c7;Lcom/facebook/ads/redexgen/X/UK;Ljava/lang/String;Lcom/facebook/ads/redexgen/X/6X;)Lcom/facebook/ads/redexgen/X/1I;

    move-result-object v2

    .line 50734
    .local v1, "cardLayout":Lcom/facebook/ads/redexgen/X/1I;
    new-instance v1, Lcom/facebook/ads/redexgen/X/Fq;

    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/M1;->A07:Landroid/util/SparseBooleanArray;

    iget-object v4, p0, Lcom/facebook/ads/redexgen/X/M1;->A04:Lcom/facebook/ads/redexgen/X/fp;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/M1;->A06:Ljava/util/List;

    .line 50735
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v5

    iget-object v6, p0, Lcom/facebook/ads/redexgen/X/M1;->A0A:Lcom/facebook/ads/redexgen/X/gi;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/M1;->A08:Lcom/facebook/ads/redexgen/X/jd;

    .line 50736
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/jd;->A2A()Lcom/facebook/ads/redexgen/X/Ng;

    move-result-object v7

    invoke-direct/range {v1 .. v7}, Lcom/facebook/ads/redexgen/X/Fq;-><init>(Lcom/facebook/ads/redexgen/X/6M;Landroid/util/SparseBooleanArray;Lcom/facebook/ads/redexgen/X/fp;ILcom/facebook/ads/redexgen/X/gi;Lcom/facebook/ads/redexgen/X/Ng;)V

    .line 50737
    return-object v1
.end method

.method private final A01(Lcom/facebook/ads/redexgen/X/Fq;I)V
    .locals 10

    .line 50738
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/M1;->A06:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/facebook/ads/redexgen/X/e5;

    .line 50739
    .local v0, "cardInfo":Lcom/facebook/ads/redexgen/X/e5;
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/M1;->A04:Lcom/facebook/ads/redexgen/X/fp;

    move-object v1, p1

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/Fq;->A0q(Lcom/facebook/ads/redexgen/X/fp;)V

    .line 50740
    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/M1;->A0B:Lcom/facebook/ads/redexgen/X/VA;

    iget-object v4, p0, Lcom/facebook/ads/redexgen/X/M1;->A09:Lcom/facebook/ads/redexgen/X/Sx;

    iget-object v5, p0, Lcom/facebook/ads/redexgen/X/M1;->A0D:Lcom/facebook/ads/redexgen/X/Y2;

    iget-object v6, p0, Lcom/facebook/ads/redexgen/X/M1;->A05:Ljava/lang/String;

    iget v7, p0, Lcom/facebook/ads/redexgen/X/M1;->A00:I

    iget v8, p0, Lcom/facebook/ads/redexgen/X/M1;->A02:I

    iget v9, p0, Lcom/facebook/ads/redexgen/X/M1;->A01:I

    invoke-virtual/range {v1 .. v9}, Lcom/facebook/ads/redexgen/X/Fq;->A0p(Lcom/facebook/ads/redexgen/X/e5;Lcom/facebook/ads/redexgen/X/VA;Lcom/facebook/ads/redexgen/X/Sx;Lcom/facebook/ads/redexgen/X/Y2;Ljava/lang/String;III)V

    .line 50741
    return-void
.end method


# virtual methods
.method public final A0B()I
    .locals 1

    .line 50742
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/M1;->A06:Ljava/util/List;

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

    .line 50743
    invoke-direct {p0, p1, p2}, Lcom/facebook/ads/redexgen/X/M1;->A00(Landroid/view/ViewGroup;I)Lcom/facebook/ads/redexgen/X/Fq;

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

    .line 50744
    check-cast p1, Lcom/facebook/ads/redexgen/X/Fq;

    invoke-direct {p0, p1, p2}, Lcom/facebook/ads/redexgen/X/M1;->A01(Lcom/facebook/ads/redexgen/X/Fq;I)V

    return-void
.end method

.method public final A0O(III)V
    .locals 1

    .line 50745
    iget v0, p0, Lcom/facebook/ads/redexgen/X/M1;->A00:I

    if-eq p1, v0, :cond_1

    const/4 v0, 0x1

    .line 50746
    .local v0, "needsUpdate":Z
    :goto_0
    iput p1, p0, Lcom/facebook/ads/redexgen/X/M1;->A00:I

    .line 50747
    iput p2, p0, Lcom/facebook/ads/redexgen/X/M1;->A02:I

    .line 50748
    iput p3, p0, Lcom/facebook/ads/redexgen/X/M1;->A01:I

    .line 50749
    if-eqz v0, :cond_0

    .line 50750
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/Qq;->A0G()V

    .line 50751
    :cond_0
    return-void

    .line 50752
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final A0P(Lcom/facebook/ads/redexgen/X/fp;)V
    .locals 0

    .line 50753
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/M1;->A04:Lcom/facebook/ads/redexgen/X/fp;

    .line 50754
    return-void
.end method
