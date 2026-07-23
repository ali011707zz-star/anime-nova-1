.class public final Lcom/facebook/ads/redexgen/X/ZK;
.super Landroid/widget/LinearLayout;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/ads/internal/view/ToolbarActionView$ToolbarActionMode;
    }
.end annotation


# static fields
.field public static final A08:I

.field public static final A09:I

.field public static final A0A:I


# instance fields
.field public A00:I

.field public A01:Z

.field public A02:Z

.field public final A03:Landroid/widget/ImageView;

.field public final A04:Landroid/widget/LinearLayout;

.field public final A05:Landroid/widget/TextView;

.field public final A06:Lcom/facebook/ads/redexgen/X/gi;

.field public final A07:Lcom/facebook/ads/redexgen/X/bX;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 2560
    const/high16 v1, 0x41700000    # 15.0f

    sget v0, Lcom/facebook/ads/redexgen/X/XX;->A02:F

    mul-float/2addr v0, v1

    float-to-int v0, v0

    sput v0, Lcom/facebook/ads/redexgen/X/ZK;->A08:I

    .line 2561
    const/high16 v1, 0x41200000    # 10.0f

    sget v0, Lcom/facebook/ads/redexgen/X/XX;->A02:F

    mul-float/2addr v0, v1

    float-to-int v0, v0

    sput v0, Lcom/facebook/ads/redexgen/X/ZK;->A09:I

    .line 2562
    const/high16 v1, 0x42300000    # 44.0f

    sget v0, Lcom/facebook/ads/redexgen/X/XX;->A02:F

    mul-float/2addr v0, v1

    float-to-int v0, v0

    sput v0, Lcom/facebook/ads/redexgen/X/ZK;->A0A:I

    return-void
.end method

