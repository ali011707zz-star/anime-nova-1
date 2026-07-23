.class public final synthetic Lcom/facebook/ads/redexgen/X/eT;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic A00:Landroid/view/View;

.field public final synthetic A01:Landroid/view/View;


# direct methods
.method public synthetic constructor <init>(Landroid/view/View;Landroid/view/View;)V
    .locals 0

    .line 81605
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/eT;->A00:Landroid/view/View;

    iput-object p2, p0, Lcom/facebook/ads/redexgen/X/eT;->A01:Landroid/view/View;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 81606
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/eT;->A00:Landroid/view/View;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/eT;->A01:Landroid/view/View;

    invoke-static {v1, v0}, Lcom/facebook/ads/redexgen/X/eU;->A02(Landroid/view/View;Landroid/view/View;)V

    return-void
.end method
