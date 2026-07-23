.class public final Lcom/facebook/ads/redexgen/X/6T;
.super Lcom/facebook/ads/redexgen/X/LK;
.source ""


# static fields
.field public static A00:[Ljava/lang/String;

.field public static final A01:I

.field public static final A02:I


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    .line 435
    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "xFpGP6HPJdxG02oIdF9HxIihRC1N68eF"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "SON7b0vH7pU6goQPwxtgPgRIrt0b"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "K8DFrhhg1SsjCm4z8vXCiiOaNBIf4pDg"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "gTEb8e"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "wHRSkCegs17WrS1ZFDoTECKCsF5cwC3Q"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "MW7m9Sx4Y"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "aUUm4uG1aRzEZg1qhLXNvnDll0TBP1yk"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "rrQmUhcDQBY8PjMlrfgiyZrhPVfY"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/6T;->A00:[Ljava/lang/String;

    const/high16 v1, 0x43180000    # 152.0f

    sget v0, Lcom/facebook/ads/redexgen/X/XX;->A02:F

    mul-float/2addr v0, v1

    float-to-int v0, v0

    sput v0, Lcom/facebook/ads/redexgen/X/6T;->A02:I

    .line 436
    const/high16 v1, 0x42700000    # 60.0f

    sget v0, Lcom/facebook/ads/redexgen/X/XX;->A02:F

    mul-float/2addr v0, v1

    float-to-int v0, v0

    sput v0, Lcom/facebook/ads/redexgen/X/6T;->A01:I

    return-void
.end method

.method public constructor <init>(Lcom/facebook/ads/redexgen/X/gi;Lcom/facebook/ads/redexgen/X/Kr;IZLcom/facebook/ads/redexgen/X/Na;Ljava/lang/String;Lcom/facebook/ads/redexgen/X/VA;Lcom/facebook/ads/redexgen/X/Yh;Lcom/facebook/ads/redexgen/X/fp;Lcom/facebook/ads/redexgen/X/Y2;Lcom/facebook/ads/redexgen/X/jd;Lcom/facebook/ads/redexgen/X/DZ;Lcom/facebook/ads/redexgen/X/VI;Z)V
    .locals 16

    .line 16860
    const/4 v6, 0x0

    move-object/from16 v0, p0

    move/from16 v15, p14

    move-object/from16 v14, p13

    move-object/from16 v13, p12

    move-object/from16 v12, p11

    move-object/from16 v11, p10

    move-object/from16 v10, p9

    move-object/from16 v9, p8

    move-object/from16 v8, p7

    move-object/from16 v7, p6

    move-object/from16 v5, p5

    move/from16 v4, p4

    move/from16 v3, p3

    move-object/from16 v2, p2

    move-object/from16 v1, p1

    invoke-direct/range {v0 .. v15}, Lcom/facebook/ads/redexgen/X/LK;-><init>(Lcom/facebook/ads/redexgen/X/gi;Lcom/facebook/ads/redexgen/X/Kr;IZLcom/facebook/ads/redexgen/X/Na;ZLjava/lang/String;Lcom/facebook/ads/redexgen/X/VA;Lcom/facebook/ads/redexgen/X/Yh;Lcom/facebook/ads/redexgen/X/fp;Lcom/facebook/ads/redexgen/X/Y2;Lcom/facebook/ads/redexgen/X/jd;Lcom/facebook/ads/redexgen/X/DZ;Lcom/facebook/ads/redexgen/X/VI;Z)V

    .line 16861
    invoke-virtual/range {p0 .. p0}, Lcom/facebook/ads/redexgen/X/6T;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v1, v0, Landroid/content/res/Configuration;->orientation:I

    .line 16862
    .local v0, "orientation":I
    move-object/from16 v2, p0

    invoke-direct {v2, v1}, Lcom/facebook/ads/redexgen/X/6T;->A03(I)V

    .line 16863
    invoke-direct {v2, v1}, Lcom/facebook/ads/redexgen/X/6T;->A04(I)V

    .line 16864
    invoke-direct {v2, v1}, Lcom/facebook/ads/redexgen/X/6T;->A0A(I)V

    .line 16865
    invoke-direct/range {p0 .. p0}, Lcom/facebook/ads/redexgen/X/6T;->A01()V

    .line 16866
    invoke-direct {v2, v1}, Lcom/facebook/ads/redexgen/X/6T;->A07(I)V

    .line 16867
    invoke-direct {v2, v1}, Lcom/facebook/ads/redexgen/X/6T;->A06(I)V

    .line 16868
    invoke-direct {v2, v1}, Lcom/facebook/ads/redexgen/X/6T;->A0D(I)V

    .line 16869
    invoke-direct {v2, v1}, Lcom/facebook/ads/redexgen/X/6T;->A08(I)V

    .line 16870
    iget-object v0, v2, Lcom/facebook/ads/redexgen/X/LK;->A06:Lcom/facebook/ads/redexgen/X/aN;

    invoke-direct {v2, v0, v1}, Lcom/facebook/ads/redexgen/X/6T;->A0E(Landroid/view/View;I)V

    .line 16871
    iget-object v0, v2, Lcom/facebook/ads/redexgen/X/LK;->A05:Lcom/facebook/ads/redexgen/X/aJ;

    invoke-direct {v2, v0, v1}, Lcom/facebook/ads/redexgen/X/6T;->A0E(Landroid/view/View;I)V

    .line 16872
    invoke-direct {v2, v1}, Lcom/facebook/ads/redexgen/X/6T;->A0C(I)V

    .line 16873
    iget-object v0, v2, Lcom/facebook/ads/redexgen/X/LK;->A0P:Landroid/widget/TextView;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/YB;->A0K(Landroid/view/View;)V

    .line 16874
    const/4 v0, 0x1

    if-ne v1, v0, :cond_0

    .line 16875
    invoke-direct {v2, v1}, Lcom/facebook/ads/redexgen/X/6T;->A09(I)V

    .line 16876
    :cond_0
    invoke-direct {v2, v1}, Lcom/facebook/ads/redexgen/X/6T;->A0B(I)V

    .line 16877
    invoke-direct {v2, v1}, Lcom/facebook/ads/redexgen/X/6T;->A02(I)V

    .line 16878
    invoke-direct {v2, v1}, Lcom/facebook/ads/redexgen/X/6T;->A05(I)V

    .line 16879
    iget-object v1, v2, Lcom/facebook/ads/redexgen/X/LK;->A0O:Landroid/widget/RelativeLayout;

    iget-object v0, v2, Lcom/facebook/ads/redexgen/X/LK;->A0M:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, v0}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 16880
    iget-object v0, v2, Lcom/facebook/ads/redexgen/X/LK;->A0O:Landroid/widget/RelativeLayout;

    invoke-virtual {v2, v0}, Lcom/facebook/ads/redexgen/X/6T;->addView(Landroid/view/View;)V

    .line 16881
    return-void
.end method

.method private A00()V
    .locals 3

    .line 16882
    const/16 v0, 0xd

    new-array v2, v0, [Landroid/view/View;

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/bF;->A09:Lcom/facebook/ads/redexgen/X/bk;

    aput-object v0, v2, v1

    const/4 v1, 0x1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/LK;->A0Q:Landroid/widget/TextView;

    aput-object v0, v2, v1

    const/4 v1, 0x2

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/bF;->A08:Lcom/facebook/ads/redexgen/X/Kr;

    aput-object v0, v2, v1

    const/4 v1, 0x3

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/LK;->A0W:Lcom/facebook/ads/redexgen/X/DZ;

    aput-object v0, v2, v1

    const/4 v1, 0x4

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/LK;->A04:Landroid/widget/TextView;

    aput-object v0, v2, v1

    const/4 v1, 0x5

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/LK;->A0P:Landroid/widget/TextView;

    aput-object v0, v2, v1

    const/4 v1, 0x6

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/LK;->A0J:Landroid/widget/ImageView;

    aput-object v0, v2, v1

    const/4 v1, 0x7

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/LK;->A0K:Landroid/widget/LinearLayout;

    aput-object v0, v2, v1

    const/16 v1, 0x8

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/LK;->A0V:Lcom/facebook/ads/redexgen/X/aJ;

    aput-object v0, v2, v1

    const/16 v1, 0x9

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/LK;->A06:Lcom/facebook/ads/redexgen/X/aN;

    aput-object v0, v2, v1

    const/16 v1, 0xa

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/LK;->A05:Lcom/facebook/ads/redexgen/X/aJ;

    aput-object v0, v2, v1

    const/16 v1, 0xb

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/LK;->A0L:Landroid/widget/LinearLayout;

    aput-object v0, v2, v1

    const/16 v1, 0xc

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/LK;->A0N:Landroid/widget/RelativeLayout;

    aput-object v0, v2, v1

    invoke-static {v2}, Lcom/facebook/ads/redexgen/X/YB;->A0d([Landroid/view/View;)V

    .line 16883
    return-void
.end method

.method private A01()V
    .locals 2

    .line 16884
    const/4 v0, -0x2

    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v1, v0, v0}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 16885
    .local v0, "ctaContainerLayoutParams":Landroid/widget/RelativeLayout$LayoutParams;
    const/16 v0, 0xf

    invoke-virtual {v1, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 16886
    const/16 v0, 0xb

    invoke-virtual {v1, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 16887
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/LK;->A0L:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 16888
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/LK;->A0L:Landroid/widget/LinearLayout;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 16889
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/LK;->A0L:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 16890
    return-void
.end method

.method private A02(I)V
    .locals 2

    .line 16891
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/6T;->A00()V

    .line 16892
    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    .line 16893
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/LK;->A04:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/LK;->A04:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 16894
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/LK;->A0O:Landroid/widget/RelativeLayout;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/LK;->A04:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 16895
    :cond_0
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/LK;->A0O:Landroid/widget/RelativeLayout;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/LK;->A0W:Lcom/facebook/ads/redexgen/X/DZ;

    invoke-virtual {v1, v0}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 16896
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/LK;->A0O:Landroid/widget/RelativeLayout;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/LK;->A0V:Lcom/facebook/ads/redexgen/X/aJ;

    invoke-virtual {v1, v0}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 16897
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/LK;->A0O:Landroid/widget/RelativeLayout;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/bF;->A08:Lcom/facebook/ads/redexgen/X/Kr;

    invoke-virtual {v1, v0}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 16898
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/LK;->A0O:Landroid/widget/RelativeLayout;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/LK;->A0J:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 16899
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/LK;->A0O:Landroid/widget/RelativeLayout;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/LK;->A06:Lcom/facebook/ads/redexgen/X/aN;

    invoke-virtual {p0, v1, v0}, Lcom/facebook/ads/redexgen/X/LK;->A0x(Landroid/view/ViewGroup;Landroid/view/View;)V

    .line 16900
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/LK;->A0O:Landroid/widget/RelativeLayout;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/LK;->A05:Lcom/facebook/ads/redexgen/X/aJ;

    invoke-virtual {p0, v1, v0}, Lcom/facebook/ads/redexgen/X/LK;->A0x(Landroid/view/ViewGroup;Landroid/view/View;)V

    .line 16901
    :goto_0
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/LK;->A0O:Landroid/widget/RelativeLayout;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/LK;->A0K:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 16902
    return-void

    .line 16903
    :cond_1
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/LK;->A0L:Landroid/widget/LinearLayout;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/LK;->A0J:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 16904
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/LK;->A0L:Landroid/widget/LinearLayout;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/bF;->A08:Lcom/facebook/ads/redexgen/X/Kr;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 16905
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/LK;->A0N:Landroid/widget/RelativeLayout;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/LK;->A0L:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 16906
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/LK;->A0N:Landroid/widget/RelativeLayout;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/bF;->A09:Lcom/facebook/ads/redexgen/X/bk;

    invoke-virtual {v1, v0}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 16907
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/LK;->A0N:Landroid/widget/RelativeLayout;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/LK;->A0Q:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 16908
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/LK;->A0M:Landroid/widget/RelativeLayout;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/LK;->A0V:Lcom/facebook/ads/redexgen/X/aJ;

    invoke-virtual {v1, v0}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 16909
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/LK;->A0M:Landroid/widget/RelativeLayout;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/LK;->A0N:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, v0}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 16910
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/LK;->A0M:Landroid/widget/RelativeLayout;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/LK;->A0W:Lcom/facebook/ads/redexgen/X/DZ;

    invoke-virtual {v1, v0}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 16911
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/LK;->A04:Landroid/widget/TextView;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/LK;->A04:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_2

    .line 16912
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/LK;->A0M:Landroid/widget/RelativeLayout;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/LK;->A04:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 16913
    :cond_2
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/LK;->A0M:Landroid/widget/RelativeLayout;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/LK;->A05:Lcom/facebook/ads/redexgen/X/aJ;

    invoke-virtual {p0, v1, v0}, Lcom/facebook/ads/redexgen/X/LK;->A0x(Landroid/view/ViewGroup;Landroid/view/View;)V

    .line 16914
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/LK;->A0M:Landroid/widget/RelativeLayout;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/LK;->A06:Lcom/facebook/ads/redexgen/X/aN;

    invoke-virtual {p0, v1, v0}, Lcom/facebook/ads/redexgen/X/LK;->A0x(Landroid/view/ViewGroup;Landroid/view/View;)V

    goto :goto_0
.end method

.method private A03(I)V
    .locals 5

    .line 16915
    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    .line 16916
    iget-object v4, p0, Lcom/facebook/ads/redexgen/X/LK;->A0M:Landroid/widget/RelativeLayout;

    const/16 v3, 0x190

    const/16 v2, 0x64

    const/4 v1, 0x0

    new-instance v0, Lcom/facebook/ads/redexgen/X/DA;

    invoke-direct {v0, v4, v3, v2, v1}, Lcom/facebook/ads/redexgen/X/DA;-><init>(Landroid/view/View;III)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/LK;->A07:Lcom/facebook/ads/redexgen/X/DA;

    .line 16917
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/LK;->A0Y:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 16918
    :cond_0
    return-void
.end method

.method private A04(I)V
    .locals 8

    .line 16919
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/LK;->A0M:Landroid/widget/RelativeLayout;

    .line 16920
    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    check-cast v6, Landroid/widget/RelativeLayout$LayoutParams;

    .line 16921
    .local v0, "layoutParams":Landroid/widget/RelativeLayout$LayoutParams;
    sget v0, Lcom/facebook/ads/redexgen/X/XV;->A0b:I

    const/4 v5, 0x0

    invoke-virtual {v6, v5, v5, v5, v0}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 16922
    const/4 v0, 0x1

    const/16 v7, 0x8

    if-ne p1, v0, :cond_0

    .line 16923
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/LK;->A0M:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v7}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 16924
    .end local v1
    .end local v3
    :goto_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/LK;->A0M:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v6}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 16925
    return-void

    .line 16926
    :cond_0
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/6T;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 16927
    .local v1, "displayMetrics":Landroid/util/DisplayMetrics;
    iget v3, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    sget-object v1, Lcom/facebook/ads/redexgen/X/6T;->A00:[Ljava/lang/String;

    const/4 v0, 0x5

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v0, 0x9

    if-eq v1, v0, :cond_1

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_1
    sget-object v2, Lcom/facebook/ads/redexgen/X/6T;->A00:[Ljava/lang/String;

    const-string v1, "fxD9Evjxj1QSbkd6sjXNqMWP1zvaSe0y"

    const/4 v0, 0x6

    aput-object v1, v2, v0

    const-string v1, "LbyTcx7MzeGvJAIRAeX8dxGClI61VeIC"

    const/4 v0, 0x2

    aput-object v1, v2, v0

    int-to-float v1, v3

    const v0, 0x3ecccccd    # 0.4f

    mul-float/2addr v1, v0

    float-to-int v0, v1

    iput v0, v6, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    .line 16928
    const/4 v0, -0x2

    iput v0, v6, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    .line 16929
    const/16 v0, 0xc

    invoke-virtual {v6, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 16930
    const/16 v0, 0xb

    invoke-virtual {v6, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 16931
    iget-object v4, p0, Lcom/facebook/ads/redexgen/X/LK;->A0M:Landroid/widget/RelativeLayout;

    sget v3, Lcom/facebook/ads/redexgen/X/XV;->A0b:I

    sget v2, Lcom/facebook/ads/redexgen/X/XV;->A0b:I

    sget v1, Lcom/facebook/ads/redexgen/X/XV;->A0b:I

    sget v0, Lcom/facebook/ads/redexgen/X/XV;->A0b:I

    invoke-virtual {v4, v3, v2, v1, v0}, Landroid/widget/RelativeLayout;->setPadding(IIII)V

    .line 16932
    new-array v2, v7, [F

    fill-array-data v2, :array_0

    .line 16933
    .local v3, "outerRadius":[F
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/LK;->A0M:Landroid/widget/RelativeLayout;

    const/high16 v0, -0x67000000

    invoke-virtual {p0, v1, v0, v2}, Lcom/facebook/ads/redexgen/X/LK;->A0w(Landroid/view/View;I[F)V

    .line 16934
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/LK;->A0M:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v5}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    goto :goto_0

    nop

    :array_0
    .array-data 4
        0x42000000    # 32.0f
        0x42000000    # 32.0f
        0x0
        0x0
        0x0
        0x0
        0x42000000    # 32.0f
        0x42000000    # 32.0f
    .end array-data
.end method

.method private A05(I)V
    .locals 5

    .line 16935
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/LK;->A0K:Landroid/widget/LinearLayout;

    .line 16936
    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/widget/RelativeLayout$LayoutParams;

    .line 16937
    .local v0, "adReportingLayoutParams":Landroid/widget/RelativeLayout$LayoutParams;
    const/4 v2, 0x1

    const/16 v1, 0x14

    const/16 v0, 0x15

    const/4 v4, 0x0

    if-ne p1, v2, :cond_0

    .line 16938
    invoke-virtual {v3, v1}, Landroid/widget/RelativeLayout$LayoutParams;->removeRule(I)V

    .line 16939
    invoke-virtual {v3, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 16940
    sget v0, Lcom/facebook/ads/redexgen/X/XV;->A0k:I

    invoke-virtual {v3, v4, v4, v0, v4}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 16941
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/LK;->A0K:Landroid/widget/LinearLayout;

    sget v1, Lcom/facebook/ads/redexgen/X/XV;->A0v:I

    sget v0, Lcom/facebook/ads/redexgen/X/XV;->A0v:I

    invoke-virtual {v2, v1, v0, v4, v4}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 16942
    :goto_0
    const/16 v0, 0xc

    invoke-virtual {v3, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 16943
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/LK;->A0K:Landroid/widget/LinearLayout;

    sget v1, Lcom/facebook/ads/redexgen/X/XV;->A0v:I

    sget v0, Lcom/facebook/ads/redexgen/X/XV;->A0v:I

    invoke-virtual {v2, v4, v1, v0, v4}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 16944
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/LK;->A0K:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 16945
    return-void

    .line 16946
    :cond_0
    invoke-virtual {v3, v0}, Landroid/widget/RelativeLayout$LayoutParams;->removeRule(I)V

    .line 16947
    invoke-virtual {v3, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    sget-object v1, Lcom/facebook/ads/redexgen/X/6T;->A00:[Ljava/lang/String;

    const/4 v0, 0x3

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v0, 0x19

    if-eq v1, v0, :cond_1

    .line 16948
    sget-object v2, Lcom/facebook/ads/redexgen/X/6T;->A00:[Ljava/lang/String;

    const-string v1, "loHD1sEgjyAFCmeIlD5ALXOeqArjH8d"

    const/4 v0, 0x3

    aput-object v1, v2, v0

    sget v0, Lcom/facebook/ads/redexgen/X/XV;->A0k:I

    invoke-virtual {v3, v0, v4, v4, v4}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    goto :goto_0

    :cond_1
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
.end method

.method private A06(I)V
    .locals 8

    .line 16949
    sget v0, Lcom/facebook/ads/redexgen/X/LK;->A0g:I

    const/4 v7, -0x1

    new-instance v5, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v5, v7, v0}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 16950
    .local v0, "layoutParams":Landroid/widget/RelativeLayout$LayoutParams;
    const/4 v0, 0x1

    const/16 v1, 0xf

    const/16 v4, 0xe

    const/4 v6, 0x2

    const/4 v3, 0x0

    if-ne p1, v0, :cond_0

    .line 16951
    invoke-virtual {v5, v1}, Landroid/widget/RelativeLayout$LayoutParams;->removeRule(I)V

    .line 16952
    const/16 v0, 0x1e

    iput v0, p0, Lcom/facebook/ads/redexgen/X/LK;->A02:I

    .line 16953
    invoke-virtual {v5, v4}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 16954
    sget v2, Lcom/facebook/ads/redexgen/X/XV;->A0k:I

    sget v1, Lcom/facebook/ads/redexgen/X/XV;->A0k:I

    sget v0, Lcom/facebook/ads/redexgen/X/XV;->A0b:I

    invoke-virtual {v5, v2, v3, v1, v0}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 16955
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/LK;->A0W:Lcom/facebook/ads/redexgen/X/DZ;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/DZ;->getId()I

    move-result v0

    invoke-virtual {v5, v6, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 16956
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/bF;->A08:Lcom/facebook/ads/redexgen/X/Kr;

    invoke-virtual {v0, v7}, Lcom/facebook/ads/redexgen/X/Kr;->setMinWidth(I)V

    .line 16957
    .end local v1
    .end local v2
    :goto_0
    invoke-virtual {v5, v4}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 16958
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/bF;->A08:Lcom/facebook/ads/redexgen/X/Kr;

    invoke-virtual {v0, v5}, Lcom/facebook/ads/redexgen/X/Kr;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 16959
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/bF;->A08:Lcom/facebook/ads/redexgen/X/Kr;

    sget v1, Lcom/facebook/ads/redexgen/X/XV;->A0o:I

    sget v0, Lcom/facebook/ads/redexgen/X/XV;->A0o:I

    invoke-virtual {v2, v1, v3, v0, v3}, Lcom/facebook/ads/redexgen/X/Kr;->setPadding(IIII)V

    .line 16960
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/LK;->A0p()V

    .line 16961
    return-void

    .line 16962
    :cond_0
    invoke-virtual {v5, v6}, Landroid/widget/RelativeLayout$LayoutParams;->removeRule(I)V

    .line 16963
    const/16 v0, 0x10

    iput v0, p0, Lcom/facebook/ads/redexgen/X/LK;->A02:I

    .line 16964
    const/4 v0, -0x2

    iput v0, v5, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    .line 16965
    sget v0, Lcom/facebook/ads/redexgen/X/LK;->A0n:I

    iput v0, v5, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    .line 16966
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/LK;->A0J:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_1

    .line 16967
    invoke-virtual {v5, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 16968
    :cond_1
    invoke-virtual {v5, v3, v3, v3, v3}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 16969
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/6T;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 16970
    .local v1, "displayMetrics":Landroid/util/DisplayMetrics;
    iget v0, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 16971
    .local v2, "screenWidth":I
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/bF;->A08:Lcom/facebook/ads/redexgen/X/Kr;

    int-to-float v1, v0

    const v0, 0x3df5c28f    # 0.12f

    mul-float/2addr v1, v0

    float-to-int v0, v1

    invoke-virtual {v2, v0}, Lcom/facebook/ads/redexgen/X/Kr;->setMinWidth(I)V

    goto :goto_0
.end method

.method private A07(I)V
    .locals 5

    .line 16972
    sget v1, Lcom/facebook/ads/redexgen/X/LK;->A0h:I

    sget v0, Lcom/facebook/ads/redexgen/X/LK;->A0h:I

    new-instance v4, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v4, v1, v0}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 16973
    .local v0, "chevronUpParams":Landroid/widget/RelativeLayout$LayoutParams;
    const/4 v0, 0x1

    const/16 v3, 0xe

    const/4 v2, 0x2

    const/4 v1, 0x0

    if-ne p1, v0, :cond_0

    .line 16974
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/bF;->A08:Lcom/facebook/ads/redexgen/X/Kr;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Kr;->getId()I

    move-result v0

    invoke-virtual {v4, v2, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 16975
    sget v0, Lcom/facebook/ads/redexgen/X/XV;->A0v:I

    invoke-virtual {v4, v1, v1, v1, v0}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 16976
    invoke-virtual {v4, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 16977
    :goto_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/LK;->A0J:Landroid/widget/ImageView;

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 16978
    return-void

    .line 16979
    :cond_0
    sget v0, Lcom/facebook/ads/redexgen/X/XV;->A0o:I

    invoke-virtual {v4, v1, v1, v1, v0}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 16980
    invoke-virtual {v4, v3}, Landroid/widget/RelativeLayout$LayoutParams;->removeRule(I)V

    .line 16981
    invoke-virtual {v4, v2}, Landroid/widget/RelativeLayout$LayoutParams;->removeRule(I)V

    goto :goto_0
.end method

.method private A08(I)V
    .locals 5

    .line 16982
    const/4 v0, -0x2

    new-instance v4, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v4, v0, v0}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 16983
    .local v0, "layoutParams":Landroid/widget/RelativeLayout$LayoutParams;
    const/16 v2, 0xc

    invoke-virtual {v4, v2}, Landroid/widget/RelativeLayout$LayoutParams;->removeRule(I)V

    .line 16984
    const/4 v1, 0x3

    invoke-virtual {v4, v1}, Landroid/widget/RelativeLayout$LayoutParams;->removeRule(I)V

    .line 16985
    const/4 v0, 0x1

    const/4 v3, 0x0

    if-ne p1, v0, :cond_1

    .line 16986
    invoke-virtual {v4, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 16987
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/LK;->A0W:Lcom/facebook/ads/redexgen/X/DZ;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/DZ;->getVisibility()I

    move-result v0

    const/4 v1, 0x7

    if-nez v0, :cond_0

    .line 16988
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/LK;->A0W:Lcom/facebook/ads/redexgen/X/DZ;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/DZ;->getId()I

    move-result v0

    invoke-virtual {v4, v1, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 16989
    :goto_0
    sget v0, Lcom/facebook/ads/redexgen/X/XV;->A0b:I

    invoke-virtual {v4, v3, v3, v3, v0}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 16990
    :goto_1
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/LK;->A0V:Lcom/facebook/ads/redexgen/X/aJ;

    invoke-virtual {v0, v4}, Lcom/facebook/ads/redexgen/X/aJ;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 16991
    return-void

    .line 16992
    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/bF;->A08:Lcom/facebook/ads/redexgen/X/Kr;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Kr;->getId()I

    move-result v0

    invoke-virtual {v4, v1, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    goto :goto_0

    .line 16993
    :cond_1
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/LK;->A0W:Lcom/facebook/ads/redexgen/X/DZ;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/DZ;->getId()I

    move-result v0

    invoke-virtual {v4, v1, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    sget-object v1, Lcom/facebook/ads/redexgen/X/6T;->A00:[Ljava/lang/String;

    const/4 v0, 0x0

    aget-object v1, v1, v0

    const/4 v0, 0x3

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x34

    if-eq v1, v0, :cond_4

    .line 16994
    sget-object v2, Lcom/facebook/ads/redexgen/X/6T;->A00:[Ljava/lang/String;

    const-string v1, "oGoH0QuGh"

    const/4 v0, 0x5

    aput-object v1, v2, v0

    const/16 v0, 0xb

    invoke-virtual {v4, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 16995
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/LK;->A06:Lcom/facebook/ads/redexgen/X/aN;

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/LK;->A05:Lcom/facebook/ads/redexgen/X/aJ;

    if-eqz v0, :cond_3

    .line 16996
    :cond_2
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/LK;->A11()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 16997
    sget v0, Lcom/facebook/ads/redexgen/X/XV;->A0k:I

    invoke-virtual {v4, v3, v0, v3, v3}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    goto :goto_1

    .line 16998
    :cond_3
    sget v0, Lcom/facebook/ads/redexgen/X/XV;->A0b:I

    invoke-virtual {v4, v3, v0, v3, v3}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    goto :goto_1

    :cond_4
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
.end method

.method private A09(I)V
    .locals 5

    .line 16999
    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 17000
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/LK;->A0P:Landroid/widget/TextView;

    .line 17001
    invoke-virtual {v0}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Landroid/widget/RelativeLayout$LayoutParams;

    .line 17002
    .local v0, "descriptionParams":Landroid/widget/RelativeLayout$LayoutParams;
    const/16 v0, 0xe

    invoke-virtual {v4, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 17003
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/LK;->A0Q:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getId()I

    move-result v1

    const/4 v0, 0x3

    invoke-virtual {v4, v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 17004
    sget v3, Lcom/facebook/ads/redexgen/X/XV;->A0p:I

    sget v2, Lcom/facebook/ads/redexgen/X/XV;->A0p:I

    sget v1, Lcom/facebook/ads/redexgen/X/XV;->A0v:I

    const/4 v0, 0x0

    invoke-virtual {v4, v3, v0, v2, v1}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 17005
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/LK;->A0P:Landroid/widget/TextView;

    sget-object v0, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 17006
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/LK;->A0P:Landroid/widget/TextView;

    const/high16 v0, 0x41900000    # 18.0f

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTextSize(F)V

    .line 17007
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/LK;->A0P:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 17008
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/LK;->A0P:Landroid/widget/TextView;

    const/4 v0, 0x2

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setMaxLines(I)V

    .line 17009
    .end local v0    # "descriptionParams":Landroid/widget/RelativeLayout$LayoutParams;
    :cond_0
    return-void
.end method

.method private A0A(I)V
    .locals 4

    .line 17010
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/bF;->A09:Lcom/facebook/ads/redexgen/X/bk;

    .line 17011
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/bk;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/widget/RelativeLayout$LayoutParams;

    .line 17012
    .local v0, "imageParams":Landroid/widget/RelativeLayout$LayoutParams;
    const/4 v0, 0x1

    const/16 v3, 0xe

    const/4 v1, 0x0

    if-ne p1, v0, :cond_1

    .line 17013
    sget v0, Lcom/facebook/ads/redexgen/X/6T;->A02:I

    iput v0, v2, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    .line 17014
    sget v0, Lcom/facebook/ads/redexgen/X/6T;->A02:I

    iput v0, v2, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    .line 17015
    sget v0, Lcom/facebook/ads/redexgen/X/6T;->A02:I

    neg-int v0, v0

    div-int/lit8 v0, v0, 0x4

    .line 17016
    .local v1, "topMargin":I
    invoke-virtual {v2, v1, v0, v1, v1}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 17017
    invoke-virtual {v2, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 17018
    const/16 v1, 0x1e

    .line 17019
    .local v1, "imageRadius":I
    .restart local v1    # "imageRadius":I
    :goto_0
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/LK;->A0a:Z

    if-nez v0, :cond_0

    .line 17020
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/bF;->A09:Lcom/facebook/ads/redexgen/X/bk;

    invoke-virtual {v0, v1}, Lcom/facebook/ads/redexgen/X/bk;->setRadius(I)V

    .line 17021
    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/bF;->A09:Lcom/facebook/ads/redexgen/X/bk;

    invoke-virtual {v0, v2}, Lcom/facebook/ads/redexgen/X/bk;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 17022
    return-void

    .line 17023
    .end local v1    # "imageRadius":I
    :cond_1
    const/4 v0, 0x3

    invoke-virtual {v2, v0}, Landroid/widget/RelativeLayout$LayoutParams;->removeRule(I)V

    .line 17024
    invoke-virtual {v2, v3}, Landroid/widget/RelativeLayout$LayoutParams;->removeRule(I)V

    .line 17025
    sget v0, Lcom/facebook/ads/redexgen/X/6T;->A01:I

    iput v0, v2, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    .line 17026
    sget v0, Lcom/facebook/ads/redexgen/X/6T;->A01:I

    iput v0, v2, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    .line 17027
    sget v0, Lcom/facebook/ads/redexgen/X/XV;->A0v:I

    invoke-virtual {v2, v1, v1, v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 17028
    const/16 v1, 0xc

    goto :goto_0
.end method

.method private A0B(I)V
    .locals 8

    .line 17029
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/LK;->A04:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/LK;->A04:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_1

    .line 17030
    .end local v0
    :cond_0
    return-void

    .line 17031
    :cond_1
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/LK;->A04:Landroid/widget/TextView;

    .line 17032
    invoke-virtual {v0}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Landroid/widget/RelativeLayout$LayoutParams;

    .line 17033
    .local v0, "param":Landroid/widget/RelativeLayout$LayoutParams;
    const/4 v5, 0x5

    invoke-virtual {v4, v5}, Landroid/widget/RelativeLayout$LayoutParams;->removeRule(I)V

    .line 17034
    const/4 v1, 0x3

    invoke-virtual {v4, v1}, Landroid/widget/RelativeLayout$LayoutParams;->removeRule(I)V

    .line 17035
    const/4 v6, 0x2

    invoke-virtual {v4, v6}, Landroid/widget/RelativeLayout$LayoutParams;->removeRule(I)V

    .line 17036
    const/4 v0, 0x1

    const/4 v3, 0x0

    if-ne p1, v0, :cond_6

    .line 17037
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/LK;->A06:Lcom/facebook/ads/redexgen/X/aN;

    if-eqz v0, :cond_2

    .line 17038
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/LK;->A06:Lcom/facebook/ads/redexgen/X/aN;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/aN;->getId()I

    move-result v0

    invoke-virtual {v4, v6, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 17039
    sget v1, Lcom/facebook/ads/redexgen/X/XV;->A0v:I

    sget v0, Lcom/facebook/ads/redexgen/X/XV;->A0Z:I

    invoke-virtual {v4, v3, v1, v3, v0}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 17040
    :goto_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/LK;->A0W:Lcom/facebook/ads/redexgen/X/DZ;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/DZ;->getId()I

    move-result v0

    invoke-virtual {v4, v5, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 17041
    :goto_1
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/LK;->A04:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 17042
    return-void

    .line 17043
    :cond_2
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/LK;->A05:Lcom/facebook/ads/redexgen/X/aJ;

    if-eqz v0, :cond_4

    .line 17044
    iget-object v7, p0, Lcom/facebook/ads/redexgen/X/LK;->A05:Lcom/facebook/ads/redexgen/X/aJ;

    sget-object v1, Lcom/facebook/ads/redexgen/X/6T;->A00:[Ljava/lang/String;

    const/4 v0, 0x5

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v0, 0x9

    if-eq v1, v0, :cond_3

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_3
    sget-object v2, Lcom/facebook/ads/redexgen/X/6T;->A00:[Ljava/lang/String;

    const-string v1, "4tbuGoue1V8fWdz46zhhiARc"

    const/4 v0, 0x3

    aput-object v1, v2, v0

    invoke-virtual {v7}, Lcom/facebook/ads/redexgen/X/aJ;->getId()I

    move-result v0

    invoke-virtual {v4, v6, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 17045
    sget v1, Lcom/facebook/ads/redexgen/X/XV;->A0v:I

    sget v0, Lcom/facebook/ads/redexgen/X/XV;->A0b:I

    invoke-virtual {v4, v3, v1, v3, v0}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    goto :goto_0

    .line 17046
    :cond_4
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/LK;->A0V:Lcom/facebook/ads/redexgen/X/aJ;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/aJ;->getVisibility()I

    move-result v0

    if-nez v0, :cond_5

    .line 17047
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/LK;->A0V:Lcom/facebook/ads/redexgen/X/aJ;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/aJ;->getId()I

    move-result v0

    invoke-virtual {v4, v6, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 17048
    :goto_2
    sget v0, Lcom/facebook/ads/redexgen/X/XV;->A0v:I

    invoke-virtual {v4, v3, v0, v3, v3}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    goto :goto_0

    .line 17049
    :cond_5
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/LK;->A0K:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getId()I

    move-result v0

    invoke-virtual {v4, v6, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    goto :goto_2

    .line 17050
    :cond_6
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/LK;->A0W:Lcom/facebook/ads/redexgen/X/DZ;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/DZ;->getId()I

    move-result v0

    invoke-virtual {v4, v1, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 17051
    sget v0, Lcom/facebook/ads/redexgen/X/XV;->A0o:I

    invoke-virtual {v4, v3, v0, v3, v3}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    goto :goto_1
.end method

.method private A0C(I)V
    .locals 5

    .line 17052
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/LK;->A0W:Lcom/facebook/ads/redexgen/X/DZ;

    .line 17053
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/DZ;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/widget/RelativeLayout$LayoutParams;

    .line 17054
    .local v0, "progressBarLayoutParams":Landroid/widget/RelativeLayout$LayoutParams;
    const/4 v2, 0x2

    invoke-virtual {v3, v2}, Landroid/widget/RelativeLayout$LayoutParams;->removeRule(I)V

    .line 17055
    const/4 v1, 0x3

    invoke-virtual {v3, v1}, Landroid/widget/RelativeLayout$LayoutParams;->removeRule(I)V

    .line 17056
    const/4 v0, 0x1

    const/4 v4, 0x0

    if-ne p1, v0, :cond_4

    .line 17057
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/LK;->A0V:Lcom/facebook/ads/redexgen/X/aJ;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/aJ;->getVisibility()I

    move-result v0

    if-nez v0, :cond_3

    .line 17058
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/LK;->A0V:Lcom/facebook/ads/redexgen/X/aJ;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/aJ;->getId()I

    move-result v0

    invoke-virtual {v3, v2, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 17059
    :goto_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/LK;->A06:Lcom/facebook/ads/redexgen/X/aN;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/LK;->A05:Lcom/facebook/ads/redexgen/X/aJ;

    if-eqz v0, :cond_1

    .line 17060
    :cond_0
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/LK;->A11()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 17061
    sget v2, Lcom/facebook/ads/redexgen/X/XV;->A0k:I

    sget v1, Lcom/facebook/ads/redexgen/X/XV;->A0k:I

    sget v0, Lcom/facebook/ads/redexgen/X/XV;->A0k:I

    invoke-virtual {v3, v2, v4, v1, v0}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 17062
    :goto_1
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/LK;->A0W:Lcom/facebook/ads/redexgen/X/DZ;

    invoke-virtual {v0, v3}, Lcom/facebook/ads/redexgen/X/DZ;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 17063
    return-void

    .line 17064
    :cond_1
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/LK;->A06:Lcom/facebook/ads/redexgen/X/aN;

    if-eqz v0, :cond_2

    .line 17065
    sget v2, Lcom/facebook/ads/redexgen/X/XV;->A0k:I

    sget v1, Lcom/facebook/ads/redexgen/X/XV;->A0k:I

    sget v0, Lcom/facebook/ads/redexgen/X/XV;->A0Z:I

    invoke-virtual {v3, v2, v4, v1, v0}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    goto :goto_1

    .line 17066
    :cond_2
    sget v2, Lcom/facebook/ads/redexgen/X/XV;->A0k:I

    sget v1, Lcom/facebook/ads/redexgen/X/XV;->A0k:I

    sget v0, Lcom/facebook/ads/redexgen/X/XV;->A0f:I

    invoke-virtual {v3, v2, v4, v1, v0}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    goto :goto_1

    .line 17067
    :cond_3
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/LK;->A0K:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getId()I

    move-result v0

    invoke-virtual {v3, v2, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    goto :goto_0

    .line 17068
    :cond_4
    sget v0, Lcom/facebook/ads/redexgen/X/XV;->A0v:I

    invoke-virtual {v3, v4, v0, v4, v4}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 17069
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/LK;->A0N:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getId()I

    move-result v0

    invoke-virtual {v3, v1, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    goto :goto_1
.end method

.method private A0D(I)V
    .locals 7

    .line 17070
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/LK;->A0Q:Landroid/widget/TextView;

    .line 17071
    invoke-virtual {v0}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/widget/RelativeLayout$LayoutParams;

    .line 17072
    .local v0, "titleParams":Landroid/widget/RelativeLayout$LayoutParams;
    .local v1, "textAlignment":I
    const/16 v6, 0xe

    const/4 v5, 0x3

    const/16 v0, 0xf

    const/4 v1, 0x0

    const/4 v4, 0x1

    if-ne p1, v4, :cond_0

    .line 17073
    invoke-virtual {v2, v4}, Landroid/widget/RelativeLayout$LayoutParams;->removeRule(I)V

    .line 17074
    invoke-virtual {v2, v0}, Landroid/widget/RelativeLayout$LayoutParams;->removeRule(I)V

    .line 17075
    invoke-virtual {v2, v1}, Landroid/widget/RelativeLayout$LayoutParams;->removeRule(I)V

    .line 17076
    const/4 v3, 0x4

    .line 17077
    invoke-virtual {v2, v6}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 17078
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/bF;->A09:Lcom/facebook/ads/redexgen/X/bk;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/bk;->getId()I

    move-result v0

    invoke-virtual {v2, v5, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 17079
    sget v5, Lcom/facebook/ads/redexgen/X/XV;->A0k:I

    sget v4, Lcom/facebook/ads/redexgen/X/XV;->A0b:I

    sget v1, Lcom/facebook/ads/redexgen/X/XV;->A0k:I

    sget v0, Lcom/facebook/ads/redexgen/X/XV;->A0v:I

    invoke-virtual {v2, v5, v4, v1, v0}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 17080
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/LK;->A0Q:Landroid/widget/TextView;

    sget-object v0, Landroid/graphics/Typeface;->DEFAULT_BOLD:Landroid/graphics/Typeface;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 17081
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/LK;->A0Q:Landroid/widget/TextView;

    const/high16 v0, 0x41f00000    # 30.0f

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTextSize(F)V

    .line 17082
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/LK;->A0Q:Landroid/widget/TextView;

    const/4 v0, 0x2

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setMaxLines(I)V

    .line 17083
    :goto_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/LK;->A0Q:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setTextAlignment(I)V

    .line 17084
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/LK;->A0Q:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 17085
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/LK;->A0Q:Landroid/widget/TextView;

    sget-object v0, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 17086
    return-void

    .line 17087
    :cond_0
    invoke-virtual {v2, v5}, Landroid/widget/RelativeLayout$LayoutParams;->removeRule(I)V

    .line 17088
    invoke-virtual {v2, v6}, Landroid/widget/RelativeLayout$LayoutParams;->removeRule(I)V

    .line 17089
    const/4 v3, 0x5

    .line 17090
    invoke-virtual {v2, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 17091
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/bF;->A09:Lcom/facebook/ads/redexgen/X/bk;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/bk;->getId()I

    move-result v0

    invoke-virtual {v2, v4, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 17092
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/LK;->A0L:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getId()I

    move-result v0

    invoke-virtual {v2, v1, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 17093
    sget v0, Lcom/facebook/ads/redexgen/X/XV;->A0v:I

    invoke-virtual {v2, v1, v1, v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 17094
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/LK;->A0Q:Landroid/widget/TextView;

    sget-object v0, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 17095
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/LK;->A0Q:Landroid/widget/TextView;

    const/high16 v0, 0x41a00000    # 20.0f

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTextSize(F)V

    .line 17096
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/LK;->A0Q:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setMaxLines(I)V

    goto :goto_0
.end method

.method private A0E(Landroid/view/View;I)V
    .locals 6

    .line 17097
    if-eqz p1, :cond_0

    .line 17098
    const/4 v0, -0x2

    new-instance v4, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v4, v0, v0}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 17099
    .local v0, "creditLineParams":Landroid/widget/RelativeLayout$LayoutParams;
    const/4 v0, 0x1

    const/4 v3, 0x0

    if-ne p2, v0, :cond_2

    .line 17100
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/LK;->A0W:Lcom/facebook/ads/redexgen/X/DZ;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/DZ;->getVisibility()I

    move-result v0

    const/4 v1, 0x5

    if-nez v0, :cond_1

    .line 17101
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/LK;->A0W:Lcom/facebook/ads/redexgen/X/DZ;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/DZ;->getId()I

    move-result v0

    invoke-virtual {v4, v1, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 17102
    :goto_0
    const/16 v0, 0xc

    invoke-virtual {v4, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 17103
    sget v0, Lcom/facebook/ads/redexgen/X/XV;->A0b:I

    invoke-virtual {v4, v3, v3, v3, v0}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 17104
    :goto_1
    invoke-virtual {p1, v4}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 17105
    .end local v0    # "creditLineParams":Landroid/widget/RelativeLayout$LayoutParams;
    :cond_0
    return-void

    .line 17106
    :cond_1
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/bF;->A08:Lcom/facebook/ads/redexgen/X/Kr;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Kr;->getId()I

    move-result v0

    invoke-virtual {v4, v1, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    goto :goto_0

    .line 17107
    :cond_2
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/LK;->A0W:Lcom/facebook/ads/redexgen/X/DZ;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/DZ;->getId()I

    move-result v1

    const/4 v0, 0x3

    invoke-virtual {v4, v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 17108
    const/16 v0, 0x9

    invoke-virtual {v4, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 17109
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/LK;->A11()Z

    move-result v5

    sget-object v1, Lcom/facebook/ads/redexgen/X/6T;->A00:[Ljava/lang/String;

    const/4 v0, 0x4

    aget-object v1, v1, v0

    const/16 v0, 0xc

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x72

    if-eq v1, v0, :cond_3

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_3
    sget-object v2, Lcom/facebook/ads/redexgen/X/6T;->A00:[Ljava/lang/String;

    const-string v1, "3HhgBwxbQho2sMg1wvX4XpAgboCjPBz9"

    const/4 v0, 0x6

    aput-object v1, v2, v0

    const-string v1, "J5Bqq1rF94wnFI0B1PXvrlfndQ3xbAEE"

    const/4 v0, 0x2

    aput-object v1, v2, v0

    if-eqz v5, :cond_4

    .line 17110
    sget v0, Lcom/facebook/ads/redexgen/X/XV;->A0k:I

    invoke-virtual {v4, v3, v0, v3, v3}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    goto :goto_1

    .line 17111
    :cond_4
    sget v0, Lcom/facebook/ads/redexgen/X/XV;->A0b:I

    invoke-virtual {v4, v3, v0, v3, v3}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    goto :goto_1
.end method


# virtual methods
.method public final A0l(I)V
    .locals 1

    .line 17112
    invoke-super {p0, p1}, Lcom/facebook/ads/redexgen/X/LK;->A0l(I)V

    .line 17113
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/6T;->A00()V

    .line 17114
    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/6T;->A04(I)V

    .line 17115
    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/6T;->A05(I)V

    .line 17116
    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/6T;->A08(I)V

    .line 17117
    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/6T;->A0B(I)V

    .line 17118
    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/6T;->A0C(I)V

    .line 17119
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/6T;->A01()V

    .line 17120
    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/6T;->A07(I)V

    .line 17121
    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/6T;->A06(I)V

    .line 17122
    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/6T;->A0A(I)V

    .line 17123
    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/6T;->A0D(I)V

    .line 17124
    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/6T;->A09(I)V

    .line 17125
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/LK;->A06:Lcom/facebook/ads/redexgen/X/aN;

    invoke-direct {p0, v0, p1}, Lcom/facebook/ads/redexgen/X/6T;->A0E(Landroid/view/View;I)V

    .line 17126
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/LK;->A05:Lcom/facebook/ads/redexgen/X/aJ;

    invoke-direct {p0, v0, p1}, Lcom/facebook/ads/redexgen/X/6T;->A0E(Landroid/view/View;I)V

    .line 17127
    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/6T;->A02(I)V

    .line 17128
    return-void
.end method

.method public final A0u(I)V
    .locals 3

    .line 17129
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/LK;->A0b:Z

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    .line 17130
    const-wide/16 v0, 0x1770

    invoke-virtual {p0, v0, v1}, Lcom/facebook/ads/redexgen/X/LK;->A0v(J)V

    .line 17131
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/LK;->A0Z:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 17132
    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/LK;->A07:Lcom/facebook/ads/redexgen/X/DA;

    if-eqz v0, :cond_1

    const/4 v0, 0x2

    if-ne p1, v0, :cond_1

    .line 17133
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/LK;->A07:Lcom/facebook/ads/redexgen/X/DA;

    const/4 v0, 0x0

    invoke-virtual {v1, v2, v0}, Lcom/facebook/ads/redexgen/X/DA;->A4A(ZZ)V

    .line 17134
    :cond_1
    return-void
.end method

.method public final A0y(Landroid/view/ViewGroup;Landroid/widget/RelativeLayout;I)V
    .locals 3

    .line 17135
    const/4 v0, 0x1

    if-ne p3, v0, :cond_0

    .line 17136
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/bF;->A09:Lcom/facebook/ads/redexgen/X/bk;

    .line 17137
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/bk;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/widget/RelativeLayout$LayoutParams;

    .line 17138
    .local v0, "imageParams":Landroid/widget/RelativeLayout$LayoutParams;
    const/4 v1, 0x3

    invoke-virtual {p2}, Landroid/widget/RelativeLayout;->getId()I

    move-result v0

    invoke-virtual {v2, v1, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 17139
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/bF;->A09:Lcom/facebook/ads/redexgen/X/bk;

    invoke-virtual {v0, v2}, Lcom/facebook/ads/redexgen/X/bk;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 17140
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/bF;->A09:Lcom/facebook/ads/redexgen/X/bk;

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 17141
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/LK;->A0Q:Landroid/widget/TextView;

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 17142
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/LK;->A0P:Landroid/widget/TextView;

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 17143
    .end local v0    # "imageParams":Landroid/widget/RelativeLayout$LayoutParams;
    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/LK;->A0Z:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 17144
    const-wide/16 v0, 0x258

    invoke-virtual {p0, v0, v1}, Lcom/facebook/ads/redexgen/X/LK;->A0v(J)V

    .line 17145
    :cond_1
    return-void
.end method

.method public setInfo(Lcom/facebook/ads/redexgen/X/NY;Lcom/facebook/ads/redexgen/X/Nc;Ljava/lang/String;Ljava/lang/String;Lcom/facebook/ads/redexgen/X/Xh;Lcom/facebook/ads/redexgen/X/bU;)V
    .locals 0

    .line 17146
    invoke-super/range {p0 .. p6}, Lcom/facebook/ads/redexgen/X/bF;->setInfo(Lcom/facebook/ads/redexgen/X/NY;Lcom/facebook/ads/redexgen/X/Nc;Ljava/lang/String;Ljava/lang/String;Lcom/facebook/ads/redexgen/X/Xh;Lcom/facebook/ads/redexgen/X/bU;)V

    .line 17147
    return-void
.end method

.method public setTitleMaxLines(I)V
    .locals 2

    .line 17148
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/LK;->A0Q:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setMaxLines(I)V

    .line 17149
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/LK;->A0Q:Landroid/widget/TextView;

    sget-object v0, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 17150
    return-void
.end method