.method public constructor <init>(Lcom/facebook/ads/redexgen/X/gi;IZ)V
    .locals 6

    .line 75233
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 75234
    const/4 v5, 0x0

    iput-boolean v5, p0, Lcom/facebook/ads/redexgen/X/ZK;->A01:Z

    .line 75235
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/ZK;->A06:Lcom/facebook/ads/redexgen/X/gi;

    .line 75236
    iput-boolean p3, p0, Lcom/facebook/ads/redexgen/X/ZK;->A02:Z

    .line 75237
    new-instance v0, Landroid/widget/ImageView;

    invoke-direct {v0, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/ZK;->A03:Landroid/widget/ImageView;

    .line 75238
    iget-object v4, p0, Lcom/facebook/ads/redexgen/X/ZK;->A03:Landroid/widget/ImageView;

    sget v3, Lcom/facebook/ads/redexgen/X/ZK;->A09:I

    sget v2, Lcom/facebook/ads/redexgen/X/ZK;->A09:I

    sget v1, Lcom/facebook/ads/redexgen/X/ZK;->A09:I

    sget v0, Lcom/facebook/ads/redexgen/X/ZK;->A09:I

    invoke-virtual {v4, v3, v2, v1, v0}, Landroid/widget/ImageView;->setPadding(IIII)V

    .line 75239
    iget-boolean v1, p0, Lcom/facebook/ads/redexgen/X/ZK;->A02:Z

    new-instance v0, Lcom/facebook/ads/redexgen/X/bX;

    invoke-direct {v0, p1, v1}, Lcom/facebook/ads/redexgen/X/bX;-><init>(Lcom/facebook/ads/redexgen/X/gi;Z)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/ZK;->A07:Lcom/facebook/ads/redexgen/X/bX;

    .line 75240
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/ZK;->A07:Lcom/facebook/ads/redexgen/X/bX;

    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/bX;->setProgress(F)V

    .line 75241
    iget-object v4, p0, Lcom/facebook/ads/redexgen/X/ZK;->A07:Lcom/facebook/ads/redexgen/X/bX;

    sget v3, Lcom/facebook/ads/redexgen/X/ZK;->A09:I

    sget v2, Lcom/facebook/ads/redexgen/X/ZK;->A09:I

    sget v1, Lcom/facebook/ads/redexgen/X/ZK;->A09:I

    sget v0, Lcom/facebook/ads/redexgen/X/ZK;->A09:I

    invoke-virtual {v4, v3, v2, v1, v0}, Lcom/facebook/ads/redexgen/X/bX;->setPadding(IIII)V

    .line 75242
    new-instance v0, Landroid/widget/TextView;

    invoke-direct {v0, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/ZK;->A05:Landroid/widget/TextView;

    .line 75243
    invoke-virtual {p0, v5}, Lcom/facebook/ads/redexgen/X/ZK;->setOrientation(I)V

    .line 75244
    new-instance v0, Landroid/widget/LinearLayout;

    invoke-direct {v0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/ZK;->A04:Landroid/widget/LinearLayout;

    .line 75245
    iput p2, p0, Lcom/facebook/ads/redexgen/X/ZK;->A00:I

    .line 75246
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/ZK;->A00()V

    .line 75247
    return-void
.end method

.method private A00()V
    .locals 7

    .line 75248
    iget v0, p0, Lcom/facebook/ads/redexgen/X/ZK;->A00:I

    invoke-virtual {p0, v0}, Lcom/facebook/ads/redexgen/X/ZK;->setToolbarActionMode(I)V

    .line 75249
    const/4 v4, -0x2

    new-instance v5, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v5, v4, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 75250
    .local v0, "actionContainerParams":Landroid/widget/LinearLayout$LayoutParams;
    const/16 v3, 0x11

    invoke-virtual {p0, v3}, Lcom/facebook/ads/redexgen/X/ZK;->setGravity(I)V

    .line 75251
    sget v1, Lcom/facebook/ads/redexgen/X/ZK;->A0A:I

    sget v0, Lcom/facebook/ads/redexgen/X/ZK;->A0A:I

    new-instance v6, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v6, v1, v0}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 75252
    .local v3, "actionIconParams":Landroid/widget/LinearLayout$LayoutParams;
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/ZK;->A05:Landroid/widget/TextView;

    const/4 v1, 0x1

    const/16 v0, 0x10

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/YB;->A0a(Landroid/widget/TextView;ZI)V

    .line 75253
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/ZK;->A05:Landroid/widget/TextView;

    const/4 v0, -0x1

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 75254
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/ZK;->A05:Landroid/widget/TextView;

    const/16 v0, 0x8

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 75255
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/ZK;->A04:Landroid/widget/LinearLayout;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/ZK;->A03:Landroid/widget/ImageView;

    invoke-virtual {v1, v0, v6}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 75256
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/ZK;->A04:Landroid/widget/LinearLayout;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/ZK;->A07:Lcom/facebook/ads/redexgen/X/bX;

    invoke-virtual {v1, v0, v6}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 75257
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/ZK;->A04:Landroid/widget/LinearLayout;

    invoke-virtual {p0, v0, v5}, Lcom/facebook/ads/redexgen/X/ZK;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 75258
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v1, v4, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 75259
    .local v1, "actionTextLayoutParams":Landroid/widget/LinearLayout$LayoutParams;
    iput v3, v1, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 75260
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/ZK;->A05:Landroid/widget/TextView;

    invoke-virtual {p0, v0, v1}, Lcom/facebook/ads/redexgen/X/ZK;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 75261
    return-void
.end method

.method private A01()V
    .locals 6

    .line 75262
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/ZK;->A07:Lcom/facebook/ads/redexgen/X/bX;

    .line 75263
    iget v0, p0, Lcom/facebook/ads/redexgen/X/ZK;->A00:I

    const/16 v5, 0x8

    const/4 v4, 0x6

    const/4 v3, 0x2

    if-eq v0, v3, :cond_0

    iget v0, p0, Lcom/facebook/ads/redexgen/X/ZK;->A00:I

    if-ne v0, v4, :cond_5

    .line 75264
    :cond_0
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/ZK;->A01:Z

    if-eqz v0, :cond_4

    const/4 v0, 0x4

    .line 75265
    :goto_0
    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/bX;->setVisibility(I)V

    .line 75266
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/ZK;->A03:Landroid/widget/ImageView;

    .line 75267
    iget v1, p0, Lcom/facebook/ads/redexgen/X/ZK;->A00:I

    const/4 v0, 0x5

    if-ne v1, v0, :cond_2

    .line 75268
    const/4 v5, 0x4

    .line 75269
    :cond_1
    :goto_1
    invoke-virtual {v2, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 75270
    return-void

    .line 75271
    :cond_2
    iget v0, p0, Lcom/facebook/ads/redexgen/X/ZK;->A00:I

    if-eq v0, v3, :cond_1

    iget v0, p0, Lcom/facebook/ads/redexgen/X/ZK;->A00:I

    if-ne v0, v4, :cond_3

    goto :goto_1

    .line 75272
    :cond_3
    const/4 v5, 0x0

    goto :goto_1

    .line 75273
    :cond_4
    const/4 v0, 0x0

    goto :goto_0

    .line 75274
    :cond_5
    const/16 v0, 0x8

    goto :goto_0
.end method


# virtual methods
.method public final A02()V
    .locals 1

    .line 75275
    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lcom/facebook/ads/redexgen/X/ZK;->setVisibility(I)V

    .line 75276
    return-void
.end method

.method public final A03(FI)V
    .locals 1

    .line 75277
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/ZK;->A07:Lcom/facebook/ads/redexgen/X/bX;

    invoke-virtual {v0, p1, p2}, Lcom/facebook/ads/redexgen/X/bX;->A02(FI)V

    .line 75278
    return-void
.end method

.method public final A04(Lcom/facebook/ads/redexgen/X/Na;ZZ)V
    .locals 5

    .line 75279
    invoke-virtual {p1, p2}, Lcom/facebook/ads/redexgen/X/Na;->A05(Z)I

    move-result v4

    .line 75280
    .local v0, "accentColor":I
    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/ZK;->A07:Lcom/facebook/ads/redexgen/X/bX;

    .line 75281
    const/16 v0, 0x4d

    invoke-static {v4, v0}, Lcom/facebook/ads/redexgen/X/P3;->A02(II)I

    move-result v1

    .line 75282
    const/16 v2, 0x6e

    const/4 v0, 0x1

    invoke-virtual {v3, v1, v4, v2, v0}, Lcom/facebook/ads/redexgen/X/bX;->A03(IIIZ)V

    .line 75283
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/ZK;->A03:Landroid/widget/ImageView;

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setColorFilter(I)V

    .line 75284
    if-eqz p3, :cond_0

    .line 75285
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/ZK;->A05:Landroid/widget/TextView;

    .line 75286
    const/4 v0, -0x1

    invoke-static {v0, v2}, Lcom/facebook/ads/redexgen/X/P3;->A02(II)I

    move-result v0

    .line 75287
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 75288
    :goto_0
    return-void

    .line 75289
    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/ZK;->A05:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_0
.end method

.method public final A05()Z
    .locals 1

    .line 75290
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/ZK;->A05:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public final A06()Z
    .locals 2

    .line 75291
    iget v1, p0, Lcom/facebook/ads/redexgen/X/ZK;->A00:I

    const/4 v0, 0x2

    if-eq v1, v0, :cond_0

    iget v1, p0, Lcom/facebook/ads/redexgen/X/ZK;->A00:I

    const/4 v0, 0x4

    if-eq v1, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getToolbarActionMode()I
    .locals 1

    .line 75292
    iget v0, p0, Lcom/facebook/ads/redexgen/X/ZK;->A00:I

    return v0
.end method

.method public setActionClickListener(Landroid/view/View$OnClickListener;)V
    .locals 0

    .line 75293
    invoke-virtual {p0, p1}, Lcom/facebook/ads/redexgen/X/ZK;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 75294
    return-void
.end method

.method public setInitialUnskippableSeconds(I)V
    .locals 1

    .line 75295
    if-lez p1, :cond_0

    .line 75296
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/facebook/ads/redexgen/X/ZK;->setToolbarActionMode(I)V

    .line 75297
    :cond_0
    return-void
.end method

.method public setProgress(F)V
    .locals 1

    .line 75298
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/ZK;->A07:Lcom/facebook/ads/redexgen/X/bX;

    invoke-virtual {v0, p1}, Lcom/facebook/ads/redexgen/X/bX;->setProgressWithAnimation(F)V

    .line 75299
    return-void
.end method

.method public setProgressClickListener(Landroid/view/View$OnClickListener;)V
    .locals 1

    .line 75300
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/ZK;->A07:Lcom/facebook/ads/redexgen/X/bX;

    invoke-virtual {v0, p1}, Lcom/facebook/ads/redexgen/X/bX;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 75301
    return-void
.end method

.method public setProgressImage(Lcom/facebook/ads/redexgen/X/YM;)V
    .locals 1

    .line 75302
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/ZK;->A07:Lcom/facebook/ads/redexgen/X/bX;

    invoke-virtual {v0, p1}, Lcom/facebook/ads/redexgen/X/bX;->setImage(Lcom/facebook/ads/redexgen/X/YM;)V

    .line 75303
    return-void
.end method

.method public setProgressImmediate(F)V
    .locals 1

    .line 75304
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/ZK;->A07:Lcom/facebook/ads/redexgen/X/bX;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/bX;->clearAnimation()V

    .line 75305
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/ZK;->A07:Lcom/facebook/ads/redexgen/X/bX;

    invoke-virtual {v0, p1}, Lcom/facebook/ads/redexgen/X/bX;->setProgress(F)V

    .line 75306
    return-void
.end method

.method public setProgressSpinnerInvisible(Z)V
    .locals 0

    .line 75307
    iput-boolean p1, p0, Lcom/facebook/ads/redexgen/X/ZK;->A01:Z

    .line 75308
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/ZK;->A01()V

    .line 75309
    return-void
.end method

.method public setToolbarActionMode(I)V
    .locals 8

    .line 75310
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/ZK;->A06:Lcom/facebook/ads/redexgen/X/gi;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/gi;->A0F()Lcom/facebook/ads/redexgen/X/Lt;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/facebook/ads/redexgen/X/Lt;->AGB(I)V

    .line 75311
    iput p1, p0, Lcom/facebook/ads/redexgen/X/ZK;->A00:I

    .line 75312
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/ZK;->A01()V

    .line 75313
    const/4 v5, 0x0

    invoke-virtual {p0, v5}, Lcom/facebook/ads/redexgen/X/ZK;->setVisibility(I)V

    .line 75314
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/ZK;->A03:Landroid/widget/ImageView;

    const/16 v0, 0xff

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageAlpha(I)V

    .line 75315
    iget-object v4, p0, Lcom/facebook/ads/redexgen/X/ZK;->A03:Landroid/widget/ImageView;

    sget v3, Lcom/facebook/ads/redexgen/X/ZK;->A09:I

    sget v2, Lcom/facebook/ads/redexgen/X/ZK;->A09:I

    sget v1, Lcom/facebook/ads/redexgen/X/ZK;->A09:I

    sget v0, Lcom/facebook/ads/redexgen/X/ZK;->A09:I

    invoke-virtual {v4, v3, v2, v1, v0}, Landroid/widget/ImageView;->setPadding(IIII)V

    .line 75316
    const/16 v6, 0x8

    packed-switch p1, :pswitch_data_0

    .line 75317
    :pswitch_0
    sget-object v7, Lcom/facebook/ads/redexgen/X/YM;->A0a:Lcom/facebook/ads/redexgen/X/YM;

    .line 75318
    .local v2, "actionEncodedImage":Lcom/facebook/ads/redexgen/X/YM;
    :goto_0
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/ZK;->A03:Landroid/widget/ImageView;

    invoke-static {v7}, Lcom/facebook/ads/redexgen/X/YN;->A01(Lcom/facebook/ads/redexgen/X/YM;)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 75319
    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 75320
    const/16 v1, 0x3ed

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/ZK;->A03:Landroid/widget/ImageView;

    invoke-static {v1, v0}, Lcom/facebook/ads/redexgen/X/YB;->A0G(ILandroid/view/View;)V

    .line 75321
    invoke-virtual {p0, v5}, Lcom/facebook/ads/redexgen/X/ZK;->setVisibility(I)V

    .line 75322
    :goto_1
    return-void

    .line 75323
    :cond_0
    if-ne p1, v6, :cond_1

    .line 75324
    const/16 v1, 0x3f1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/ZK;->A03:Landroid/widget/ImageView;

    invoke-static {v1, v0}, Lcom/facebook/ads/redexgen/X/YB;->A0G(ILandroid/view/View;)V

    .line 75325
    invoke-virtual {p0, v5}, Lcom/facebook/ads/redexgen/X/ZK;->setVisibility(I)V

    goto :goto_1

    .line 75326
    :cond_1
    const/16 v1, 0x3ea

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/ZK;->A03:Landroid/widget/ImageView;

    invoke-static {v1, v0}, Lcom/facebook/ads/redexgen/X/YB;->A0G(ILandroid/view/View;)V

    goto :goto_1

    .line 75327
    .end local v2    # "actionEncodedImage":Lcom/facebook/ads/redexgen/X/YM;
    :pswitch_1
    sget-object v7, Lcom/facebook/ads/redexgen/X/YM;->A0w:Lcom/facebook/ads/redexgen/X/YM;

    .line 75328
    .restart local v2    # "actionEncodedImage":Lcom/facebook/ads/redexgen/X/YM;
    goto :goto_0

    .line 75329
    .end local v2    # "actionEncodedImage":Lcom/facebook/ads/redexgen/X/YM;
    :pswitch_2
    sget-object v7, Lcom/facebook/ads/redexgen/X/YM;->A0a:Lcom/facebook/ads/redexgen/X/YM;

    .line 75330
    .restart local v2    # "actionEncodedImage":Lcom/facebook/ads/redexgen/X/YM;
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/ZK;->A03:Landroid/widget/ImageView;

    const/16 v0, 0x6e

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageAlpha(I)V

    .line 75331
    iget-object v4, p0, Lcom/facebook/ads/redexgen/X/ZK;->A03:Landroid/widget/ImageView;

    sget v3, Lcom/facebook/ads/redexgen/X/ZK;->A08:I

    sget v2, Lcom/facebook/ads/redexgen/X/ZK;->A08:I

    sget v1, Lcom/facebook/ads/redexgen/X/ZK;->A08:I

    sget v0, Lcom/facebook/ads/redexgen/X/ZK;->A08:I

    invoke-virtual {v4, v3, v2, v1, v0}, Landroid/widget/ImageView;->setPadding(IIII)V

    .line 75332
    goto :goto_0

    .line 75333
    .end local v2    # "actionEncodedImage":Lcom/facebook/ads/redexgen/X/YM;
    :pswitch_3
    sget-object v7, Lcom/facebook/ads/redexgen/X/YM;->A0a:Lcom/facebook/ads/redexgen/X/YM;

    .line 75334
    .restart local v2    # "actionEncodedImage":Lcom/facebook/ads/redexgen/X/YM;
    goto :goto_0

    .line 75335
    .end local v2    # "actionEncodedImage":Lcom/facebook/ads/redexgen/X/YM;
    :pswitch_4
    sget-object v7, Lcom/facebook/ads/redexgen/X/YM;->A0a:Lcom/facebook/ads/redexgen/X/YM;

    .line 75336
    .restart local v2    # "actionEncodedImage":Lcom/facebook/ads/redexgen/X/YM;
    goto :goto_0

    .line 75337
    .end local v2    # "actionEncodedImage":Lcom/facebook/ads/redexgen/X/YM;
    :pswitch_5
    sget-object v7, Lcom/facebook/ads/redexgen/X/YM;->A0a:Lcom/facebook/ads/redexgen/X/YM;

    .line 75338
    .restart local v2    # "actionEncodedImage":Lcom/facebook/ads/redexgen/X/YM;
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/ZK;->A03:Landroid/widget/ImageView;

    invoke-virtual {v0, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 75339
    invoke-virtual {p0, v6}, Lcom/facebook/ads/redexgen/X/ZK;->setVisibility(I)V

    .line 75340
    goto :goto_0

    .line 75341
    .end local v2    # "actionEncodedImage":Lcom/facebook/ads/redexgen/X/YM;
    :pswitch_6
    sget-object v7, Lcom/facebook/ads/redexgen/X/YM;->A0r:Lcom/facebook/ads/redexgen/X/YM;

    .line 75342
    .restart local v2    # "actionEncodedImage":Lcom/facebook/ads/redexgen/X/YM;
    goto :goto_0

    .line 75343
    .end local v2    # "actionEncodedImage":Lcom/facebook/ads/redexgen/X/YM;
    :pswitch_7
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/ZK;->A02:Z

    if-nez v0, :cond_2

    sget-object v7, Lcom/facebook/ads/redexgen/X/YM;->A18:Lcom/facebook/ads/redexgen/X/YM;

    goto :goto_0

    :cond_2
    sget-object v7, Lcom/facebook/ads/redexgen/X/YM;->A11:Lcom/facebook/ads/redexgen/X/YM;

    goto :goto_0

    .line 75344
    .end local v2
    :pswitch_8
    sget-object v7, Lcom/facebook/ads/redexgen/X/YM;->A0a:Lcom/facebook/ads/redexgen/X/YM;

    .line 75345
    .restart local v2    # "actionEncodedImage":Lcom/facebook/ads/redexgen/X/YM;
    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_8
        :pswitch_7
        :pswitch_0
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public setToolbarMessage(Ljava/lang/String;)V
    .locals 2

    .line 75346
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/ZK;->A05:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 75347
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/ZK;->A05:Landroid/widget/TextView;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x8

    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 75348
    return-void

    .line 75349
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setToolbarMessageEnabled(Z)V
    .locals 2

    .line 75350
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/ZK;->A05:Landroid/widget/TextView;

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 75351
    return-void

    .line 75352
    :cond_0
    const/4 v0, 0x4

    goto :goto_0
.end method
