.class public final Lcom/facebook/ads/redexgen/X/VE;
.super Lcom/facebook/ads/redexgen/X/fo;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/ads/redexgen/X/UK;->A0g(Landroid/view/View;Landroid/view/View;Ljava/util/List;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic A00:Lcom/facebook/ads/redexgen/X/UK;


# direct methods
.method public constructor <init>(Lcom/facebook/ads/redexgen/X/UK;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 69225
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/VE;->A00:Lcom/facebook/ads/redexgen/X/UK;

    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/fo;-><init>()V

    return-void
.end method


# virtual methods
.method public final A03()V
    .locals 1

    .line 69226
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/VE;->A00:Lcom/facebook/ads/redexgen/X/UK;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/UK;->A0I(Lcom/facebook/ads/redexgen/X/UK;)Lcom/facebook/ads/redexgen/X/gi;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/gi;->A0F()Lcom/facebook/ads/redexgen/X/Lt;

    move-result-object v0

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/Lt;->ACa()V

    .line 69227
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/VE;->A00:Lcom/facebook/ads/redexgen/X/UK;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/UK;->A0m(Lcom/facebook/ads/redexgen/X/UK;)V

    .line 69228
    return-void
.end method
