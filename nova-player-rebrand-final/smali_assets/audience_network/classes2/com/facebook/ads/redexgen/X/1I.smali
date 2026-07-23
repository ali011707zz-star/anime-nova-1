.class public final Lcom/facebook/ads/redexgen/X/1I;
.super Lcom/facebook/ads/redexgen/X/6M;
.source ""


# static fields
.field public static A06:[Ljava/lang/String;

.field public static final A07:I

.field public static final A08:I


# instance fields
.field public A00:Lcom/facebook/ads/redexgen/X/Kr;

.field public A01:Lcom/facebook/ads/redexgen/X/e5;

.field public final A02:Lcom/facebook/ads/redexgen/X/VA;

.field public final A03:Lcom/facebook/ads/redexgen/X/UK;

.field public final A04:Lcom/facebook/ads/redexgen/X/6X;

.field public final A05:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    .line 79
    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "q"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "A73Xi2G3GXsP7eqOYxzIEC2a49UqAHwv"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "tzkKnItTrh"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "5yGem34VUXIU78ICazF0QaKYuuceWMlm"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "d26mhKEOwDnFCjn"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "V"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "vFFUszWLQFPwstqQ2PhnuKwIvdRc"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "cQLhl1S6XoLnT945hQssVDVRJiee0FVC"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/1I;->A06:[Ljava/lang/String;

    const/high16 v1, -0x3f800000    # -4.0f

    sget v0, Lcom/facebook/ads/redexgen/X/XX;->A02:F

    mul-float/2addr v0, v1

    float-to-int v0, v0

    sput v0, Lcom/facebook/ads/redexgen/X/1I;->A08:I

    .line 80
    const/high16 v1, 0x40c00000    # 6.0f

    sget v0, Lcom/facebook/ads/redexgen/X/XX;->A02:F

    mul-float/2addr v0, v1

    float-to-int v0, v0

    sput v0, Lcom/facebook/ads/redexgen/X/1I;->A07:I

    return-void
.end method

.method public constructor <init>(Lcom/facebook/ads/redexgen/X/c7;Lcom/facebook/ads/redexgen/X/UK;ZLjava/lang/String;Lcom/facebook/ads/redexgen/X/6X;)V
    .locals 1

    .line 5144
    invoke-direct {p0, p1, p3, p4, p5}, Lcom/facebook/ads/redexgen/X/6M;-><init>(Lcom/facebook/ads/redexgen/X/c7;ZLjava/lang/String;Lcom/facebook/ads/redexgen/X/Fy;)V

    .line 5145
    iput-object p2, p0, Lcom/facebook/ads/redexgen/X/1I;->A03:Lcom/facebook/ads/redexgen/X/UK;

    .line 5146
    iput-object p4, p0, Lcom/facebook/ads/redexgen/X/1I;->A05:Ljava/lang/String;

    .line 5147
    iput-object p5, p0, Lcom/facebook/ads/redexgen/X/1I;->A04:Lcom/facebook/ads/redexgen/X/6X;

    .line 5148
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/6M;->A0I:Lcom/facebook/ads/redexgen/X/c7;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/c7;->A06()Lcom/facebook/ads/redexgen/X/gi;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/T8;->A02()Lcom/facebook/ads/redexgen/X/ge;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/T8;->A0A()Lcom/facebook/ads/redexgen/X/VA;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/1I;->A02:Lcom/facebook/ads/redexgen/X/VA;

    .line 5149
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/1I;->A03:Lcom/facebook/ads/redexgen/X/UK;

    invoke-virtual {v0, p0}, Lcom/facebook/ads/redexgen/X/UK;->A1Q(Landroid/view/View;)V

    .line 5150
    return-void
.end method


# virtual methods
.method public setupNativeCtaExtension(Lcom/facebook/ads/redexgen/X/e5;)V
    .locals 12

    .line 5151
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/1I;->A01:Lcom/facebook/ads/redexgen/X/e5;

    .line 5152
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/6M;->A0I:Lcom/facebook/ads/redexgen/X/c7;

    .line 5153
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/c7;->A06()Lcom/facebook/ads/redexgen/X/gi;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Up;->A0Q(Landroid/content/Context;)I

    move-result v1

    .line 5154
    .local v0, "extensionVariant":I
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/1I;->A03:Lcom/facebook/ads/redexgen/X/UK;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/UK;->A13()Lcom/facebook/ads/redexgen/X/jd;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/jd;->A28()Lcom/facebook/ads/redexgen/X/NN;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/NN;->A01()Lcom/facebook/ads/redexgen/X/Na;

    move-result-object v6

    .line 5155
    .local v1, "colorInfo":Lcom/facebook/ads/redexgen/X/Na;
    new-instance v3, Lcom/facebook/ads/redexgen/X/Kr;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/6M;->A0I:Lcom/facebook/ads/redexgen/X/c7;

    .line 5156
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/c7;->A06()Lcom/facebook/ads/redexgen/X/gi;

    move-result-object v4

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/1I;->A03:Lcom/facebook/ads/redexgen/X/UK;

    .line 5157
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/UK;->A13()Lcom/facebook/ads/redexgen/X/jd;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/NQ;->A0w()Ljava/lang/String;

    move-result-object v5

    iget-object v7, p0, Lcom/facebook/ads/redexgen/X/1I;->A02:Lcom/facebook/ads/redexgen/X/VA;

    .line 5158
    invoke-static {}, Lcom/facebook/ads/redexgen/X/aw;->getDummyListener()Lcom/facebook/ads/redexgen/X/Yh;

    move-result-object v8

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/1I;->A04:Lcom/facebook/ads/redexgen/X/6X;

    .line 5159
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/6X;->A0b()Lcom/facebook/ads/redexgen/X/fp;

    move-result-object v9

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/1I;->A03:Lcom/facebook/ads/redexgen/X/UK;

    .line 5160
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/UK;->A1E()Lcom/facebook/ads/redexgen/X/Y2;

    move-result-object v10

    .line 5161
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/1I;->A03:Lcom/facebook/ads/redexgen/X/UK;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/UK;->A13()Lcom/facebook/ads/redexgen/X/jd;

    move-result-object v0

    if-nez v0, :cond_0

    .line 5162
    const/4 v11, 0x0

    .line 5163
    :goto_0
    invoke-direct/range {v3 .. v11}, Lcom/facebook/ads/redexgen/X/Kr;-><init>(Lcom/facebook/ads/redexgen/X/gi;Ljava/lang/String;Lcom/facebook/ads/redexgen/X/Na;Lcom/facebook/ads/redexgen/X/VA;Lcom/facebook/ads/redexgen/X/Yh;Lcom/facebook/ads/redexgen/X/fp;Lcom/facebook/ads/redexgen/X/Y2;Lcom/facebook/ads/redexgen/X/Ng;)V

    iput-object v3, p0, Lcom/facebook/ads/redexgen/X/1I;->A00:Lcom/facebook/ads/redexgen/X/Kr;

    .line 5164
    iget-object v4, p0, Lcom/facebook/ads/redexgen/X/1I;->A00:Lcom/facebook/ads/redexgen/X/Kr;

    .line 5165
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/e5;->A03()Lcom/facebook/ads/redexgen/X/NR;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/NR;->A0J()Lcom/facebook/ads/redexgen/X/Nc;

    move-result-object v3

    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/1I;->A05:Ljava/lang/String;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 5166
    invoke-virtual {v4, v3, v2, v0}, Lcom/facebook/ads/redexgen/X/Kr;->setCta(Lcom/facebook/ads/redexgen/X/Nc;Ljava/lang/String;Ljava/util/Map;)V

    .line 5167
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/1I;->A03:Lcom/facebook/ads/redexgen/X/UK;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/1I;->A00:Lcom/facebook/ads/redexgen/X/Kr;

    invoke-virtual {v2, v0}, Lcom/facebook/ads/redexgen/X/UK;->A1Q(Landroid/view/View;)V

    .line 5168
    const/4 v2, -0x1

    const/4 v0, -0x2

    new-instance v4, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v4, v2, v0}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 5169
    .local v2, "layoutParams":Landroid/widget/RelativeLayout$LayoutParams;
    const/4 v0, 0x1

    const/4 v5, 0x0

    if-ne v1, v0, :cond_1

    .line 5170
    const/16 v0, 0xc

    invoke-virtual {v4, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    sget-object v2, Lcom/facebook/ads/redexgen/X/1I;->A06:[Ljava/lang/String;

    const/4 v0, 0x5

    aget-object v1, v2, v0

    const/4 v0, 0x0

    aget-object v0, v2, v0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eq v1, v0, :cond_2

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    .line 5171
    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/1I;->A03:Lcom/facebook/ads/redexgen/X/UK;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/UK;->A13()Lcom/facebook/ads/redexgen/X/jd;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/jd;->A2A()Lcom/facebook/ads/redexgen/X/Ng;

    move-result-object v11

    goto :goto_0

    .line 5172
    :cond_1
    const/4 v0, 0x2

    if-ne v1, v0, :cond_3

    .line 5173
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/6M;->A06:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getId()I

    move-result v1

    const/4 v0, 0x3

    invoke-virtual {v4, v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 5174
    sget v0, Lcom/facebook/ads/redexgen/X/1I;->A08:I

    invoke-virtual {v4, v5, v0, v5, v5}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 5175
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/1I;->A00:Lcom/facebook/ads/redexgen/X/Kr;

    invoke-virtual {p0, v0, v5, v4}, Lcom/facebook/ads/redexgen/X/1I;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 5176
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/6M;->A06:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->bringToFront()V

    goto :goto_1

    .line 5177
    :cond_2
    sget-object v2, Lcom/facebook/ads/redexgen/X/1I;->A06:[Ljava/lang/String;

    const-string v1, "cEnNLXyXCc05OsZ"

    const/4 v0, 0x4

    aput-object v1, v2, v0

    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/1I;->A00:Lcom/facebook/ads/redexgen/X/Kr;

    sget v2, Lcom/facebook/ads/redexgen/X/1I;->A07:I

    .line 5178
    invoke-virtual {v6, v5}, Lcom/facebook/ads/redexgen/X/Na;->A0A(Z)I

    move-result v1

    .line 5179
    const/4 v0, 0x5

    invoke-static {v3, v2, v0, v1}, Lcom/facebook/ads/redexgen/X/YB;->A0R(Landroid/view/View;III)V

    .line 5180
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/6M;->A06:Landroid/widget/RelativeLayout;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/1I;->A00:Lcom/facebook/ads/redexgen/X/Kr;

    invoke-virtual {v1, v0, v4}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 5181
    :cond_3
    :goto_1
    return-void
.end method
