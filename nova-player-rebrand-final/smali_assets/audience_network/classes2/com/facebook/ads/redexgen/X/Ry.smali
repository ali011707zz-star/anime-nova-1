.class public final synthetic Lcom/facebook/ads/redexgen/X/Ry;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic A00:Lcom/facebook/ads/redexgen/X/hC;

.field public final synthetic A01:Lcom/facebook/ads/redexgen/X/UK;


# direct methods
.method public synthetic constructor <init>(Lcom/facebook/ads/redexgen/X/hC;Lcom/facebook/ads/redexgen/X/UK;)V
    .locals 0

    .line 63250
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/Ry;->A00:Lcom/facebook/ads/redexgen/X/hC;

    iput-object p2, p0, Lcom/facebook/ads/redexgen/X/Ry;->A01:Lcom/facebook/ads/redexgen/X/UK;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    .line 63251
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Ry;->A00:Lcom/facebook/ads/redexgen/X/hC;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Ry;->A01:Lcom/facebook/ads/redexgen/X/UK;

    invoke-virtual {v1, v0, p1}, Lcom/facebook/ads/redexgen/X/hC;->A0Y(Lcom/facebook/ads/redexgen/X/UK;Landroid/view/View;)V

    return-void
.end method
