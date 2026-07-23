.class public final Lcom/facebook/ads/redexgen/X/hj;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/facebook/ads/redexgen/X/RN;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/ads/redexgen/X/R2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic A00:Lcom/facebook/ads/redexgen/X/R2;


# direct methods
.method public constructor <init>(Lcom/facebook/ads/redexgen/X/R2;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 85078
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/hj;->A00:Lcom/facebook/ads/redexgen/X/R2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final A7H(I)Landroid/view/View;
    .locals 1

    .line 85079
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/hj;->A00:Lcom/facebook/ads/redexgen/X/R2;

    invoke-virtual {v0, p1}, Lcom/facebook/ads/redexgen/X/R2;->A0v(I)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public final A7J(Landroid/view/View;)I
    .locals 3

    .line 85080
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Lcom/facebook/ads/redexgen/X/R3;

    .line 85081
    .local v0, "params":Lcom/facebook/ads/redexgen/X/R3;
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/hj;->A00:Lcom/facebook/ads/redexgen/X/R2;

    invoke-virtual {v0, p1}, Lcom/facebook/ads/redexgen/X/R2;->A0p(Landroid/view/View;)I

    move-result v1

    iget v0, v2, Lcom/facebook/ads/redexgen/X/R3;->rightMargin:I

    add-int/2addr v1, v0

    return v1
.end method

.method public final A7K(Landroid/view/View;)I
    .locals 3

    .line 85082
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Lcom/facebook/ads/redexgen/X/R3;

    .line 85083
    .local v0, "params":Lcom/facebook/ads/redexgen/X/R3;
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/hj;->A00:Lcom/facebook/ads/redexgen/X/R2;

    invoke-virtual {v0, p1}, Lcom/facebook/ads/redexgen/X/R2;->A0m(Landroid/view/View;)I

    move-result v1

    iget v0, v2, Lcom/facebook/ads/redexgen/X/R3;->leftMargin:I

    sub-int/2addr v1, v0

    return v1
.end method

.method public final A8g()I
    .locals 2

    .line 85084
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/hj;->A00:Lcom/facebook/ads/redexgen/X/R2;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/R2;->A0j()I

    move-result v1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/hj;->A00:Lcom/facebook/ads/redexgen/X/R2;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/R2;->A0h()I

    move-result v0

    sub-int/2addr v1, v0

    return v1
.end method

.method public final A8h()I
    .locals 1

    .line 85085
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/hj;->A00:Lcom/facebook/ads/redexgen/X/R2;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/R2;->A0g()I

    move-result v0

    return v0
.end method
