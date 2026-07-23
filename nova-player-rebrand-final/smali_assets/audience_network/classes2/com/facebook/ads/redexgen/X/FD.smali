.class public final Lcom/facebook/ads/redexgen/X/FD;
.super Lcom/facebook/ads/redexgen/X/bl;
.source ""


# instance fields
.field public final A00:Landroid/widget/ImageView;

.field public final A01:Lcom/facebook/ads/redexgen/X/gi;


# direct methods
.method public constructor <init>(Lcom/facebook/ads/redexgen/X/gi;)V
    .locals 4

    .line 35577
    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/bl;-><init>(Lcom/facebook/ads/redexgen/X/gi;)V

    .line 35578
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/FD;->A01:Lcom/facebook/ads/redexgen/X/gi;

    .line 35579
    new-instance v0, Landroid/widget/ImageView;

    invoke-direct {v0, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/FD;->A00:Landroid/widget/ImageView;

    .line 35580
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/FD;->A00:Landroid/widget/ImageView;

    const/4 v0, 0x1

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setAdjustViewBounds(Z)V

    .line 35581
    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/FD;->A00:Landroid/widget/ImageView;

    const/4 v2, -0x2

    const/4 v1, -0x1

    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v2, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v3, v0}, Lcom/facebook/ads/redexgen/X/FD;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 35582
    return-void
.end method


# virtual methods
.method public final A00(Ljava/lang/String;)V
    .locals 3

    .line 35583
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/FD;->A00:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/FD;->A01:Lcom/facebook/ads/redexgen/X/gi;

    new-instance v0, Lcom/facebook/ads/redexgen/X/LM;

    invoke-direct {v0, v2, v1}, Lcom/facebook/ads/redexgen/X/LM;-><init>(Landroid/widget/ImageView;Lcom/facebook/ads/redexgen/X/gi;)V

    .line 35584
    .local v0, "downloadImageTask":Lcom/facebook/ads/redexgen/X/LM;
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/LM;->A04()Lcom/facebook/ads/redexgen/X/LM;

    .line 35585
    invoke-virtual {v0, p1}, Lcom/facebook/ads/redexgen/X/LM;->A07(Ljava/lang/String;)V

    .line 35586
    return-void
.end method
