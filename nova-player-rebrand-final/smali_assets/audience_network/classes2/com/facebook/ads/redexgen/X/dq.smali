.class public final Lcom/facebook/ads/redexgen/X/dq;
.super Landroid/widget/LinearLayout;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/ads/redexgen/X/do;,
        Lcom/facebook/ads/redexgen/X/dp;
    }
.end annotation


# static fields
.field public static A07:[Ljava/lang/String;

.field public static final A08:I

.field public static final A09:I

.field public static final A0A:I

.field public static final A0B:I

.field public static final A0C:I


# instance fields
.field public A00:Landroid/widget/LinearLayout;

.field public A01:Ljava/lang/String;

.field public A02:Z

.field public final A03:I

.field public final A04:Lcom/facebook/ads/redexgen/X/gi;

.field public final A05:Lcom/facebook/ads/redexgen/X/bk;

.field public final A06:Lcom/facebook/ads/redexgen/X/bq;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    .line 2731
    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "mO6OCzz183u1Bigulq5KeRnnu3UhUErY"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "M8wuVwCqg47swjluxOTBwYkXCALJOS1f"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "isO3a6yeUrEqJHaKmCFaV"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "J8y0fQZRtVpgz1Itec1cmA3ue79eN13N"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "z6IigVxY2j2waSprQRCf4749VcxJv5uz"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "GG3OTiE6t7MwpY"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "UBA0QA1YjTXejDlGkh9vREu7YbW4o1hK"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "iNB15eFG13fee2"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/dq;->A07:[Ljava/lang/String;

    sget v0, Lcom/facebook/ads/redexgen/X/XX;->A02:F

    const/high16 v2, 0x41800000    # 16.0f

    mul-float/2addr v0, v2

    float-to-int v0, v0

    sput v0, Lcom/facebook/ads/redexgen/X/dq;->A0A:I

    .line 2732
    const/high16 v1, 0x42000000    # 32.0f

    sget v0, Lcom/facebook/ads/redexgen/X/XX;->A02:F

    mul-float/2addr v0, v1

    float-to-int v0, v0

    sput v0, Lcom/facebook/ads/redexgen/X/dq;->A0B:I

    .line 2733
    sget v0, Lcom/facebook/ads/redexgen/X/XX;->A02:F

    mul-float/2addr v0, v2

    float-to-int v0, v0

    sput v0, Lcom/facebook/ads/redexgen/X/dq;->A0C:I

    .line 2734
    sget v1, Lcom/facebook/ads/redexgen/X/XX;->A02:F

    const/high16 v0, 0x40800000    # 4.0f

    mul-float/2addr v1, v0

    float-to-int v0, v1

    sput v0, Lcom/facebook/ads/redexgen/X/dq;->A09:I

    .line 2735
    const/high16 v1, 0x42900000    # 72.0f

    sget v0, Lcom/facebook/ads/redexgen/X/XX;->A02:F

    mul-float/2addr v0, v1

    float-to-int v0, v0

    sput v0, Lcom/facebook/ads/redexgen/X/dq;->A08:I

    return-void
.end method

.method public constructor <init>(Lcom/facebook/ads/redexgen/X/do;)V
    .locals 6

    .line 80390
    invoke-static {p1}, Lcom/facebook/ads/redexgen/X/do;->A04(Lcom/facebook/ads/redexgen/X/do;)Lcom/facebook/ads/redexgen/X/gi;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 80391
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/dq;->A02:Z

    .line 80392
    const-string v0, ""

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/dq;->A01:Ljava/lang/String;

    .line 80393
    invoke-static {p1}, Lcom/facebook/ads/redexgen/X/do;->A04(Lcom/facebook/ads/redexgen/X/do;)Lcom/facebook/ads/redexgen/X/gi;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/dq;->A04:Lcom/facebook/ads/redexgen/X/gi;

    .line 80394
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/dq;->A04:Lcom/facebook/ads/redexgen/X/gi;

    new-instance v0, Lcom/facebook/ads/redexgen/X/bk;

    invoke-direct {v0, v1}, Lcom/facebook/ads/redexgen/X/bk;-><init>(Lcom/facebook/ads/redexgen/X/gi;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/dq;->A05:Lcom/facebook/ads/redexgen/X/bk;

    .line 80395
    new-instance v0, Lcom/facebook/ads/redexgen/X/bq;

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/dq;->A04:Lcom/facebook/ads/redexgen/X/gi;

    .line 80396
    invoke-static {p1}, Lcom/facebook/ads/redexgen/X/do;->A02(Lcom/facebook/ads/redexgen/X/do;)Lcom/facebook/ads/redexgen/X/Na;

    move-result-object v2

    const/4 v4, 0x0

    const/4 v5, 0x1

    const/4 v3, 0x1

    invoke-direct/range {v0 .. v5}, Lcom/facebook/ads/redexgen/X/bq;-><init>(Lcom/facebook/ads/redexgen/X/gi;Lcom/facebook/ads/redexgen/X/Na;ZZZ)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/dq;->A06:Lcom/facebook/ads/redexgen/X/bq;

    .line 80397
    invoke-static {p1}, Lcom/facebook/ads/redexgen/X/do;->A00(Lcom/facebook/ads/redexgen/X/do;)I

    move-result v0

    iput v0, p0, Lcom/facebook/ads/redexgen/X/dq;->A03:I

    .line 80398
    invoke-static {p1}, Lcom/facebook/ads/redexgen/X/do;->A08(Lcom/facebook/ads/redexgen/X/do;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/dq;->A02:Z

    .line 80399
    invoke-static {p1}, Lcom/facebook/ads/redexgen/X/do;->A05(Lcom/facebook/ads/redexgen/X/do;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/dq;->A01:Ljava/lang/String;

    .line 80400
    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/dq;->A03(Lcom/facebook/ads/redexgen/X/do;)V

    .line 80401
    return-void
.end method

.method public synthetic constructor <init>(Lcom/facebook/ads/redexgen/X/do;Lcom/facebook/ads/redexgen/X/GX;)V
    .locals 0

    .line 80402
    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/dq;-><init>(Lcom/facebook/ads/redexgen/X/do;)V

    return-void
.end method

.method private A00()V
    .locals 2

    .line 80403
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/dq;->A05:Lcom/facebook/ads/redexgen/X/bk;

    const/16 v0, 0x96

    invoke-direct {p0, v1, v0}, Lcom/facebook/ads/redexgen/X/dq;->A01(Landroid/view/View;I)V

    .line 80404
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/dq;->A06:Lcom/facebook/ads/redexgen/X/bq;

    const/16 v0, 0xaa

    invoke-direct {p0, v1, v0}, Lcom/facebook/ads/redexgen/X/dq;->A01(Landroid/view/View;I)V

    .line 80405
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/dq;->A00:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_0

    .line 80406
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/dq;->A00:Landroid/widget/LinearLayout;

    const/16 v0, 0xbe

    invoke-direct {p0, v1, v0}, Lcom/facebook/ads/redexgen/X/dq;->A01(Landroid/view/View;I)V

    .line 80407
    :cond_0
    return-void
.end method

.method private A01(Landroid/view/View;I)V
    .locals 3

    .line 80408
    int-to-float v0, p2

    invoke-virtual {p1, v0}, Landroid/view/View;->setTranslationY(F)V

    .line 80409
    const/high16 v0, 0x3f400000    # 0.75f

    invoke-virtual {p1, v0}, Landroid/view/View;->setScaleY(F)V

    .line 80410
    invoke-virtual {p1, v0}, Landroid/view/View;->setScaleX(F)V

    .line 80411
    invoke-virtual {p1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    neg-int v0, p2

    int-to-float v0, v0

    .line 80412
    invoke-virtual {v1, v0}, Landroid/view/ViewPropertyAnimator;->translationYBy(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 80413
    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->scaleX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 80414
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->scaleY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    .line 80415
    const-wide/16 v0, 0x12c

    invoke-virtual {v2, v0, v1}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    const/high16 v1, 0x40000000    # 2.0f

    new-instance v0, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v0, v1}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    .line 80416
    invoke-virtual {v2, v0}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    .line 80417
    return-void
.end method

.method private A02(Lcom/facebook/ads/redexgen/X/do;)V
    .locals 9

    .line 80418
    invoke-static {p1}, Lcom/facebook/ads/redexgen/X/do;->A06(Lcom/facebook/ads/redexgen/X/do;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 80419
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/dq;->getContext()Landroid/content/Context;

    move-result-object v1

    new-instance v0, Landroid/widget/LinearLayout;

    invoke-direct {v0, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/dq;->A00:Landroid/widget/LinearLayout;

    .line 80420
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/dq;->A00:Landroid/widget/LinearLayout;

    const/16 v0, 0x11

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 80421
    sget v0, Lcom/facebook/ads/redexgen/X/dq;->A0C:I

    div-int/lit8 v4, v0, 0x2

    .line 80422
    .local v0, "marginTop":I
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/dq;->A02:Z

    if-eqz v0, :cond_0

    .line 80423
    const/4 v4, 0x0

    .line 80424
    :cond_0
    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/dq;->A00:Landroid/widget/LinearLayout;

    sget v2, Lcom/facebook/ads/redexgen/X/dq;->A0C:I

    sget v1, Lcom/facebook/ads/redexgen/X/dq;->A0C:I

    sget v0, Lcom/facebook/ads/redexgen/X/dq;->A0C:I

    div-int/lit8 v0, v0, 0x2

    invoke-virtual {v3, v2, v4, v1, v0}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 80425
    const/4 v1, -0x2

    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v3, v1, v1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 80426
    .local v1, "informativeContainerParams":Landroid/widget/LinearLayout$LayoutParams;
    const/4 v6, 0x0

    invoke-virtual {v3, v6, v4, v6, v6}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 80427
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/dq;->getContext()Landroid/content/Context;

    move-result-object v0

    new-instance v7, Landroid/widget/TextView;

    invoke-direct {v7, v0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 80428
    .local v4, "informativeTextView":Landroid/widget/TextView;
    const/4 v5, -0x1

    invoke-virtual {v7, v5}, Landroid/widget/TextView;->setTextColor(I)V

    .line 80429
    const/16 v0, 0x10

    invoke-static {v7, v6, v0}, Lcom/facebook/ads/redexgen/X/YB;->A0a(Landroid/widget/TextView;ZI)V

    .line 80430
    invoke-static {p1}, Lcom/facebook/ads/redexgen/X/do;->A06(Lcom/facebook/ads/redexgen/X/do;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 80431
    new-instance v4, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v4, v1, v1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 80432
    .local v2, "informativeTextViewParams":Landroid/widget/LinearLayout$LayoutParams;
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/dq;->getContext()Landroid/content/Context;

    move-result-object v0

    new-instance v8, Landroid/widget/ImageView;

    invoke-direct {v8, v0}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 80433
    .local v6, "informativeIconView":Landroid/widget/ImageView;
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/dq;->A04:Lcom/facebook/ads/redexgen/X/gi;

    new-instance v0, Lcom/facebook/ads/redexgen/X/LM;

    invoke-direct {v0, v8, v1}, Lcom/facebook/ads/redexgen/X/LM;-><init>(Landroid/widget/ImageView;Lcom/facebook/ads/redexgen/X/gi;)V

    .line 80434
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/LM;->A04()Lcom/facebook/ads/redexgen/X/LM;

    move-result-object v1

    .line 80435
    invoke-static {p1}, Lcom/facebook/ads/redexgen/X/do;->A07(Lcom/facebook/ads/redexgen/X/do;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/LM;->A07(Ljava/lang/String;)V

    .line 80436
    sget v2, Lcom/facebook/ads/redexgen/X/dq;->A0A:I

    sget v0, Lcom/facebook/ads/redexgen/X/dq;->A0A:I

    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v1, v2, v0}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 80437
    .local v7, "informativeIconViewParams":Landroid/widget/LinearLayout$LayoutParams;
    sget v0, Lcom/facebook/ads/redexgen/X/dq;->A0C:I

    div-int/lit8 v0, v0, 0x2

    invoke-virtual {v1, v6, v6, v0, v6}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 80438
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/dq;->A02:Z

    if-eqz v0, :cond_1

    .line 80439
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/dq;->getContext()Landroid/content/Context;

    move-result-object v1

    sget-object v0, Lcom/facebook/ads/redexgen/X/YM;->A0x:Lcom/facebook/ads/redexgen/X/YM;

    new-instance v4, Lcom/facebook/ads/redexgen/X/be;

    invoke-direct {v4, v1, v6, v5, v0}, Lcom/facebook/ads/redexgen/X/be;-><init>(Landroid/content/Context;IILcom/facebook/ads/redexgen/X/YM;)V

    .line 80440
    .local v3, "iconView":Lcom/facebook/ads/redexgen/X/be;
    sget v2, Lcom/facebook/ads/redexgen/X/dq;->A0B:I

    sget v1, Lcom/facebook/ads/redexgen/X/dq;->A0B:I

    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v0, v2, v1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 80441
    .local v5, "iconViewParam":Landroid/widget/LinearLayout$LayoutParams;
    invoke-virtual {v4, v0}, Lcom/facebook/ads/redexgen/X/be;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 80442
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/dq;->A00:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 80443
    .end local v3    # "iconView":Lcom/facebook/ads/redexgen/X/be;
    .end local v5    # "iconViewParam":Landroid/widget/LinearLayout$LayoutParams;
    .end local v3
    :goto_0
    iget-object v4, p0, Lcom/facebook/ads/redexgen/X/dq;->A00:Landroid/widget/LinearLayout;

    sget-object v2, Lcom/facebook/ads/redexgen/X/dq;->A07:[Ljava/lang/String;

    const/4 v0, 0x5

    aget-object v1, v2, v0

    const/4 v0, 0x7

    aget-object v0, v2, v0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eq v1, v0, :cond_2

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    .line 80444
    :cond_1
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/dq;->A00:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v8, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 80445
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/dq;->A00:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v7, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 80446
    new-instance v1, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {v1}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    .line 80447
    .local v3, "bgDrawable":Landroid/graphics/drawable/GradientDrawable;
    const/high16 v0, 0x42c80000    # 100.0f

    invoke-virtual {v1, v0}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    .line 80448
    const v0, 0x1bffffff

    invoke-virtual {v1, v0}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    .line 80449
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/dq;->A00:Landroid/widget/LinearLayout;

    invoke-static {v0, v1}, Lcom/facebook/ads/redexgen/X/YB;->A0V(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    :cond_2
    sget-object v2, Lcom/facebook/ads/redexgen/X/dq;->A07:[Ljava/lang/String;

    const-string v1, "6JdK2pyeEPUWkfGuYxPy07w26kgdYt9J"

    const/4 v0, 0x0

    aput-object v1, v2, v0

    const-string v1, "5VEwQONd4c8VI19uC0Ib5tVL9YvIxUH6"

    const/4 v0, 0x1

    aput-object v1, v2, v0

    invoke-virtual {p0, v4, v3}, Lcom/facebook/ads/redexgen/X/dq;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 80450
    .end local v0    # "marginTop":I
    .end local v1    # "informativeContainerParams":Landroid/widget/LinearLayout$LayoutParams;
    .end local v2    # "informativeTextViewParams":Landroid/widget/LinearLayout$LayoutParams;
    .end local v4    # "informativeTextView":Landroid/widget/TextView;
    .end local v6    # "informativeIconView":Landroid/widget/ImageView;
    .end local v7    # "informativeIconViewParams":Landroid/widget/LinearLayout$LayoutParams;
    :cond_3
    return-void
.end method

.method private A03(Lcom/facebook/ads/redexgen/X/do;)V
    .locals 11

    .line 80451
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/dq;->A05:Lcom/facebook/ads/redexgen/X/bk;

    const/4 v4, 0x0

    invoke-static {v0, v4}, Lcom/facebook/ads/redexgen/X/YB;->A0N(Landroid/view/View;I)V

    .line 80452
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/dq;->A05:Lcom/facebook/ads/redexgen/X/bk;

    const/16 v0, 0x32

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/bk;->setRadius(I)V

    .line 80453
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/dq;->A02:Z

    const/4 v3, 0x1

    if-eqz v0, :cond_1

    .line 80454
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/dq;->A05:Lcom/facebook/ads/redexgen/X/bk;

    sget v0, Lcom/facebook/ads/redexgen/X/dq;->A09:I

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/bk;->setRadius(I)V

    .line 80455
    :goto_0
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/dq;->A05:Lcom/facebook/ads/redexgen/X/bk;

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/dq;->A04:Lcom/facebook/ads/redexgen/X/gi;

    new-instance v0, Lcom/facebook/ads/redexgen/X/LM;

    invoke-direct {v0, v2, v1}, Lcom/facebook/ads/redexgen/X/LM;-><init>(Landroid/widget/ImageView;Lcom/facebook/ads/redexgen/X/gi;)V

    .line 80456
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/LM;->A04()Lcom/facebook/ads/redexgen/X/LM;

    move-result-object v1

    .line 80457
    invoke-static {p1}, Lcom/facebook/ads/redexgen/X/do;->A03(Lcom/facebook/ads/redexgen/X/do;)Lcom/facebook/ads/redexgen/X/Nm;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Nm;->A01()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/LM;->A07(Ljava/lang/String;)V

    .line 80458
    iget-object v5, p0, Lcom/facebook/ads/redexgen/X/dq;->A06:Lcom/facebook/ads/redexgen/X/bq;

    .line 80459
    invoke-static {p1}, Lcom/facebook/ads/redexgen/X/do;->A01(Lcom/facebook/ads/redexgen/X/do;)Lcom/facebook/ads/redexgen/X/NY;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/NY;->A0G()Ljava/lang/String;

    move-result-object v6

    invoke-static {p1}, Lcom/facebook/ads/redexgen/X/do;->A03(Lcom/facebook/ads/redexgen/X/do;)Lcom/facebook/ads/redexgen/X/Nm;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Nm;->A03()Ljava/lang/String;

    move-result-object v7

    .line 80460
    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x1

    invoke-virtual/range {v5 .. v10}, Lcom/facebook/ads/redexgen/X/bq;->A04(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZ)V

    .line 80461
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/dq;->A02:Z

    if-nez v0, :cond_0

    .line 80462
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/dq;->A06:Lcom/facebook/ads/redexgen/X/bq;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/bq;->getDescriptionTextView()Landroid/widget/TextView;

    move-result-object v1

    const v0, 0x3f4ccccd    # 0.8f

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setAlpha(F)V

    .line 80463
    :goto_1
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/dq;->A06:Lcom/facebook/ads/redexgen/X/bq;

    const/16 v6, 0x11

    invoke-virtual {v0, v6}, Lcom/facebook/ads/redexgen/X/bq;->setAlignment(I)V

    .line 80464
    const/4 v0, -0x2

    new-instance v5, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v5, v0, v0}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 80465
    .local v0, "titleAndDescriptionParams":Landroid/widget/LinearLayout$LayoutParams;
    sget v1, Lcom/facebook/ads/redexgen/X/dq;->A0C:I

    sget v0, Lcom/facebook/ads/redexgen/X/dq;->A0C:I

    div-int/lit8 v0, v0, 0x2

    invoke-virtual {v5, v4, v1, v4, v0}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 80466
    iget-object v4, p0, Lcom/facebook/ads/redexgen/X/dq;->A05:Lcom/facebook/ads/redexgen/X/bk;

    sget v2, Lcom/facebook/ads/redexgen/X/dq;->A08:I

    sget v1, Lcom/facebook/ads/redexgen/X/dq;->A08:I

    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v0, v2, v1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v4, v0}, Lcom/facebook/ads/redexgen/X/dq;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 80467
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/dq;->A06:Lcom/facebook/ads/redexgen/X/bq;

    invoke-virtual {p0, v0, v5}, Lcom/facebook/ads/redexgen/X/dq;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 80468
    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/dq;->A02(Lcom/facebook/ads/redexgen/X/do;)V

    .line 80469
    const v0, -0xdcd8d1

    invoke-static {p0, v0}, Lcom/facebook/ads/redexgen/X/YB;->A0N(Landroid/view/View;I)V

    .line 80470
    invoke-virtual {p0, v6}, Lcom/facebook/ads/redexgen/X/dq;->setGravity(I)V

    .line 80471
    invoke-virtual {p0, v3}, Lcom/facebook/ads/redexgen/X/dq;->setOrientation(I)V

    .line 80472
    return-void

    .line 80473
    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/dq;->A06:Lcom/facebook/ads/redexgen/X/bq;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/bq;->getDescriptionTextView()Landroid/widget/TextView;

    move-result-object v1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/dq;->A01:Ljava/lang/String;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 80474
    :cond_1
    invoke-static {p1}, Lcom/facebook/ads/redexgen/X/do;->A01(Lcom/facebook/ads/redexgen/X/do;)Lcom/facebook/ads/redexgen/X/NY;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/NY;->A00()Lcom/facebook/ads/redexgen/X/NW;

    move-result-object v1

    sget-object v0, Lcom/facebook/ads/redexgen/X/NW;->A05:Lcom/facebook/ads/redexgen/X/NW;

    if-ne v1, v0, :cond_2

    .line 80475
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/dq;->A05:Lcom/facebook/ads/redexgen/X/bk;

    invoke-virtual {v0, v3}, Lcom/facebook/ads/redexgen/X/bk;->setFullCircleCorners(Z)V

    goto/16 :goto_0

    .line 80476
    :cond_2
    iget-object v6, p0, Lcom/facebook/ads/redexgen/X/dq;->A05:Lcom/facebook/ads/redexgen/X/bk;

    sget v5, Lcom/facebook/ads/redexgen/X/dq;->A09:I

    sget-object v2, Lcom/facebook/ads/redexgen/X/dq;->A07:[Ljava/lang/String;

    const/4 v0, 0x5

    aget-object v1, v2, v0

    const/4 v0, 0x7

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
    sget-object v2, Lcom/facebook/ads/redexgen/X/dq;->A07:[Ljava/lang/String;

    const-string v1, "avcxrBXnTsgV2I5Ie1k2l"

    const/4 v0, 0x2

    aput-object v1, v2, v0

    invoke-virtual {v6, v5}, Lcom/facebook/ads/redexgen/X/bk;->setRadius(I)V

    goto/16 :goto_0
.end method


# virtual methods
.method public final A04(Lcom/facebook/ads/redexgen/X/dp;)V
    .locals 3

    .line 80477
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/dq;->A00()V

    .line 80478
    new-instance v2, Lcom/facebook/ads/redexgen/X/GX;

    invoke-direct {v2, p0, p1}, Lcom/facebook/ads/redexgen/X/GX;-><init>(Lcom/facebook/ads/redexgen/X/dq;Lcom/facebook/ads/redexgen/X/dp;)V

    iget v0, p0, Lcom/facebook/ads/redexgen/X/dq;->A03:I

    int-to-long v0, v0

    invoke-virtual {p0, v2, v0, v1}, Lcom/facebook/ads/redexgen/X/dq;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 80479
    return-void
.end method
