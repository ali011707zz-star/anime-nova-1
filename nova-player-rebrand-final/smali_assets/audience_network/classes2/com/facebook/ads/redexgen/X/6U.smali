.class public final Lcom/facebook/ads/redexgen/X/6U;
.super Lcom/facebook/ads/redexgen/X/LK;
.source ""


# static fields
.field public static A01:[Ljava/lang/String;


# instance fields
.field public final A00:Ljava/lang/Runnable;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    .line 437
    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "jx4KYlgMCzDl9ClzKv"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "6Ix4GmMTfvyGvtJf24kawibkIRWRaxha"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "zW69YqA5HPweJk44OR41r89kehyD8PUK"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "YWeaBtgKCGSZjZhmH64nz1hbm3NBx6WA"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "r8zWPPccQcaX84RMJyONYLJrFGke7QKT"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "leMtqeNEOkXnn1xJcE4uVuewwh76dLco"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "HficAYafh9u7bjEKghLSIT4OmCXpUy86"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "1EAnVhI1sEBIq9Q3DhiB3BUE0Cu5Wqiv"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/6U;->A01:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/facebook/ads/redexgen/X/gi;Lcom/facebook/ads/redexgen/X/Kr;IZLcom/facebook/ads/redexgen/X/Na;Ljava/lang/String;Lcom/facebook/ads/redexgen/X/VA;Lcom/facebook/ads/redexgen/X/Yh;Lcom/facebook/ads/redexgen/X/fp;Lcom/facebook/ads/redexgen/X/Y2;Lcom/facebook/ads/redexgen/X/jd;Lcom/facebook/ads/redexgen/X/DZ;Lcom/facebook/ads/redexgen/X/VI;Z)V
    .locals 16

    .line 17151
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

    .line 17152
    move-object/from16 v2, p0

    new-instance v0, Lcom/facebook/ads/redexgen/X/bM;

    invoke-direct {v0, v2}, Lcom/facebook/ads/redexgen/X/bM;-><init>(Lcom/facebook/ads/redexgen/X/6U;)V

    iput-object v0, v2, Lcom/facebook/ads/redexgen/X/6U;->A00:Ljava/lang/Runnable;

    .line 17153
    invoke-virtual/range {p0 .. p0}, Lcom/facebook/ads/redexgen/X/6U;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v1, v0, Landroid/content/res/Configuration;->orientation:I

    .line 17154
    .local v0, "orientation":I
    invoke-direct {v2, v1}, Lcom/facebook/ads/redexgen/X/6U;->A08(I)V

    .line 17155
    invoke-direct {v2, v1}, Lcom/facebook/ads/redexgen/X/6U;->A0E(I)V

    .line 17156
    invoke-direct/range {p0 .. p0}, Lcom/facebook/ads/redexgen/X/6U;->A04()V

    .line 17157
    invoke-direct {v2, v1}, Lcom/facebook/ads/redexgen/X/6U;->A09(I)V

    .line 17158
    invoke-direct {v2, v1}, Lcom/facebook/ads/redexgen/X/6U;->A0D(I)V

    .line 17159
    invoke-direct {v2, v1}, Lcom/facebook/ads/redexgen/X/6U;->A0F(I)V

    .line 17160
    invoke-direct {v2, v1}, Lcom/facebook/ads/redexgen/X/6U;->A0C(I)V

    .line 17161
    invoke-direct/range {p0 .. p0}, Lcom/facebook/ads/redexgen/X/6U;->A03()V

    .line 17162
    invoke-direct/range {p0 .. p0}, Lcom/facebook/ads/redexgen/X/6U;->A02()V

    .line 17163
    invoke-direct/range {p0 .. p0}, Lcom/facebook/ads/redexgen/X/6U;->A05()V

    .line 17164
    iget-object v0, v2, Lcom/facebook/ads/redexgen/X/LK;->A04:Landroid/widget/TextView;

    invoke-direct {v2, v0}, Lcom/facebook/ads/redexgen/X/6U;->A0H(Landroid/widget/TextView;)V

    .line 17165
    invoke-direct {v2, v1}, Lcom/facebook/ads/redexgen/X/6U;->A0A(I)V

    .line 17166
    invoke-direct {v2, v1}, Lcom/facebook/ads/redexgen/X/6U;->A0B(I)V

    .line 17167
    iget-object v0, v2, Lcom/facebook/ads/redexgen/X/LK;->A06:Lcom/facebook/ads/redexgen/X/aN;

    invoke-direct {v2, v0, v1}, Lcom/facebook/ads/redexgen/X/6U;->A0G(Landroid/view/View;I)V

    .line 17168
    iget-object v0, v2, Lcom/facebook/ads/redexgen/X/LK;->A05:Lcom/facebook/ads/redexgen/X/aJ;

    invoke-direct {v2, v0, v1}, Lcom/facebook/ads/redexgen/X/6U;->A0G(Landroid/view/View;I)V

    .line 17169
    invoke-direct {v2, v1}, Lcom/facebook/ads/redexgen/X/6U;->A06(I)V

    .line 17170
    iget-object v1, v2, Lcom/facebook/ads/redexgen/X/LK;->A0O:Landroid/widget/RelativeLayout;

    iget-object v0, v2, Lcom/facebook/ads/redexgen/X/LK;->A0M:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, v0}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 17171
    iget-object v0, v2, Lcom/facebook/ads/redexgen/X/LK;->A0O:Landroid/widget/RelativeLayout;

    invoke-virtual {v2, v0}, Lcom/facebook/ads/redexgen/X/6U;->addView(Landroid/view/View;)V

    .line 17172
    return-void
