.class public final Lcom/facebook/ads/redexgen/X/ZM;
.super Landroid/widget/LinearLayout;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/ads/internal/view/ToolbarActionViewV2$ToolbarActionMode;
    }
.end annotation


# static fields
.field public static A0A:[Ljava/lang/String;

.field public static final A0B:I


# instance fields
.field public A00:I

.field public final A01:Landroid/graphics/drawable/GradientDrawable;

.field public final A02:Landroid/graphics/drawable/GradientDrawable;

.field public final A03:Landroid/widget/ImageView;

.field public final A04:Landroid/widget/LinearLayout;

.field public final A05:Landroid/widget/RelativeLayout;

.field public final A06:Landroid/widget/TextView;

.field public final A07:Lcom/facebook/ads/redexgen/X/jd;

.field public final A08:Lcom/facebook/ads/redexgen/X/gi;

.field public final A09:I


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    .line 2563
    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "iBjFS74UqofOwX9raECs8wFiPopmP8ZT"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "DvkIZsK2SfYDf1PYliynkurznpBmB2mx"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "JthO9De0vDUnz"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "alrxHoKVfabvqyWYzjdfx1EKUXaFGyZT"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "MSxuugz3RBTPC5P7p9BXefIxh5y8oQF5"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "xAXGeIm"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "UaB9zlLwJ5ijSfJwpwiqdPYYRduUW"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "7D"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/ZM;->A0A:[Ljava/lang/String;

    const/high16 v1, 0x42200000    # 40.0f

    sget v0, Lcom/facebook/ads/redexgen/X/XX;->A02:F

    mul-float/2addr v0, v1

    float-to-int v0, v0

    sput v0, Lcom/facebook/ads/redexgen/X/ZM;->A0B:I

    return-void
.end method

.method public constructor <init>(Lcom/facebook/ads/redexgen/X/gi;Lcom/facebook/ads/redexgen/X/jd;I)V
    .locals 1

    .line 75359
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 75360
    new-instance v0, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {v0}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/ZM;->A01:Landroid/graphics/drawable/GradientDrawable;

    .line 75361
    new-instance v0, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {v0}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/ZM;->A02:Landroid/graphics/drawable/GradientDrawable;

    .line 75362
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/ZM;->A08:Lcom/facebook/ads/redexgen/X/gi;

    .line 75363
    iput-object p2, p0, Lcom/facebook/ads/redexgen/X/ZM;->A07:Lcom/facebook/ads/redexgen/X/jd;

    .line 75364
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/ZM;->A07:Lcom/facebook/ads/redexgen/X/jd;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/jd;->A2D()Lcom/facebook/ads/redexgen/X/Ns;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Ns;->A00()I

    move-result v0

    iput v0, p0, Lcom/facebook/ads/redexgen/X/ZM;->A09:I

    .line 75365
    new-instance v0, Landroid/widget/ImageView;

    invoke-direct {v0, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/ZM;->A03:Landroid/widget/ImageView;

    .line 75366
    new-instance v0, Landroid/widget/LinearLayout;

    invoke-direct {v0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/ZM;->A04:Landroid/widget/LinearLayout;

    .line 75367
    new-instance v0, Landroid/widget/RelativeLayout;

    invoke-direct {v0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/ZM;->A05:Landroid/widget/RelativeLayout;

    .line 75368
    new-instance v0, Landroid/widget/TextView;

    invoke-direct {v0, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/ZM;->A06:Landroid/widget/TextView;

    .line 75369
    iput p3, p0, Lcom/facebook/ads/redexgen/X/ZM;->A00:I

    .line 75370
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/ZM;->A00()V

    .line 75371
    return-void
.end method

.method private A00()V
    .locals 6

    .line 75372
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/ZM;->A01:Landroid/graphics/drawable/GradientDrawable;

    const/4 v5, 0x1

    invoke-virtual {v0, v5}, Landroid/graphics/drawable/GradientDrawable;->setShape(I)V

    .line 75373
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/ZM;->A01:Landroid/graphics/drawable/GradientDrawable;

    const/high16 v1, -0x80000000

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    .line 75374
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/ZM;->A02:Landroid/graphics/drawable/GradientDrawable;

    const/4 v4, 0x0

    invoke-virtual {v0, v4}, Landroid/graphics/drawable/GradientDrawable;->setShape(I)V

    .line 75375
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/ZM;->A02:Landroid/graphics/drawable/GradientDrawable;

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    .line 75376
    const/high16 v3, 0x42480000    # 50.0f

    .line 75377
    .local v0, "radius":F
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/ZM;->A02:Landroid/graphics/drawable/GradientDrawable;

    const/16 v0, 0x8

    new-array v1, v0, [F

    aput v3, v1, v4

    aput v3, v1, v5

    const/4 v0, 0x2

    aput v3, v1, v0

    const/4 v0, 0x3

    aput v3, v1, v0

    const/4 v0, 0x4

    aput v3, v1, v0

    const/4 v0, 0x5

    aput v3, v1, v0

    const/4 v0, 0x6

    aput v3, v1, v0

    const/4 v0, 0x7

    aput v3, v1, v0

    invoke-virtual {v2, v1}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadii([F)V

    .line 75378
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/ZM;->A07:Lcom/facebook/ads/redexgen/X/jd;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/jd;->A2D()Lcom/facebook/ads/redexgen/X/Ns;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Ns;->A05()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 75379
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/ZM;->A02()V

    .line 75380
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/ZM;->A05:Landroid/widget/RelativeLayout;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/ZM;->A06:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 75381
    :cond_0
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/ZM;->A01()V

    .line 75382
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/ZM;->A05:Landroid/widget/RelativeLayout;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/ZM;->A03:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 75383
    iget v0, p0, Lcom/facebook/ads/redexgen/X/ZM;->A00:I

    invoke-virtual {p0, v0}, Lcom/facebook/ads/redexgen/X/ZM;->setToolbarActionMode(I)V

    .line 75384
    const/16 v0, 0x11

    invoke-virtual {p0, v0}, Lcom/facebook/ads/redexgen/X/ZM;->setGravity(I)V

    .line 75385
    const/4 v3, -0x2

    new-instance v2, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v2, v3, v3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 75386
    .local v1, "actionViewContainerParams":Landroid/widget/RelativeLayout$LayoutParams;
    sget v1, Lcom/facebook/ads/redexgen/X/XV;->A0b:I

    sget v0, Lcom/facebook/ads/redexgen/X/XV;->A0b:I

    invoke-virtual {v2, v1, v4, v0, v4}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 75387
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/ZM;->A04:Landroid/widget/LinearLayout;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/ZM;->A05:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, v0, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 75388
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v1, v3, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 75389
    .local v2, "actionContainerParams":Landroid/widget/LinearLayout$LayoutParams;
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/ZM;->A04:Landroid/widget/LinearLayout;

    invoke-virtual {p0, v0, v1}, Lcom/facebook/ads/redexgen/X/ZM;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 75390
    return-void
.end method

.method private A01()V
    .locals 5

    .line 75391
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/ZM;->A03:Landroid/widget/ImageView;

    const/4 v0, -0x1

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setColorFilter(I)V

    .line 75392
    iget-object v4, p0, Lcom/facebook/ads/redexgen/X/ZM;->A03:Landroid/widget/ImageView;

    sget v3, Lcom/facebook/ads/redexgen/X/XV;->A0Y:I

    sget v2, Lcom/facebook/ads/redexgen/X/XV;->A0Y:I

    sget v1, Lcom/facebook/ads/redexgen/X/XV;->A0Y:I

    sget v0, Lcom/facebook/ads/redexgen/X/XV;->A0Y:I

    invoke-virtual {v4, v3, v2, v1, v0}, Landroid/widget/ImageView;->setPadding(IIII)V

    .line 75393
    sget v1, Lcom/facebook/ads/redexgen/X/ZM;->A0B:I

    sget v0, Lcom/facebook/ads/redexgen/X/ZM;->A0B:I

    new-instance v2, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v2, v1, v0}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 75394
    .local v0, "actionIconParams":Landroid/widget/RelativeLayout$LayoutParams;
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/ZM;->A06:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getId()I

    move-result v1

    const/4 v0, 0x1

    invoke-virtual {v2, v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 75395
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/ZM;->A03:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 75396
    return-void
.end method

.method private A02()V
    .locals 3

    .line 75397
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/ZM;->A06:Landroid/widget/TextView;

    const/4 v0, -0x1

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 75398
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/ZM;->A06:Landroid/widget/TextView;

    const/high16 v0, 0x41500000    # 13.0f

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTextSize(F)V

    .line 75399
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/ZM;->A06:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/ZM;->A07:Lcom/facebook/ads/redexgen/X/jd;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/jd;->A2D()Lcom/facebook/ads/redexgen/X/Ns;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Ns;->A05()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 75400
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x1c

    const/4 v2, 0x0

    if-lt v1, v0, :cond_0

    .line 75401
    sget-object v1, Landroid/graphics/Typeface;->SANS_SERIF:Landroid/graphics/Typeface;

    const/16 v0, 0x1f4

    invoke-static {v1, v0, v2}, Landroid/graphics/Typeface;->create(Landroid/graphics/Typeface;IZ)Landroid/graphics/Typeface;

    move-result-object v1

    .line 75402
    .local v0, "typeface":Landroid/graphics/Typeface;
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/ZM;->A06:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 75403
    .end local v0    # "typeface":Landroid/graphics/Typeface;
    :cond_0
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/ZM;->A06:Landroid/widget/TextView;

    sget v0, Lcom/facebook/ads/redexgen/X/XV;->A0Z:I

    invoke-virtual {v1, v0, v2, v2, v2}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 75404
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/ZM;->A06:Landroid/widget/TextView;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/YB;->A0K(Landroid/view/View;)V

    .line 75405
    const/4 v0, -0x2

    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v1, v0, v0}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 75406
    .local v0, "params":Landroid/widget/RelativeLayout$LayoutParams;
    const/16 v0, 0xf

    invoke-virtual {v1, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 75407
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/ZM;->A06:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 75408
    return-void
.end method

.method private getNtdIcon()Lcom/facebook/ads/redexgen/X/YM;
    .locals 1

    .line 75410
    iget v0, p0, Lcom/facebook/ads/redexgen/X/ZM;->A09:I

    packed-switch v0, :pswitch_data_0

    .line 75411
    sget-object v0, Lcom/facebook/ads/redexgen/X/YM;->A0w:Lcom/facebook/ads/redexgen/X/YM;

    .line 75412
    .local v0, "actionEncodedImage":Lcom/facebook/ads/redexgen/X/YM;
    :goto_0
    return-object v0

    .line 75413
    .end local v0    # "actionEncodedImage":Lcom/facebook/ads/redexgen/X/YM;
    :pswitch_0
    sget-object v0, Lcom/facebook/ads/redexgen/X/YM;->A0H:Lcom/facebook/ads/redexgen/X/YM;

    .line 75414
    .restart local v0    # "actionEncodedImage":Lcom/facebook/ads/redexgen/X/YM;
    goto :goto_0

    .line 75415
    .end local v0    # "actionEncodedImage":Lcom/facebook/ads/redexgen/X/YM;
    :pswitch_1
    sget-object v0, Lcom/facebook/ads/redexgen/X/YM;->A0F:Lcom/facebook/ads/redexgen/X/YM;

    .line 75416
    .restart local v0    # "actionEncodedImage":Lcom/facebook/ads/redexgen/X/YM;
    goto :goto_0

    .line 75417
    .end local v0    # "actionEncodedImage":Lcom/facebook/ads/redexgen/X/YM;
    :pswitch_2
    sget-object v0, Lcom/facebook/ads/redexgen/X/YM;->A0G:Lcom/facebook/ads/redexgen/X/YM;

    .line 75418
    .restart local v0    # "actionEncodedImage":Lcom/facebook/ads/redexgen/X/YM;
    goto :goto_0

    .line 75419
    .end local v0    # "actionEncodedImage":Lcom/facebook/ads/redexgen/X/YM;
    :pswitch_3
    sget-object v0, Lcom/facebook/ads/redexgen/X/YM;->A0E:Lcom/facebook/ads/redexgen/X/YM;

    .line 75420
    .restart local v0    # "actionEncodedImage":Lcom/facebook/ads/redexgen/X/YM;
    goto :goto_0

    .line 75421
    .end local v0    # "actionEncodedImage":Lcom/facebook/ads/redexgen/X/YM;
    :pswitch_4
    sget-object v0, Lcom/facebook/ads/redexgen/X/YM;->A0n:Lcom/facebook/ads/redexgen/X/YM;

    .line 75422
    .restart local v0    # "actionEncodedImage":Lcom/facebook/ads/redexgen/X/YM;
    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public final A03()Z
    .locals 2

    .line 75409
    iget v1, p0, Lcom/facebook/ads/redexgen/X/ZM;->A00:I

    const/4 v0, 0x2

    if-eq v1, v0, :cond_0

    iget v1, p0, Lcom/facebook/ads/redexgen/X/ZM;->A00:I

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

    .line 75423
    iget v0, p0, Lcom/facebook/ads/redexgen/X/ZM;->A00:I

    return v0
.end method

.method public setActionClickListener(Landroid/view/View$OnClickListener;)V
    .locals 0

    .line 75424
    invoke-virtual {p0, p1}, Lcom/facebook/ads/redexgen/X/ZM;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 75425
    return-void
.end method

.method public setInitialUnskippableSeconds(I)V
    .locals 1

    .line 75426
    if-lez p1, :cond_0

    .line 75427
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/facebook/ads/redexgen/X/ZM;->setToolbarActionMode(I)V

    .line 75428
    :cond_0
    return-void
.end method

.method public setToolbarActionMode(I)V
    .locals 7

    .line 75429
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/ZM;->A08:Lcom/facebook/ads/redexgen/X/gi;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/gi;->A0F()Lcom/facebook/ads/redexgen/X/Lt;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/facebook/ads/redexgen/X/Lt;->AGB(I)V

    .line 75430
    iput p1, p0, Lcom/facebook/ads/redexgen/X/ZM;->A00:I

    .line 75431
    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lcom/facebook/ads/redexgen/X/ZM;->setVisibility(I)V

    .line 75432
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/ZM;->A06:Landroid/widget/TextView;

    const/16 v0, 0x8

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 75433
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/ZM;->A05:Landroid/widget/RelativeLayout;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/ZM;->A01:Landroid/graphics/drawable/GradientDrawable;

    invoke-virtual {v1, v0}, Landroid/widget/RelativeLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 75434
    iget-object v4, p0, Lcom/facebook/ads/redexgen/X/ZM;->A03:Landroid/widget/ImageView;

    sget v3, Lcom/facebook/ads/redexgen/X/XV;->A0Y:I

    sget v2, Lcom/facebook/ads/redexgen/X/XV;->A0Y:I

    sget v1, Lcom/facebook/ads/redexgen/X/XV;->A0Y:I

    sget v0, Lcom/facebook/ads/redexgen/X/XV;->A0Y:I

    invoke-virtual {v4, v3, v2, v1, v0}, Landroid/widget/ImageView;->setPadding(IIII)V

    .line 75435
    const/4 v5, 0x0

    sparse-switch p1, :sswitch_data_0

    .line 75436
    sget-object v6, Lcom/facebook/ads/redexgen/X/YM;->A0t:Lcom/facebook/ads/redexgen/X/YM;

    .line 75437
    .local v1, "actionEncodedImage":Lcom/facebook/ads/redexgen/X/YM;
    :goto_0
    invoke-static {v6}, Lcom/facebook/ads/redexgen/X/YN;->A01(Lcom/facebook/ads/redexgen/X/YM;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 75438
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/ZM;->A03:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 75439
    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 75440
    const/16 v1, 0x3ed

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/ZM;->A03:Landroid/widget/ImageView;

    invoke-static {v1, v0}, Lcom/facebook/ads/redexgen/X/YB;->A0G(ILandroid/view/View;)V

    .line 75441
    :goto_1
    return-void

    .line 75442
    :cond_0
    const/16 v1, 0x3ea

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/ZM;->A03:Landroid/widget/ImageView;

    invoke-static {v1, v0}, Lcom/facebook/ads/redexgen/X/YB;->A0G(ILandroid/view/View;)V

    goto :goto_1

    .line 75443
    .end local v1    # "actionEncodedImage":Lcom/facebook/ads/redexgen/X/YM;
    :sswitch_0
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/ZM;->getNtdIcon()Lcom/facebook/ads/redexgen/X/YM;

    move-result-object v6

    .line 75444
    .restart local v1    # "actionEncodedImage":Lcom/facebook/ads/redexgen/X/YM;
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/ZM;->A07:Lcom/facebook/ads/redexgen/X/jd;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/jd;->A2D()Lcom/facebook/ads/redexgen/X/Ns;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Ns;->A05()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 75445
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/ZM;->A06:Landroid/widget/TextView;

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 75446
    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/ZM;->A03:Landroid/widget/ImageView;

    sget v2, Lcom/facebook/ads/redexgen/X/XV;->A0Y:I

    sget v1, Lcom/facebook/ads/redexgen/X/XV;->A0Y:I

    sget v0, Lcom/facebook/ads/redexgen/X/XV;->A0Y:I

    invoke-virtual {v3, v5, v2, v1, v0}, Landroid/widget/ImageView;->setPadding(IIII)V

    .line 75447
    iget-object v4, p0, Lcom/facebook/ads/redexgen/X/ZM;->A05:Landroid/widget/RelativeLayout;

    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/ZM;->A02:Landroid/graphics/drawable/GradientDrawable;

    sget-object v2, Lcom/facebook/ads/redexgen/X/ZM;->A0A:[Ljava/lang/String;

    const/4 v0, 0x2

    aget-object v1, v2, v0

    const/4 v0, 0x7

    aget-object v0, v2, v0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eq v1, v0, :cond_2

    sget-object v2, Lcom/facebook/ads/redexgen/X/ZM;->A0A:[Ljava/lang/String;

    const-string v1, "oZDmetKHu9grnCPFFZaM4ttbALN8X9Pg"

    const/4 v0, 0x4

    aput-object v1, v2, v0

    const-string v1, "vBKViN6oqvNYKRPMnY7Cbo5hW74eYH8B"

    const/4 v0, 0x1

    aput-object v1, v2, v0

    invoke-virtual {v4, v3}, Landroid/widget/RelativeLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 75448
    :cond_1
    invoke-virtual {p0, v5}, Lcom/facebook/ads/redexgen/X/ZM;->setVisibility(I)V

    .line 75449
    goto :goto_0

    .line 75450
    .end local v1    # "actionEncodedImage":Lcom/facebook/ads/redexgen/X/YM;
    :sswitch_1
    sget-object v6, Lcom/facebook/ads/redexgen/X/YM;->A0n:Lcom/facebook/ads/redexgen/X/YM;

    .line 75451
    .restart local v1    # "actionEncodedImage":Lcom/facebook/ads/redexgen/X/YM;
    invoke-virtual {p0, v5}, Lcom/facebook/ads/redexgen/X/ZM;->setVisibility(I)V

    .line 75452
    goto :goto_0

    .line 75453
    .end local v1    # "actionEncodedImage":Lcom/facebook/ads/redexgen/X/YM;
    :sswitch_2
    sget-object v6, Lcom/facebook/ads/redexgen/X/YM;->A0t:Lcom/facebook/ads/redexgen/X/YM;

    .line 75454
    .restart local v1    # "actionEncodedImage":Lcom/facebook/ads/redexgen/X/YM;
    invoke-virtual {p0, v5}, Lcom/facebook/ads/redexgen/X/ZM;->setVisibility(I)V

    .line 75455
    goto :goto_0

    .line 75456
    :cond_2
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_2
        0x1 -> :sswitch_1
        0x8 -> :sswitch_0
    .end sparse-switch
.end method
