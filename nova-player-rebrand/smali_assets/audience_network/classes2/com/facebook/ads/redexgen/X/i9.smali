.class public final Lcom/facebook/ads/redexgen/X/i9;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/facebook/ads/redexgen/X/Ou;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 86302
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private A00(Lcom/facebook/ads/redexgen/X/Ot;)Lcom/facebook/ads/redexgen/X/Ov;
    .locals 1

    .line 86303
    invoke-interface {p1}, Lcom/facebook/ads/redexgen/X/Ot;->A7E()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/redexgen/X/Ov;

    return-object v0
.end method


# virtual methods
.method public final A01(Lcom/facebook/ads/redexgen/X/Ot;)V
    .locals 5

    .line 86304
    invoke-interface {p1}, Lcom/facebook/ads/redexgen/X/Ot;->A9R()Z

    move-result v0

    if-nez v0, :cond_0

    .line 86305
    const/4 v0, 0x0

    invoke-interface {p1, v0, v0, v0, v0}, Lcom/facebook/ads/redexgen/X/Ot;->AJl(IIII)V

    .line 86306
    return-void

    .line 86307
    :cond_0
    invoke-virtual {p0, p1}, Lcom/facebook/ads/redexgen/X/i9;->A8S(Lcom/facebook/ads/redexgen/X/Ot;)F

    move-result v4

    .line 86308
    .local v0, "elevation":F
    invoke-virtual {p0, p1}, Lcom/facebook/ads/redexgen/X/i9;->A8r(Lcom/facebook/ads/redexgen/X/Ot;)F

    move-result v2

    .line 86309
    .local v1, "radius":F
    invoke-interface {p1}, Lcom/facebook/ads/redexgen/X/Ot;->A8q()Z

    move-result v0

    invoke-static {v4, v2, v0}, Lcom/facebook/ads/redexgen/X/Ox;->A00(FFZ)F

    move-result v0

    float-to-double v0, v0

    .line 86310
    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    double-to-int v3, v0

    .line 86311
    .local v2, "hPadding":I
    invoke-interface {p1}, Lcom/facebook/ads/redexgen/X/Ot;->A8q()Z

    move-result v0

    invoke-static {v4, v2, v0}, Lcom/facebook/ads/redexgen/X/Ox;->A01(FFZ)F

    move-result v0

    float-to-double v0, v0

    .line 86312
    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v1

    double-to-int v0, v1

    .line 86313
    .local v3, "vPadding":I
    invoke-interface {p1, v3, v0, v3, v0}, Lcom/facebook/ads/redexgen/X/Ot;->AJl(IIII)V

    .line 86314
    return-void
.end method

.method public final A71(Lcom/facebook/ads/redexgen/X/Ot;)Landroid/content/res/ColorStateList;
    .locals 1

    .line 86315
    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/i9;->A00(Lcom/facebook/ads/redexgen/X/Ot;)Lcom/facebook/ads/redexgen/X/Ov;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Ov;->A05()Landroid/content/res/ColorStateList;

    move-result-object v0

    return-object v0
.end method

.method public final A7v(Lcom/facebook/ads/redexgen/X/Ot;)F
    .locals 1

    .line 86316
    invoke-interface {p1}, Lcom/facebook/ads/redexgen/X/Ot;->A7F()Lcom/facebook/ads/redexgen/X/Os;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getElevation()F

    move-result v0

    return v0
.end method

.method public final A8S(Lcom/facebook/ads/redexgen/X/Ot;)F
    .locals 1

    .line 86317
    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/i9;->A00(Lcom/facebook/ads/redexgen/X/Ot;)Lcom/facebook/ads/redexgen/X/Ov;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Ov;->A03()F

    move-result v0

    return v0
.end method

.method public final A8X(Lcom/facebook/ads/redexgen/X/Ot;)F
    .locals 2

    .line 86318
    invoke-virtual {p0, p1}, Lcom/facebook/ads/redexgen/X/i9;->A8r(Lcom/facebook/ads/redexgen/X/Ot;)F

    move-result v1

    const/high16 v0, 0x40000000    # 2.0f

    mul-float/2addr v1, v0

    return v1
.end method

.method public final A8Y(Lcom/facebook/ads/redexgen/X/Ot;)F
    .locals 2

    .line 86319
    invoke-virtual {p0, p1}, Lcom/facebook/ads/redexgen/X/i9;->A8r(Lcom/facebook/ads/redexgen/X/Ot;)F

    move-result v1

    const/high16 v0, 0x40000000    # 2.0f

    mul-float/2addr v1, v0

    return v1
.end method

.method public final A8r(Lcom/facebook/ads/redexgen/X/Ot;)F
    .locals 1

    .line 86320
    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/i9;->A00(Lcom/facebook/ads/redexgen/X/Ot;)Lcom/facebook/ads/redexgen/X/Ov;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Ov;->A04()F

    move-result v0

    return v0
