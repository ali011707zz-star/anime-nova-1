.class public final Lcom/facebook/ads/redexgen/X/e4;
.super Landroid/widget/LinearLayout;
.source ""


# static fields
.field public static final A04:I

.field public static final A05:I


# instance fields
.field public A00:Landroid/widget/TextView;

.field public A01:Landroid/widget/TextView;

.field public A02:Lcom/facebook/ads/redexgen/X/bk;

.field public final A03:Lcom/facebook/ads/redexgen/X/gi;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 2737
    sget v1, Lcom/facebook/ads/redexgen/X/XX;->A02:F

    const/high16 v0, 0x42000000    # 32.0f

    mul-float/2addr v1, v0

    float-to-int v0, v1

    sput v0, Lcom/facebook/ads/redexgen/X/e4;->A04:I

    .line 2738
    sget v1, Lcom/facebook/ads/redexgen/X/XX;->A02:F

    const/high16 v0, 0x41000000    # 8.0f

    mul-float/2addr v1, v0

    float-to-int v0, v1

    sput v0, Lcom/facebook/ads/redexgen/X/e4;->A05:I

    return-void
.end method

.method public constructor <init>(Lcom/facebook/ads/redexgen/X/gi;)V
    .locals 0

    .line 80604
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 80605
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/e4;->A03:Lcom/facebook/ads/redexgen/X/gi;

    .line 80606
    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/e4;->A00(Lcom/facebook/ads/redexgen/X/gi;)V

    .line 80607
    return-void
.end method

.method private final A00(Lcom/facebook/ads/redexgen/X/gi;)V
    .locals 7

    .line 80608
    const/16 v6, 0x10

    invoke-virtual {p0, v6}, Lcom/facebook/ads/redexgen/X/e4;->setGravity(I)V

    .line 80609
    new-instance v0, Lcom/facebook/ads/redexgen/X/bk;

    invoke-direct {v0, p1}, Lcom/facebook/ads/redexgen/X/bk;-><init>(Lcom/facebook/ads/redexgen/X/gi;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/e4;->A02:Lcom/facebook/ads/redexgen/X/bk;

    .line 80610
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/e4;->A02:Lcom/facebook/ads/redexgen/X/bk;

    const/4 v5, 0x1

    invoke-virtual {v0, v5}, Lcom/facebook/ads/redexgen/X/bk;->setFullCircleCorners(Z)V

    .line 80611
    sget v2, Lcom/facebook/ads/redexgen/X/e4;->A04:I

    sget v0, Lcom/facebook/ads/redexgen/X/e4;->A04:I

    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v1, v2, v0}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 80612
    .local v1, "pageImageViewParams":Landroid/widget/LinearLayout$LayoutParams;
    sget v0, Lcom/facebook/ads/redexgen/X/e4;->A05:I

    const/4 v4, 0x0

    invoke-virtual {v1, v4, v4, v0, v4}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 80613
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/e4;->A02:Lcom/facebook/ads/redexgen/X/bk;

    invoke-virtual {p0, v0, v1}, Lcom/facebook/ads/redexgen/X/e4;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 80614
    new-instance v3, Landroid/widget/LinearLayout;

    invoke-direct {v3, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 80615
    .local v3, "pageInfoView":Landroid/widget/LinearLayout;
    invoke-virtual {v3, v5}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 80616
    new-instance v0, Landroid/widget/TextView;

    invoke-direct {v0, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/e4;->A00:Landroid/widget/TextView;

    .line 80617
    const/4 v1, -0x1

    const/4 v0, -0x2

    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v2, v1, v0}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 80618
    .local v5, "pageNameViewParams":Landroid/widget/LinearLayout$LayoutParams;
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/e4;->A00:Landroid/widget/TextView;

    invoke-static {v0, v5, v6}, Lcom/facebook/ads/redexgen/X/YB;->A0a(Landroid/widget/TextView;ZI)V

    .line 80619
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/e4;->A00:Landroid/widget/TextView;

    sget-object v0, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 80620
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/e4;->A00:Landroid/widget/TextView;

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setSingleLine(Z)V

    .line 80621
    new-instance v0, Landroid/widget/TextView;

    invoke-direct {v0, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/e4;->A01:Landroid/widget/TextView;

    .line 80622
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/e4;->A01:Landroid/widget/TextView;

    const/16 v0, 0xe

    invoke-static {v1, v4, v0}, Lcom/facebook/ads/redexgen/X/YB;->A0a(Landroid/widget/TextView;ZI)V

    .line 80623
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/e4;->A00:Landroid/widget/TextView;

    invoke-virtual {v3, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 80624
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/e4;->A01:Landroid/widget/TextView;

    invoke-virtual {v3, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 80625
    invoke-virtual {p0, v3, v2}, Lcom/facebook/ads/redexgen/X/e4;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 80626
    return-void
.end method


# virtual methods
.method public final A01()V
    .locals 2

    .line 80627
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/e4;->A02:Lcom/facebook/ads/redexgen/X/bk;

    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/bk;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 80628
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/e4;->A00:Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 80629
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/e4;->A01:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 80630
    return-void
.end method

.method public final A02(II)V
    .locals 1

    .line 80631
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/e4;->A00:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 80632
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/e4;->A01:Landroid/widget/TextView;

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 80633
    return-void
.end method

.method public setPageDetails(Lcom/facebook/ads/redexgen/X/Nm;)V
    .locals 3

    .line 80634
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/e4;->A02:Lcom/facebook/ads/redexgen/X/bk;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/e4;->A03:Lcom/facebook/ads/redexgen/X/gi;

    new-instance v2, Lcom/facebook/ads/redexgen/X/LM;

    invoke-direct {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/LM;-><init>(Landroid/widget/ImageView;Lcom/facebook/ads/redexgen/X/gi;)V

    .line 80635
    .local v0, "downloadImageTask":Lcom/facebook/ads/redexgen/X/LM;
    sget v1, Lcom/facebook/ads/redexgen/X/e4;->A04:I

    sget v0, Lcom/facebook/ads/redexgen/X/e4;->A04:I

    invoke-virtual {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/LM;->A05(II)Lcom/facebook/ads/redexgen/X/LM;

    .line 80636
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/Nm;->A01()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/facebook/ads/redexgen/X/LM;->A07(Ljava/lang/String;)V

    .line 80637
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/e4;->A00:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/Nm;->A02()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 80638
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/e4;->A01:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/Nm;->A03()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 80639
    return-void
.end method
