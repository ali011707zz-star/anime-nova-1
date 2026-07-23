.class public final Lcom/facebook/ads/redexgen/X/Ow;
.super Lcom/facebook/ads/redexgen/X/bF;
.source ""


# static fields
.field public static final A02:I

.field public static final A03:I

.field public static final A04:I

.field public static final A05:I


# instance fields
.field public final A00:Landroid/widget/TextView;

.field public final A01:Landroid/widget/TextView;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    .line 1511
    const/high16 v1, 0x42100000    # 36.0f

    sget v0, Lcom/facebook/ads/redexgen/X/XX;->A02:F

    mul-float/2addr v0, v1

    float-to-int v0, v0

    sput v0, Lcom/facebook/ads/redexgen/X/Ow;->A02:I

    .line 1512
    sget v0, Lcom/facebook/ads/redexgen/X/XX;->A02:F

    const/high16 v2, 0x40800000    # 4.0f

    mul-float/2addr v0, v2

    float-to-int v0, v0

    sput v0, Lcom/facebook/ads/redexgen/X/Ow;->A05:I

    .line 1513
    const/high16 v1, 0x41000000    # 8.0f

    sget v0, Lcom/facebook/ads/redexgen/X/XX;->A02:F

    mul-float/2addr v0, v1

    float-to-int v0, v0

    sput v0, Lcom/facebook/ads/redexgen/X/Ow;->A03:I

    .line 1514
    sget v0, Lcom/facebook/ads/redexgen/X/XX;->A02:F

    mul-float/2addr v0, v2

    float-to-int v0, v0

    sput v0, Lcom/facebook/ads/redexgen/X/Ow;->A04:I

    return-void
.end method

.method public constructor <init>(Lcom/facebook/ads/redexgen/X/gi;ILcom/facebook/ads/redexgen/X/Na;ZLjava/lang/String;Lcom/facebook/ads/redexgen/X/VA;Lcom/facebook/ads/redexgen/X/Yh;Lcom/facebook/ads/redexgen/X/fp;Lcom/facebook/ads/redexgen/X/Y2;Lcom/facebook/ads/redexgen/X/Ng;)V
    .locals 18

    .line 56405
    move-object/from16 v3, p0

    move-object v3, v3

    const/16 v16, 0x0

    const-string v17, ""

    const/4 v6, 0x0

    move-object v4, v3

    move-object/from16 v15, p10

    move-object/from16 v14, p9

    move-object/from16 v13, p8

    move-object/from16 v12, p7

    move-object/from16 v11, p6

    move-object/from16 v10, p5

    move/from16 v9, p4

    move-object/from16 v8, p3

    move/from16 v7, p2

    move-object/from16 v5, p1

    invoke-direct/range {v4 .. v17}, Lcom/facebook/ads/redexgen/X/bF;-><init>(Lcom/facebook/ads/redexgen/X/gi;Lcom/facebook/ads/redexgen/X/Kr;ILcom/facebook/ads/redexgen/X/Na;ZLjava/lang/String;Lcom/facebook/ads/redexgen/X/VA;Lcom/facebook/ads/redexgen/X/Yh;Lcom/facebook/ads/redexgen/X/fp;Lcom/facebook/ads/redexgen/X/Y2;Lcom/facebook/ads/redexgen/X/Ng;ZLjava/lang/String;)V

    .line 56406
    const/4 v6, 0x0

    invoke-virtual {v3, v6}, Lcom/facebook/ads/redexgen/X/Ow;->setOrientation(I)V

    .line 56407
    sget v4, Lcom/facebook/ads/redexgen/X/Ow;->A05:I

    sget v2, Lcom/facebook/ads/redexgen/X/Ow;->A05:I

    sget v1, Lcom/facebook/ads/redexgen/X/Ow;->A05:I

    sget v0, Lcom/facebook/ads/redexgen/X/Ow;->A05:I

    invoke-virtual {v3, v4, v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Ow;->setPadding(IIII)V

    .line 56408
    const/16 v2, 0xd

    const/4 v1, 0x1

    const v0, -0xfafafb

    invoke-direct {v3, v0, v2, v1}, Lcom/facebook/ads/redexgen/X/Ow;->A01(IIZ)Landroid/widget/TextView;

    move-result-object v0

    iput-object v0, v3, Lcom/facebook/ads/redexgen/X/Ow;->A01:Landroid/widget/TextView;

    .line 56409
    const v1, -0x9a9895

    const/16 v0, 0xc

    invoke-direct {v3, v1, v0, v6}, Lcom/facebook/ads/redexgen/X/Ow;->A01(IIZ)Landroid/widget/TextView;

    move-result-object v0

    iput-object v0, v3, Lcom/facebook/ads/redexgen/X/Ow;->A00:Landroid/widget/TextView;

    .line 56410
    invoke-direct {v3, v7}, Lcom/facebook/ads/redexgen/X/Ow;->A00(I)Landroid/widget/LinearLayout;

    move-result-object v5

    .line 56411
    .local v2, "iconAndMetaDataContainer":Landroid/widget/LinearLayout;
    iget-object v2, v3, Lcom/facebook/ads/redexgen/X/bF;->A06:Landroid/widget/RelativeLayout;

    const/4 v1, -0x1

    const/4 v4, -0x2

    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v0, v1, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v2, v5, v0}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 56412
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v1, v6, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 56413
    .local v3, "auxContainerParams":Landroid/widget/LinearLayout$LayoutParams;
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, v1, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 56414
    iget-object v0, v3, Lcom/facebook/ads/redexgen/X/bF;->A06:Landroid/widget/RelativeLayout;

    invoke-virtual {v3, v0, v1}, Lcom/facebook/ads/redexgen/X/Ow;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 56415
    iget-object v2, v3, Lcom/facebook/ads/redexgen/X/bF;->A08:Lcom/facebook/ads/redexgen/X/Kr;

    sget v1, Lcom/facebook/ads/redexgen/X/Ow;->A03:I

    sget v0, Lcom/facebook/ads/redexgen/X/Ow;->A03:I

    invoke-virtual {v2, v1, v6, v0, v6}, Lcom/facebook/ads/redexgen/X/Kr;->setPadding(IIII)V

    .line 56416
    sget v0, Lcom/facebook/ads/redexgen/X/Ow;->A02:I

    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v1, v4, v0}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 56417
    .local v0, "ctaButtonParams":Landroid/widget/LinearLayout$LayoutParams;
    const/16 v0, 0x11

    iput v0, v1, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 56418
    iget-object v0, v3, Lcom/facebook/ads/redexgen/X/bF;->A08:Lcom/facebook/ads/redexgen/X/Kr;

    invoke-virtual {v3, v0, v1}, Lcom/facebook/ads/redexgen/X/Ow;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 56419
    return-void
