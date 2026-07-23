.class public abstract Lcom/facebook/ads/redexgen/X/ED;
.super Landroid/widget/RelativeLayout;
.source ""

# interfaces
.implements Lcom/facebook/ads/redexgen/X/eu;


# instance fields
.field public A00:Lcom/facebook/ads/redexgen/X/Ek;


# direct methods
.method public constructor <init>(Lcom/facebook/ads/redexgen/X/gi;)V
    .locals 0

    .line 34466
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 34467
    return-void
.end method

.method public constructor <init>(Lcom/facebook/ads/redexgen/X/gi;Landroid/util/AttributeSet;I)V
    .locals 2

    .line 34468
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 34469
    const/4 v1, -0x1

    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v1, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 34470
    .local v0, "params":Landroid/widget/RelativeLayout$LayoutParams;
    invoke-virtual {p0, v0}, Lcom/facebook/ads/redexgen/X/ED;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 34471
    return-void
.end method


# virtual methods
.method public A07()V
    .locals 0

    .line 34472
    return-void
.end method

.method public A08()V
    .locals 0

    .line 34473
    return-void
.end method

.method public final AAv(Lcom/facebook/ads/redexgen/X/Ek;)V
    .locals 0

    .line 34474
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/ED;->A00:Lcom/facebook/ads/redexgen/X/Ek;

    .line 34475
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/ED;->A07()V

    .line 34476
    return-void
.end method

.method public final AKV(Lcom/facebook/ads/redexgen/X/Ek;)V
    .locals 1

    .line 34477
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/ED;->A08()V

    .line 34478
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/ED;->A00:Lcom/facebook/ads/redexgen/X/Ek;

    .line 34479
    return-void
.end method

.method public getVideoView()Lcom/facebook/ads/redexgen/X/Ek;
    .locals 1

    .line 34480
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/ED;->A00:Lcom/facebook/ads/redexgen/X/Ek;

    return-object v0
.end method
