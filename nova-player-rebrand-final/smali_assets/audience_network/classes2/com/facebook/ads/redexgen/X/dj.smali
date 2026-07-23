.class public final Lcom/facebook/ads/redexgen/X/dj;
.super Landroid/widget/RelativeLayout;
.source ""


# static fields
.field public static final A08:I

.field public static final A09:I

.field public static final A0A:I

.field public static final A0B:I

.field public static final A0C:I

.field public static final A0D:I

.field public static final A0E:I

.field public static final A0F:I


# instance fields
.field public A00:Lcom/facebook/ads/redexgen/X/Kr;

.field public final A01:Landroid/view/View$OnClickListener;

.field public final A02:Lcom/facebook/ads/redexgen/X/NY;

.field public final A03:Lcom/facebook/ads/redexgen/X/Nm;

.field public final A04:Lcom/facebook/ads/redexgen/X/gi;

.field public final A05:Lcom/facebook/ads/redexgen/X/bk;

.field public final A06:Lcom/facebook/ads/redexgen/X/bq;

.field public final A07:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    .line 2721
    sget v1, Lcom/facebook/ads/redexgen/X/XX;->A02:F

    const/high16 v0, 0x40000000    # 2.0f

    mul-float/2addr v1, v0

    float-to-int v0, v1

    sput v0, Lcom/facebook/ads/redexgen/X/dj;->A0B:I

    .line 2722
    sget v0, Lcom/facebook/ads/redexgen/X/XX;->A02:F

    const/high16 v2, 0x41800000    # 16.0f

    mul-float/2addr v0, v2

    float-to-int v0, v0

    sput v0, Lcom/facebook/ads/redexgen/X/dj;->A0F:I

    .line 2723
    const/high16 v1, 0x41a00000    # 20.0f

    sget v0, Lcom/facebook/ads/redexgen/X/XX;->A02:F

    mul-float/2addr v0, v1

    float-to-int v0, v0

    sput v0, Lcom/facebook/ads/redexgen/X/dj;->A0D:I

    .line 2724
    const/high16 v1, 0x41500000    # 13.0f

    sget v0, Lcom/facebook/ads/redexgen/X/XX;->A02:F

    mul-float/2addr v0, v1

    float-to-int v0, v0

    sput v0, Lcom/facebook/ads/redexgen/X/dj;->A0E:I

    .line 2725
    const/high16 v1, 0x42900000    # 72.0f

    sget v0, Lcom/facebook/ads/redexgen/X/XX;->A02:F

    mul-float/2addr v0, v1

    float-to-int v0, v0

    sput v0, Lcom/facebook/ads/redexgen/X/dj;->A08:I

    .line 2726
    const/high16 v1, 0x41000000    # 8.0f

    sget v0, Lcom/facebook/ads/redexgen/X/XX;->A02:F

    mul-float/2addr v0, v1

    float-to-int v0, v0

    sput v0, Lcom/facebook/ads/redexgen/X/dj;->A0C:I

    .line 2727
    const/high16 v1, 0x41c00000    # 24.0f

    sget v0, Lcom/facebook/ads/redexgen/X/XX;->A02:F

    mul-float/2addr v0, v1

    float-to-int v0, v0

    sput v0, Lcom/facebook/ads/redexgen/X/dj;->A0A:I

    .line 2728
    sget v0, Lcom/facebook/ads/redexgen/X/XX;->A02:F

    mul-float/2addr v0, v2

    float-to-int v0, v0

    sput v0, Lcom/facebook/ads/redexgen/X/dj;->A09:I

    return-void
.end method

