.class public final Lcom/facebook/ads/redexgen/X/Fp;
.super Lcom/facebook/ads/redexgen/X/Qq;
.source ""


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/facebook/ads/redexgen/X/Qq<",
        "Lcom/facebook/ads/redexgen/X/FY;",
        ">;"
    }
.end annotation


# instance fields
.field public A00:I

.field public A01:I

.field public A02:I

.field public A03:I

.field public A04:Lcom/facebook/ads/redexgen/X/Yb;

.field public A05:Lcom/facebook/ads/redexgen/X/Yh;

.field public A06:Ljava/lang/String;

.field public A07:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/facebook/ads/redexgen/X/e5;",
            ">;"
        }
    .end annotation
.end field

.field public A08:Z

.field public final A09:Landroid/util/SparseBooleanArray;

.field public final A0A:Lcom/facebook/ads/redexgen/X/jd;

.field public final A0B:Lcom/facebook/ads/redexgen/X/Sx;

.field public final A0C:Lcom/facebook/ads/redexgen/X/gi;

.field public final A0D:Lcom/facebook/ads/redexgen/X/VA;

.field public final A0E:Lcom/facebook/ads/redexgen/X/Y2;

.field public final A0F:Lcom/facebook/ads/redexgen/X/Fy;

.field public final A0G:Lcom/facebook/ads/redexgen/X/fp;


# direct methods
.method public constructor <init>(Lcom/facebook/ads/redexgen/X/gi;Ljava/util/List;Lcom/facebook/ads/redexgen/X/jd;Lcom/facebook/ads/redexgen/X/VA;Lcom/facebook/ads/redexgen/X/Sx;Lcom/facebook/ads/redexgen/X/fp;Lcom/facebook/ads/redexgen/X/Y2;Lcom/facebook/ads/redexgen/X/Yh;Ljava/lang/String;IIIILcom/facebook/ads/redexgen/X/Fy;Lcom/facebook/ads/redexgen/X/Yb;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/ads/redexgen/X/gi;",
            "Ljava/util/List<",
            "Lcom/facebook/ads/redexgen/X/e5;",
            ">;",
            "Lcom/facebook/ads/redexgen/X/jd;",
            "Lcom/facebook/ads/redexgen/X/VA;",
            "Lcom/facebook/ads/redexgen/X/Sx;",
            "Lcom/facebook/ads/redexgen/X/fp;",
            "Lcom/facebook/ads/redexgen/X/Y2;",
            "Lcom/facebook/ads/redexgen/X/Yh;",
            "Ljava/lang/String;",
            "IIII",
            "Lcom/facebook/ads/redexgen/X/Fy;",
            "Lcom/facebook/ads/redexgen/X/Yb;",
            ")V"
        }
    .end annotation

    .line 36325
    .local p16, "carouselItems":Ljava/util/List;, "Ljava/util/List<Lcom/facebook/ads/internal/view/interstitial/carousel/CarouselCardInfo;>;"
    move-object v1, p0

    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/Qq;-><init>()V

    .line 36326
    new-instance v0, Landroid/util/SparseBooleanArray;

    invoke-direct {v0}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object v0, v1, Lcom/facebook/ads/redexgen/X/Fp;->A09:Landroid/util/SparseBooleanArray;

    .line 36327
    iput-object p1, v1, Lcom/facebook/ads/redexgen/X/Fp;->A0C:Lcom/facebook/ads/redexgen/X/gi;

    .line 36328
    iput-object p4, v1, Lcom/facebook/ads/redexgen/X/Fp;->A0D:Lcom/facebook/ads/redexgen/X/VA;

    .line 36329
    iput-object p5, v1, Lcom/facebook/ads/redexgen/X/Fp;->A0B:Lcom/facebook/ads/redexgen/X/Sx;

    .line 36330
    iput-object p6, v1, Lcom/facebook/ads/redexgen/X/Fp;->A0G:Lcom/facebook/ads/redexgen/X/fp;

    .line 36331
    iput-object p7, v1, Lcom/facebook/ads/redexgen/X/Fp;->A0E:Lcom/facebook/ads/redexgen/X/Y2;

    .line 36332
    iput-object p8, v1, Lcom/facebook/ads/redexgen/X/Fp;->A05:Lcom/facebook/ads/redexgen/X/Yh;

    .line 36333
    iput-object p3, v1, Lcom/facebook/ads/redexgen/X/Fp;->A0A:Lcom/facebook/ads/redexgen/X/jd;

    .line 36334
    iput-object p2, v1, Lcom/facebook/ads/redexgen/X/Fp;->A07:Ljava/util/List;

    .line 36335
    iput p10, v1, Lcom/facebook/ads/redexgen/X/Fp;->A00:I

    .line 36336
    iput p13, v1, Lcom/facebook/ads/redexgen/X/Fp;->A03:I

    .line 36337
    iput-object p9, v1, Lcom/facebook/ads/redexgen/X/Fp;->A06:Ljava/lang/String;

    .line 36338
    iput p12, v1, Lcom/facebook/ads/redexgen/X/Fp;->A01:I

    .line 36339
    iput p11, v1, Lcom/facebook/ads/redexgen/X/Fp;->A02:I

    .line 36340
    move-object/from16 v0, p14

    iput-object v0, v1, Lcom/facebook/ads/redexgen/X/Fp;->A0F:Lcom/facebook/ads/redexgen/X/Fy;

    .line 36341
    move-object/from16 v0, p15

    iput-object v0, v1, Lcom/facebook/ads/redexgen/X/Fp;->A04:Lcom/facebook/ads/redexgen/X/Yb;

    .line 36342
    return-void