.end method

.method private A00(I)Landroid/widget/LinearLayout;
    .locals 5

    .line 56420
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/bF;->A07:Lcom/facebook/ads/redexgen/X/gi;

    new-instance v4, Landroid/widget/LinearLayout;

    invoke-direct {v4, v0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 56421
    .local v0, "metaDataContainer":Landroid/widget/LinearLayout;
    const/4 v0, 0x1

    invoke-virtual {v4, v0}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 56422
    sget v1, Lcom/facebook/ads/redexgen/X/Ow;->A04:I

    sget v0, Lcom/facebook/ads/redexgen/X/Ow;->A04:I

    const/4 v2, 0x0

    invoke-virtual {v4, v1, v2, v0, v2}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 56423
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Ow;->A01:Landroid/widget/TextView;

    sget-object v0, Lcom/facebook/ads/redexgen/X/bF;->A0B:Landroid/widget/LinearLayout$LayoutParams;

    invoke-virtual {v4, v1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 56424
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Ow;->A00:Landroid/widget/TextView;

    sget-object v0, Lcom/facebook/ads/redexgen/X/bF;->A0B:Landroid/widget/LinearLayout$LayoutParams;

    invoke-virtual {v4, v1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 56425
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/bF;->A07:Lcom/facebook/ads/redexgen/X/gi;

    new-instance v3, Landroid/widget/LinearLayout;

    invoke-direct {v3, v0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 56426
    .local v1, "iconAndMetaDataContainer":Landroid/widget/LinearLayout;
    invoke-virtual {v3, v2}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 56427
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/bF;->A09:Lcom/facebook/ads/redexgen/X/bk;

    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v0, p1, p1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v3, v1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 56428
    const/4 v2, -0x1

    const/4 v0, -0x2

    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v1, v2, v0}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 56429
    .local v2, "iconAndMetaDataParams":Landroid/widget/LinearLayout$LayoutParams;
    const/16 v0, 0x10

    iput v0, v1, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 56430
    invoke-virtual {v3, v4, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 56431
    return-object v3
.end method

.method private A01(IIZ)Landroid/widget/TextView;
    .locals 2

    .line 56432
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/bF;->A07:Lcom/facebook/ads/redexgen/X/gi;

    new-instance v1, Landroid/widget/TextView;

    invoke-direct {v1, v0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 56433
    .local v0, "textView":Landroid/widget/TextView;
    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 56434
    const/4 v0, 0x1

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setSingleLine(Z)V

    .line 56435
    sget-object v0, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 56436
    invoke-static {v1, p3, p2}, Lcom/facebook/ads/redexgen/X/YB;->A0a(Landroid/widget/TextView;ZI)V

    .line 56437
    return-object v1
.end method


# virtual methods
.method public final A0k()V
    .locals 1

    .line 56438
    invoke-super {p0}, Lcom/facebook/ads/redexgen/X/bF;->A0k()V

    .line 56439
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/bF;->A05:Landroid/view/View$OnClickListener;

    invoke-virtual {p0, v0}, Lcom/facebook/ads/redexgen/X/Ow;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 56440
    return-void
.end method

.method public final A0l(I)V
    .locals 0

    .line 56441
    return-void
.end method

.method public setInfo(Lcom/facebook/ads/redexgen/X/NY;Lcom/facebook/ads/redexgen/X/Nc;Ljava/lang/String;Ljava/lang/String;Lcom/facebook/ads/redexgen/X/Xh;Lcom/facebook/ads/redexgen/X/bU;)V
    .locals 2

    .line 56442
    invoke-super/range {p0 .. p6}, Lcom/facebook/ads/redexgen/X/bF;->setInfo(Lcom/facebook/ads/redexgen/X/NY;Lcom/facebook/ads/redexgen/X/Nc;Ljava/lang/String;Ljava/lang/String;Lcom/facebook/ads/redexgen/X/Xh;Lcom/facebook/ads/redexgen/X/bU;)V

    .line 56443
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Ow;->A01:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/NY;->A0G()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 56444
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Ow;->A00:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/NY;->A0F()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 56445
    invoke-virtual {p2}, Lcom/facebook/ads/redexgen/X/Nc;->A04()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 56446
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/bF;->A08:Lcom/facebook/ads/redexgen/X/Kr;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/YB;->A0H(Landroid/view/View;)V

    .line 56447
    :cond_0
    return-void
.end method
