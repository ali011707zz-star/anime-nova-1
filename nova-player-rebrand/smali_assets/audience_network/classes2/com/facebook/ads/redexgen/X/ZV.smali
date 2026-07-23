.class public final synthetic Lcom/facebook/ads/redexgen/X/ZV;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic A00:Lcom/facebook/ads/redexgen/X/ZX;

.field public final synthetic A01:Lcom/facebook/ads/redexgen/X/Zh;


# direct methods
.method public synthetic constructor <init>(Lcom/facebook/ads/redexgen/X/ZX;Lcom/facebook/ads/redexgen/X/Zh;)V
    .locals 0

    .line 75561
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/ZV;->A00:Lcom/facebook/ads/redexgen/X/ZX;

    iput-object p2, p0, Lcom/facebook/ads/redexgen/X/ZV;->A01:Lcom/facebook/ads/redexgen/X/Zh;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    .line 75562
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/ZV;->A00:Lcom/facebook/ads/redexgen/X/ZX;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/ZV;->A01:Lcom/facebook/ads/redexgen/X/Zh;

    invoke-virtual {v1, v0, p1}, Lcom/facebook/ads/redexgen/X/ZX;->A05(Lcom/facebook/ads/redexgen/X/Zh;Landroid/view/View;)V

    return-void
.end method