.end method

.method private final A00(Landroid/view/ViewGroup;I)Lcom/facebook/ads/redexgen/X/FY;
    .locals 12

    .line 36343
    move-object v0, p0

    new-instance v2, Lcom/facebook/ads/redexgen/X/c6;

    iget-object v3, v0, Lcom/facebook/ads/redexgen/X/Fp;->A0C:Lcom/facebook/ads/redexgen/X/gi;

    iget-object v4, v0, Lcom/facebook/ads/redexgen/X/Fp;->A0D:Lcom/facebook/ads/redexgen/X/VA;

    iget-object v5, v0, Lcom/facebook/ads/redexgen/X/Fp;->A05:Lcom/facebook/ads/redexgen/X/Yh;

    iget-object v6, v0, Lcom/facebook/ads/redexgen/X/Fp;->A0A:Lcom/facebook/ads/redexgen/X/jd;

    iget-object v8, v0, Lcom/facebook/ads/redexgen/X/Fp;->A0G:Lcom/facebook/ads/redexgen/X/fp;

    iget-object v9, v0, Lcom/facebook/ads/redexgen/X/Fp;->A0E:Lcom/facebook/ads/redexgen/X/Y2;

    const/4 v7, 0x0

    invoke-direct/range {v2 .. v9}, Lcom/facebook/ads/redexgen/X/c6;-><init>(Lcom/facebook/ads/redexgen/X/gi;Lcom/facebook/ads/redexgen/X/VA;Lcom/facebook/ads/redexgen/X/Yh;Lcom/facebook/ads/redexgen/X/jd;Landroid/view/View;Lcom/facebook/ads/redexgen/X/fp;Lcom/facebook/ads/redexgen/X/Y2;)V

    iget-object v1, v0, Lcom/facebook/ads/redexgen/X/Fp;->A04:Lcom/facebook/ads/redexgen/X/Yb;

    .line 36344
    invoke-virtual {v2, v1}, Lcom/facebook/ads/redexgen/X/c6;->A0P(Lcom/facebook/ads/redexgen/X/Yb;)Lcom/facebook/ads/redexgen/X/c6;

    move-result-object v1

    .line 36345
    invoke-virtual {v1}, Lcom/facebook/ads/redexgen/X/c6;->A0U()Lcom/facebook/ads/redexgen/X/c7;

    move-result-object v4

    .line 36346
    .local v1, "params":Lcom/facebook/ads/redexgen/X/c7;
    iget v3, v0, Lcom/facebook/ads/redexgen/X/Fp;->A03:I

    iget-object v2, v0, Lcom/facebook/ads/redexgen/X/Fp;->A06:Ljava/lang/String;

    iget-object v1, v0, Lcom/facebook/ads/redexgen/X/Fp;->A0F:Lcom/facebook/ads/redexgen/X/Fy;

    .line 36347
    invoke-static {v4, v3, v2, v1}, Lcom/facebook/ads/redexgen/X/cy;->A00(Lcom/facebook/ads/redexgen/X/c7;ILjava/lang/String;Lcom/facebook/ads/redexgen/X/Fy;)Lcom/facebook/ads/redexgen/X/67;

    move-result-object v3

    .line 36348
    .local v2, "cardLayout":Lcom/facebook/ads/redexgen/X/67;
    new-instance v2, Lcom/facebook/ads/redexgen/X/FY;

    iget-object v4, v0, Lcom/facebook/ads/redexgen/X/Fp;->A09:Landroid/util/SparseBooleanArray;

    iget-object v5, v0, Lcom/facebook/ads/redexgen/X/Fp;->A0G:Lcom/facebook/ads/redexgen/X/fp;

    iget v6, v0, Lcom/facebook/ads/redexgen/X/Fp;->A00:I

    iget v7, v0, Lcom/facebook/ads/redexgen/X/Fp;->A01:I

    iget v8, v0, Lcom/facebook/ads/redexgen/X/Fp;->A02:I

    iget-object v1, v0, Lcom/facebook/ads/redexgen/X/Fp;->A07:Ljava/util/List;

    .line 36349
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v9

    iget-object v10, v0, Lcom/facebook/ads/redexgen/X/Fp;->A0C:Lcom/facebook/ads/redexgen/X/gi;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/Fp;->A0A:Lcom/facebook/ads/redexgen/X/jd;

    .line 36350
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/jd;->A2A()Lcom/facebook/ads/redexgen/X/Ng;

    move-result-object v11

    invoke-direct/range {v2 .. v11}, Lcom/facebook/ads/redexgen/X/FY;-><init>(Lcom/facebook/ads/redexgen/X/67;Landroid/util/SparseBooleanArray;Lcom/facebook/ads/redexgen/X/fp;IIIILcom/facebook/ads/redexgen/X/gi;Lcom/facebook/ads/redexgen/X/Ng;)V

    .line 36351
    return-object v2
