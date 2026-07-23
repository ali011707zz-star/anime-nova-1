.class public final Lcom/facebook/ads/redexgen/X/Fz;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/facebook/ads/redexgen/X/cs;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/ads/redexgen/X/Fy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic A00:Lcom/facebook/ads/redexgen/X/Fy;


# direct methods
.method public constructor <init>(Lcom/facebook/ads/redexgen/X/Fy;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 36633
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/Fz;->A00:Lcom/facebook/ads/redexgen/X/Fy;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final AGW(Landroid/view/View;)V
    .locals 2

    .line 36634
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Fz;->A00:Lcom/facebook/ads/redexgen/X/Fy;

    iget-boolean v0, v0, Lcom/facebook/ads/redexgen/X/Fy;->A09:Z

    if-eqz v0, :cond_0

    .line 36635
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Fz;->A00:Lcom/facebook/ads/redexgen/X/Fy;

    const/4 v0, 0x0

    iput-boolean v0, v1, Lcom/facebook/ads/redexgen/X/Fy;->A07:Z

    .line 36636
    :cond_0
    return-void
.end method

.method public final AGY(Landroid/view/View;)V
    .locals 2

    .line 36637
    check-cast p1, Lcom/facebook/ads/redexgen/X/Jg;

    .line 36638
    .local v0, "cardLayout":Lcom/facebook/ads/redexgen/X/Jg;
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/Jg;->A1T()V

    .line 36639
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Fz;->A00:Lcom/facebook/ads/redexgen/X/Fy;

    iget-boolean v0, v0, Lcom/facebook/ads/redexgen/X/Fy;->A09:Z

    if-eqz v0, :cond_0

    .line 36640
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Fz;->A00:Lcom/facebook/ads/redexgen/X/Fy;

    const/4 v0, 0x1

    iput-boolean v0, v1, Lcom/facebook/ads/redexgen/X/Fy;->A07:Z

    .line 36641
    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Fz;->A00:Lcom/facebook/ads/redexgen/X/Fy;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/Fy;->A04:Lcom/facebook/ads/redexgen/X/fp;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/fp;->A0Z()Z

    move-result v0

    if-eqz v0, :cond_1

    const v0, -0x5f000010

    invoke-virtual {p1, v0}, Lcom/facebook/ads/redexgen/X/Jg;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-nez v0, :cond_1

    .line 36642
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Fz;->A00:Lcom/facebook/ads/redexgen/X/Fy;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/Fy;->A04:Lcom/facebook/ads/redexgen/X/fp;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/fp;->A0U()V

    .line 36643
    :cond_1
    return-void
.end method