.end method

.method private A00()V
    .locals 3

    .line 17173
    const/16 v0, 0xc

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

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/LK;->A0K:Landroid/widget/LinearLayout;

    aput-object v0, v2, v1

    const/4 v1, 0x7

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/LK;->A0V:Lcom/facebook/ads/redexgen/X/aJ;

    aput-object v0, v2, v1

    const/16 v1, 0x8

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/LK;->A06:Lcom/facebook/ads/redexgen/X/aN;

    aput-object v0, v2, v1

    const/16 v1, 0x9

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/LK;->A05:Lcom/facebook/ads/redexgen/X/aJ;

    aput-object v0, v2, v1

    const/16 v1, 0xa

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/LK;->A0J:Landroid/widget/ImageView;

    aput-object v0, v2, v1

    const/16 v1, 0xb

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/LK;->A0N:Landroid/widget/RelativeLayout;

    aput-object v0, v2, v1

    invoke-static {v2}, Lcom/facebook/ads/redexgen/X/YB;->A0d([Landroid/view/View;)V

    .line 17174
    return-void
.end method

.method private A01()V
    .locals 3

    .line 17175
    const/16 v0, 0x8

    new-array v2, v0, [F

    fill-array-data v2, :array_0

    .line 17176
    .local v0, "outerRadii":[F
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/LK;->A0M:Landroid/widget/RelativeLayout;

    const/high16 v0, -0x4d000000

    invoke-virtual {p0, v1, v0, v2}, Lcom/facebook/ads/redexgen/X/LK;->A0w(Landroid/view/View;I[F)V

    .line 17177
    return-void

    nop

    :array_0
    .array-data 4
        0x42900000    # 72.0f
        0x42900000    # 72.0f
        0x42900000    # 72.0f
        0x42900000    # 72.0f
        0x0
        0x0
        0x0
        0x0
    .end array-data
.end method

.method private A02()V
    .locals 6

    .line 17178
    const/4 v1, -0x1

    sget v0, Lcom/facebook/ads/redexgen/X/LK;->A0g:I

    new-instance v5, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v5, v1, v0}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 17179
    .local v0, "layoutParams":Landroid/widget/RelativeLayout$LayoutParams;
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/LK;->A0J:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getId()I

    move-result v1

    const/4 v0, 0x3

    invoke-virtual {v5, v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 17180
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/LK;->A0J:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getVisibility()I

    move-result v0

    const/4 v4, 0x0

    if-nez v0, :cond_0

    .line 17181
    sget v0, Lcom/facebook/ads/redexgen/X/XV;->A0v:I

    invoke-virtual {v5, v4, v0, v4, v4}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 17182
    :goto_0
    const/16 v0, 0xe

    invoke-virtual {v5, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 17183
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/bF;->A08:Lcom/facebook/ads/redexgen/X/Kr;

    invoke-virtual {v0, v5}, Lcom/facebook/ads/redexgen/X/Kr;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 17184
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/LK;->A0p()V

    .line 17185
    return-void

    .line 17186
    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/LK;->A0R:Lcom/facebook/ads/redexgen/X/jd;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/NQ;->A1W()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 17187
    sget v0, Lcom/facebook/ads/redexgen/X/LK;->A0e:I

    iput v0, v5, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    .line 17188
    :cond_1
    sget v3, Lcom/facebook/ads/redexgen/X/XV;->A0b:I

    sget-object v2, Lcom/facebook/ads/redexgen/X/6U;->A01:[Ljava/lang/String;

    const/4 v0, 0x7

    aget-object v1, v2, v0

    const/4 v0, 0x4

    aget-object v2, v2, v0

    const/16 v0, 0xe

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v1, v0, :cond_2

    sget-object v2, Lcom/facebook/ads/redexgen/X/6U;->A01:[Ljava/lang/String;

    const-string v1, "bbzU6"

    const/4 v0, 0x0

    aput-object v1, v2, v0

    invoke-virtual {v5, v4, v3, v4, v4}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    goto :goto_0

    :cond_2
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
.end method

.method private A03()V
    .locals 3

    .line 17189
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/LK;->A0J:Landroid/widget/ImageView;

    .line 17190
    invoke-virtual {v0}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/widget/RelativeLayout$LayoutParams;

    .line 17191
    .local v0, "chevronUpParams":Landroid/widget/RelativeLayout$LayoutParams;
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/LK;->A0P:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getId()I

    move-result v1

    const/4 v0, 0x3

    invoke-virtual {v2, v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 17192
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/LK;->A0J:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getVisibility()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 17193
    sget v0, Lcom/facebook/ads/redexgen/X/XV;->A0b:I

    invoke-virtual {v2, v1, v0, v1, v1}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 17194
    :goto_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/LK;->A0J:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 17195
    return-void

    .line 17196
    :cond_0
    invoke-virtual {v2, v1, v1, v1, v1}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    goto :goto_0
.end method

.method private A04()V
    .locals 3

    .line 17197
    const/4 v1, -0x1

    const/4 v0, -0x2

    new-instance v2, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v2, v1, v0}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 17198
    .local v0, "childLayoutParams":Landroid/widget/RelativeLayout$LayoutParams;
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/6U;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 17199
    .local v1, "displayMetrics":Landroid/util/DisplayMetrics;
    iget v0, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 17200
    .local v2, "screenWidth":I
    int-to-float v1, v0

    const v0, 0x3ebd70a4    # 0.37f

    mul-float/2addr v1, v0

    float-to-int v0, v1

    iput v0, v2, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    .line 17201
    const/16 v0, 0xd

    invoke-virtual {v2, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 17202
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/LK;->A0N:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 17203
    return-void
.end method

.method private A05()V
    .locals 3

    .line 17204
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/LK;->A0W:Lcom/facebook/ads/redexgen/X/DZ;

    .line 17205
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/DZ;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/widget/RelativeLayout$LayoutParams;

    .line 17206
    .local v0, "progressBarLayoutParams":Landroid/widget/RelativeLayout$LayoutParams;
    const/4 v1, 0x0

    sget v0, Lcom/facebook/ads/redexgen/X/XV;->A0b:I

    invoke-virtual {v2, v1, v0, v1, v1}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 17207
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/bF;->A08:Lcom/facebook/ads/redexgen/X/Kr;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Kr;->getId()I

    move-result v1

    const/4 v0, 0x3

    invoke-virtual {v2, v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 17208
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/LK;->A0W:Lcom/facebook/ads/redexgen/X/DZ;

    invoke-virtual {v0, v2}, Lcom/facebook/ads/redexgen/X/DZ;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 17209
    return-void
.end method

.method private A06(I)V
    .locals 2

    .line 17210
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/6U;->A00()V

    .line 17211
    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 17212
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/LK;->A0M:Landroid/widget/RelativeLayout;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/bF;->A09:Lcom/facebook/ads/redexgen/X/bk;

    invoke-virtual {v1, v0}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 17213
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/LK;->A0M:Landroid/widget/RelativeLayout;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/LK;->A0Q:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 17214
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/LK;->A0M:Landroid/widget/RelativeLayout;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/LK;->A0P:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 17215
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/LK;->A0M:Landroid/widget/RelativeLayout;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/LK;->A0J:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 17216
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/LK;->A0M:Landroid/widget/RelativeLayout;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/bF;->A08:Lcom/facebook/ads/redexgen/X/Kr;

    invoke-virtual {v1, v0}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 17217
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/LK;->A0M:Landroid/widget/RelativeLayout;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/LK;->A0W:Lcom/facebook/ads/redexgen/X/DZ;

    invoke-virtual {v1, v0}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 17218
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/LK;->A0M:Landroid/widget/RelativeLayout;

    invoke-virtual {p0, v0}, Lcom/facebook/ads/redexgen/X/LK;->A10(Landroid/widget/RelativeLayout;)V

    .line 17219
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/LK;->A0M:Landroid/widget/RelativeLayout;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/LK;->A0K:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 17220
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/LK;->A0M:Landroid/widget/RelativeLayout;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/LK;->A0V:Lcom/facebook/ads/redexgen/X/aJ;

    invoke-virtual {v1, v0}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 17221
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/LK;->A0M:Landroid/widget/RelativeLayout;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/LK;->A06:Lcom/facebook/ads/redexgen/X/aN;

    invoke-virtual {p0, v1, v0}, Lcom/facebook/ads/redexgen/X/LK;->A0x(Landroid/view/ViewGroup;Landroid/view/View;)V

    .line 17222
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/LK;->A0M:Landroid/widget/RelativeLayout;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/LK;->A05:Lcom/facebook/ads/redexgen/X/aJ;

    invoke-virtual {p0, v1, v0}, Lcom/facebook/ads/redexgen/X/LK;->A0x(Landroid/view/ViewGroup;Landroid/view/View;)V

    .line 17223
    :goto_0
    return-void

    .line 17224
    :cond_0
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/LK;->A0N:Landroid/widget/RelativeLayout;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/bF;->A09:Lcom/facebook/ads/redexgen/X/bk;

    invoke-virtual {v1, v0}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 17225
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/LK;->A0N:Landroid/widget/RelativeLayout;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/LK;->A0Q:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 17226
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/LK;->A0N:Landroid/widget/RelativeLayout;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/LK;->A0P:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 17227
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/LK;->A0N:Landroid/widget/RelativeLayout;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/bF;->A08:Lcom/facebook/ads/redexgen/X/Kr;

    invoke-virtual {v1, v0}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 17228
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/LK;->A0N:Landroid/widget/RelativeLayout;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/LK;->A0W:Lcom/facebook/ads/redexgen/X/DZ;

    invoke-virtual {v1, v0}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 17229
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/LK;->A0N:Landroid/widget/RelativeLayout;

    invoke-virtual {p0, v0}, Lcom/facebook/ads/redexgen/X/LK;->A10(Landroid/widget/RelativeLayout;)V

    .line 17230
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/LK;->A0N:Landroid/widget/RelativeLayout;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/LK;->A0J:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 17231
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/LK;->A0O:Landroid/widget/RelativeLayout;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/LK;->A0V:Lcom/facebook/ads/redexgen/X/aJ;

    invoke-virtual {v1, v0}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 17232
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/LK;->A0O:Landroid/widget/RelativeLayout;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/LK;->A0N:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, v0}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 17233
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/LK;->A0O:Landroid/widget/RelativeLayout;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/LK;->A0K:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 17234
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/LK;->A0O:Landroid/widget/RelativeLayout;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/LK;->A06:Lcom/facebook/ads/redexgen/X/aN;

    invoke-virtual {p0, v1, v0}, Lcom/facebook/ads/redexgen/X/LK;->A0x(Landroid/view/ViewGroup;Landroid/view/View;)V

    .line 17235
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/LK;->A0O:Landroid/widget/RelativeLayout;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/LK;->A05:Lcom/facebook/ads/redexgen/X/aJ;

    invoke-virtual {p0, v1, v0}, Lcom/facebook/ads/redexgen/X/LK;->A0x(Landroid/view/ViewGroup;Landroid/view/View;)V

    goto :goto_0
.end method

.method private A07(I)V
    .locals 2

    .line 17236
    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    .line 17237
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/LK;->A0G:Landroid/os/Handler;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/6U;->A00:Ljava/lang/Runnable;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 17238
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/LK;->A0M:Landroid/widget/RelativeLayout;

    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Landroid/widget/RelativeLayout;->setLayoutTransition(Landroid/animation/LayoutTransition;)V

    .line 17239
    :cond_0
    return-void
.end method

.method private A08(I)V
    .locals 5

    .line 17240
    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 17241
    iget-object v4, p0, Lcom/facebook/ads/redexgen/X/LK;->A0M:Landroid/widget/RelativeLayout;

    const/16 v3, 0x190

    const/16 v2, 0x64

    const/4 v1, 0x0

    new-instance v0, Lcom/facebook/ads/redexgen/X/DA;

    invoke-direct {v0, v4, v3, v2, v1}, Lcom/facebook/ads/redexgen/X/DA;-><init>(Landroid/view/View;III)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/LK;->A07:Lcom/facebook/ads/redexgen/X/DA;

    .line 17242
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/LK;->A0Y:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 17243
    :cond_0
    return-void
.end method

.method private A09(I)V
    .locals 5

    .line 17244
    const/4 v2, -0x1

    const/4 v4, 0x0

    const/4 v1, 0x1

    if-ne p1, v1, :cond_0

    .line 17245
    const/4 v0, -0x2

    new-instance v3, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v3, v2, v0}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 17246
    .local v0, "layoutParams":Landroid/widget/RelativeLayout$LayoutParams;
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/LK;->A0M:Landroid/widget/RelativeLayout;

    const/16 v0, 0x50

    invoke-virtual {v1, v0}, Landroid/widget/RelativeLayout;->setGravity(I)V

    .line 17247
    sget v1, Lcom/facebook/ads/redexgen/X/XV;->A0b:I

    sget v0, Lcom/facebook/ads/redexgen/X/XV;->A0b:I

    invoke-virtual {v3, v1, v4, v0, v4}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 17248
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/LK;->A0M:Landroid/widget/RelativeLayout;

    sget v1, Lcom/facebook/ads/redexgen/X/XV;->A0e:I

    sget v0, Lcom/facebook/ads/redexgen/X/XV;->A0e:I

    invoke-virtual {v2, v1, v4, v0, v4}, Landroid/widget/RelativeLayout;->setPadding(IIII)V

    .line 17249
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/6U;->A01()V

    .line 17250
    :goto_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/LK;->A0M:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v3}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 17251
    return-void

    .line 17252
    .end local v0    # "layoutParams":Landroid/widget/RelativeLayout$LayoutParams;
    :cond_0
    new-instance v3, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v3, v2, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 17253
    .restart local v0    # "layoutParams":Landroid/widget/RelativeLayout$LayoutParams;
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/LK;->A0M:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setGravity(I)V

    .line 17254
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/LK;->A0M:Landroid/widget/RelativeLayout;

    const/4 v0, 0x0

    invoke-virtual {p0, v1, v4, v0}, Lcom/facebook/ads/redexgen/X/LK;->A0w(Landroid/view/View;I[F)V

    goto :goto_0
.end method

.method private A0A(I)V
    .locals 5

    .line 17255
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/LK;->A0K:Landroid/widget/LinearLayout;

    .line 17256
    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Landroid/widget/RelativeLayout$LayoutParams;

    .line 17257
    .local v0, "adReportingLayoutParams":Landroid/widget/RelativeLayout$LayoutParams;
    const/4 v0, 0x1

    const/16 v2, 0xc

    const/16 v1, 0xb

    const/4 v3, 0x0

    if-ne p1, v0, :cond_0

    .line 17258
    invoke-virtual {v4, v2}, Landroid/widget/RelativeLayout$LayoutParams;->removeRule(I)V

    .line 17259
    invoke-virtual {v4, v1}, Landroid/widget/RelativeLayout$LayoutParams;->removeRule(I)V

    .line 17260
    sget v0, Lcom/facebook/ads/redexgen/X/XV;->A0c:I

    invoke-virtual {v4, v3, v0, v3, v3}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 17261
    invoke-virtual {v4, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 17262
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/LK;->A0W:Lcom/facebook/ads/redexgen/X/DZ;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/DZ;->getId()I

    move-result v1

    const/4 v0, 0x3

    invoke-virtual {v4, v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 17263
    :goto_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/LK;->A0K:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 17264
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/LK;->A0K:Landroid/widget/LinearLayout;

    sget v1, Lcom/facebook/ads/redexgen/X/XV;->A0v:I

    sget v0, Lcom/facebook/ads/redexgen/X/XV;->A0v:I

    invoke-virtual {v2, v1, v0, v3, v3}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 17265
    return-void

    .line 17266
    :cond_0
    sget v0, Lcom/facebook/ads/redexgen/X/XV;->A0k:I

    invoke-virtual {v4, v3, v3, v0, v3}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 17267
    invoke-virtual {v4, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 17268
    invoke-virtual {v4, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    goto :goto_0
.end method

.method private A0B(I)V
    .locals 7

    .line 17269
    const/4 v0, -0x2

    new-instance v4, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v4, v0, v0}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 17270
    .local v0, "layoutParams":Landroid/widget/RelativeLayout$LayoutParams;
    const/4 v0, 0x1

    const/16 v6, 0xb

    const/16 v2, 0xc

    const/4 v5, 0x3

    const/4 v3, 0x0

    if-ne p1, v0, :cond_4

    .line 17271
    invoke-virtual {v4, v2}, Landroid/widget/RelativeLayout$LayoutParams;->removeRule(I)V

    .line 17272
    invoke-virtual {v4, v6}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 17273
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/LK;->A06:Lcom/facebook/ads/redexgen/X/aN;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/LK;->A05:Lcom/facebook/ads/redexgen/X/aJ;

    if-eqz v0, :cond_3

    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/LK;->A04:Landroid/widget/TextView;

    if-eqz v0, :cond_3

    .line 17274
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/LK;->A11()Z

    move-result v6

    sget-object v1, Lcom/facebook/ads/redexgen/X/6U;->A01:[Ljava/lang/String;

    const/4 v0, 0x6

    aget-object v1, v1, v0

    const/16 v0, 0x11

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x70

    if-eq v1, v0, :cond_6

    sget-object v2, Lcom/facebook/ads/redexgen/X/6U;->A01:[Ljava/lang/String;

    const-string v1, "9VTq8PIH50Su9E5lRE3QuJlucOvI2NLH"

    const/4 v0, 0x5

    aput-object v1, v2, v0

    if-eqz v6, :cond_3

    .line 17275
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/LK;->A04:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getId()I

    move-result v0

    invoke-virtual {v4, v5, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 17276
    :goto_0
    iget-object v5, p0, Lcom/facebook/ads/redexgen/X/LK;->A06:Lcom/facebook/ads/redexgen/X/aN;

    sget-object v1, Lcom/facebook/ads/redexgen/X/6U;->A01:[Ljava/lang/String;

    const/4 v0, 0x6

    aget-object v1, v1, v0

    const/16 v0, 0x11

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x70

    if-eq v1, v0, :cond_5

    sget-object v2, Lcom/facebook/ads/redexgen/X/6U;->A01:[Ljava/lang/String;

    const-string v1, "d6TWNWWQx1AhMjb62w90jJqiVsiNGx5J"

    const/4 v0, 0x6

    aput-object v1, v2, v0

    if-eqz v5, :cond_2

    .line 17277
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/LK;->A04:Landroid/widget/TextView;

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/LK;->A11()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 17278
    sget v1, Lcom/facebook/ads/redexgen/X/XV;->A0Z:I

    sget v0, Lcom/facebook/ads/redexgen/X/XV;->A0b:I

    invoke-virtual {v4, v3, v1, v3, v0}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 17279
    :goto_1
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/LK;->A0V:Lcom/facebook/ads/redexgen/X/aJ;

    invoke-virtual {v0, v4}, Lcom/facebook/ads/redexgen/X/aJ;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 17280
    return-void

    .line 17281
    :cond_1
    sget v1, Lcom/facebook/ads/redexgen/X/XV;->A0b:I

    sget v0, Lcom/facebook/ads/redexgen/X/XV;->A0b:I

    invoke-virtual {v4, v3, v1, v3, v0}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    goto :goto_1

    .line 17282
    :cond_2
    sget v1, Lcom/facebook/ads/redexgen/X/XV;->A0f:I

    sget v0, Lcom/facebook/ads/redexgen/X/XV;->A0b:I

    invoke-virtual {v4, v3, v1, v3, v0}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    goto :goto_1

    .line 17283
    :cond_3
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/LK;->A0W:Lcom/facebook/ads/redexgen/X/DZ;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/DZ;->getId()I

    move-result v0

    invoke-virtual {v4, v5, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    goto :goto_0

    .line 17284
    :cond_4
    invoke-virtual {v4, v5}, Landroid/widget/RelativeLayout$LayoutParams;->removeRule(I)V

    .line 17285
    sget v1, Lcom/facebook/ads/redexgen/X/XV;->A0b:I

    sget v0, Lcom/facebook/ads/redexgen/X/XV;->A0b:I

    invoke-virtual {v4, v3, v3, v1, v0}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 17286
    invoke-virtual {v4, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 17287
    invoke-virtual {v4, v6}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    goto :goto_1

    :cond_5
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_6
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
.end method

.method private A0C(I)V
    .locals 5

    .line 17288
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/LK;->A0P:Landroid/widget/TextView;

    .line 17289
    invoke-virtual {v0}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/widget/RelativeLayout$LayoutParams;

    .line 17290
    .local v0, "descriptionParams":Landroid/widget/RelativeLayout$LayoutParams;
    const/16 v0, 0xe

    invoke-virtual {v3, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 17291
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/LK;->A0Q:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getId()I

    move-result v1

    const/4 v0, 0x3

    invoke-virtual {v3, v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 17292
    sget v2, Lcom/facebook/ads/redexgen/X/XV;->A0v:I

    sget v1, Lcom/facebook/ads/redexgen/X/XV;->A0v:I

    sget v0, Lcom/facebook/ads/redexgen/X/XV;->A0v:I

    const/4 v4, 0x0

    invoke-virtual {v3, v2, v1, v0, v4}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 17293
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/LK;->A0P:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 17294
    const/4 v3, 0x2

    const/high16 v2, 0x41900000    # 18.0f

    const/4 v1, 0x1

    if-ne p1, v1, :cond_1

    .line 17295
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/LK;->A0P:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextSize(F)V

    sget-object v1, Lcom/facebook/ads/redexgen/X/6U;->A01:[Ljava/lang/String;

    const/4 v0, 0x6

    aget-object v1, v1, v0

    const/16 v0, 0x11

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x70

    if-eq v1, v0, :cond_3

    .line 17296
    sget-object v2, Lcom/facebook/ads/redexgen/X/6U;->A01:[Ljava/lang/String;

    const-string v1, "LwMNVJXewPVvHtT8EyPDkqGjMUrnRCOE"

    const/4 v0, 0x2

    aput-object v1, v2, v0

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/LK;->A0Y:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 17297
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/LK;->A0P:Landroid/widget/TextView;

    const/16 v0, 0x8

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 17298
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/LK;->A0P:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setMaxLines(I)V

    .line 17299
    :cond_0
    :goto_0
    return-void

    .line 17300
    :cond_1
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/LK;->A0R:Lcom/facebook/ads/redexgen/X/jd;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/NQ;->A1W()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 17301
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/LK;->A0P:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setMaxLines(I)V

    .line 17302
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/LK;->A0P:Landroid/widget/TextView;

    const/high16 v0, 0x41700000    # 15.0f

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTextSize(F)V

    .line 17303
    :goto_1
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/LK;->A0P:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 17304
    :cond_2
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/LK;->A0P:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setMaxLines(I)V

    .line 17305
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/LK;->A0P:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextSize(F)V

    goto :goto_1

    :cond_3
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
.end method

.method private A0D(I)V
    .locals 5

    .line 17306
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/bF;->A09:Lcom/facebook/ads/redexgen/X/bk;

    .line 17307
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/bk;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/widget/RelativeLayout$LayoutParams;

    .line 17308
    .local v0, "imageParams":Landroid/widget/RelativeLayout$LayoutParams;
    const/4 v0, 0x1

    const/16 v3, 0xe

    const/4 v1, 0x0

    if-ne p1, v0, :cond_1

    .line 17309
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/LK;->A0Y:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 17310
    iget-object v4, p0, Lcom/facebook/ads/redexgen/X/bF;->A09:Lcom/facebook/ads/redexgen/X/bk;

    const/16 v0, 0x8

    invoke-virtual {v4, v0}, Lcom/facebook/ads/redexgen/X/bk;->setVisibility(I)V

    .line 17311
    :cond_0
    sget v0, Lcom/facebook/ads/redexgen/X/LK;->A0l:I

    iput v0, v2, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    .line 17312
    sget v0, Lcom/facebook/ads/redexgen/X/LK;->A0l:I

    iput v0, v2, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    .line 17313
    sget v0, Lcom/facebook/ads/redexgen/X/LK;->A0l:I

    neg-int v0, v0

    div-int/lit8 v0, v0, 0x2

    invoke-virtual {v2, v1, v0, v1, v1}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 17314
    .end local v1
    :goto_0
    invoke-virtual {v2, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 17315
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/bF;->A09:Lcom/facebook/ads/redexgen/X/bk;

    invoke-virtual {v0, v2}, Lcom/facebook/ads/redexgen/X/bk;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 17316
    return-void

    .line 17317
    :cond_1
    const/4 v0, 0x3

    invoke-virtual {v2, v0}, Landroid/widget/RelativeLayout$LayoutParams;->removeRule(I)V

    .line 17318
    invoke-virtual {v2, v3}, Landroid/widget/RelativeLayout$LayoutParams;->removeRule(I)V

    .line 17319
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/LK;->A0R:Lcom/facebook/ads/redexgen/X/jd;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/NQ;->A1W()Z

    move-result v0

    if-eqz v0, :cond_2

    sget v0, Lcom/facebook/ads/redexgen/X/LK;->A0f:I

    .line 17320
    .local v1, "size":I
    :goto_1
    iput v0, v2, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    .line 17321
    iput v0, v2, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    .line 17322
    sget v0, Lcom/facebook/ads/redexgen/X/XV;->A0b:I

    invoke-virtual {v2, v1, v0, v1, v1}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 17323
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/bF;->A09:Lcom/facebook/ads/redexgen/X/bk;

    invoke-virtual {v0, v1}, Lcom/facebook/ads/redexgen/X/bk;->setVisibility(I)V

    goto :goto_0

    .line 17324
    :cond_2
    sget v0, Lcom/facebook/ads/redexgen/X/LK;->A0m:I

    goto :goto_1
.end method

.method private A0E(I)V
    .locals 3

    .line 17325
    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 17326
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/LK;->A0O:Landroid/widget/RelativeLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setClipChildren(Z)V

    .line 17327
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/LK;->A0O:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setClipToPadding(Z)V

    sget-object v2, Lcom/facebook/ads/redexgen/X/6U;->A01:[Ljava/lang/String;

    const/4 v0, 0x1

    aget-object v1, v2, v0

    const/4 v0, 0x3

    aget-object v2, v2, v0

    const/16 v0, 0x15

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v1, v0, :cond_1

    .line 17328
    sget-object v2, Lcom/facebook/ads/redexgen/X/6U;->A01:[Ljava/lang/String;

    const-string v1, "cGbvdTJNONPNbXLhpEbXT6xJPDu44esN"

    const/4 v0, 0x5

    aput-object v1, v2, v0

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/LK;->A0O:Landroid/widget/RelativeLayout;

    const/16 v0, 0x50

    invoke-virtual {v1, v0}, Landroid/widget/RelativeLayout;->setGravity(I)V

    .line 17329
    :goto_0
    return-void

    .line 17330
    :cond_0
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/LK;->A0O:Landroid/widget/RelativeLayout;

    const v0, 0x800033

    invoke-virtual {v1, v0}, Landroid/widget/RelativeLayout;->setGravity(I)V

    goto :goto_0

    :cond_1
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
.end method

.method private A0F(I)V
    .locals 5

    .line 17331
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/LK;->A0Q:Landroid/widget/TextView;

    .line 17332
    invoke-virtual {v0}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Landroid/widget/RelativeLayout$LayoutParams;

    .line 17333
    .local v0, "titleParams":Landroid/widget/RelativeLayout$LayoutParams;
    const/16 v0, 0xe

    invoke-virtual {v4, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 17334
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/bF;->A09:Lcom/facebook/ads/redexgen/X/bk;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/bk;->getId()I

    move-result v1

    const/4 v0, 0x3

    invoke-virtual {v4, v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 17335
    sget v0, Lcom/facebook/ads/redexgen/X/XV;->A0c:I

    const/4 v3, 0x0

    invoke-virtual {v4, v3, v0, v3, v3}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 17336
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/LK;->A0Q:Landroid/widget/TextView;

    sget-object v0, Landroid/graphics/Typeface;->DEFAULT_BOLD:Landroid/graphics/Typeface;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 17337
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/LK;->A0R:Lcom/facebook/ads/redexgen/X/jd;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/NQ;->A1W()Z

    move-result v0

    const/4 v2, 0x1

    const/4 v1, 0x2

    if-eqz v0, :cond_2

    if-ne p1, v1, :cond_2

    .line 17338
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/LK;->A0Q:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setMaxLines(I)V

    .line 17339
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/LK;->A0Q:Landroid/widget/TextView;

    const/high16 v0, 0x41c00000    # 24.0f

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTextSize(F)V

    .line 17340
    :goto_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/LK;->A0Q:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 17341
    if-ne p1, v2, :cond_1

    .line 17342
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/LK;->A0Y:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 17343
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/LK;->A0Q:Landroid/widget/TextView;

    const/16 v0, 0x8

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 17344
    :cond_0
    :goto_1
    return-void

    .line 17345
    :cond_1
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/LK;->A0Q:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_1

    .line 17346
    :cond_2
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/LK;->A0Q:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setMaxLines(I)V

    .line 17347
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/LK;->A0Q:Landroid/widget/TextView;

    const/high16 v0, 0x41f00000    # 30.0f

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTextSize(F)V

    goto :goto_0
.end method

.method private A0G(Landroid/view/View;I)V
    .locals 4

    .line 17348
    if-eqz p1, :cond_0

    .line 17349
    const/4 v0, -0x2

    new-instance v2, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v2, v0, v0}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 17350
    .local v0, "layoutParams":Landroid/widget/RelativeLayout$LayoutParams;
    const/4 v0, 0x1

    const/4 v3, 0x0

    if-ne p2, v0, :cond_2

    .line 17351
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/LK;->A04:Landroid/widget/TextView;

    const/4 v1, 0x3

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/LK;->A11()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 17352
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/LK;->A04:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getId()I

    move-result v0

    invoke-virtual {v2, v1, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 17353
    sget v1, Lcom/facebook/ads/redexgen/X/XV;->A0Z:I

    sget v0, Lcom/facebook/ads/redexgen/X/XV;->A0b:I

    invoke-virtual {v2, v3, v1, v3, v0}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 17354
    :goto_0
    const/16 v0, 0x9

    invoke-virtual {v2, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 17355
    invoke-virtual {p1, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 17356
    .end local v0    # "layoutParams":Landroid/widget/RelativeLayout$LayoutParams;
    :cond_0
    return-void

    .line 17357
    :cond_1
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/LK;->A0W:Lcom/facebook/ads/redexgen/X/DZ;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/DZ;->getId()I

    move-result v0

    invoke-virtual {v2, v1, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 17358
    sget v1, Lcom/facebook/ads/redexgen/X/XV;->A0b:I

    sget v0, Lcom/facebook/ads/redexgen/X/XV;->A0b:I

    invoke-virtual {v2, v3, v1, v3, v0}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    goto :goto_0

    .line 17359
    :cond_2
    const/16 v0, 0xc

    invoke-virtual {v2, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 17360
    sget v1, Lcom/facebook/ads/redexgen/X/XV;->A0b:I

    sget v0, Lcom/facebook/ads/redexgen/X/XV;->A0b:I

    invoke-virtual {v2, v1, v3, v3, v0}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    goto :goto_0
.end method

.method private A0H(Landroid/widget/TextView;)V
    .locals 4

    .line 17361
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/widget/TextView;->getVisibility()I

    move-result v3

    sget-object v1, Lcom/facebook/ads/redexgen/X/6U;->A01:[Ljava/lang/String;

    const/4 v0, 0x6

    aget-object v1, v1, v0

    const/16 v0, 0x11

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x70

    if-eq v1, v0, :cond_2

    sget-object v2, Lcom/facebook/ads/redexgen/X/6U;->A01:[Ljava/lang/String;

    const-string v1, "mNXbhcpsRbbwGhDffCZ213OdU3Broeit"

    const/4 v0, 0x6

    aput-object v1, v2, v0

    if-eqz v3, :cond_1

    .line 17362
    .end local v0
    :cond_0
    return-void

    .line 17363
    :cond_1
    invoke-virtual {p1}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/widget/RelativeLayout$LayoutParams;

    .line 17364
    .local v0, "param":Landroid/widget/RelativeLayout$LayoutParams;
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/LK;->A0W:Lcom/facebook/ads/redexgen/X/DZ;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/DZ;->getId()I

    move-result v1

    const/4 v0, 0x3

    invoke-virtual {v2, v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 17365
    sget v1, Lcom/facebook/ads/redexgen/X/XV;->A0v:I

    const/4 v0, 0x0

    invoke-virtual {v2, v0, v1, v0, v0}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 17366
    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 17367
    return-void

    :cond_2
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
.end method


# virtual methods
.method public final A0l(I)V
    .locals 1

    .line 17368
    invoke-super {p0, p1}, Lcom/facebook/ads/redexgen/X/LK;->A0l(I)V

    .line 17369
    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/6U;->A07(I)V

    .line 17370
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/6U;->A00()V

    .line 17371
    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/6U;->A0E(I)V

    .line 17372
    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/6U;->A09(I)V

    .line 17373
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/6U;->A04()V

    .line 17374
    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/6U;->A0D(I)V

    .line 17375
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/LK;->A04:Landroid/widget/TextView;

    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/6U;->A0H(Landroid/widget/TextView;)V

    .line 17376
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/6U;->A05()V

    .line 17377
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/6U;->A03()V

    .line 17378
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/6U;->A02()V

    .line 17379
    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/6U;->A0F(I)V

    .line 17380
    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/6U;->A0C(I)V

    .line 17381
    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/6U;->A0A(I)V

    .line 17382
    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/6U;->A0B(I)V

    .line 17383
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/LK;->A06:Lcom/facebook/ads/redexgen/X/aN;

    invoke-direct {p0, v0, p1}, Lcom/facebook/ads/redexgen/X/6U;->A0G(Landroid/view/View;I)V

    .line 17384
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/LK;->A05:Lcom/facebook/ads/redexgen/X/aJ;

    invoke-direct {p0, v0, p1}, Lcom/facebook/ads/redexgen/X/6U;->A0G(Landroid/view/View;I)V

    .line 17385
    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/6U;->A06(I)V

    .line 17386
    return-void
.end method

.method public final A0u(I)V
    .locals 4

    .line 17387
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/LK;->A0b:Z

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/LK;->A0Z:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_0

    .line 17388
    const-wide/16 v0, 0x1770

    invoke-virtual {p0, v0, v1}, Lcom/facebook/ads/redexgen/X/LK;->A0v(J)V

    .line 17389
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/LK;->A0Z:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 17390
    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/LK;->A07:Lcom/facebook/ads/redexgen/X/DA;

    if-eqz v0, :cond_1

    const/4 v0, 0x2

    if-ne p1, v0, :cond_2

    .line 17391
    :cond_1
    return-void

    .line 17392
    :cond_2
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/LK;->A07:Lcom/facebook/ads/redexgen/X/DA;

    const/4 v0, 0x0

    invoke-virtual {v1, v2, v0}, Lcom/facebook/ads/redexgen/X/DA;->A4A(ZZ)V

    .line 17393
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/LK;->A0Y:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 17394
    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/LK;->A0G:Landroid/os/Handler;

    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/6U;->A00:Ljava/lang/Runnable;

    const-wide/16 v0, 0x1388

    invoke-virtual {v3, v2, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 17395
    return-void
.end method

.method public final A0y(Landroid/view/ViewGroup;Landroid/widget/RelativeLayout;I)V
    .locals 2

    .line 17396
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/LK;->A0Z:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 17397
    const-wide/16 v0, 0x258

    invoke-virtual {p0, v0, v1}, Lcom/facebook/ads/redexgen/X/LK;->A0v(J)V

    .line 17398
    :cond_0
    return-void
.end method

.method public setInfo(Lcom/facebook/ads/redexgen/X/NY;Lcom/facebook/ads/redexgen/X/Nc;Ljava/lang/String;Ljava/lang/String;Lcom/facebook/ads/redexgen/X/Xh;Lcom/facebook/ads/redexgen/X/bU;)V
    .locals 0

    .line 17399
    invoke-super/range {p0 .. p6}, Lcom/facebook/ads/redexgen/X/bF;->setInfo(Lcom/facebook/ads/redexgen/X/NY;Lcom/facebook/ads/redexgen/X/Nc;Ljava/lang/String;Ljava/lang/String;Lcom/facebook/ads/redexgen/X/Xh;Lcom/facebook/ads/redexgen/X/bU;)V

    .line 17400
    return-void
.end method