.end method

.method public final AAE()V
    .locals 0

    .line 86321
    return-void
.end method

.method public final AAG(Lcom/facebook/ads/redexgen/X/Ot;Landroid/content/Context;Landroid/content/res/ColorStateList;FFF)V
    .locals 2

    .line 86322
    new-instance v0, Lcom/facebook/ads/redexgen/X/Ov;

    invoke-direct {v0, p3, p4}, Lcom/facebook/ads/redexgen/X/Ov;-><init>(Landroid/content/res/ColorStateList;F)V

    .line 86323
    .local v0, "background":Lcom/facebook/ads/redexgen/X/Ov;
    invoke-interface {p1, v0}, Lcom/facebook/ads/redexgen/X/Ot;->AJK(Landroid/graphics/drawable/Drawable;)V

    .line 86324
    invoke-interface {p1}, Lcom/facebook/ads/redexgen/X/Ot;->A7F()Lcom/facebook/ads/redexgen/X/Os;

    move-result-object v1

    .line 86325
    .local v1, "view":Landroid/view/View;
    const/4 v0, 0x1

    invoke-virtual {v1, v0}, Landroid/view/View;->setClipToOutline(Z)V

    .line 86326
    invoke-virtual {v1, p5}, Landroid/view/View;->setElevation(F)V

    .line 86327
    invoke-virtual {p0, p1, p6}, Lcom/facebook/ads/redexgen/X/i9;->AJX(Lcom/facebook/ads/redexgen/X/Ot;F)V

    .line 86328
    return-void
.end method

.method public final ADP(Lcom/facebook/ads/redexgen/X/Ot;)V
    .locals 1

    .line 86329
    invoke-virtual {p0, p1}, Lcom/facebook/ads/redexgen/X/i9;->A8S(Lcom/facebook/ads/redexgen/X/Ot;)F

    move-result v0

    invoke-virtual {p0, p1, v0}, Lcom/facebook/ads/redexgen/X/i9;->AJX(Lcom/facebook/ads/redexgen/X/Ot;F)V

    .line 86330
    return-void
.end method

.method public final AFT(Lcom/facebook/ads/redexgen/X/Ot;)V
    .locals 1

    .line 86331
    invoke-virtual {p0, p1}, Lcom/facebook/ads/redexgen/X/i9;->A8S(Lcom/facebook/ads/redexgen/X/Ot;)F

    move-result v0

    invoke-virtual {p0, p1, v0}, Lcom/facebook/ads/redexgen/X/i9;->AJX(Lcom/facebook/ads/redexgen/X/Ot;F)V

    .line 86332
    return-void
.end method

.method public final AJJ(Lcom/facebook/ads/redexgen/X/Ot;Landroid/content/res/ColorStateList;)V
    .locals 1

    .line 86333
    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/i9;->A00(Lcom/facebook/ads/redexgen/X/Ot;)Lcom/facebook/ads/redexgen/X/Ov;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/facebook/ads/redexgen/X/Ov;->A08(Landroid/content/res/ColorStateList;)V

    .line 86334
    return-void
.end method

.method public final AJP(Lcom/facebook/ads/redexgen/X/Ot;F)V
    .locals 1

    .line 86335
    invoke-interface {p1}, Lcom/facebook/ads/redexgen/X/Ot;->A7F()Lcom/facebook/ads/redexgen/X/Os;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/view/View;->setElevation(F)V

    .line 86336
    return-void
.end method

.method public final AJX(Lcom/facebook/ads/redexgen/X/Ot;F)V
    .locals 3

    .line 86337
    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/i9;->A00(Lcom/facebook/ads/redexgen/X/Ot;)Lcom/facebook/ads/redexgen/X/Ov;

    move-result-object v2

    .line 86338
    invoke-interface {p1}, Lcom/facebook/ads/redexgen/X/Ot;->A9R()Z

    move-result v1

    invoke-interface {p1}, Lcom/facebook/ads/redexgen/X/Ot;->A8q()Z

    move-result v0

    .line 86339
    invoke-virtual {v2, p2, v1, v0}, Lcom/facebook/ads/redexgen/X/Ov;->A07(FZZ)V

    .line 86340
    invoke-virtual {p0, p1}, Lcom/facebook/ads/redexgen/X/i9;->A01(Lcom/facebook/ads/redexgen/X/Ot;)V

    .line 86341
    return-void
.end method

.method public final AJj(Lcom/facebook/ads/redexgen/X/Ot;F)V
    .locals 1

    .line 86342
    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/i9;->A00(Lcom/facebook/ads/redexgen/X/Ot;)Lcom/facebook/ads/redexgen/X/Ov;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/facebook/ads/redexgen/X/Ov;->A06(F)V

    .line 86343
    return-void
.end method