.method public constructor <init>(Lcom/facebook/ads/redexgen/X/gi;Lcom/facebook/ads/redexgen/X/Nm;Lcom/facebook/ads/redexgen/X/NY;Lcom/facebook/ads/redexgen/X/Kr;Ljava/lang/String;Landroid/view/View$OnClickListener;)V
    .locals 7

    .line 80289
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 80290
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/dj;->A04:Lcom/facebook/ads/redexgen/X/gi;

    .line 80291
    iput-object p2, p0, Lcom/facebook/ads/redexgen/X/dj;->A03:Lcom/facebook/ads/redexgen/X/Nm;

    .line 80292
    iput-object p3, p0, Lcom/facebook/ads/redexgen/X/dj;->A02:Lcom/facebook/ads/redexgen/X/NY;

    .line 80293
    iput-object p4, p0, Lcom/facebook/ads/redexgen/X/dj;->A00:Lcom/facebook/ads/redexgen/X/Kr;

    .line 80294
    iput-object p5, p0, Lcom/facebook/ads/redexgen/X/dj;->A07:Ljava/lang/String;

    .line 80295
    iput-object p6, p0, Lcom/facebook/ads/redexgen/X/dj;->A01:Landroid/view/View$OnClickListener;

    .line 80296
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/dj;->A04:Lcom/facebook/ads/redexgen/X/gi;

    new-instance v0, Lcom/facebook/ads/redexgen/X/bk;

    invoke-direct {v0, v1}, Lcom/facebook/ads/redexgen/X/bk;-><init>(Lcom/facebook/ads/redexgen/X/gi;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/dj;->A05:Lcom/facebook/ads/redexgen/X/bk;

    .line 80297
    new-instance v1, Lcom/facebook/ads/redexgen/X/bq;

    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/dj;->A04:Lcom/facebook/ads/redexgen/X/gi;

    .line 80298
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Na;->A01(Lorg/json/JSONObject;)Lcom/facebook/ads/redexgen/X/Na;

    move-result-object v3

    const/4 v5, 0x0

    const/4 v6, 0x1

    const/4 v4, 0x1

    invoke-direct/range {v1 .. v6}, Lcom/facebook/ads/redexgen/X/bq;-><init>(Lcom/facebook/ads/redexgen/X/gi;Lcom/facebook/ads/redexgen/X/Na;ZZZ)V

    iput-object v1, p0, Lcom/facebook/ads/redexgen/X/dj;->A06:Lcom/facebook/ads/redexgen/X/bq;

    .line 80299
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/dj;->A00()V

    .line 80300
    return-void
.end method

.method private A00()V
    .locals 11

    .line 80301
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/dj;->A04:Lcom/facebook/ads/redexgen/X/gi;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/dj;->A03:Lcom/facebook/ads/redexgen/X/Nm;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Nm;->A01()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, p0, v0}, Lcom/facebook/ads/redexgen/X/br;->A00(Lcom/facebook/ads/redexgen/X/gi;Landroid/view/ViewGroup;Ljava/lang/String;)V

    .line 80302
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/dj;->A04:Lcom/facebook/ads/redexgen/X/gi;

    new-instance v6, Landroid/widget/ImageView;

    invoke-direct {v6, v0}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 80303
    .local v0, "closeImageView":Landroid/widget/ImageView;
    sget-object v0, Lcom/facebook/ads/redexgen/X/YM;->A0z:Lcom/facebook/ads/redexgen/X/YM;

    .line 80304
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/YN;->A01(Lcom/facebook/ads/redexgen/X/YM;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 80305
    invoke-virtual {v6, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 80306
    sget v1, Lcom/facebook/ads/redexgen/X/dj;->A0A:I

    sget v0, Lcom/facebook/ads/redexgen/X/dj;->A0A:I

    new-instance v5, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v5, v1, v0}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 80307
    .local v1, "closeViewParam":Landroid/widget/RelativeLayout$LayoutParams;
    const/4 v4, -0x1

    invoke-virtual {v6, v4}, Landroid/widget/ImageView;->setColorFilter(I)V

    .line 80308
    const/16 v0, 0xb

    invoke-virtual {v5, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 80309
    sget v3, Lcom/facebook/ads/redexgen/X/dj;->A09:I

    sget v2, Lcom/facebook/ads/redexgen/X/dj;->A09:I

    sget v1, Lcom/facebook/ads/redexgen/X/dj;->A09:I

    sget v0, Lcom/facebook/ads/redexgen/X/dj;->A09:I

    invoke-virtual {v5, v3, v2, v1, v0}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 80310
    invoke-virtual {v6, v5}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 80311
    invoke-virtual {p0, v6}, Lcom/facebook/ads/redexgen/X/dj;->addView(Landroid/view/View;)V

    .line 80312
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/dj;->A01:Landroid/view/View$OnClickListener;

    invoke-virtual {v6, v0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 80313
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/dj;->A04:Lcom/facebook/ads/redexgen/X/gi;

    new-instance v3, Landroid/widget/LinearLayout;

    invoke-direct {v3, v0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 80314
    .local v3, "layout":Landroid/widget/LinearLayout;
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v0, v4, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 80315
    .local v2, "layoutParams":Landroid/widget/LinearLayout$LayoutParams;
    invoke-virtual {v3, v0}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 80316
    const/16 v4, 0x11

    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 80317
    const/4 v0, 0x1

    invoke-virtual {v3, v0}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 80318
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/dj;->A05:Lcom/facebook/ads/redexgen/X/bk;

    const/4 v2, 0x0

    invoke-static {v0, v2}, Lcom/facebook/ads/redexgen/X/YB;->A0N(Landroid/view/View;I)V

    .line 80319
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/dj;->A05:Lcom/facebook/ads/redexgen/X/bk;

    sget v0, Lcom/facebook/ads/redexgen/X/dj;->A0B:I

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/bk;->setRadius(I)V

    .line 80320
    iget-object v5, p0, Lcom/facebook/ads/redexgen/X/dj;->A05:Lcom/facebook/ads/redexgen/X/bk;

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/dj;->A04:Lcom/facebook/ads/redexgen/X/gi;

    new-instance v0, Lcom/facebook/ads/redexgen/X/LM;

    invoke-direct {v0, v5, v1}, Lcom/facebook/ads/redexgen/X/LM;-><init>(Landroid/widget/ImageView;Lcom/facebook/ads/redexgen/X/gi;)V

    .line 80321
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/LM;->A04()Lcom/facebook/ads/redexgen/X/LM;

    move-result-object v1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/dj;->A03:Lcom/facebook/ads/redexgen/X/Nm;

    .line 80322
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Nm;->A01()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/LM;->A07(Ljava/lang/String;)V

    .line 80323
    iget-object v5, p0, Lcom/facebook/ads/redexgen/X/dj;->A06:Lcom/facebook/ads/redexgen/X/bq;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/dj;->A02:Lcom/facebook/ads/redexgen/X/NY;

    .line 80324
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/NY;->A0G()Ljava/lang/String;

    move-result-object v6

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/dj;->A03:Lcom/facebook/ads/redexgen/X/Nm;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Nm;->A03()Ljava/lang/String;

    move-result-object v7

    .line 80325
    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x1

    invoke-virtual/range {v5 .. v10}, Lcom/facebook/ads/redexgen/X/bq;->A04(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZ)V

    .line 80326
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/dj;->A06:Lcom/facebook/ads/redexgen/X/bq;

    invoke-virtual {v0, v4}, Lcom/facebook/ads/redexgen/X/bq;->setAlignment(I)V

    .line 80327
    const/4 v7, -0x2

    new-instance v5, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v5, v7, v7}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 80328
    .local v4, "titleAndDescriptionParams":Landroid/widget/LinearLayout$LayoutParams;
    sget v1, Lcom/facebook/ads/redexgen/X/dj;->A0F:I

    sget v0, Lcom/facebook/ads/redexgen/X/dj;->A0F:I

    invoke-virtual {v5, v2, v1, v2, v0}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 80329
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/dj;->A06:Lcom/facebook/ads/redexgen/X/bq;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/bq;->getDescriptionTextView()Landroid/widget/TextView;

    move-result-object v1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/dj;->A07:Ljava/lang/String;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 80330
    iget-object v4, p0, Lcom/facebook/ads/redexgen/X/dj;->A05:Lcom/facebook/ads/redexgen/X/bk;

    sget v2, Lcom/facebook/ads/redexgen/X/dj;->A08:I

    sget v1, Lcom/facebook/ads/redexgen/X/dj;->A08:I

    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v0, v2, v1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v3, v4, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 80331
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/dj;->A06:Lcom/facebook/ads/redexgen/X/bq;

    invoke-virtual {v3, v0, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 80332
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/dj;->A00:Lcom/facebook/ads/redexgen/X/Kr;

    if-eqz v0, :cond_0

    .line 80333
    new-instance v6, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v6, v7, v7}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 80334
    .local v5, "ctaButtonPrams":Landroid/widget/LinearLayout$LayoutParams;
    iget-object v5, p0, Lcom/facebook/ads/redexgen/X/dj;->A00:Lcom/facebook/ads/redexgen/X/Kr;

    sget v4, Lcom/facebook/ads/redexgen/X/dj;->A0D:I

    sget v2, Lcom/facebook/ads/redexgen/X/dj;->A0E:I

    sget v1, Lcom/facebook/ads/redexgen/X/dj;->A0D:I

    sget v0, Lcom/facebook/ads/redexgen/X/dj;->A0E:I

    invoke-virtual {v5, v4, v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Kr;->setPadding(IIII)V

    .line 80335
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/dj;->A00:Lcom/facebook/ads/redexgen/X/Kr;

    invoke-virtual {v0, v6}, Lcom/facebook/ads/redexgen/X/Kr;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 80336
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/dj;->A00:Lcom/facebook/ads/redexgen/X/Kr;

    sget v1, Lcom/facebook/ads/redexgen/X/dj;->A0C:I

    .line 80337
    const v0, -0xff6a0a

    invoke-static {v0, v1}, Lcom/facebook/ads/redexgen/X/YB;->A06(II)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 80338
    invoke-static {v2, v0}, Lcom/facebook/ads/redexgen/X/YB;->A0V(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    .line 80339
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/dj;->A00:Lcom/facebook/ads/redexgen/X/Kr;

    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/Kr;->setStateListAnimator(Landroid/animation/StateListAnimator;)V

    .line 80340
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/dj;->A00:Lcom/facebook/ads/redexgen/X/Kr;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/YB;->A0Z(Landroid/widget/Button;)V

    .line 80341
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/dj;->A00:Lcom/facebook/ads/redexgen/X/Kr;

    invoke-virtual {v3, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 80342
    .end local v5    # "ctaButtonPrams":Landroid/widget/LinearLayout$LayoutParams;
    :cond_0
    invoke-virtual {p0, v3}, Lcom/facebook/ads/redexgen/X/dj;->addView(Landroid/view/View;)V

    .line 80343
    return-void
.end method
