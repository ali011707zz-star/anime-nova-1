.class public abstract Lcom/facebook/ads/redexgen/X/bF;
.super Landroid/widget/LinearLayout;
.source ""


# static fields
.field public static A0A:[B

.field public static final A0B:Landroid/widget/LinearLayout$LayoutParams;


# instance fields
.field public A00:Landroid/widget/LinearLayout;

.field public A01:Landroid/widget/TextView;

.field public A02:Ljava/lang/String;

.field public A03:Z

.field public final A04:I

.field public final A05:Landroid/view/View$OnClickListener;

.field public final A06:Landroid/widget/RelativeLayout;

.field public final A07:Lcom/facebook/ads/redexgen/X/gi;

.field public final A08:Lcom/facebook/ads/redexgen/X/Kr;

.field public final A09:Lcom/facebook/ads/redexgen/X/bk;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 2630
    invoke-static {}, Lcom/facebook/ads/redexgen/X/bF;->A0i()V

    const/4 v1, -0x2

    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v0, v1, v1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    sput-object v0, Lcom/facebook/ads/redexgen/X/bF;->A0B:Landroid/widget/LinearLayout$LayoutParams;

    return-void
.end method

.method public constructor <init>(Lcom/facebook/ads/redexgen/X/gi;Lcom/facebook/ads/redexgen/X/Kr;ILcom/facebook/ads/redexgen/X/Na;ZLjava/lang/String;Lcom/facebook/ads/redexgen/X/VA;Lcom/facebook/ads/redexgen/X/Yh;Lcom/facebook/ads/redexgen/X/fp;Lcom/facebook/ads/redexgen/X/Y2;Lcom/facebook/ads/redexgen/X/Ng;ZLjava/lang/String;)V
    .locals 16

    .line 77598
    move-object/from16 v3, p0

    move-object v4, v3

    move-object/from16 v5, p1

    invoke-direct {v3, v5}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 77599
    const/4 v2, 0x0

    const/4 v1, 0x0

    const/16 v0, 0x25

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/bF;->A0h(III)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v4, Lcom/facebook/ads/redexgen/X/bF;->A02:Ljava/lang/String;

    .line 77600
    invoke-static {v3}, Lcom/facebook/ads/redexgen/X/YB;->A0K(Landroid/view/View;)V

    .line 77601
    iput-object v5, v4, Lcom/facebook/ads/redexgen/X/bF;->A07:Lcom/facebook/ads/redexgen/X/gi;

    .line 77602
    move/from16 v0, p3

    iput v0, v4, Lcom/facebook/ads/redexgen/X/bF;->A04:I

    .line 77603
    move/from16 v2, p12

    iput-boolean v2, v4, Lcom/facebook/ads/redexgen/X/bF;->A03:Z

    .line 77604
    move-object/from16 v0, p13

    iput-object v0, v4, Lcom/facebook/ads/redexgen/X/bF;->A02:Ljava/lang/String;

    .line 77605
    new-instance v0, Lcom/facebook/ads/redexgen/X/bk;

    invoke-direct {v0, v5}, Lcom/facebook/ads/redexgen/X/bk;-><init>(Lcom/facebook/ads/redexgen/X/gi;)V

    iput-object v0, v4, Lcom/facebook/ads/redexgen/X/bF;->A09:Lcom/facebook/ads/redexgen/X/bk;

    .line 77606
    iget-object v1, v4, Lcom/facebook/ads/redexgen/X/bF;->A09:Lcom/facebook/ads/redexgen/X/bk;

    const/4 v0, 0x0

    invoke-static {v1, v0}, Lcom/facebook/ads/redexgen/X/YB;->A0N(Landroid/view/View;I)V

    .line 77607
    iget-object v0, v4, Lcom/facebook/ads/redexgen/X/bF;->A09:Lcom/facebook/ads/redexgen/X/bk;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/YB;->A0K(Landroid/view/View;)V

    .line 77608
    if-eqz v2, :cond_0

    .line 77609
    new-instance v0, Landroid/widget/LinearLayout;

    invoke-direct {v0, v5}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, v4, Lcom/facebook/ads/redexgen/X/bF;->A00:Landroid/widget/LinearLayout;

    .line 77610
    new-instance v0, Landroid/widget/TextView;

    invoke-direct {v0, v5}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v0, v4, Lcom/facebook/ads/redexgen/X/bF;->A01:Landroid/widget/TextView;

    .line 77611
    iget-object v0, v4, Lcom/facebook/ads/redexgen/X/bF;->A01:Landroid/widget/TextView;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/YB;->A0K(Landroid/view/View;)V

    .line 77612
    :cond_0
    move-object/from16 v0, p2

    if-eqz v0, :cond_1

    .line 77613
    iput-object v0, v4, Lcom/facebook/ads/redexgen/X/bF;->A08:Lcom/facebook/ads/redexgen/X/Kr;

    .line 77614
    :goto_0
    const/16 v1, 0x3e9

    iget-object v0, v4, Lcom/facebook/ads/redexgen/X/bF;->A08:Lcom/facebook/ads/redexgen/X/Kr;

    invoke-static {v1, v0}, Lcom/facebook/ads/redexgen/X/YB;->A0G(ILandroid/view/View;)V

    .line 77615
    iget-object v3, v4, Lcom/facebook/ads/redexgen/X/bF;->A08:Lcom/facebook/ads/redexgen/X/Kr;

    .line 77616
    const/4 v2, 0x0

    const/16 v1, 0x9

    const/16 v0, 0x34

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/bF;->A0h(III)Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/facebook/ads/redexgen/X/bu;->A03(Lcom/facebook/ads/redexgen/X/Kr;Ljava/lang/String;)Lcom/facebook/ads/redexgen/X/bt;

    move-result-object v0

    iput-object v0, v4, Lcom/facebook/ads/redexgen/X/bF;->A05:Landroid/view/View$OnClickListener;

    .line 77617
    new-instance v0, Landroid/widget/RelativeLayout;

    invoke-direct {v0, v5}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, v4, Lcom/facebook/ads/redexgen/X/bF;->A06:Landroid/widget/RelativeLayout;

    .line 77618
    iget-object v1, v4, Lcom/facebook/ads/redexgen/X/bF;->A06:Landroid/widget/RelativeLayout;

    sget-object v0, Lcom/facebook/ads/redexgen/X/bF;->A0B:Landroid/widget/LinearLayout$LayoutParams;

    invoke-virtual {v1, v0}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 77619
    iget-object v0, v4, Lcom/facebook/ads/redexgen/X/bF;->A06:Landroid/widget/RelativeLayout;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/YB;->A0K(Landroid/view/View;)V

    .line 77620
    return-void

    .line 77621
    :cond_1
    new-instance v6, Lcom/facebook/ads/redexgen/X/Kr;

    move-object v7, v5

    move-object v0, v6

    move-object/from16 v15, p11

    move-object/from16 v14, p10

    move-object/from16 v13, p9

    move-object/from16 v12, p8

    move-object/from16 v11, p7

    move-object/from16 v8, p6

    move/from16 v10, p5

    move-object/from16 v9, p4

    invoke-direct/range {v6 .. v15}, Lcom/facebook/ads/redexgen/X/Kr;-><init>(Lcom/facebook/ads/redexgen/X/gi;Ljava/lang/String;Lcom/facebook/ads/redexgen/X/Na;ZLcom/facebook/ads/redexgen/X/VA;Lcom/facebook/ads/redexgen/X/Yh;Lcom/facebook/ads/redexgen/X/fp;Lcom/facebook/ads/redexgen/X/Y2;Lcom/facebook/ads/redexgen/X/Ng;)V

    iput-object v0, v4, Lcom/facebook/ads/redexgen/X/bF;->A08:Lcom/facebook/ads/redexgen/X/Kr;

    goto :goto_0
.end method

.method public static A0h(III)Ljava/lang/String;
    .locals 2

    sget-object v1, Lcom/facebook/ads/redexgen/X/bF;->A0A:[B

    add-int v0, p0, p1

    invoke-static {v1, p0, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p0

    const/4 v1, 0x0

    :goto_0
    array-length v0, p0

    if-ge v1, v0, :cond_0

    aget-byte v0, p0, v1

    sub-int/2addr v0, p2

    add-int/lit8 v0, v0, -0xb

    int-to-byte v0, v0

    aput-byte v0, p0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p0}, Ljava/lang/String;-><init>([B)V

    return-object v0
.end method

.method public static A0i()V
    .locals 1

    const/16 v0, 0x9

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/facebook/ads/redexgen/X/bF;->A0A:[B

    return-void

    :array_0
    .array-data 1
        -0x60t
        -0x5dt
        -0x5dt
        -0x5ct
        -0x4dt
        -0x60t
        -0x58t
        -0x55t
        -0x4et
    .end array-data
.end method


# virtual methods
.method public A0j()V
    .locals 0

    .line 77622
    return-void
.end method

.method public A0k()V
    .locals 2

    .line 77623
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/bF;->A09:Lcom/facebook/ads/redexgen/X/bk;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/bF;->A05:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/bk;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 77624
    return-void
.end method

.method public abstract A0l(I)V
.end method

.method public A0m(Z)V
    .locals 0

    .line 77625
    return-void
.end method

.method public final getCTAButton()Lcom/facebook/ads/redexgen/X/Kr;
    .locals 1

    .line 77626
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/bF;->A08:Lcom/facebook/ads/redexgen/X/Kr;

    return-object v0
.end method

.method public getExpandableLayout()Landroid/view/View;
    .locals 1

    .line 77627
    const/4 v0, 0x0

    return-object v0
.end method

.method public final getIconView()Landroid/widget/ImageView;
    .locals 1

    .line 77628
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/bF;->A09:Lcom/facebook/ads/redexgen/X/bk;

    return-object v0
.end method

.method public setInfo(Lcom/facebook/ads/redexgen/X/NY;Lcom/facebook/ads/redexgen/X/Nc;Ljava/lang/String;Ljava/lang/String;Lcom/facebook/ads/redexgen/X/Xh;Lcom/facebook/ads/redexgen/X/bU;)V
    .locals 6

    .line 77629
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/bF;->A08:Lcom/facebook/ads/redexgen/X/Kr;

    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    move-object v5, p6

    move-object v4, p5

    move-object v2, p3

    move-object v1, p2

    invoke-virtual/range {v0 .. v5}, Lcom/facebook/ads/redexgen/X/Kr;->setCta(Lcom/facebook/ads/redexgen/X/Nc;Ljava/lang/String;Ljava/util/Map;Lcom/facebook/ads/redexgen/X/Xh;Lcom/facebook/ads/redexgen/X/bU;)V

    .line 77630
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/bF;->A09:Lcom/facebook/ads/redexgen/X/bk;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/bF;->A07:Lcom/facebook/ads/redexgen/X/gi;

    new-instance v2, Lcom/facebook/ads/redexgen/X/LM;

    invoke-direct {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/LM;-><init>(Landroid/widget/ImageView;Lcom/facebook/ads/redexgen/X/gi;)V

    iget v1, p0, Lcom/facebook/ads/redexgen/X/bF;->A04:I

    iget v0, p0, Lcom/facebook/ads/redexgen/X/bF;->A04:I

    .line 77631
    invoke-virtual {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/LM;->A05(II)Lcom/facebook/ads/redexgen/X/LM;

    move-result-object v0

    .line 77632
    invoke-virtual {v0, p4}, Lcom/facebook/ads/redexgen/X/LM;->A07(Ljava/lang/String;)V

    .line 77633
    return-void
.end method

.method public setTitleMaxLines(I)V
    .locals 0

    .line 77634
    return-void
.end method
