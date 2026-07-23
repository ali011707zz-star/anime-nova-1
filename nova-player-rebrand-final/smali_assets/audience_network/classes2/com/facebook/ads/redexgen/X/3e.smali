.class public final Lcom/facebook/ads/redexgen/X/3e;
.super Lcom/facebook/ads/redexgen/X/EA;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/ads/redexgen/X/Dh;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic A00:Lcom/facebook/ads/redexgen/X/Dh;


# direct methods
.method public constructor <init>(Lcom/facebook/ads/redexgen/X/Dh;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 10615
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/3e;->A00:Lcom/facebook/ads/redexgen/X/Dh;

    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/EA;-><init>()V

    return-void
.end method

.method private final A00(Lcom/facebook/ads/redexgen/X/4K;)V
    .locals 2

    .line 10616
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/3e;->A00:Lcom/facebook/ads/redexgen/X/Dh;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Dh;->A03(Lcom/facebook/ads/redexgen/X/Dh;)Lcom/facebook/ads/redexgen/X/f9;

    move-result-object v1

    sget-object v0, Lcom/facebook/ads/redexgen/X/f9;->A03:Lcom/facebook/ads/redexgen/X/f9;

    if-eq v1, v0, :cond_0

    .line 10617
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/3e;->A00:Lcom/facebook/ads/redexgen/X/Dh;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Dh;->A01(Lcom/facebook/ads/redexgen/X/Dh;)Landroid/view/View;

    move-result-object v1

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {v1, v0}, Landroid/view/View;->setAlpha(F)V

    .line 10618
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/3e;->A00:Lcom/facebook/ads/redexgen/X/Dh;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Dh;->A01(Lcom/facebook/ads/redexgen/X/Dh;)Landroid/view/View;

    move-result-object v1

    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 10619
    :cond_0
    return-void
.end method


# virtual methods
.method public final bridge synthetic A03(Lcom/facebook/ads/redexgen/X/UL;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 10620
    check-cast p1, Lcom/facebook/ads/redexgen/X/4K;

    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/3e;->A00(Lcom/facebook/ads/redexgen/X/4K;)V

    return-void
.end method
