.class public final synthetic Lcom/facebook/ads/redexgen/X/Yc;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/view/View$OnApplyWindowInsetsListener;


# instance fields
.field public final synthetic A00:Lcom/facebook/ads/redexgen/X/Pe;


# direct methods
.method public synthetic constructor <init>(Lcom/facebook/ads/redexgen/X/Pe;)V
    .locals 0

    .line 74246
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/Yc;->A00:Lcom/facebook/ads/redexgen/X/Pe;

    return-void
.end method


# virtual methods
.method public final onApplyWindowInsets(Landroid/view/View;Landroid/view/WindowInsets;)Landroid/view/WindowInsets;
    .locals 1

    .line 74247
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Yc;->A00:Lcom/facebook/ads/redexgen/X/Pe;

    invoke-virtual {v0, p1, p2}, Lcom/facebook/ads/redexgen/X/Pe;->A0F(Landroid/view/View;Landroid/view/WindowInsets;)Landroid/view/WindowInsets;

    move-result-object v0

    return-object v0
.end method
