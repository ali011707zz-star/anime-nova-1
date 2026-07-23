.class public final Lcom/facebook/ads/redexgen/X/KU;
.super Lcom/facebook/ads/redexgen/X/c3;
.source ""

# interfaces
.implements Lcom/facebook/ads/redexgen/X/XQ;


# static fields
.field public static A05:[B

.field public static final A06:I


# instance fields
.field public final A00:Lcom/facebook/ads/redexgen/X/jd;

.field public final A01:Lcom/facebook/ads/redexgen/X/XS;

.field public final A02:Lcom/facebook/ads/redexgen/X/Yh;

.field public final A03:Lcom/facebook/ads/redexgen/X/cU;

.field public final A04:Lcom/facebook/ads/redexgen/X/e4;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 901
    invoke-static {}, Lcom/facebook/ads/redexgen/X/KU;->A01()V

    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    sput v0, Lcom/facebook/ads/redexgen/X/KU;->A06:I

    return-void
.end method

.method public constructor <init>(Lcom/facebook/ads/redexgen/X/c7;Z)V
    .locals 9

    .line 47180
    invoke-direct {p0, p1, p2}, Lcom/facebook/ads/redexgen/X/c3;-><init>(Lcom/facebook/ads/redexgen/X/c7;Z)V

    .line 47181
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/c7;->A0C()Lcom/facebook/ads/redexgen/X/Yh;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/KU;->A02:Lcom/facebook/ads/redexgen/X/Yh;

    .line 47182
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/c7;->A05()Lcom/facebook/ads/redexgen/X/jd;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/KU;->A00:Lcom/facebook/ads/redexgen/X/jd;

    .line 47183
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/c7;->A06()Lcom/facebook/ads/redexgen/X/gi;

    move-result-object v2

    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/c7;->A02()Landroid/view/View;

    move-result-object v1

    new-instance v0, Lcom/facebook/ads/redexgen/X/cU;

    invoke-direct {v0, v2, v1}, Lcom/facebook/ads/redexgen/X/cU;-><init>(Lcom/facebook/ads/redexgen/X/gi;Landroid/view/View;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/KU;->A03:Lcom/facebook/ads/redexgen/X/cU;

    .line 47184
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/KU;->A03:Lcom/facebook/ads/redexgen/X/cU;

    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/c3;->getTitleDescContainer()Lcom/facebook/ads/redexgen/X/bq;

    move-result-object v0

    invoke-virtual {v1, v0, p2}, Lcom/facebook/ads/redexgen/X/cU;->A01(Lcom/facebook/ads/redexgen/X/bq;Z)V

    .line 47185
    const/4 v7, -0x1

    const/4 v6, -0x2

    new-instance v4, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v4, v7, v6}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 47186
    .local v0, "ctaButtonParams":Landroid/widget/RelativeLayout$LayoutParams;
    const/16 v0, 0xc

    invoke-virtual {v4, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 47187
    sget v3, Lcom/facebook/ads/redexgen/X/c3;->A08:I

    sget v2, Lcom/facebook/ads/redexgen/X/c3;->A08:I

    sget v1, Lcom/facebook/ads/redexgen/X/c3;->A08:I

    sget v0, Lcom/facebook/ads/redexgen/X/c3;->A08:I

    invoke-virtual {v4, v3, v2, v1, v0}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 47188
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/c3;->getCtaButton()Lcom/facebook/ads/redexgen/X/Kr;

    move-result-object v0

    invoke-virtual {v0, v4}, Lcom/facebook/ads/redexgen/X/Kr;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 47189
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/c7;->A0H()Z

    move-result v0

    const/4 v8, 0x2

    const/4 v5, 0x0

    if-eqz v0, :cond_5

    .line 47190
    nop

    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/c7;->A06()Lcom/facebook/ads/redexgen/X/gi;

    move-result-object v1

    new-instance v0, Lcom/facebook/ads/redexgen/X/e4;

    invoke-direct {v0, v1}, Lcom/facebook/ads/redexgen/X/e4;-><init>(Lcom/facebook/ads/redexgen/X/gi;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/KU;->A04:Lcom/facebook/ads/redexgen/X/e4;

    .line 47191
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/KU;->A04:Lcom/facebook/ads/redexgen/X/e4;

    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/c7;->A05()Lcom/facebook/ads/redexgen/X/jd;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/jd;->A2C()Lcom/facebook/ads/redexgen/X/Nm;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/e4;->setPageDetails(Lcom/facebook/ads/redexgen/X/Nm;)V

    .line 47192
    const/16 v1, 0x3ef

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/KU;->A04:Lcom/facebook/ads/redexgen/X/e4;

    invoke-static {v1, v0}, Lcom/facebook/ads/redexgen/X/YB;->A0G(ILandroid/view/View;)V

    .line 47193
    new-instance v3, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v3, v6, v6}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 47194
    .local v3, "pageDetailsParams":Landroid/widget/RelativeLayout$LayoutParams;
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/c3;->getCtaButton()Lcom/facebook/ads/redexgen/X/Kr;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Kr;->getId()I

    move-result v0

    invoke-virtual {v3, v8, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 47195
    sget v2, Lcom/facebook/ads/redexgen/X/c3;->A08:I

    sget v1, Lcom/facebook/ads/redexgen/X/c3;->A08:I

    sget v0, Lcom/facebook/ads/redexgen/X/c3;->A08:I

    div-int/2addr v0, v8

    sub-int/2addr v1, v0

    sget v0, Lcom/facebook/ads/redexgen/X/c3;->A08:I

    invoke-virtual {v3, v2, v1, v0, v5}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 47196
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/KU;->A04:Lcom/facebook/ads/redexgen/X/e4;

    invoke-virtual {v0, v3}, Lcom/facebook/ads/redexgen/X/e4;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 47197
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/KU;->A04:Lcom/facebook/ads/redexgen/X/e4;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/e4;->getId()I

    move-result v4

    .line 47198
    .local v6, "topFooterView":I
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/c7;->A01()I

    move-result v2

    sget v0, Lcom/facebook/ads/redexgen/X/c3;->A08:I

    div-int/2addr v0, v8

    sub-int/2addr v2, v0

    .line 47199
    .end local v3    # "pageDetailsParams":Landroid/widget/RelativeLayout$LayoutParams;
    .local v7, "topMargin":I
    :goto_0
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/c7;->A06()Lcom/facebook/ads/redexgen/X/gi;

    move-result-object v0

    new-instance v3, Landroid/widget/FrameLayout;

    invoke-direct {v3, v0}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 47200
    .local v3, "insideContainerLayout":Landroid/widget/FrameLayout;
    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v1, v7, v7}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 47201
    .local v8, "insideContainerParams":Landroid/widget/RelativeLayout$LayoutParams;
    const/16 v0, 0xa

    invoke-virtual {v1, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 47202
    invoke-virtual {v1, v8, v4}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 47203
    invoke-virtual {v1, v5, v2, v5, v5}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 47204
    invoke-virtual {v3, v1}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 47205
    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v2, v7, v6}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 47206
    .local v1, "mediaViewContainerParams":Landroid/widget/FrameLayout$LayoutParams;
    const/16 v0, 0x11

    iput v0, v2, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 47207
    sget v1, Lcom/facebook/ads/redexgen/X/c3;->A08:I

    sget v0, Lcom/facebook/ads/redexgen/X/c3;->A08:I

    invoke-virtual {v2, v1, v5, v0, v5}, Landroid/widget/FrameLayout$LayoutParams;->setMargins(IIII)V

    .line 47208
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/KU;->A03:Lcom/facebook/ads/redexgen/X/cU;

    invoke-virtual {v3, v0, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 47209
    invoke-virtual {p0, v3}, Lcom/facebook/ads/redexgen/X/KU;->addView(Landroid/view/View;)V

    .line 47210
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/KU;->A04:Lcom/facebook/ads/redexgen/X/e4;

    if-eqz v0, :cond_0

    .line 47211
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/KU;->A04:Lcom/facebook/ads/redexgen/X/e4;

    invoke-virtual {p0, v0}, Lcom/facebook/ads/redexgen/X/KU;->addView(Landroid/view/View;)V

    .line 47212
    :cond_0
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/c3;->getCtaButton()Lcom/facebook/ads/redexgen/X/Kr;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/facebook/ads/redexgen/X/KU;->addView(Landroid/view/View;)V

    .line 47213
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/c3;->getCtaButton()Lcom/facebook/ads/redexgen/X/Kr;

    move-result-object v2

    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/c7;->A05()Lcom/facebook/ads/redexgen/X/jd;

    move-result-object v1

    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/c7;->A0B()Lcom/facebook/ads/redexgen/X/Yb;

    move-result-object v0

    invoke-virtual {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Kr;->A0F(Lcom/facebook/ads/redexgen/X/jd;Lcom/facebook/ads/redexgen/X/Yb;)Z

    .line 47214
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/c7;->A02()Landroid/view/View;

    move-result-object v3

    .line 47215
    .local v2, "mMediaView":Landroid/view/View;
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/c7;->A06()Lcom/facebook/ads/redexgen/X/gi;

    move-result-object v1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/KU;->A00:Lcom/facebook/ads/redexgen/X/jd;

    invoke-static {v1, v0, p0}, Lcom/facebook/ads/redexgen/X/XS;->A00(Lcom/facebook/ads/redexgen/X/gi;Lcom/facebook/ads/redexgen/X/jd;Lcom/facebook/ads/redexgen/X/XQ;)Lcom/facebook/ads/redexgen/X/XS;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/KU;->A01:Lcom/facebook/ads/redexgen/X/XS;

    .line 47216
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/KU;->A01:Lcom/facebook/ads/redexgen/X/XS;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/KU;->A00:Lcom/facebook/ads/redexgen/X/jd;

    .line 47217
    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/XS;->A02(Lcom/facebook/ads/redexgen/X/jd;)Lcom/facebook/ads/redexgen/X/XR;

    move-result-object v2

    .line 47218
    .local v4, "supported":Lcom/facebook/ads/redexgen/X/XR;
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/c7;->A06()Lcom/facebook/ads/redexgen/X/gi;

    move-result-object v0

    .line 47219
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/gi;->A0H()Lcom/facebook/ads/redexgen/X/T6;

    move-result-object v1

    iget-boolean v0, v2, Lcom/facebook/ads/redexgen/X/XR;->A01:Z

    .line 47220
    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/T6;->A00(Z)V

    .line 47221
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/c3;->getCtaButton()Lcom/facebook/ads/redexgen/X/Kr;

    move-result-object v1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/KU;->A01:Lcom/facebook/ads/redexgen/X/XS;

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/Kr;->setCreativeAsCtaLoggingHelper(Lcom/facebook/ads/redexgen/X/XS;)V

    .line 47222
    if-eqz v3, :cond_4

    iget-boolean v0, v2, Lcom/facebook/ads/redexgen/X/XR;->A00:Z

    if-eqz v0, :cond_4

    .line 47223
    new-instance v0, Lcom/facebook/ads/redexgen/X/cD;

    invoke-direct {v0, p0}, Lcom/facebook/ads/redexgen/X/cD;-><init>(Lcom/facebook/ads/redexgen/X/KU;)V

    invoke-virtual {v3, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 47224
    :cond_1
    :goto_1
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/c7;->A06()Lcom/facebook/ads/redexgen/X/gi;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Up;->A17(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 47225
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/c3;->getTitleDescContainer()Lcom/facebook/ads/redexgen/X/bq;

    move-result-object v1

    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/c3;->getCtaButton()Lcom/facebook/ads/redexgen/X/Kr;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/bq;->setCTAClickListener(Lcom/facebook/ads/redexgen/X/Kr;)V

    .line 47226
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/c7;->A0B()Lcom/facebook/ads/redexgen/X/Yb;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 47227
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/c7;->A0B()Lcom/facebook/ads/redexgen/X/Yb;

    move-result-object v1

    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/c3;->getCtaButton()Lcom/facebook/ads/redexgen/X/Kr;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/Yb;->setCTAClickListener(Lcom/facebook/ads/redexgen/X/Kr;)V

    .line 47228
    :cond_2
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/KU;->A04:Lcom/facebook/ads/redexgen/X/e4;

    if-eqz v0, :cond_3

    .line 47229
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/c7;->A06()Lcom/facebook/ads/redexgen/X/gi;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Up;->A18(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 47230
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/KU;->A04:Lcom/facebook/ads/redexgen/X/e4;

    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/c3;->getCtaButton()Lcom/facebook/ads/redexgen/X/Kr;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/e4;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 47231
    :cond_3
    return-void

    .line 47232
    :cond_4
    if-eqz v3, :cond_1

    .line 47233
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/c3;->getAdContextWrapper()Lcom/facebook/ads/redexgen/X/gi;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Up;->A1J(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 47234
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/c3;->getAdContextWrapper()Lcom/facebook/ads/redexgen/X/gi;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Up;->A1K(Landroid/content/Context;)Z

    move-result v1

    new-instance v0, Lcom/facebook/ads/redexgen/X/cE;

    invoke-direct {v0, p0}, Lcom/facebook/ads/redexgen/X/cE;-><init>(Lcom/facebook/ads/redexgen/X/KU;)V

    .line 47235
    invoke-static {v3, v1, v0}, Lcom/facebook/ads/redexgen/X/bC;->A00(Landroid/view/View;ZLandroid/view/View$OnClickListener;)V

    goto :goto_1

    .line 47236
    .end local v6    # "topFooterView":I
    .end local v7    # "topMargin":I
    :cond_5
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/c3;->getCtaButton()Lcom/facebook/ads/redexgen/X/Kr;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Kr;->getId()I

    move-result v4

    .line 47237
    .restart local v6    # "topFooterView":I
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/c7;->A01()I

    move-result v2

    .line 47238
    .restart local v7    # "topMargin":I
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/KU;->A04:Lcom/facebook/ads/redexgen/X/e4;

    goto/16 :goto_0
.end method

.method public static A00(III)Ljava/lang/String;
    .locals 2

    sget-object v1, Lcom/facebook/ads/redexgen/X/KU;->A05:[B

    add-int v0, p0, p1

    invoke-static {v1, p0, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p0

    const/4 v1, 0x0

    :goto_0
    array-length v0, p0

    if-ge v1, v0, :cond_0

    aget-byte v0, p0, v1

    sub-int/2addr v0, p2

    add-int/lit8 v0, v0, -0x56

    int-to-byte v0, v0

    aput-byte v0, p0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p0}, Ljava/lang/String;-><init>([B)V

    return-object v0
.end method

.method public static A01()V
    .locals 1

    const/4 v0, 0x5

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/facebook/ads/redexgen/X/KU;->A05:[B

    return-void

    nop

    :array_0
    .array-data 1
        0x26t
        0x2at
        0x1et
        0x24t
        0x22t
    .end array-data
.end method


# virtual methods
.method public final A0A()Z
    .locals 1

    .line 47239
    const/4 v0, 0x0

    return v0
.end method

.method public final A0B()Z
    .locals 1

    .line 47240
    const/4 v0, 0x0

    return v0
.end method

.method public final A1C()V
    .locals 1

    .line 47241
    invoke-super {p0}, Lcom/facebook/ads/redexgen/X/c3;->A1C()V

    .line 47242
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/KU;->A01:Lcom/facebook/ads/redexgen/X/XS;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/XS;->A03()V

    .line 47243
    return-void
.end method

.method public final A1H(Lcom/facebook/ads/redexgen/X/NR;Ljava/lang/String;DLandroid/os/Bundle;)V
    .locals 4

    .line 47244
    invoke-super/range {p0 .. p5}, Lcom/facebook/ads/redexgen/X/c3;->A1H(Lcom/facebook/ads/redexgen/X/NR;Ljava/lang/String;DLandroid/os/Bundle;)V

    .line 47245
    const-wide/16 v1, 0x0

    cmpl-double v0, p3, v1

    if-lez v0, :cond_0

    .line 47246
    sget v1, Lcom/facebook/ads/redexgen/X/KU;->A06:I

    sget v0, Lcom/facebook/ads/redexgen/X/c3;->A08:I

    mul-int/lit8 v0, v0, 0x2

    sub-int/2addr v1, v0

    .line 47247
    .local v0, "availableWidthPx":I
    int-to-double v2, v1

    div-double/2addr v2, p3

    double-to-int v1, v2

    .line 47248
    .local v1, "mediaHeight":I
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/KU;->A03:Lcom/facebook/ads/redexgen/X/cU;

    invoke-virtual {v0, v1}, Lcom/facebook/ads/redexgen/X/cU;->A00(I)V

    .line 47249
    .end local v0    # "availableWidthPx":I
    .end local v1    # "mediaHeight":I
    :cond_0
    return-void
.end method

.method public final A1O()Z
    .locals 1

    .line 47250
    const/4 v0, 0x0

    return v0
.end method

.method public final synthetic A1Q(Landroid/view/View;)V
    .locals 4

    .line 47251
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/c3;->getCtaButton()Lcom/facebook/ads/redexgen/X/Kr;

    move-result-object v3

    const/4 v2, 0x0

    const/4 v1, 0x5

    const/16 v0, 0x67

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/KU;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/facebook/ads/redexgen/X/Kr;->A0E(Ljava/lang/String;)Lcom/facebook/ads/redexgen/X/Mq;

    return-void
.end method
