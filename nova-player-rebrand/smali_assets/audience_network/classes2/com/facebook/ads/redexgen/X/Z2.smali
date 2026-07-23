.class public final Lcom/facebook/ads/redexgen/X/Z2;
.super Landroid/widget/FrameLayout;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/ads/redexgen/X/Z1;
    }
.end annotation


# static fields
.field public static A0D:[B

.field public static A0E:[Ljava/lang/String;

.field public static final A0F:I


# instance fields
.field public A00:Z

.field public final A01:Lcom/facebook/ads/redexgen/X/ji;

.field public final A02:Lcom/facebook/ads/redexgen/X/jd;

.field public final A03:Lcom/facebook/ads/redexgen/X/gi;

.field public final A04:Lcom/facebook/ads/redexgen/X/VA;

.field public final A05:Lcom/facebook/ads/redexgen/X/VI;

.field public final A06:Lcom/facebook/ads/redexgen/X/Y2;

.field public final A07:Lcom/facebook/ads/redexgen/X/Ow;

.field public final A08:Lcom/facebook/ads/redexgen/X/Oq;

.field public final A09:Lcom/facebook/ads/redexgen/X/fo;

.field public final A0A:Lcom/facebook/ads/redexgen/X/fp;

.field public final A0B:Ljava/lang/String;

.field public final A0C:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/facebook/ads/redexgen/X/Z1;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    .line 2544
    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "EYRP1PEEhxzmFZofVXiCCrEXWQs6qPAa"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "IPRTBS"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "NsAYUXCCkxBbK0XyUhCt1xHChz5fZfMK"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "fEJJ0"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "6651Qynk9CVpAvzNTMvYSQKVDYa6iazW"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "nD7S5n7VHEDKGeK1PzI1a27Vk58dSaaa"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "vFV0GS7SjmRPmH7mLZ5yrXn6gSrRknN8"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "LPfldR2r"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/Z2;->A0E:[Ljava/lang/String;

    invoke-static {}, Lcom/facebook/ads/redexgen/X/Z2;->A0F()V

    const/high16 v1, 0x42200000    # 40.0f

    sget v0, Lcom/facebook/ads/redexgen/X/XX;->A02:F

    mul-float/2addr v0, v1

    float-to-int v0, v0

    sput v0, Lcom/facebook/ads/redexgen/X/Z2;->A0F:I

    return-void
.end method

.method public constructor <init>(Lcom/facebook/ads/redexgen/X/gi;Lcom/facebook/ads/redexgen/X/VA;Lcom/facebook/ads/redexgen/X/Sx;Ljava/lang/ref/WeakReference;IIIILcom/facebook/ads/redexgen/X/ji;Ljava/lang/String;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/ads/redexgen/X/gi;",
            "Lcom/facebook/ads/redexgen/X/VA;",
            "Lcom/facebook/ads/redexgen/X/Sx;",
            "Ljava/lang/ref/WeakReference<",
            "Lcom/facebook/ads/redexgen/X/Z1;",
            ">;IIII",
            "Lcom/facebook/ads/redexgen/X/ji;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 74627
    .local p12, "adViewListener":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Lcom/facebook/ads/internal/view/MediumRectangleView$MediumRectangleViewListener;>;"
    move-object v5, p0

    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 74628
    new-instance v0, Lcom/facebook/ads/redexgen/X/Y2;

    invoke-direct {v0}, Lcom/facebook/ads/redexgen/X/Y2;-><init>()V

    iput-object v0, v5, Lcom/facebook/ads/redexgen/X/Z2;->A06:Lcom/facebook/ads/redexgen/X/Y2;

    .line 74629
    iput-object p1, v5, Lcom/facebook/ads/redexgen/X/Z2;->A03:Lcom/facebook/ads/redexgen/X/gi;

    .line 74630
    iput-object p2, v5, Lcom/facebook/ads/redexgen/X/Z2;->A04:Lcom/facebook/ads/redexgen/X/VA;

    .line 74631
    move-object/from16 v0, p9

    iput-object v0, v5, Lcom/facebook/ads/redexgen/X/Z2;->A01:Lcom/facebook/ads/redexgen/X/ji;

    .line 74632
    iput-object p4, v5, Lcom/facebook/ads/redexgen/X/Z2;->A0C:Ljava/lang/ref/WeakReference;

    .line 74633
    move-object/from16 v0, p10

    iput-object v0, v5, Lcom/facebook/ads/redexgen/X/Z2;->A0B:Ljava/lang/String;

    .line 74634
    iget-object v0, v5, Lcom/facebook/ads/redexgen/X/Z2;->A01:Lcom/facebook/ads/redexgen/X/ji;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/ji;->A0F()Lcom/facebook/ads/redexgen/X/jd;

    move-result-object v7

    .line 74635
    .local v6, "adDataBundle":Lcom/facebook/ads/redexgen/X/jd;
    if-eqz v7, :cond_1

    .line 74636
    iget-object v0, v5, Lcom/facebook/ads/redexgen/X/Z2;->A01:Lcom/facebook/ads/redexgen/X/ji;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/ji;->A0F()Lcom/facebook/ads/redexgen/X/jd;

    move-result-object v0

    iput-object v0, v5, Lcom/facebook/ads/redexgen/X/Z2;->A02:Lcom/facebook/ads/redexgen/X/jd;

    .line 74637
    const/4 v4, -0x1

    invoke-static {v5, v4}, Lcom/facebook/ads/redexgen/X/YB;->A0N(Landroid/view/View;I)V

    .line 74638
    iget-object v0, v5, Lcom/facebook/ads/redexgen/X/Z2;->A01:Lcom/facebook/ads/redexgen/X/ji;

    .line 74639
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/ji;->A7O()Ljava/lang/String;

    move-result-object v2

    iget-object v1, v5, Lcom/facebook/ads/redexgen/X/Z2;->A04:Lcom/facebook/ads/redexgen/X/VA;

    new-instance v0, Lcom/facebook/ads/redexgen/X/VI;

    invoke-direct {v0, v2, v1}, Lcom/facebook/ads/redexgen/X/VI;-><init>(Ljava/lang/String;Lcom/facebook/ads/redexgen/X/VA;)V

    iput-object v0, v5, Lcom/facebook/ads/redexgen/X/Z2;->A05:Lcom/facebook/ads/redexgen/X/VI;

    .line 74640
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/Z2;->A06()Lcom/facebook/ads/redexgen/X/Ob;

    move-result-object v0

    iput-object v0, v5, Lcom/facebook/ads/redexgen/X/Z2;->A09:Lcom/facebook/ads/redexgen/X/fo;

    .line 74641
    move/from16 v0, p8

    invoke-direct {v5, p5, v0, p6, p7}, Lcom/facebook/ads/redexgen/X/Z2;->A07(IIII)Lcom/facebook/ads/redexgen/X/fp;

    move-result-object v0

    iput-object v0, v5, Lcom/facebook/ads/redexgen/X/Z2;->A0A:Lcom/facebook/ads/redexgen/X/fp;

    .line 74642
    new-instance v6, Landroid/widget/LinearLayout;

    invoke-direct {v6, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 74643
    .local p4, "verticalLayout":Landroid/widget/LinearLayout;
    const/4 v0, 0x1

    invoke-virtual {v6, v0}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 74644
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v0, v4, v4}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v5, v6, v0}, Lcom/facebook/ads/redexgen/X/Z2;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 74645
    invoke-direct {v5, p3}, Lcom/facebook/ads/redexgen/X/Z2;->A04(Lcom/facebook/ads/redexgen/X/Sx;)Lcom/facebook/ads/redexgen/X/Oq;

    move-result-object v0

    iput-object v0, v5, Lcom/facebook/ads/redexgen/X/Z2;->A08:Lcom/facebook/ads/redexgen/X/Oq;

    .line 74646
    iget-object v0, v5, Lcom/facebook/ads/redexgen/X/Z2;->A08:Lcom/facebook/ads/redexgen/X/Oq;

    if-eqz v0, :cond_0

    .line 74647
    iget-object v3, v5, Lcom/facebook/ads/redexgen/X/Z2;->A08:Lcom/facebook/ads/redexgen/X/Oq;

    const/4 v2, 0x0

    const/high16 v1, 0x3f800000    # 1.0f

    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v0, v4, v2, v1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v6, v3, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 74648
    :cond_0
    invoke-direct {v5, v7}, Lcom/facebook/ads/redexgen/X/Z2;->A02(Lcom/facebook/ads/redexgen/X/jd;)Lcom/facebook/ads/redexgen/X/Ow;

    move-result-object v0

    iput-object v0, v5, Lcom/facebook/ads/redexgen/X/Z2;->A07:Lcom/facebook/ads/redexgen/X/Ow;

    .line 74649
    iget-object v2, v5, Lcom/facebook/ads/redexgen/X/Z2;->A07:Lcom/facebook/ads/redexgen/X/Ow;

    const/4 v1, -0x2

    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v0, v4, v1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v6, v2, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 74650
    return-void

    .line 74651
    .end local p4    # "verticalLayout":Landroid/widget/LinearLayout;
    :cond_1
    const/4 v2, 0x0

    const/16 v1, 0x20

    const/16 v0, 0x56

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Z2;->A09(III)Ljava/lang/String;

    move-result-object v1

    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static synthetic A00(Lcom/facebook/ads/redexgen/X/Z2;)Lcom/facebook/ads/redexgen/X/gi;
    .locals 0

    .line 74652
    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/Z2;->A03:Lcom/facebook/ads/redexgen/X/gi;

    return-object p0
.end method

.method public static synthetic A01(Lcom/facebook/ads/redexgen/X/Z2;)Lcom/facebook/ads/redexgen/X/Y2;
    .locals 0

    .line 74653
    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/Z2;->A06:Lcom/facebook/ads/redexgen/X/Y2;

    return-object p0
.end method

.method private A02(Lcom/facebook/ads/redexgen/X/jd;)Lcom/facebook/ads/redexgen/X/Ow;
    .locals 17

    .line 74654
    move-object/from16 v0, p0

    invoke-virtual/range {p1 .. p1}, Lcom/facebook/ads/redexgen/X/jd;->A29()Lcom/facebook/ads/redexgen/X/NR;

    move-result-object v5

    .line 74655
    .local v1, "adInfo":Lcom/facebook/ads/redexgen/X/NR;
    new-instance v13, Lcom/facebook/ads/redexgen/X/6f;

    invoke-direct {v13, v0}, Lcom/facebook/ads/redexgen/X/6f;-><init>(Lcom/facebook/ads/redexgen/X/Z2;)V

    .line 74656
    .local v9, "adListener":Lcom/facebook/ads/redexgen/X/Yh;
    invoke-direct/range {p0 .. p0}, Lcom/facebook/ads/redexgen/X/Z2;->getOrientation()I

    move-result v2

    const/4 v1, 0x1

    if-ne v2, v1, :cond_1

    .line 74657
    invoke-virtual/range {p1 .. p1}, Lcom/facebook/ads/redexgen/X/jd;->A28()Lcom/facebook/ads/redexgen/X/NN;

    move-result-object v1

    invoke-virtual {v1}, Lcom/facebook/ads/redexgen/X/NN;->A01()Lcom/facebook/ads/redexgen/X/Na;

    move-result-object v9

    .line 74658
    .local v5, "adColors":Lcom/facebook/ads/redexgen/X/Na;
    :goto_0
    new-instance v6, Lcom/facebook/ads/redexgen/X/Ow;

    iget-object v7, v0, Lcom/facebook/ads/redexgen/X/Z2;->A03:Lcom/facebook/ads/redexgen/X/gi;

    sget v8, Lcom/facebook/ads/redexgen/X/Z2;->A0F:I

    .line 74659
    invoke-virtual {v5}, Lcom/facebook/ads/redexgen/X/NR;->A0J()Lcom/facebook/ads/redexgen/X/Nc;

    move-result-object v1

    invoke-virtual {v1}, Lcom/facebook/ads/redexgen/X/Nc;->A06()Z

    move-result v10

    iget-object v12, v0, Lcom/facebook/ads/redexgen/X/Z2;->A04:Lcom/facebook/ads/redexgen/X/VA;

    iget-object v14, v0, Lcom/facebook/ads/redexgen/X/Z2;->A0A:Lcom/facebook/ads/redexgen/X/fp;

    iget-object v15, v0, Lcom/facebook/ads/redexgen/X/Z2;->A06:Lcom/facebook/ads/redexgen/X/Y2;

    .line 74660
    invoke-virtual/range {p1 .. p1}, Lcom/facebook/ads/redexgen/X/jd;->A2A()Lcom/facebook/ads/redexgen/X/Ng;

    move-result-object v16

    const/16 v3, 0x20

    const/16 v2, 0x1f

    const/16 v1, 0x6e

    invoke-static {v3, v2, v1}, Lcom/facebook/ads/redexgen/X/Z2;->A09(III)Ljava/lang/String;

    move-result-object v11

    invoke-direct/range {v6 .. v16}, Lcom/facebook/ads/redexgen/X/Ow;-><init>(Lcom/facebook/ads/redexgen/X/gi;ILcom/facebook/ads/redexgen/X/Na;ZLjava/lang/String;Lcom/facebook/ads/redexgen/X/VA;Lcom/facebook/ads/redexgen/X/Yh;Lcom/facebook/ads/redexgen/X/fp;Lcom/facebook/ads/redexgen/X/Y2;Lcom/facebook/ads/redexgen/X/Ng;)V

    .line 74661
    .local v2, "bottomView":Lcom/facebook/ads/redexgen/X/Ow;
    invoke-virtual {v5}, Lcom/facebook/ads/redexgen/X/NR;->A0I()Lcom/facebook/ads/redexgen/X/NY;

    move-result-object v7

    .line 74662
    invoke-virtual {v5}, Lcom/facebook/ads/redexgen/X/NR;->A0J()Lcom/facebook/ads/redexgen/X/Nc;

    move-result-object v8

    iget-object v1, v0, Lcom/facebook/ads/redexgen/X/Z2;->A01:Lcom/facebook/ads/redexgen/X/ji;

    .line 74663
    invoke-virtual {v1}, Lcom/facebook/ads/redexgen/X/ji;->A7O()Ljava/lang/String;

    move-result-object v9

    .line 74664
    invoke-virtual/range {p1 .. p1}, Lcom/facebook/ads/redexgen/X/jd;->A2C()Lcom/facebook/ads/redexgen/X/Nm;

    move-result-object v1

    invoke-virtual {v1}, Lcom/facebook/ads/redexgen/X/Nm;->A01()Ljava/lang/String;

    move-result-object v10

    .line 74665
    const/4 v11, 0x0

    const/4 v12, 0x0

    invoke-virtual/range {v6 .. v12}, Lcom/facebook/ads/redexgen/X/Ow;->setInfo(Lcom/facebook/ads/redexgen/X/NY;Lcom/facebook/ads/redexgen/X/Nc;Ljava/lang/String;Ljava/lang/String;Lcom/facebook/ads/redexgen/X/Xh;Lcom/facebook/ads/redexgen/X/bU;)V

    .line 74666
    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/Z2;->A03:Lcom/facebook/ads/redexgen/X/gi;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Up;->A1N(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 74667
    invoke-virtual {v6}, Lcom/facebook/ads/redexgen/X/Ow;->A0k()V

    .line 74668
    :cond_0
    return-object v6

    .line 74669
    :cond_1
    invoke-virtual/range {p1 .. p1}, Lcom/facebook/ads/redexgen/X/jd;->A28()Lcom/facebook/ads/redexgen/X/NN;

    move-result-object v4

    sget-object v3, Lcom/facebook/ads/redexgen/X/Z2;->A0E:[Ljava/lang/String;

    const/4 v1, 0x1

    aget-object v2, v3, v1

    const/4 v1, 0x3

    aget-object v1, v3, v1

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-eq v2, v1, :cond_2

    sget-object v3, Lcom/facebook/ads/redexgen/X/Z2;->A0E:[Ljava/lang/String;

    const-string v2, "bY8FFe1Y"

    const/4 v1, 0x7

    aput-object v2, v3, v1

    invoke-virtual {v4}, Lcom/facebook/ads/redexgen/X/NN;->A00()Lcom/facebook/ads/redexgen/X/Na;

    move-result-object v9

    goto :goto_0

    :cond_2
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
.end method

.method public static synthetic A03(Lcom/facebook/ads/redexgen/X/Z2;)Lcom/facebook/ads/redexgen/X/Ow;
    .locals 0

    .line 74670
    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/Z2;->A07:Lcom/facebook/ads/redexgen/X/Ow;

    return-object p0
.end method

.method private A04(Lcom/facebook/ads/redexgen/X/Sx;)Lcom/facebook/ads/redexgen/X/Oq;
    .locals 12

    .line 74671
    new-instance v6, Lcom/facebook/ads/redexgen/X/Yz;

    invoke-direct {v6, p0}, Lcom/facebook/ads/redexgen/X/Yz;-><init>(Lcom/facebook/ads/redexgen/X/Z2;)V

    .line 74672
    .local v0, "onAdReportingClickListener":Landroid/view/View$OnClickListener;
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Z2;->A01:Lcom/facebook/ads/redexgen/X/ji;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/ji;->A0e()Ljava/lang/String;

    move-result-object v8

    .line 74673
    .local v8, "videoUrl":Ljava/lang/String;
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Z2;->A01:Lcom/facebook/ads/redexgen/X/ji;

    move-object v4, p1

    invoke-static {v4, v0}, Lcom/facebook/ads/redexgen/X/Z2;->A0H(Lcom/facebook/ads/redexgen/X/Sx;Lcom/facebook/ads/redexgen/X/ji;)Z

    move-result v0

    const/4 v9, 0x0

    if-eqz v0, :cond_2

    if-eqz v8, :cond_2

    .line 74674
    new-instance v1, Lcom/facebook/ads/redexgen/X/6g;

    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/Z2;->A03:Lcom/facebook/ads/redexgen/X/gi;

    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/Z2;->A04:Lcom/facebook/ads/redexgen/X/VA;

    iget-object v5, p0, Lcom/facebook/ads/redexgen/X/Z2;->A05:Lcom/facebook/ads/redexgen/X/VI;

    iget-object v7, p0, Lcom/facebook/ads/redexgen/X/Z2;->A02:Lcom/facebook/ads/redexgen/X/jd;

    invoke-direct/range {v1 .. v7}, Lcom/facebook/ads/redexgen/X/6g;-><init>(Lcom/facebook/ads/redexgen/X/gi;Lcom/facebook/ads/redexgen/X/VA;Lcom/facebook/ads/redexgen/X/Sx;Lcom/facebook/ads/redexgen/X/VI;Landroid/view/View$OnClickListener;Lcom/facebook/ads/redexgen/X/jd;)V

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Z2;->A01:Lcom/facebook/ads/redexgen/X/ji;

    .line 74675
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/ji;->A7O()Ljava/lang/String;

    move-result-object v7

    .line 74676
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Z2;->A01:Lcom/facebook/ads/redexgen/X/ji;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/ji;->A0H()Lcom/facebook/ads/redexgen/X/Vb;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 74677
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Z2;->A01:Lcom/facebook/ads/redexgen/X/ji;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/ji;->A0H()Lcom/facebook/ads/redexgen/X/Vb;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Vb;->getUrl()Ljava/lang/String;

    move-result-object v9

    .line 74678
    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Z2;->A01:Lcom/facebook/ads/redexgen/X/ji;

    .line 74679
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/ji;->A0R()Ljava/lang/String;

    move-result-object v10

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Z2;->A01:Lcom/facebook/ads/redexgen/X/ji;

    .line 74680
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/ji;->A0Q()Ljava/lang/String;

    move-result-object v11

    .line 74681
    move-object v6, v1

    invoke-virtual/range {v6 .. v11}, Lcom/facebook/ads/redexgen/X/6g;->A0I(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/facebook/ads/redexgen/X/6g;

    move-result-object v1

    .line 74682
    .local v1, "videoView":Lcom/facebook/ads/redexgen/X/6g;
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Z2;->A03:Lcom/facebook/ads/redexgen/X/gi;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Up;->A1R(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 74683
    invoke-direct {p0, v1}, Lcom/facebook/ads/redexgen/X/Z2;->setViewAsCTA(Landroid/view/View;)V

    .line 74684
    :cond_1
    return-object v1

    .line 74685
    .end local v1    # "videoView":Lcom/facebook/ads/redexgen/X/6g;
    :cond_2
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Z2;->A01:Lcom/facebook/ads/redexgen/X/ji;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/ji;->A0H()Lcom/facebook/ads/redexgen/X/Vb;

    move-result-object v4

    .line 74686
    .local v1, "coverImage":Lcom/facebook/ads/redexgen/X/Vb;
    if-eqz v4, :cond_4

    .line 74687
    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/Z2;->A03:Lcom/facebook/ads/redexgen/X/gi;

    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/Z2;->A05:Lcom/facebook/ads/redexgen/X/VI;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Z2;->A02:Lcom/facebook/ads/redexgen/X/jd;

    new-instance v1, Lcom/facebook/ads/redexgen/X/6q;

    invoke-direct {v1, v3, v6, v2, v0}, Lcom/facebook/ads/redexgen/X/6q;-><init>(Lcom/facebook/ads/redexgen/X/gi;Landroid/view/View$OnClickListener;Lcom/facebook/ads/redexgen/X/VI;Lcom/facebook/ads/redexgen/X/jd;)V

    .line 74688
    invoke-virtual {v4}, Lcom/facebook/ads/redexgen/X/Vb;->getUrl()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/6q;->A0I(Ljava/lang/String;)Lcom/facebook/ads/redexgen/X/6q;

    move-result-object v1

    .line 74689
    .local v2, "imageView":Lcom/facebook/ads/redexgen/X/6q;
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Z2;->A03:Lcom/facebook/ads/redexgen/X/gi;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Up;->A1P(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 74690
    invoke-direct {p0, v1}, Lcom/facebook/ads/redexgen/X/Z2;->setViewAsCTA(Landroid/view/View;)V

    .line 74691
    :cond_3
    return-object v1

    .line 74692
    .end local v2    # "imageView":Lcom/facebook/ads/redexgen/X/6q;
    :cond_4
    return-object v9
.end method

.method public static synthetic A05(Lcom/facebook/ads/redexgen/X/Z2;)Lcom/facebook/ads/redexgen/X/Oq;
    .locals 0

    .line 74693
    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/Z2;->A08:Lcom/facebook/ads/redexgen/X/Oq;

    return-object p0
.end method

.method private A06()Lcom/facebook/ads/redexgen/X/Ob;
    .locals 1

    .line 74694
    new-instance v0, Lcom/facebook/ads/redexgen/X/Ob;

    invoke-direct {v0, p0}, Lcom/facebook/ads/redexgen/X/Ob;-><init>(Lcom/facebook/ads/redexgen/X/Z2;)V

    return-object v0
.end method

.method private A07(IIII)Lcom/facebook/ads/redexgen/X/fp;
    .locals 8

    .line 74695
    new-instance v1, Lcom/facebook/ads/redexgen/X/fp;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Z2;->A09:Lcom/facebook/ads/redexgen/X/fo;

    new-instance v6, Ljava/lang/ref/WeakReference;

    invoke-direct {v6, v0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iget-object v7, p0, Lcom/facebook/ads/redexgen/X/Z2;->A03:Lcom/facebook/ads/redexgen/X/gi;

    const/4 v5, 0x1

    move-object v2, p0

    move v4, p2

    move v3, p1

    invoke-direct/range {v1 .. v7}, Lcom/facebook/ads/redexgen/X/fp;-><init>(Landroid/view/View;IIZLjava/lang/ref/WeakReference;Lcom/facebook/ads/redexgen/X/gi;)V

    .line 74696
    .local v0, "viewabilityChecker":Lcom/facebook/ads/redexgen/X/fp;
    invoke-virtual {v1, p3}, Lcom/facebook/ads/redexgen/X/fp;->A0W(I)V

    .line 74697
    invoke-virtual {v1, p4}, Lcom/facebook/ads/redexgen/X/fp;->A0X(I)V

    .line 74698
    return-object v1
.end method

.method public static synthetic A08(Lcom/facebook/ads/redexgen/X/Z2;)Lcom/facebook/ads/redexgen/X/fp;
    .locals 0

    .line 74699
    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/Z2;->A0A:Lcom/facebook/ads/redexgen/X/fp;

    return-object p0
.end method

.method public static A09(III)Ljava/lang/String;
    .locals 4

    sget-object v1, Lcom/facebook/ads/redexgen/X/Z2;->A0D:[B

    add-int v0, p0, p1

    invoke-static {v1, p0, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p0

    const/4 p1, 0x0

    :goto_0
    array-length v0, p0

    if-ge p1, v0, :cond_1

    aget-byte v0, p0, p1

    sub-int/2addr v0, p2

    add-int/lit8 v0, v0, -0x63

    int-to-byte v3, v0

    sget-object v1, Lcom/facebook/ads/redexgen/X/Z2;->A0E:[Ljava/lang/String;

    const/4 v0, 0x6

    aget-object v1, v1, v0

    const/16 v0, 0x11

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x49

    if-eq v1, v0, :cond_0

    sget-object v2, Lcom/facebook/ads/redexgen/X/Z2;->A0E:[Ljava/lang/String;

    const-string v1, "HyV3wef6DGt1nbLL1fRSvAmBe6VeBas4"

    const/4 v0, 0x6

    aput-object v1, v2, v0

    aput-byte v3, p0, p1

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_1
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p0}, Ljava/lang/String;-><init>([B)V

    return-object v0
.end method

.method public static synthetic A0A(Lcom/facebook/ads/redexgen/X/Z2;)Ljava/lang/String;
    .locals 0

    .line 74700
    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/Z2;->A0B:Ljava/lang/String;

    return-object p0
.end method

.method public static synthetic A0B(Lcom/facebook/ads/redexgen/X/Z2;)Ljava/lang/ref/WeakReference;
    .locals 0

    .line 74701
    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/Z2;->A0C:Ljava/lang/ref/WeakReference;

    return-object p0
.end method

.method private A0C()V
    .locals 4

    .line 74702
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Z2;->A01:Lcom/facebook/ads/redexgen/X/ji;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/ji;->A0M()Ljava/lang/String;

    move-result-object v1

    .line 74703
    .local v0, "adChoicesLinkUrl":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 74704
    new-instance v3, Lcom/facebook/ads/redexgen/X/X6;

    invoke-direct {v3}, Lcom/facebook/ads/redexgen/X/X6;-><init>()V

    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/Z2;->A03:Lcom/facebook/ads/redexgen/X/gi;

    .line 74705
    invoke-static {v1}, Lcom/facebook/ads/redexgen/X/XB;->A00(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Z2;->A01:Lcom/facebook/ads/redexgen/X/ji;

    .line 74706
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/ji;->A7O()Ljava/lang/String;

    move-result-object v0

    .line 74707
    invoke-static {v3, v2, v1, v0}, Lcom/facebook/ads/redexgen/X/X6;->A0O(Lcom/facebook/ads/redexgen/X/X6;Lcom/facebook/ads/redexgen/X/gi;Landroid/net/Uri;Ljava/lang/String;)Z

    .line 74708
    :cond_0
    return-void
.end method

.method private A0D()V
    .locals 3

    .line 74709
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/Z2;->A05:Lcom/facebook/ads/redexgen/X/VI;

    sget-object v1, Lcom/facebook/ads/redexgen/X/VH;->A0A:Lcom/facebook/ads/redexgen/X/VH;

    const/4 v0, 0x0

    invoke-virtual {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/VI;->A04(Lcom/facebook/ads/redexgen/X/VH;Ljava/util/Map;)V

    .line 74710
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Z2;->A03:Lcom/facebook/ads/redexgen/X/gi;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/T8;->A02()Lcom/facebook/ads/redexgen/X/ge;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Oh;->A00(Lcom/facebook/ads/redexgen/X/ge;)Lcom/facebook/ads/redexgen/X/Og;

    move-result-object v2

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Z2;->A03:Lcom/facebook/ads/redexgen/X/gi;

    .line 74711
    const/4 v0, 0x0

    invoke-virtual {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Og;->A0O(Landroid/content/Context;Z)Z

    move-result v0

    if-nez v0, :cond_0

    .line 74712
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/Z2;->A0C()V

    .line 74713
    return-void

    .line 74714
    :cond_0
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/Z2;->A03:Lcom/facebook/ads/redexgen/X/gi;

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Z2;->A04:Lcom/facebook/ads/redexgen/X/VA;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Z2;->A01:Lcom/facebook/ads/redexgen/X/ji;

    .line 74715
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/ji;->A7O()Ljava/lang/String;

    move-result-object v0

    .line 74716
    invoke-static {v2, v1, v0, p0}, Lcom/facebook/ads/redexgen/X/Ze;->A01(Lcom/facebook/ads/redexgen/X/gi;Lcom/facebook/ads/redexgen/X/VA;Ljava/lang/String;Landroid/view/View;)Lcom/facebook/ads/redexgen/X/Zd;

    move-result-object v2

    .line 74717
    .local v0, "adReportingLayout":Lcom/facebook/ads/redexgen/X/Zd;
    if-nez v2, :cond_1

    .line 74718
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/Z2;->A0C()V

    .line 74719
    return-void

    .line 74720
    :cond_1
    invoke-static {p0}, Lcom/facebook/ads/redexgen/X/YB;->A0W(Landroid/view/ViewGroup;)V

    .line 74721
    const/4 v1, -0x1

    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v0, v1, v1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v2, v0}, Lcom/facebook/ads/redexgen/X/Z2;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 74722
    invoke-virtual {v2}, Lcom/facebook/ads/redexgen/X/Zd;->A0N()V

    .line 74723
    return-void
.end method

.method private A0E()V
    .locals 1

    .line 74724
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/Z2;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/Z2;->A00:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/Z2;->hasWindowFocus()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 74725
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Z2;->A0A:Lcom/facebook/ads/redexgen/X/fp;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/fp;->A0U()V

    .line 74726
    :goto_0
    return-void

    .line 74727
    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Z2;->A0A:Lcom/facebook/ads/redexgen/X/fp;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/fp;->A0V()V

    goto :goto_0
.end method

.method public static A0F()V
    .locals 1

    const/16 v0, 0x3f

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/facebook/ads/redexgen/X/Z2;->A0D:[B

    return-void

    :array_0
    .array-data 1
        -0x6t
        0x1dt
        -0x27t
        0x1dt
        0x1at
        0x2dt
        0x1at
        -0x27t
        0x1bt
        0x2et
        0x27t
        0x1dt
        0x25t
        0x1et
        -0x27t
        0x22t
        0x2ct
        -0x27t
        0x1ct
        0x1at
        0x27t
        0x27t
        0x28t
        0x2dt
        -0x27t
        0x1bt
        0x1et
        -0x27t
        0x27t
        0x2et
        0x25t
        0x25t
        0x34t
        0x40t
        0x3et
        -0x1t
        0x37t
        0x32t
        0x34t
        0x36t
        0x33t
        0x40t
        0x40t
        0x3ct
        -0x1t
        0x32t
        0x35t
        0x44t
        -0x1t
        0x33t
        0x32t
        0x3ft
        0x3ft
        0x36t
        0x43t
        -0x1t
        0x34t
        0x3dt
        0x3at
        0x34t
        0x3ct
        0x36t
        0x35t
    .end array-data
.end method

.method public static synthetic A0G(Lcom/facebook/ads/redexgen/X/Z2;)V
    .locals 0

    .line 74728
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/Z2;->A0D()V

    return-void
.end method

.method public static A0H(Lcom/facebook/ads/redexgen/X/Sx;Lcom/facebook/ads/redexgen/X/ji;)Z
    .locals 2

    .line 74729
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/ji;->A0e()Ljava/lang/String;

    move-result-object v1

    .line 74730
    .local v0, "videoUrl":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 74731
    const/4 v0, 0x0

    return v0

    .line 74732
    :cond_0
    invoke-virtual {p0, v1}, Lcom/facebook/ads/redexgen/X/Sx;->A0T(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method private getOrientation()I
    .locals 1

    .line 74742
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Z2;->A03:Lcom/facebook/ads/redexgen/X/gi;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/gi;->A0E()Landroid/app/Activity;

    move-result-object v0

    .line 74743
    .local v0, "activity":Landroid/app/Activity;
    if-eqz v0, :cond_0

    .line 74744
    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    return v0

    .line 74745
    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method private setViewAsCTA(Landroid/view/View;)V
    .locals 1

    .line 74763
    new-instance v0, Lcom/facebook/ads/redexgen/X/Z0;

    invoke-direct {v0, p0}, Lcom/facebook/ads/redexgen/X/Z0;-><init>(Lcom/facebook/ads/redexgen/X/Z2;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 74764
    return-void
.end method


# virtual methods
.method public final A0I()V
    .locals 1

    .line 74733
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Z2;->A08:Lcom/facebook/ads/redexgen/X/Oq;

    if-eqz v0, :cond_0

    .line 74734
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Z2;->A08:Lcom/facebook/ads/redexgen/X/Oq;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Oq;->A0D()V

    .line 74735
    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Z2;->A0A:Lcom/facebook/ads/redexgen/X/fp;

    if-eqz v0, :cond_1

    .line 74736
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Z2;->A0A:Lcom/facebook/ads/redexgen/X/fp;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/fp;->A0V()V

    .line 74737
    :cond_1
    invoke-static {p0}, Lcom/facebook/ads/redexgen/X/YB;->A0J(Landroid/view/View;)V

    .line 74738
    return-void
.end method

.method public final A0J()V
    .locals 4

    .line 74739
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Z2;->A08:Lcom/facebook/ads/redexgen/X/Oq;

    if-eqz v0, :cond_0

    .line 74740
    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/Z2;->A08:Lcom/facebook/ads/redexgen/X/Oq;

    sget-object v1, Lcom/facebook/ads/redexgen/X/Z2;->A0E:[Ljava/lang/String;

    const/4 v0, 0x2

    aget-object v1, v1, v0

    const/16 v0, 0xd

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x63

    if-eq v1, v0, :cond_1

    sget-object v2, Lcom/facebook/ads/redexgen/X/Z2;->A0E:[Ljava/lang/String;

    const-string v1, "hgkEcT5pEsAUKYMkvVnojxGMD5WCOUSh"

    const/4 v0, 0x0

    aput-object v1, v2, v0

    const-string v1, "qBRuzdoZQfMYUt1SZmDdshQz8Ndd8EXP"

    const/4 v0, 0x5

    aput-object v1, v2, v0

    invoke-virtual {v3}, Lcom/facebook/ads/redexgen/X/Oq;->A0E()V

    .line 74741
    :cond_0
    return-void

    :cond_1
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
.end method

.method public getViewabilityChecker()Lcom/facebook/ads/redexgen/X/fp;
    .locals 1

    .line 74746
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Z2;->A0A:Lcom/facebook/ads/redexgen/X/fp;

    return-object v0
.end method

.method public final onAttachedToWindow()V
    .locals 1

    .line 74747
    invoke-super {p0}, Landroid/widget/FrameLayout;->onAttachedToWindow()V

    .line 74748
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/Z2;->A00:Z

    .line 74749
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/Z2;->A0E()V

    .line 74750
    return-void
.end method

.method public final onDetachedFromWindow()V
    .locals 1

    .line 74751
    invoke-super {p0}, Landroid/widget/FrameLayout;->onDetachedFromWindow()V

    .line 74752
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/Z2;->A00:Z

    .line 74753
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/Z2;->A0E()V

    .line 74754
    return-void
.end method

.method public final onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2

    .line 74755
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Z2;->A06:Lcom/facebook/ads/redexgen/X/Y2;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Z2;->A03:Lcom/facebook/ads/redexgen/X/gi;

    invoke-virtual {v1, v0, p1, p0, p0}, Lcom/facebook/ads/redexgen/X/Y2;->A06(Lcom/facebook/ads/redexgen/X/gi;Landroid/view/MotionEvent;Landroid/view/View;Landroid/view/View;)V

    .line 74756
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public final onVisibilityChanged(Landroid/view/View;I)V
    .locals 0

    .line 74757
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onVisibilityChanged(Landroid/view/View;I)V

    .line 74758
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/Z2;->A0E()V

    .line 74759
    return-void
.end method

.method public final onWindowFocusChanged(Z)V
    .locals 0

    .line 74760
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onWindowFocusChanged(Z)V

    .line 74761
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/Z2;->A0E()V

    .line 74762
    return-void
.end method