.end method

.method private final A01(Lcom/facebook/ads/redexgen/X/FY;I)V
    .locals 7

    .line 36352
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Fp;->A07:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/facebook/ads/redexgen/X/e5;

    .line 36353
    .local v0, "cardInfo":Lcom/facebook/ads/redexgen/X/e5;
    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/Fp;->A0D:Lcom/facebook/ads/redexgen/X/VA;

    iget-object v4, p0, Lcom/facebook/ads/redexgen/X/Fp;->A0B:Lcom/facebook/ads/redexgen/X/Sx;

    iget-object v5, p0, Lcom/facebook/ads/redexgen/X/Fp;->A0E:Lcom/facebook/ads/redexgen/X/Y2;

    iget-object v6, p0, Lcom/facebook/ads/redexgen/X/Fp;->A06:Ljava/lang/String;

    move-object v1, p1

    invoke-virtual/range {v1 .. v6}, Lcom/facebook/ads/redexgen/X/FY;->A0q(Lcom/facebook/ads/redexgen/X/e5;Lcom/facebook/ads/redexgen/X/VA;Lcom/facebook/ads/redexgen/X/Sx;Lcom/facebook/ads/redexgen/X/Y2;Ljava/lang/String;)V

    .line 36354
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/Fp;->A08:Z

    if-nez v0, :cond_0

    if-nez p2, :cond_0

    .line 36355
    invoke-virtual {v1}, Lcom/facebook/ads/redexgen/X/FY;->AJF()V

    .line 36356
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/Fp;->A08:Z

    .line 36357
    :cond_0
    return-void
.end method


# virtual methods
.method public final A0B()I
    .locals 1

    .line 36358
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Fp;->A07:Ljava/util/List;

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

    .line 36359
    invoke-direct {p0, p1, p2}, Lcom/facebook/ads/redexgen/X/Fp;->A00(Landroid/view/ViewGroup;I)Lcom/facebook/ads/redexgen/X/FY;

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

    .line 36360
    check-cast p1, Lcom/facebook/ads/redexgen/X/FY;

    invoke-direct {p0, p1, p2}, Lcom/facebook/ads/redexgen/X/Fp;->A01(Lcom/facebook/ads/redexgen/X/FY;I)V

    return-void
.end method
