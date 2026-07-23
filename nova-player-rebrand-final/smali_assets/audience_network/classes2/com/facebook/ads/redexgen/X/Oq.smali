.class public abstract Lcom/facebook/ads/redexgen/X/Oq;
.super Landroid/widget/RelativeLayout;
.source ""

# interfaces
.implements Lcom/facebook/ads/redexgen/X/aK;


# static fields
.field public static A0A:[Ljava/lang/String;

.field public static final A0B:I

.field public static final A0C:I

.field public static final A0D:I


# instance fields
.field public A00:Landroid/os/Handler;

.field public A01:Lcom/facebook/ads/redexgen/X/aN;

.field public A02:Z

.field public A03:Lcom/facebook/ads/redexgen/X/Yw;

.field public A04:Lcom/facebook/ads/redexgen/X/a5;

.field public A05:Lcom/facebook/ads/redexgen/X/aJ;

.field public final A06:Landroid/view/View$OnClickListener;

.field public final A07:Lcom/facebook/ads/redexgen/X/jd;

.field public final A08:Lcom/facebook/ads/redexgen/X/gi;

.field public final A09:Lcom/facebook/ads/redexgen/X/VI;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    .line 1501
    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "eRMzgHG"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "A1D1mRRaU8os3umLxugsgnfT"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "YU6ciw9hf2Bpu6e80GlNKt1"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "R20K8nAvAy9bKMjQ"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "gFet4GA2ogUQ417QxbSlVnm1t01blQtv"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "7PQXGNMvVATtl2qomoZDAZcCFPoRgKLz"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "RpQ71swlwo7OfFOP9TN2ZPjcOzOs9RuN"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "6yF"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/Oq;->A0A:[Ljava/lang/String;

    const/high16 v1, 0x40800000    # 4.0f

    sget v0, Lcom/facebook/ads/redexgen/X/XX;->A02:F

    mul-float/2addr v0, v1

    float-to-int v0, v0

    sput v0, Lcom/facebook/ads/redexgen/X/Oq;->A0C:I

    .line 1502
    const/high16 v1, 0x42200000    # 40.0f

    sget v0, Lcom/facebook/ads/redexgen/X/XX;->A02:F

    mul-float/2addr v0, v1

    float-to-int v0, v0

    sput v0, Lcom/facebook/ads/redexgen/X/Oq;->A0D:I

    .line 1503
    const/high16 v1, 0x41c00000    # 24.0f

    sget v0, Lcom/facebook/ads/redexgen/X/XX;->A02:F

    mul-float/2addr v0, v1

    float-to-int v0, v0

    sput v0, Lcom/facebook/ads/redexgen/X/Oq;->A0B:I

    return-void
.end method

.method public constructor <init>(Lcom/facebook/ads/redexgen/X/gi;Landroid/view/View$OnClickListener;Lcom/facebook/ads/redexgen/X/VI;Lcom/facebook/ads/redexgen/X/jd;)V
    .locals 1

    .line 56151
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 56152
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/Oq;->A02:Z

    .line 56153
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/Oq;->A08:Lcom/facebook/ads/redexgen/X/gi;

    .line 56154
    iput-object p2, p0, Lcom/facebook/ads/redexgen/X/Oq;->A06:Landroid/view/View$OnClickListener;

    .line 56155
    iput-object p3, p0, Lcom/facebook/ads/redexgen/X/Oq;->A09:Lcom/facebook/ads/redexgen/X/VI;

    .line 56156
    iput-object p4, p0, Lcom/facebook/ads/redexgen/X/Oq;->A07:Lcom/facebook/ads/redexgen/X/jd;

    .line 56157
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/Oq;->A0B()V

    .line 56158
    return-void
.end method

.method public static A0A(Landroid/view/View;)Landroid/widget/RelativeLayout$LayoutParams;
    .locals 5

    .line 56159
    const/4 v0, -0x2

    new-instance v4, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v4, v0, v0}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 56160
    .local v0, "layoutParams":Landroid/widget/RelativeLayout$LayoutParams;
    if-eqz p0, :cond_0

    .line 56161
    const/4 v1, 0x1

    invoke-virtual {p0}, Landroid/view/View;->getId()I

    move-result v0

    invoke-virtual {v4, v1, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 56162
    sget v3, Lcom/facebook/ads/redexgen/X/XV;->A0I:I

    sget v2, Lcom/facebook/ads/redexgen/X/XV;->A0U:I

    sget v1, Lcom/facebook/ads/redexgen/X/XV;->A00:I

    sget v0, Lcom/facebook/ads/redexgen/X/XV;->A00:I

    invoke-virtual {v4, v3, v2, v1, v0}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 56163
    :goto_0
    return-object v4

    .line 56164
    :cond_0
    const/16 v0, 0x14

    invoke-virtual {v4, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 56165
    sget v3, Lcom/facebook/ads/redexgen/X/XV;->A0U:I

    sget v2, Lcom/facebook/ads/redexgen/X/XV;->A0U:I

    sget v1, Lcom/facebook/ads/redexgen/X/XV;->A00:I

    sget v0, Lcom/facebook/ads/redexgen/X/XV;->A00:I

    invoke-virtual {v4, v3, v2, v1, v0}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    goto :goto_0
.end method

.method private A0B()V
    .locals 9

    .line 56166
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Oq;->A07:Lcom/facebook/ads/redexgen/X/jd;

    if-eqz v0, :cond_1

    .line 56167
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Oq;->A07:Lcom/facebook/ads/redexgen/X/jd;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/jd;->A2Q()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 56168
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Oq;->A00:Landroid/os/Handler;

    .line 56169
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Oq;->A08:Lcom/facebook/ads/redexgen/X/gi;

    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/Oq;->A07:Lcom/facebook/ads/redexgen/X/jd;

    iget-object v4, p0, Lcom/facebook/ads/redexgen/X/Oq;->A09:Lcom/facebook/ads/redexgen/X/VI;

    sget-object v6, Lcom/facebook/ads/redexgen/X/aM;->A04:Lcom/facebook/ads/redexgen/X/aM;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Oq;->A07:Lcom/facebook/ads/redexgen/X/jd;

    .line 56170
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/aL;->A00(Lcom/facebook/ads/redexgen/X/jd;)Lcom/facebook/ads/redexgen/X/aP;

    move-result-object v8

    .line 56171
    const/4 v2, 0x1

    const/4 v5, 0x0

    move-object v7, p0

    invoke-static/range {v1 .. v8}, Lcom/facebook/ads/redexgen/X/aO;->A00(Lcom/facebook/ads/redexgen/X/gi;ZLcom/facebook/ads/redexgen/X/jd;Lcom/facebook/ads/redexgen/X/VI;Lcom/facebook/ads/redexgen/X/Yh;Lcom/facebook/ads/redexgen/X/aM;Lcom/facebook/ads/redexgen/X/aK;Lcom/facebook/ads/redexgen/X/aP;)Lcom/facebook/ads/redexgen/X/aJ;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Oq;->A05:Lcom/facebook/ads/redexgen/X/aJ;

    .line 56172
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Oq;->A07:Lcom/facebook/ads/redexgen/X/jd;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/jd;->A2U()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 56173
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/Oq;->A08:Lcom/facebook/ads/redexgen/X/gi;

    sget-object v1, Lcom/facebook/ads/redexgen/X/aM;->A04:Lcom/facebook/ads/redexgen/X/aM;

    new-instance v0, Lcom/facebook/ads/redexgen/X/a5;

    invoke-direct {v0, v2, v1}, Lcom/facebook/ads/redexgen/X/a5;-><init>(Lcom/facebook/ads/redexgen/X/gi;Lcom/facebook/ads/redexgen/X/aM;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Oq;->A04:Lcom/facebook/ads/redexgen/X/a5;

    .line 56174
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Oq;->A04:Lcom/facebook/ads/redexgen/X/a5;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/YB;->A0K(Landroid/view/View;)V

    .line 56175
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Oq;->A04:Lcom/facebook/ads/redexgen/X/a5;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Oq;->A06:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/a5;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 56176
    :cond_1
    :goto_1
    return-void

    .line 56177
    :cond_2
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Oq;->A08:Lcom/facebook/ads/redexgen/X/gi;

    new-instance v0, Lcom/facebook/ads/redexgen/X/Yw;

    invoke-direct {v0, v1}, Lcom/facebook/ads/redexgen/X/Yw;-><init>(Lcom/facebook/ads/redexgen/X/gi;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Oq;->A03:Lcom/facebook/ads/redexgen/X/Yw;

    .line 56178
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Oq;->A03:Lcom/facebook/ads/redexgen/X/Yw;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Oq;->A06:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/Yw;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_1

    .line 56179
    :cond_3
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Oq;->A07:Lcom/facebook/ads/redexgen/X/jd;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/jd;->A2W()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 56180
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/Oq;->A08:Lcom/facebook/ads/redexgen/X/gi;

    sget-object v1, Lcom/facebook/ads/redexgen/X/aM;->A04:Lcom/facebook/ads/redexgen/X/aM;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Oq;->A07:Lcom/facebook/ads/redexgen/X/jd;

    .line 56181
    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/aO;->A02(Lcom/facebook/ads/redexgen/X/gi;Lcom/facebook/ads/redexgen/X/aM;Lcom/facebook/ads/redexgen/X/jd;)Lcom/facebook/ads/redexgen/X/aN;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Oq;->A01:Lcom/facebook/ads/redexgen/X/aN;

    .line 56182
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Oq;->A01:Lcom/facebook/ads/redexgen/X/aN;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/YB;->A0K(Landroid/view/View;)V

    goto :goto_0
.end method

.method public static getCreditLineLayoutParams()Landroid/widget/RelativeLayout$LayoutParams;
    .locals 5

    .line 56223
    const/4 v0, -0x2

    new-instance v4, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v4, v0, v0}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 56224
    .local v0, "layoutParams":Landroid/widget/RelativeLayout$LayoutParams;
    sget v3, Lcom/facebook/ads/redexgen/X/XV;->A00:I

    sget v2, Lcom/facebook/ads/redexgen/X/XV;->A0U:I

    sget v1, Lcom/facebook/ads/redexgen/X/XV;->A0U:I

    sget v0, Lcom/facebook/ads/redexgen/X/XV;->A00:I

    invoke-virtual {v4, v3, v2, v1, v0}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 56225
    const/16 v0, 0xa

    invoke-virtual {v4, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 56226
    const/16 v0, 0xb

    invoke-virtual {v4, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 56227
    return-object v4
.end method


# virtual methods
.method public final A0C(ZZ)Landroid/widget/RelativeLayout$LayoutParams;
    .locals 5

    .line 56183
    sget v1, Lcom/facebook/ads/redexgen/X/Oq;->A0D:I

    sget v0, Lcom/facebook/ads/redexgen/X/Oq;->A0B:I

    new-instance v4, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v4, v1, v0}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 56184
    .local v0, "buttonLayoutParams":Landroid/widget/RelativeLayout$LayoutParams;
    sget v3, Lcom/facebook/ads/redexgen/X/Oq;->A0C:I

    sget v2, Lcom/facebook/ads/redexgen/X/Oq;->A0C:I

    sget v1, Lcom/facebook/ads/redexgen/X/Oq;->A0C:I

    sget v0, Lcom/facebook/ads/redexgen/X/Oq;->A0C:I

    invoke-virtual {v4, v3, v2, v1, v0}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 56185
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/Oq;->A02:Z

    if-eqz v0, :cond_2

    .line 56186
    if-eqz p1, :cond_1

    const/16 v0, 0xc

    .line 56187
    :goto_0
    invoke-virtual {v4, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 56188
    if-eqz p2, :cond_0

    const/16 v0, 0xb

    .line 56189
    :goto_1
    invoke-virtual {v4, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 56190
    .end local v1
    :goto_2
    return-object v4

    .line 56191
    :cond_0
    const/16 v0, 0x9

    goto :goto_1

    .line 56192
    :cond_1
    const/16 v0, 0xa

    goto :goto_0

    .line 56193
    :cond_2
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/Oq;->getMediaViewId()I

    move-result v1

    .line 56194
    .local v1, "mediaViewId":I
    if-eqz p1, :cond_4

    const/16 v0, 0x8

    .line 56195
    :goto_3
    invoke-virtual {v4, v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 56196
    if-eqz p2, :cond_3

    const/4 v0, 0x7

    .line 56197
    :goto_4
    invoke-virtual {v4, v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    goto :goto_2

    .line 56198
    :cond_3
    const/4 v0, 0x5

    goto :goto_4

    .line 56199
    :cond_4
    const/4 v0, 0x6

    goto :goto_3
.end method

.method public A0D()V
    .locals 2

    .line 56200
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Oq;->A00:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 56201
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Oq;->A00:Landroid/os/Handler;

    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 56202
    :cond_0
    return-void
.end method

.method public A0E()V
    .locals 1

    .line 56203
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Oq;->A01:Lcom/facebook/ads/redexgen/X/aN;

    if-eqz v0, :cond_0

    .line 56204
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Oq;->A01:Lcom/facebook/ads/redexgen/X/aN;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/aN;->A04()V

    .line 56205
    :cond_0
    return-void
.end method

.method public A0F()V
    .locals 4

    .line 56206
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Oq;->A03:Lcom/facebook/ads/redexgen/X/Yw;

    if-eqz v0, :cond_0

    .line 56207
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Oq;->A03:Lcom/facebook/ads/redexgen/X/Yw;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/YB;->A0J(Landroid/view/View;)V

    .line 56208
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/Oq;->A03:Lcom/facebook/ads/redexgen/X/Yw;

    const/4 v1, 0x0

    const/4 v0, 0x1

    invoke-virtual {p0, v1, v0}, Lcom/facebook/ads/redexgen/X/Oq;->A0C(ZZ)Landroid/widget/RelativeLayout$LayoutParams;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/facebook/ads/redexgen/X/Yw;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 56209
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Oq;->A03:Lcom/facebook/ads/redexgen/X/Yw;

    invoke-virtual {p0, v0}, Lcom/facebook/ads/redexgen/X/Oq;->addView(Landroid/view/View;)V

    .line 56210
    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Oq;->A05:Lcom/facebook/ads/redexgen/X/aJ;

    if-eqz v0, :cond_1

    .line 56211
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Oq;->A05:Lcom/facebook/ads/redexgen/X/aJ;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/YB;->A0J(Landroid/view/View;)V

    .line 56212
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Oq;->A05:Lcom/facebook/ads/redexgen/X/aJ;

    invoke-static {}, Lcom/facebook/ads/redexgen/X/Oq;->getCreditLineLayoutParams()Landroid/widget/RelativeLayout$LayoutParams;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/aJ;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 56213
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Oq;->A05:Lcom/facebook/ads/redexgen/X/aJ;

    invoke-virtual {p0, v0}, Lcom/facebook/ads/redexgen/X/Oq;->addView(Landroid/view/View;)V

    .line 56214
    :cond_1
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Oq;->A01:Lcom/facebook/ads/redexgen/X/aN;

    if-eqz v0, :cond_2

    .line 56215
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Oq;->A01:Lcom/facebook/ads/redexgen/X/aN;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/YB;->A0J(Landroid/view/View;)V

    .line 56216
    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/Oq;->A01:Lcom/facebook/ads/redexgen/X/aN;

    sget-object v2, Lcom/facebook/ads/redexgen/X/Oq;->A0A:[Ljava/lang/String;

    const/4 v0, 0x4

    aget-object v1, v2, v0

    const/4 v0, 0x5

    aget-object v2, v2, v0

    const/16 v0, 0xb

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v1, v0, :cond_3

    sget-object v2, Lcom/facebook/ads/redexgen/X/Oq;->A0A:[Ljava/lang/String;

    const-string v1, "xKxjkz1d3wlL2PrvsvNwOjyj"

    const/4 v0, 0x1

    aput-object v1, v2, v0

    invoke-static {}, Lcom/facebook/ads/redexgen/X/Oq;->getCreditLineLayoutParams()Landroid/widget/RelativeLayout$LayoutParams;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/facebook/ads/redexgen/X/aN;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 56217
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Oq;->A01:Lcom/facebook/ads/redexgen/X/aN;

    invoke-virtual {p0, v0}, Lcom/facebook/ads/redexgen/X/Oq;->addView(Landroid/view/View;)V

    .line 56218
    :cond_2
    return-void

    :cond_3
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
.end method

.method public A0G()Z
    .locals 1

    .line 56219
    const/4 v0, 0x1

    return v0
.end method

.method public A0H()Z
    .locals 1

    .line 56220
    const/4 v0, 0x1

    return v0
.end method

.method public final ADW(Landroid/view/View;)V
    .locals 1

    .line 56221
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Oq;->A06:Landroid/view/View$OnClickListener;

    invoke-interface {v0, p1}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    .line 56222
    return-void
.end method

.method public abstract getMediaViewId()I
.end method

.method public final onMeasure(II)V
    .locals 2

    .line 56228
    invoke-super {p0, p1, p2}, Landroid/widget/RelativeLayout;->onMeasure(II)V

    .line 56229
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/Oq;->A0H()Z

    move-result v1

    .line 56230
    .local v0, "newShouldLayoutButtonsRelativeToParent":Z
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/Oq;->A02:Z

    if-eq v1, v0, :cond_0

    .line 56231
    iput-boolean v1, p0, Lcom/facebook/ads/redexgen/X/Oq;->A02:Z

    .line 56232
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/Oq;->A0F()V

    .line 56233
    :cond_0
    return-void
.end method
