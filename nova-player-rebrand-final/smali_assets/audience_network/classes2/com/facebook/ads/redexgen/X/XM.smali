.class public final Lcom/facebook/ads/redexgen/X/XM;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static A02:[Ljava/lang/String;


# instance fields
.field public final A00:Landroid/graphics/Rect;

.field public final A01:Landroid/graphics/Rect;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    .line 2307
    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "P6MYZTOvDAaFen8GvswQ7TN6uAA4LWVv"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "hYZBnkN7eg3Goj1fCi2fLRcc1xaBLP0T"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "hgTfm2gsKyXruwHhjUk"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "Xl5p6SNgJSz0NngEgDitAc249tQNQ8ta"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "gXDmJbn0MXLGD1TV1woO3x4WUye"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "irvXIfdrm7YhWQVUx8qen3XIyPBMomv3"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "r42H5ZZ7hG"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "IBnhtff"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/XM;->A02:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 72492
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 72493
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/XM;->A00:Landroid/graphics/Rect;

    .line 72494
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/XM;->A01:Landroid/graphics/Rect;

    return-void
.end method

.method public static A00(Lcom/facebook/ads/redexgen/X/rN;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/ads/redexgen/X/rN<",
            "Lcom/facebook/ads/redexgen/X/Uw;",
            "Lcom/facebook/ads/redexgen/X/V1;",
            ">;)Z"
        }
    .end annotation

    .line 72495
    .local p0, "viewpointData":Lcom/facebook/ads/redexgen/X/rN;, "Lcom/instagram/common/viewpoint/core/ViewpointData<Lcom/facebook/ads/internal/impressionsecondchannel/model/Impression;Lcom/facebook/ads/internal/impressionsecondchannel/state/ImpressionState;>;"
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/rN;->A06:Ljava/lang/Object;

    check-cast v0, Lcom/facebook/ads/redexgen/X/Uw;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Uw;->A05()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 72496
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/rN;->A07:Ljava/lang/Object;

    check-cast v0, Lcom/facebook/ads/redexgen/X/V1;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/V1;->A07()Z

    move-result v0

    return v0

    .line 72497
    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/rN;->A06:Ljava/lang/Object;

    check-cast v0, Lcom/facebook/ads/redexgen/X/Uw;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Uw;->A06()Z

    move-result v0

    if-nez v0, :cond_1

    .line 72498
    const/4 v0, 0x1

    return v0

    .line 72499
    :cond_1
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/rN;->A07:Ljava/lang/Object;

    check-cast v0, Lcom/facebook/ads/redexgen/X/V1;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/V1;->A06()Z

    move-result v0

    return v0
.end method

.method private A01(Lcom/facebook/ads/redexgen/X/rN;Lcom/facebook/ads/redexgen/X/rD;)Z
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/ads/redexgen/X/rN<",
            "Lcom/facebook/ads/redexgen/X/Uw;",
            "Lcom/facebook/ads/redexgen/X/V1;",
            ">;",
            "Lcom/facebook/ads/redexgen/X/rD;",
            ")Z"
        }
    .end annotation

    .line 72500
    .local p0, "viewpointData":Lcom/facebook/ads/redexgen/X/rN;, "Lcom/instagram/common/viewpoint/core/ViewpointData<Lcom/facebook/ads/internal/impressionsecondchannel/model/Impression;Lcom/facebook/ads/internal/impressionsecondchannel/state/ImpressionState;>;"
    const/high16 v1, -0x40800000    # -1.0f

    .line 72501
    .local v0, "viewVisiblePerecentage":F
    :try_start_0
    invoke-interface {p2, p1}, Lcom/facebook/ads/redexgen/X/rD;->A9X(Lcom/facebook/ads/redexgen/X/rN;)F

    move-result v1
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 72502
    :catch_0
    const/4 v0, 0x0

    const/4 v5, 0x1

    cmpl-float v3, v1, v0

    sget-object v1, Lcom/facebook/ads/redexgen/X/XM;->A02:[Ljava/lang/String;

    const/4 v0, 0x6

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v0, 0x7

    if-eq v1, v0, :cond_6

    sget-object v2, Lcom/facebook/ads/redexgen/X/XM;->A02:[Ljava/lang/String;

    const-string v1, "l0GJDJ6h98NWCV6pJLy8cxtVoo076bMe"

    const/4 v0, 0x5

    aput-object v1, v2, v0

    if-lez v3, :cond_0

    invoke-static {p1}, Lcom/facebook/ads/redexgen/X/XM;->A00(Lcom/facebook/ads/redexgen/X/rN;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 72503
    return v5

    .line 72504
    :cond_0
    iget-object v0, p1, Lcom/facebook/ads/redexgen/X/rN;->A06:Ljava/lang/Object;

    check-cast v0, Lcom/facebook/ads/redexgen/X/Uw;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Uw;->A00()Landroid/view/View;

    move-result-object v1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/XM;->A01:Landroid/graphics/Rect;

    invoke-virtual {v1, v0}, Landroid/view/View;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/XM;->A01:Landroid/graphics/Rect;

    iget v1, v0, Landroid/graphics/Rect;->bottom:I

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/XM;->A01:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->top:I

    sub-int/2addr v1, v0

    if-lez v1, :cond_1

    .line 72505
    invoke-static {p1}, Lcom/facebook/ads/redexgen/X/XM;->A00(Lcom/facebook/ads/redexgen/X/rN;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 72506
    return v5

    .line 72507
    :cond_1
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/XM;->A00:Landroid/graphics/Rect;

    invoke-interface {p2, v0}, Lcom/facebook/ads/redexgen/X/rD;->A9W(Landroid/graphics/Rect;)V

    sget-object v1, Lcom/facebook/ads/redexgen/X/XM;->A02:[Ljava/lang/String;

    const/4 v0, 0x2

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v0, 0x2

    if-eq v1, v0, :cond_2

    .line 72508
    sget-object v2, Lcom/facebook/ads/redexgen/X/XM;->A02:[Ljava/lang/String;

    const-string v1, "WH3ZGQ"

    const/4 v0, 0x2

    aput-object v1, v2, v0

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/XM;->A01:Landroid/graphics/Rect;

    invoke-interface {p2, p1, v0}, Lcom/facebook/ads/redexgen/X/rD;->A8D(Lcom/facebook/ads/redexgen/X/rN;Landroid/graphics/Rect;)V

    .line 72509
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/XM;->A00:Landroid/graphics/Rect;

    iget v1, v0, Landroid/graphics/Rect;->bottom:I

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/XM;->A00:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->top:I

    sub-int/2addr v1, v0

    if-lez v1, :cond_3

    :goto_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/XM;->A01:Landroid/graphics/Rect;

    iget v4, v0, Landroid/graphics/Rect;->bottom:I

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/XM;->A00:Landroid/graphics/Rect;

    iget v3, v0, Landroid/graphics/Rect;->top:I

    sget-object v1, Lcom/facebook/ads/redexgen/X/XM;->A02:[Ljava/lang/String;

    const/4 v0, 0x7

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v0, 0x7

    if-eq v1, v0, :cond_4

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    .line 72510
    :cond_2
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/XM;->A01:Landroid/graphics/Rect;

    invoke-interface {p2, p1, v0}, Lcom/facebook/ads/redexgen/X/rD;->A8D(Lcom/facebook/ads/redexgen/X/rN;Landroid/graphics/Rect;)V

    .line 72511
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/XM;->A00:Landroid/graphics/Rect;

    iget v1, v0, Landroid/graphics/Rect;->bottom:I

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/XM;->A00:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->top:I

    sub-int/2addr v1, v0

    if-lez v1, :cond_3

    goto :goto_0

    :cond_3
    const/4 v0, 0x0

    goto :goto_1

    :cond_4
    sget-object v2, Lcom/facebook/ads/redexgen/X/XM;->A02:[Ljava/lang/String;

    const-string v1, "8dStYXDidh9UFB7oEkGa7ohf6JNszk5F"

    const/4 v0, 0x1

    aput-object v1, v2, v0

    sub-int/2addr v4, v3

    if-lez v4, :cond_3

    const/4 v0, 0x1

    .line 72512
    .local v1, "visible":Z
    :goto_1
    if-eqz v0, :cond_5

    invoke-static {p1}, Lcom/facebook/ads/redexgen/X/XM;->A00(Lcom/facebook/ads/redexgen/X/rN;)Z

    move-result v0

    if-eqz v0, :cond_5

    :goto_2
    return v5

    :cond_5
    const/4 v5, 0x0

    goto :goto_2

    :cond_6
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
.end method


# virtual methods
.method public final A02(Lcom/facebook/ads/redexgen/X/rN;Lcom/facebook/ads/redexgen/X/rD;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/ads/redexgen/X/rN<",
            "Lcom/facebook/ads/redexgen/X/Uw;",
            "Lcom/facebook/ads/redexgen/X/V1;",
            ">;",
            "Lcom/facebook/ads/redexgen/X/rD;",
            ")V"
        }
    .end annotation

    .line 72513
    .local p1, "viewpointData":Lcom/facebook/ads/redexgen/X/rN;, "Lcom/instagram/common/viewpoint/core/ViewpointData<Lcom/facebook/ads/internal/impressionsecondchannel/model/Impression;Lcom/facebook/ads/internal/impressionsecondchannel/state/ImpressionState;>;"
    iget-object v0, p1, Lcom/facebook/ads/redexgen/X/rN;->A07:Ljava/lang/Object;

    check-cast v0, Lcom/facebook/ads/redexgen/X/V1;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/V1;->A04()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 72514
    invoke-direct {p0, p1, p2}, Lcom/facebook/ads/redexgen/X/XM;->A01(Lcom/facebook/ads/redexgen/X/rN;Lcom/facebook/ads/redexgen/X/rD;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 72515
    iget-object v0, p1, Lcom/facebook/ads/redexgen/X/rN;->A07:Ljava/lang/Object;

    check-cast v0, Lcom/facebook/ads/redexgen/X/V1;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/V1;->A01()V

    .line 72516
    iget-object v0, p1, Lcom/facebook/ads/redexgen/X/rN;->A06:Ljava/lang/Object;

    check-cast v0, Lcom/facebook/ads/redexgen/X/Uw;

    .line 72517
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Uw;->A02()Lcom/facebook/ads/redexgen/X/VA;

    move-result-object v2

    iget-object v0, p1, Lcom/facebook/ads/redexgen/X/rN;->A06:Ljava/lang/Object;

    check-cast v0, Lcom/facebook/ads/redexgen/X/Uw;

    .line 72518
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Uw;->A03()Ljava/lang/String;

    move-result-object v1

    iget-object v0, p1, Lcom/facebook/ads/redexgen/X/rN;->A06:Ljava/lang/Object;

    check-cast v0, Lcom/facebook/ads/redexgen/X/Uw;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Uw;->A04()Ljava/util/Map;

    move-result-object v0

    .line 72519
    invoke-interface {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/VA;->ABx(Ljava/lang/String;Ljava/util/Map;)V

    .line 72520
    :cond_0
    iget-object v0, p1, Lcom/facebook/ads/redexgen/X/rN;->A07:Ljava/lang/Object;

    check-cast v0, Lcom/facebook/ads/redexgen/X/V1;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/V1;->A05()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p1, Lcom/facebook/ads/redexgen/X/rN;->A06:Ljava/lang/Object;

    check-cast v0, Lcom/facebook/ads/redexgen/X/Uw;

    .line 72521
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Uw;->A01()Lcom/facebook/ads/redexgen/X/ge;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Up;->A1l(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 72522
    iget-object v0, p1, Lcom/facebook/ads/redexgen/X/rN;->A07:Ljava/lang/Object;

    check-cast v0, Lcom/facebook/ads/redexgen/X/V1;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/V1;->A02()V

    .line 72523
    iget-object v0, p1, Lcom/facebook/ads/redexgen/X/rN;->A06:Ljava/lang/Object;

    check-cast v0, Lcom/facebook/ads/redexgen/X/Uw;

    .line 72524
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Uw;->A02()Lcom/facebook/ads/redexgen/X/VA;

    move-result-object v2

    iget-object v0, p1, Lcom/facebook/ads/redexgen/X/rN;->A06:Ljava/lang/Object;

    check-cast v0, Lcom/facebook/ads/redexgen/X/Uw;

    .line 72525
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Uw;->A03()Ljava/lang/String;

    move-result-object v1

    iget-object v0, p1, Lcom/facebook/ads/redexgen/X/rN;->A06:Ljava/lang/Object;

    check-cast v0, Lcom/facebook/ads/redexgen/X/Uw;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Uw;->A04()Ljava/util/Map;

    move-result-object v0

    .line 72526
    invoke-interface {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/VA;->ABL(Ljava/lang/String;Ljava/util/Map;)V

    .line 72527
    :cond_1
    return-void
.end method
