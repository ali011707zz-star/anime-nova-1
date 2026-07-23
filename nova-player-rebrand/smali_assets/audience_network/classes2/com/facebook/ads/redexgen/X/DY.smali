.class public final Lcom/facebook/ads/redexgen/X/DY;
.super Lcom/facebook/ads/redexgen/X/Wc;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/ads/redexgen/X/DS;->A05(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic A00:Lcom/facebook/ads/redexgen/X/DS;


# direct methods
.method public constructor <init>(Lcom/facebook/ads/redexgen/X/DS;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 33938
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/DY;->A00:Lcom/facebook/ads/redexgen/X/DS;

    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/Wc;-><init>()V

    return-void
.end method


# virtual methods
.method public final A07()V
    .locals 2

    .line 33939
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/DY;->A00:Lcom/facebook/ads/redexgen/X/DS;

    sget-object v0, Lcom/facebook/ads/redexgen/X/fJ;->A02:Lcom/facebook/ads/redexgen/X/fJ;

    invoke-static {v1, v0}, Lcom/facebook/ads/redexgen/X/DS;->A03(Lcom/facebook/ads/redexgen/X/DS;Lcom/facebook/ads/redexgen/X/fJ;)Lcom/facebook/ads/redexgen/X/fJ;

    .line 33940
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/DY;->A00:Lcom/facebook/ads/redexgen/X/DS;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/DS;->A02(Lcom/facebook/ads/redexgen/X/DS;)Landroid/view/View;

    move-result-object v1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/DY;->A00:Lcom/facebook/ads/redexgen/X/DS;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/DS;->A00(Lcom/facebook/ads/redexgen/X/DS;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/facebook/ads/redexgen/X/YB;->A0V(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    .line 33941
    return-void
.end method
