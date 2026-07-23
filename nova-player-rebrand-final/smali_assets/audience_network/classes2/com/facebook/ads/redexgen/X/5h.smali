.class public final Lcom/facebook/ads/redexgen/X/5h;
.super Lcom/facebook/ads/redexgen/X/Ij;
.source ""


# static fields
.field public static A09:[Ljava/lang/String;

.field public static final A0A:Landroid/widget/RelativeLayout$LayoutParams;


# instance fields
.field public A00:Lcom/facebook/ads/redexgen/X/XO;

.field public A01:Lcom/facebook/ads/redexgen/X/c3;

.field public A02:Lcom/facebook/ads/redexgen/X/DZ;

.field public final A03:I

.field public final A04:Landroid/widget/ImageView;

.field public final A05:Lcom/facebook/ads/redexgen/X/VI;

.field public final A06:Lcom/facebook/ads/redexgen/X/Yb;

.field public final A07:Lcom/facebook/ads/redexgen/X/dm;

.field public final A08:Ljava/util/concurrent/atomic/AtomicBoolean;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    .line 403
    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "48gXxVXafINQx"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "X9eHMFtmNxkudREV2ga0mL63IUwpVFyn"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "fDHVKSg"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "BJ3S"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "6p1nQLD"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "GwvdfXoW7Tkcgx6xI32"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "XjSW5yJHqMwpzXQP1hTrWYHuzeodWOV3"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "mLwcnNPCnn6Mi"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/5h;->A09:[Ljava/lang/String;

    const/4 v1, -0x1

    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v1, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    sput-object v0, Lcom/facebook/ads/redexgen/X/5h;->A0A:Landroid/widget/RelativeLayout$LayoutParams;

    return-void
.end method

.method public constructor <init>(Lcom/facebook/ads/redexgen/X/gi;Lcom/facebook/ads/redexgen/X/ZU;ILcom/facebook/ads/redexgen/X/VA;Lcom/facebook/ads/redexgen/X/jd;Lcom/facebook/ads/redexgen/X/Yh;Lcom/facebook/ads/redexgen/X/Yb;Lcom/facebook/ads/redexgen/X/VI;ZZLcom/facebook/ads/redexgen/X/dm;II)V
    .locals 13

    .line 15129
    move-object v2, p0

    move-object v3, p0

    move/from16 v12, p13

    move/from16 v10, p10

    move/from16 v9, p9

    move-object/from16 v11, p6

    move-object/from16 v7, p5

    move-object/from16 v6, p4

    move/from16 v8, p3

    move-object v5, p2

    move-object v4, p1

    invoke-direct/range {v3 .. v12}, Lcom/facebook/ads/redexgen/X/Ij;-><init>(Lcom/facebook/ads/redexgen/X/gi;Lcom/facebook/ads/redexgen/X/ZU;Lcom/facebook/ads/redexgen/X/VA;Lcom/facebook/ads/redexgen/X/jd;IZZLcom/facebook/ads/redexgen/X/Yh;I)V

    .line 15130
    const/4 v1, 0x0

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, v2, Lcom/facebook/ads/redexgen/X/5h;->A08:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 15131
    move/from16 v0, p12

    iput v0, v2, Lcom/facebook/ads/redexgen/X/5h;->A03:I

    .line 15132
    move-object/from16 v0, p11

    iput-object v0, v2, Lcom/facebook/ads/redexgen/X/5h;->A07:Lcom/facebook/ads/redexgen/X/dm;

    .line 15133
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/5h;->getContext()Landroid/content/Context;

    move-result-object v1

    new-instance v0, Landroid/widget/ImageView;

    invoke-direct {v0, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v0, v2, Lcom/facebook/ads/redexgen/X/5h;->A04:Landroid/widget/ImageView;

    .line 15134
    move-object/from16 v0, p7

    iput-object v0, v2, Lcom/facebook/ads/redexgen/X/5h;->A06:Lcom/facebook/ads/redexgen/X/Yb;

    .line 15135
    move-object/from16 v0, p8

    iput-object v0, v2, Lcom/facebook/ads/redexgen/X/5h;->A05:Lcom/facebook/ads/redexgen/X/VI;

    .line 15136
    invoke-virtual {v7}, Lcom/facebook/ads/redexgen/X/NQ;->A1c()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 15137
    iget v1, v2, Lcom/facebook/ads/redexgen/X/5h;->A03:I

    new-instance v0, Lcom/facebook/ads/redexgen/X/DZ;

    invoke-direct {v0, v4, v1}, Lcom/facebook/ads/redexgen/X/DZ;-><init>(Lcom/facebook/ads/redexgen/X/gi;I)V

    iput-object v0, v2, Lcom/facebook/ads/redexgen/X/5h;->A02:Lcom/facebook/ads/redexgen/X/DZ;

    .line 15138
    :cond_0
    iget-object v1, v2, Lcom/facebook/ads/redexgen/X/5h;->A04:Landroid/widget/ImageView;

    sget-object v0, Landroid/widget/ImageView$ScaleType;->CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 15139
    iget-object v1, v2, Lcom/facebook/ads/redexgen/X/5h;->A04:Landroid/widget/ImageView;

    const/4 v0, 0x1

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setAdjustViewBounds(Z)V

    .line 15140
    iget-object v0, v2, Lcom/facebook/ads/redexgen/X/5h;->A04:Landroid/widget/ImageView;

    new-instance v2, Lcom/facebook/ads/redexgen/X/LM;

    invoke-direct {v2, v0, v4}, Lcom/facebook/ads/redexgen/X/LM;-><init>(Landroid/widget/ImageView;Lcom/facebook/ads/redexgen/X/gi;)V

    .line 15141
    invoke-virtual {v7}, Lcom/facebook/ads/redexgen/X/jd;->A29()Lcom/facebook/ads/redexgen/X/NR;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/NR;->A0H()Lcom/facebook/ads/redexgen/X/NU;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/NU;->A00()I

    move-result v1

    .line 15142
    invoke-virtual {v7}, Lcom/facebook/ads/redexgen/X/jd;->A29()Lcom/facebook/ads/redexgen/X/NR;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/NR;->A0H()Lcom/facebook/ads/redexgen/X/NU;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/NU;->A01()I

    move-result v0

    .line 15143
    invoke-virtual {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/LM;->A05(II)Lcom/facebook/ads/redexgen/X/LM;

    move-result-object v1

    new-instance v0, Lcom/facebook/ads/redexgen/X/Ih;

    invoke-direct {v0, p0}, Lcom/facebook/ads/redexgen/X/Ih;-><init>(Lcom/facebook/ads/redexgen/X/5h;)V

    .line 15144
    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/LM;->A06(Lcom/facebook/ads/redexgen/X/b8;)Lcom/facebook/ads/redexgen/X/LM;

    move-result-object v1

    .line 15145
    invoke-virtual {v7}, Lcom/facebook/ads/redexgen/X/jd;->A29()Lcom/facebook/ads/redexgen/X/NR;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/NR;->A0H()Lcom/facebook/ads/redexgen/X/NU;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/NU;->A08()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/LM;->A07(Ljava/lang/String;)V

    .line 15146
    invoke-virtual {v4}, Lcom/facebook/ads/redexgen/X/gi;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    .line 15147
    .local v4, "orientation":I
    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/5h;->A08(I)V

    .line 15148
    return-void
.end method

.method public static synthetic A00(Lcom/facebook/ads/redexgen/X/5h;)I
    .locals 0

    .line 15149
    iget p0, p0, Lcom/facebook/ads/redexgen/X/5h;->A03:I

    return p0
.end method

.method public static synthetic A01(Lcom/facebook/ads/redexgen/X/5h;)Lcom/facebook/ads/redexgen/X/Yb;
    .locals 0

    .line 15150
    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/5h;->A06:Lcom/facebook/ads/redexgen/X/Yb;

    return-object p0
.end method

.method private A02(I)Lcom/facebook/ads/redexgen/X/c3;
    .locals 12

    .line 15151
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/5h;->A04:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 15152
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/5h;->A04:Landroid/widget/ImageView;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/YB;->A0J(Landroid/view/View;)V

    .line 15153
    :cond_0
    const/4 v1, 0x2

    const/4 v0, 0x1

    if-eq p1, v1, :cond_2

    const/4 v3, 0x1

    .line 15154
    .local v0, "showPageDetailsInFooter":Z
    :goto_0
    new-instance v4, Lcom/facebook/ads/redexgen/X/c6;

    iget-object v5, p0, Lcom/facebook/ads/redexgen/X/Ij;->A07:Lcom/facebook/ads/redexgen/X/gi;

    iget-object v6, p0, Lcom/facebook/ads/redexgen/X/Ij;->A08:Lcom/facebook/ads/redexgen/X/VA;

    iget-object v7, p0, Lcom/facebook/ads/redexgen/X/Ij;->A0B:Lcom/facebook/ads/redexgen/X/Yh;

    iget-object v8, p0, Lcom/facebook/ads/redexgen/X/Ij;->A06:Lcom/facebook/ads/redexgen/X/jd;

    iget-object v9, p0, Lcom/facebook/ads/redexgen/X/5h;->A04:Landroid/widget/ImageView;

    iget-object v10, p0, Lcom/facebook/ads/redexgen/X/Ij;->A0D:Lcom/facebook/ads/redexgen/X/fp;

    iget-object v11, p0, Lcom/facebook/ads/redexgen/X/Ij;->A0A:Lcom/facebook/ads/redexgen/X/Y2;

    invoke-direct/range {v4 .. v11}, Lcom/facebook/ads/redexgen/X/c6;-><init>(Lcom/facebook/ads/redexgen/X/gi;Lcom/facebook/ads/redexgen/X/VA;Lcom/facebook/ads/redexgen/X/Yh;Lcom/facebook/ads/redexgen/X/jd;Landroid/view/View;Lcom/facebook/ads/redexgen/X/fp;Lcom/facebook/ads/redexgen/X/Y2;)V

    .line 15155
    .local v2, "interstitialLayoutParamsBuilder":Lcom/facebook/ads/redexgen/X/c6;
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/5h;->A06:Lcom/facebook/ads/redexgen/X/Yb;

    .line 15156
    invoke-virtual {v1}, Lcom/facebook/ads/redexgen/X/Yb;->getToolbarHeight()I

    move-result v1

    invoke-virtual {v4, v1}, Lcom/facebook/ads/redexgen/X/c6;->A0J(I)Lcom/facebook/ads/redexgen/X/c6;

    move-result-object v2

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/5h;->A06:Lcom/facebook/ads/redexgen/X/Yb;

    .line 15157
    invoke-virtual {v2, v1}, Lcom/facebook/ads/redexgen/X/c6;->A0P(Lcom/facebook/ads/redexgen/X/Yb;)Lcom/facebook/ads/redexgen/X/c6;

    move-result-object v1

    .line 15158
    invoke-virtual {v1, p1}, Lcom/facebook/ads/redexgen/X/c6;->A0I(I)Lcom/facebook/ads/redexgen/X/c6;

    move-result-object v1

    .line 15159
    invoke-virtual {v1, v3}, Lcom/facebook/ads/redexgen/X/c6;->A0T(Z)Lcom/facebook/ads/redexgen/X/c6;

    move-result-object v2

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Ij;->A00:Ljava/lang/String;

    .line 15160
    invoke-virtual {v2, v1}, Lcom/facebook/ads/redexgen/X/c6;->A0S(Ljava/lang/String;)Lcom/facebook/ads/redexgen/X/c6;

    move-result-object v2

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/5h;->A05:Lcom/facebook/ads/redexgen/X/VI;

    .line 15161
    invoke-virtual {v2, v1}, Lcom/facebook/ads/redexgen/X/c6;->A0M(Lcom/facebook/ads/redexgen/X/VI;)Lcom/facebook/ads/redexgen/X/c6;

    .line 15162
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/5h;->A02:Lcom/facebook/ads/redexgen/X/DZ;

    if-eqz v1, :cond_1

    .line 15163
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/5h;->A02:Lcom/facebook/ads/redexgen/X/DZ;

    invoke-virtual {v4, v1}, Lcom/facebook/ads/redexgen/X/c6;->A0R(Lcom/facebook/ads/redexgen/X/DZ;)Lcom/facebook/ads/redexgen/X/c6;

    .line 15164
    :cond_1
    iget-object v5, p0, Lcom/facebook/ads/redexgen/X/Ij;->A07:Lcom/facebook/ads/redexgen/X/gi;

    iget-object v6, p0, Lcom/facebook/ads/redexgen/X/Ij;->A08:Lcom/facebook/ads/redexgen/X/VA;

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Ij;->A06:Lcom/facebook/ads/redexgen/X/jd;

    .line 15165
    invoke-virtual {v1}, Lcom/facebook/ads/redexgen/X/jd;->A29()Lcom/facebook/ads/redexgen/X/NR;

    move-result-object v1

    invoke-virtual {v1}, Lcom/facebook/ads/redexgen/X/NR;->A0J()Lcom/facebook/ads/redexgen/X/Nc;

    move-result-object v1

    invoke-virtual {v1}, Lcom/facebook/ads/redexgen/X/Nc;->A05()Ljava/lang/String;

    move-result-object v1

    .line 15166
    invoke-static {v1}, Lcom/facebook/ads/redexgen/X/XB;->A00(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v8

    new-instance v9, Ljava/util/HashMap;

    invoke-direct {v9}, Ljava/util/HashMap;-><init>()V

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Ij;->A06:Lcom/facebook/ads/redexgen/X/jd;

    .line 15167
    invoke-virtual {v1}, Lcom/facebook/ads/redexgen/X/jd;->A2A()Lcom/facebook/ads/redexgen/X/Ng;

    move-result-object v10

    .line 15168
    const-string v7, ""

    invoke-static/range {v5 .. v10}, Lcom/facebook/ads/redexgen/X/Mu;->A00(Lcom/facebook/ads/redexgen/X/gi;Lcom/facebook/ads/redexgen/X/VA;Ljava/lang/String;Landroid/net/Uri;Ljava/util/Map;Lcom/facebook/ads/redexgen/X/Ng;)Lcom/facebook/ads/redexgen/X/Mt;

    move-result-object v1

    .line 15169
    .local v3, "adAction":Lcom/facebook/ads/redexgen/X/Mt;
    invoke-virtual {v4, v1}, Lcom/facebook/ads/redexgen/X/c6;->A0L(Lcom/facebook/ads/redexgen/X/Mt;)Lcom/facebook/ads/redexgen/X/c6;

    .line 15170
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/5h;->A07:Lcom/facebook/ads/redexgen/X/dm;

    invoke-virtual {v4, v1}, Lcom/facebook/ads/redexgen/X/c6;->A0Q(Lcom/facebook/ads/redexgen/X/dm;)Lcom/facebook/ads/redexgen/X/c6;

    .line 15171
    invoke-virtual {v4}, Lcom/facebook/ads/redexgen/X/c6;->A0U()Lcom/facebook/ads/redexgen/X/c7;

    move-result-object v2

    .line 15172
    .local v4, "params":Lcom/facebook/ads/redexgen/X/c7;
    const/4 v1, 0x0

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/c4;->A00(Lcom/facebook/ads/redexgen/X/c7;Landroid/os/Bundle;Z)Lcom/facebook/ads/redexgen/X/c3;

    move-result-object v0

    return-object v0

    .line 15173
    :cond_2
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public static synthetic A03(Lcom/facebook/ads/redexgen/X/5h;)Lcom/facebook/ads/redexgen/X/c3;
    .locals 0

    .line 15174
    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/5h;->A01:Lcom/facebook/ads/redexgen/X/c3;

    return-object p0
.end method

.method public static synthetic A04(Lcom/facebook/ads/redexgen/X/5h;)Lcom/facebook/ads/redexgen/X/dm;
    .locals 0

    .line 15175
    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/5h;->A07:Lcom/facebook/ads/redexgen/X/dm;

    return-object p0
.end method

.method public static synthetic A05(Lcom/facebook/ads/redexgen/X/5h;)Lcom/facebook/ads/redexgen/X/DZ;
    .locals 0

    .line 15176
    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/5h;->A02:Lcom/facebook/ads/redexgen/X/DZ;

    return-object p0
.end method

.method public static synthetic A06(Lcom/facebook/ads/redexgen/X/5h;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 0

    .line 15177
    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/5h;->A08:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object p0
.end method

.method private A07()V
    .locals 1

    .line 15178
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/5h;->A08:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 15179
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/Ij;->A1F()V

    .line 15180
    :cond_0
    return-void
.end method

.method private A08(I)V
    .locals 5

    .line 15181
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/5h;->A01:Lcom/facebook/ads/redexgen/X/c3;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/YB;->A0J(Landroid/view/View;)V

    .line 15182
    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/5h;->A02(I)Lcom/facebook/ads/redexgen/X/c3;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/5h;->A01:Lcom/facebook/ads/redexgen/X/c3;

    .line 15183
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/5h;->A01:Lcom/facebook/ads/redexgen/X/c3;

    instance-of v0, v0, Lcom/facebook/ads/redexgen/X/KE;

    const/4 v4, 0x1

    if-eqz v0, :cond_1

    .line 15184
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/5h;->A01:Lcom/facebook/ads/redexgen/X/c3;

    check-cast v0, Lcom/facebook/ads/redexgen/X/KE;

    invoke-virtual {v0, v4}, Lcom/facebook/ads/redexgen/X/KE;->setChildChainedAd(Z)V

    .line 15185
    :cond_0
    :goto_0
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/5h;->A01:Lcom/facebook/ads/redexgen/X/c3;

    const/4 v1, 0x0

    sget-object v0, Lcom/facebook/ads/redexgen/X/5h;->A0A:Landroid/widget/RelativeLayout$LayoutParams;

    invoke-virtual {p0, v2, v1, v0}, Lcom/facebook/ads/redexgen/X/5h;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 15186
    return-void

    .line 15187
    :cond_1
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/5h;->A01:Lcom/facebook/ads/redexgen/X/c3;

    instance-of v0, v0, Lcom/facebook/ads/redexgen/X/Ji;

    if-eqz v0, :cond_0

    .line 15188
    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/5h;->A01:Lcom/facebook/ads/redexgen/X/c3;

    sget-object v2, Lcom/facebook/ads/redexgen/X/5h;->A09:[Ljava/lang/String;

    const/4 v0, 0x1

    aget-object v1, v2, v0

    const/4 v0, 0x6

    aget-object v2, v2, v0

    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v1, v0, :cond_2

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_2
    sget-object v2, Lcom/facebook/ads/redexgen/X/5h;->A09:[Ljava/lang/String;

    const-string v1, "Sp2NSSouatJBlog5Q54"

    const/4 v0, 0x5

    aput-object v1, v2, v0

    check-cast v3, Lcom/facebook/ads/redexgen/X/Ji;

    invoke-virtual {v3, v4}, Lcom/facebook/ads/redexgen/X/Ji;->setChildChainedAd(Z)V

    goto :goto_0
.end method

.method public static synthetic A09(Lcom/facebook/ads/redexgen/X/5h;)V
    .locals 0

    .line 15189
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/5h;->A07()V

    return-void
.end method


# virtual methods
.method public final A1D(Ljava/lang/String;)Lcom/facebook/ads/redexgen/X/Mq;
    .locals 1

    .line 15190
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/5h;->A01:Lcom/facebook/ads/redexgen/X/c3;

    invoke-virtual {v0, p1}, Lcom/facebook/ads/redexgen/X/c3;->A1B(Ljava/lang/String;)Lcom/facebook/ads/redexgen/X/Mq;

    move-result-object v0

    return-object v0
.end method

.method public final A1E()V
    .locals 2

    .line 15191
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Ij;->A07:Lcom/facebook/ads/redexgen/X/gi;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Up;->A1z(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 15192
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Ij;->A07:Lcom/facebook/ads/redexgen/X/gi;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/T8;->A0B()Lcom/facebook/ads/redexgen/X/VM;

    move-result-object v1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/5h;->A04:Landroid/widget/ImageView;

    invoke-interface {v1, v0}, Lcom/facebook/ads/redexgen/X/VM;->AKU(Landroid/view/View;)V

    .line 15193
    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/5h;->A01:Lcom/facebook/ads/redexgen/X/c3;

    if-eqz v0, :cond_1

    .line 15194
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/5h;->A01:Lcom/facebook/ads/redexgen/X/c3;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/c3;->A1C()V

    .line 15195
    :cond_1
    return-void
.end method

.method public final A1G()V
    .locals 4

    .line 15196
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/5h;->A01:Lcom/facebook/ads/redexgen/X/c3;

    instance-of v0, v0, Lcom/facebook/ads/redexgen/X/Kc;

    if-eqz v0, :cond_0

    .line 15197
    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/5h;->A01:Lcom/facebook/ads/redexgen/X/c3;

    sget-object v2, Lcom/facebook/ads/redexgen/X/5h;->A09:[Ljava/lang/String;

    const/4 v0, 0x7

    aget-object v1, v2, v0

    const/4 v0, 0x0

    aget-object v0, v2, v0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eq v1, v0, :cond_1

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    .line 15198
    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/5h;->A01:Lcom/facebook/ads/redexgen/X/c3;

    instance-of v0, v0, Lcom/facebook/ads/redexgen/X/Ji;

    if-eqz v0, :cond_2

    .line 15199
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/5h;->A01:Lcom/facebook/ads/redexgen/X/c3;

    check-cast v1, Lcom/facebook/ads/redexgen/X/Ji;

    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/Ji;->A1Q(Z)V

    goto :goto_0

    .line 15200
    :cond_1
    sget-object v2, Lcom/facebook/ads/redexgen/X/5h;->A09:[Ljava/lang/String;

    const-string v1, "fHRV"

    const/4 v0, 0x3

    aput-object v1, v2, v0

    check-cast v3, Lcom/facebook/ads/redexgen/X/Kc;

    invoke-virtual {v3}, Lcom/facebook/ads/redexgen/X/Kc;->A1Q()V

    .line 15201
    :cond_2
    :goto_0
    return-void
.end method

.method public final A1H()V
    .locals 10

    .line 15202
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Ij;->A06:Lcom/facebook/ads/redexgen/X/jd;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/jd;->A29()Lcom/facebook/ads/redexgen/X/NR;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/NR;->A0H()Lcom/facebook/ads/redexgen/X/NU;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/NU;->A02()I

    move-result v2

    .line 15203
    .local v0, "secondsForNextCta":I
    iget v0, p0, Lcom/facebook/ads/redexgen/X/5h;->A03:I

    if-lez v0, :cond_4

    .line 15204
    new-instance v3, Lcom/facebook/ads/redexgen/X/XO;

    iget v4, p0, Lcom/facebook/ads/redexgen/X/5h;->A03:I

    .line 15205
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    new-instance v8, Landroid/os/Handler;

    invoke-direct {v8, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v9, Lcom/facebook/ads/redexgen/X/If;

    invoke-direct {v9, p0}, Lcom/facebook/ads/redexgen/X/If;-><init>(Lcom/facebook/ads/redexgen/X/5h;)V

    const/high16 v5, 0x42c80000    # 100.0f

    const-wide/16 v6, 0x64

    invoke-direct/range {v3 .. v9}, Lcom/facebook/ads/redexgen/X/XO;-><init>(IFJLandroid/os/Handler;Lcom/facebook/ads/redexgen/X/XN;)V

    iput-object v3, p0, Lcom/facebook/ads/redexgen/X/5h;->A00:Lcom/facebook/ads/redexgen/X/XO;

    .line 15206
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/5h;->A00:Lcom/facebook/ads/redexgen/X/XO;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/XO;->A07()Z

    .line 15207
    if-ltz v2, :cond_0

    .line 15208
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/5h;->A06:Lcom/facebook/ads/redexgen/X/Yb;

    const/4 v0, 0x1

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/Yb;->setProgressSpinnerInvisible(Z)V

    .line 15209
    :cond_0
    if-eqz v2, :cond_1

    iget v0, p0, Lcom/facebook/ads/redexgen/X/5h;->A03:I

    if-lt v2, v0, :cond_3

    .line 15210
    :cond_1
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/5h;->A06:Lcom/facebook/ads/redexgen/X/Yb;

    const/16 v0, 0x8

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/Yb;->setToolbarActionMode(I)V

    .line 15211
    :cond_2
    :goto_0
    return-void

    .line 15212
    :cond_3
    if-lez v2, :cond_2

    .line 15213
    new-instance v1, Lcom/facebook/ads/redexgen/X/Id;

    invoke-direct {v1, p0}, Lcom/facebook/ads/redexgen/X/Id;-><init>(Lcom/facebook/ads/redexgen/X/5h;)V

    new-instance v0, Lcom/facebook/ads/redexgen/X/XO;

    invoke-direct {v0, v2, v1}, Lcom/facebook/ads/redexgen/X/XO;-><init>(ILcom/facebook/ads/redexgen/X/XN;)V

    .line 15214
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/XO;->A07()Z

    goto :goto_0

    .line 15215
    :cond_4
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/5h;->A07:Lcom/facebook/ads/redexgen/X/dm;

    const/4 v0, 0x0

    invoke-interface {v1, v0}, Lcom/facebook/ads/redexgen/X/dm;->AFw(Z)V

    goto :goto_0
.end method

.method public final A1I(Z)V
    .locals 1

    .line 15216
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/5h;->A01:Lcom/facebook/ads/redexgen/X/c3;

    invoke-virtual {v0, p1}, Lcom/facebook/ads/redexgen/X/c3;->setChainedWatchAndBrowseSkippableStatus(Z)V

    .line 15217
    return-void
.end method

.method public final A1J(Z)V
    .locals 1

    .line 15218
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/5h;->A00:Lcom/facebook/ads/redexgen/X/XO;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/5h;->A00:Lcom/facebook/ads/redexgen/X/XO;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/XO;->A05()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 15219
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/5h;->A00:Lcom/facebook/ads/redexgen/X/XO;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/XO;->A06()Z

    .line 15220
    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/5h;->A01:Lcom/facebook/ads/redexgen/X/c3;

    if-eqz v0, :cond_1

    .line 15221
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/5h;->A01:Lcom/facebook/ads/redexgen/X/c3;

    invoke-virtual {v0, p1}, Lcom/facebook/ads/redexgen/X/c3;->A1L(Z)V

    .line 15222
    :cond_1
    return-void
.end method

.method public final A1K(Z)V
    .locals 1

    .line 15223
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/5h;->A00:Lcom/facebook/ads/redexgen/X/XO;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/5h;->A00:Lcom/facebook/ads/redexgen/X/XO;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/XO;->A04()Z

    move-result v0

    if-nez v0, :cond_0

    .line 15224
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/5h;->A00:Lcom/facebook/ads/redexgen/X/XO;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/XO;->A07()Z

    .line 15225
    :cond_0
    return-void
.end method

.method public final A1L()Z
    .locals 2

    .line 15226
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/5h;->A01:Lcom/facebook/ads/redexgen/X/c3;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/c3;->A1M()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 15227
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/5h;->A01:Lcom/facebook/ads/redexgen/X/c3;

    instance-of v0, v0, Lcom/facebook/ads/redexgen/X/Kc;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/5h;->A01:Lcom/facebook/ads/redexgen/X/c3;

    check-cast v0, Lcom/facebook/ads/redexgen/X/Kc;

    .line 15228
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Kc;->A1R()Z

    move-result v0

    if-nez v0, :cond_0

    .line 15229
    return v1

    .line 15230
    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/5h;->A01:Lcom/facebook/ads/redexgen/X/c3;

    instance-of v0, v0, Lcom/facebook/ads/redexgen/X/Ji;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/5h;->A01:Lcom/facebook/ads/redexgen/X/c3;

    check-cast v0, Lcom/facebook/ads/redexgen/X/Ji;

    .line 15231
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Ji;->A1S()Z

    move-result v0

    if-nez v0, :cond_1

    .line 15232
    return v1

    .line 15233
    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public final A1M()Z
    .locals 4

    .line 15234
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/5h;->A01:Lcom/facebook/ads/redexgen/X/c3;

    instance-of v0, v0, Lcom/facebook/ads/redexgen/X/Kc;

    if-eqz v0, :cond_0

    .line 15235
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/5h;->A01:Lcom/facebook/ads/redexgen/X/c3;

    check-cast v0, Lcom/facebook/ads/redexgen/X/Kc;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Kc;->A1R()Z

    move-result v0

    return v0

    .line 15236
    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/5h;->A01:Lcom/facebook/ads/redexgen/X/c3;

    instance-of v3, v0, Lcom/facebook/ads/redexgen/X/Ji;

    sget-object v2, Lcom/facebook/ads/redexgen/X/5h;->A09:[Ljava/lang/String;

    const/4 v0, 0x1

    aget-object v1, v2, v0

    const/4 v0, 0x6

    aget-object v2, v2, v0

    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v1, v0, :cond_1

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_1
    sget-object v2, Lcom/facebook/ads/redexgen/X/5h;->A09:[Ljava/lang/String;

    const-string v1, "VUX6Wbk"

    const/4 v0, 0x2

    aput-object v1, v2, v0

    const-string v1, "Kq1l7t9"

    const/4 v0, 0x4

    aput-object v1, v2, v0

    if-eqz v3, :cond_2

    .line 15237
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/5h;->A01:Lcom/facebook/ads/redexgen/X/c3;

    check-cast v0, Lcom/facebook/ads/redexgen/X/Ji;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Ji;->A1S()Z

    move-result v0

    return v0

    .line 15238
    :cond_2
    const/4 v0, 0x0

    return v0
.end method

.method public final A1N()Z
    .locals 1

    .line 15239
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/5h;->A01:Lcom/facebook/ads/redexgen/X/c3;

    instance-of v0, v0, Lcom/facebook/ads/redexgen/X/Kc;

    if-eqz v0, :cond_0

    .line 15240
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/5h;->A01:Lcom/facebook/ads/redexgen/X/c3;

    check-cast v0, Lcom/facebook/ads/redexgen/X/Kc;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Kc;->A1S()Z

    move-result v0

    return v0

    .line 15241
    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/5h;->A01:Lcom/facebook/ads/redexgen/X/c3;

    instance-of v0, v0, Lcom/facebook/ads/redexgen/X/Ji;

    if-eqz v0, :cond_1

    .line 15242
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/5h;->A01:Lcom/facebook/ads/redexgen/X/c3;

    check-cast v0, Lcom/facebook/ads/redexgen/X/Ji;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Ji;->A1T()Z

    move-result v0

    return v0

    .line 15243
    :cond_1
    const/4 v0, 0x1

    return v0
.end method

.method public getFullScreenAdStyle()Lcom/facebook/ads/redexgen/X/dk;
    .locals 9

    .line 15244
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/5h;->A01:Lcom/facebook/ads/redexgen/X/c3;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/c3;->getColors()Lcom/facebook/ads/redexgen/X/Na;

    move-result-object v5

    .line 15245
    .local v0, "colors":Lcom/facebook/ads/redexgen/X/Na;
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/5h;->A01:Lcom/facebook/ads/redexgen/X/c3;

    .line 15246
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/c3;->A1O()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/5h;->A01:Lcom/facebook/ads/redexgen/X/c3;

    instance-of v0, v0, Lcom/facebook/ads/redexgen/X/Ka;

    if-eqz v0, :cond_1

    :cond_0
    const/4 v1, 0x1

    .line 15247
    .local v8, "fullScreenColors":Z
    :goto_0
    new-instance v2, Lcom/facebook/ads/redexgen/X/dk;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/5h;->A01:Lcom/facebook/ads/redexgen/X/c3;

    .line 15248
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/c3;->A1O()Z

    move-result v3

    sget v4, Lcom/facebook/ads/redexgen/X/dk;->A07:I

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Ij;->A06:Lcom/facebook/ads/redexgen/X/jd;

    .line 15249
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Kr;->A05(Lcom/facebook/ads/redexgen/X/jd;)Z

    move-result v6

    .line 15250
    invoke-virtual {v5, v1}, Lcom/facebook/ads/redexgen/X/Na;->A08(Z)I

    move-result v7

    const/4 v8, 0x0

    invoke-direct/range {v2 .. v8}, Lcom/facebook/ads/redexgen/X/dk;-><init>(ZILcom/facebook/ads/redexgen/X/Na;ZILjava/lang/String;)V

    .line 15251
    return-object v2

    .line 15252
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public final onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1

    .line 15253
    invoke-super {p0, p1}, Lcom/facebook/ads/redexgen/X/Ij;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 15254
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/5h;->A01:Lcom/facebook/ads/redexgen/X/c3;

    instance-of v0, v0, Lcom/facebook/ads/redexgen/X/Kc;

    if-eqz v0, :cond_0

    .line 15255
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/5h;->A01:Lcom/facebook/ads/redexgen/X/c3;

    invoke-virtual {v0, p1}, Lcom/facebook/ads/redexgen/X/c3;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 15256
    return-void

    .line 15257
    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Ij;->A06:Lcom/facebook/ads/redexgen/X/jd;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/jd;->A29()Lcom/facebook/ads/redexgen/X/NR;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/NR;->A0T()Z

    move-result v0

    if-nez v0, :cond_1

    .line 15258
    iget v0, p1, Landroid/content/res/Configuration;->orientation:I

    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/5h;->A08(I)V

    .line 15259
    :cond_1
    return-void
.end method
