.class public final Lcom/facebook/ads/redexgen/X/Pf;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/view/View$OnApplyWindowInsetsListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/ads/redexgen/X/0n;->A0E(Landroid/view/View;Lcom/facebook/ads/redexgen/X/PR;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic A00:Lcom/facebook/ads/redexgen/X/PR;

.field public final synthetic A01:Lcom/facebook/ads/redexgen/X/0n;


# direct methods
.method public constructor <init>(Lcom/facebook/ads/redexgen/X/0n;Lcom/facebook/ads/redexgen/X/PR;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010
        }
        names = {
            null,
            null
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 58123
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/Pf;->A01:Lcom/facebook/ads/redexgen/X/0n;

    iput-object p2, p0, Lcom/facebook/ads/redexgen/X/Pf;->A00:Lcom/facebook/ads/redexgen/X/PR;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onApplyWindowInsets(Landroid/view/View;Landroid/view/WindowInsets;)Landroid/view/WindowInsets;
    .locals 2

    .line 58124
    invoke-static {p2}, Lcom/facebook/ads/redexgen/X/Py;->A00(Ljava/lang/Object;)Lcom/facebook/ads/redexgen/X/Py;

    move-result-object v1

    .line 58125
    .local v0, "compatInsets":Lcom/facebook/ads/redexgen/X/Py;
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Pf;->A00:Lcom/facebook/ads/redexgen/X/PR;

    invoke-interface {v0, p1, v1}, Lcom/facebook/ads/redexgen/X/PR;->ACw(Landroid/view/View;Lcom/facebook/ads/redexgen/X/Py;)Lcom/facebook/ads/redexgen/X/Py;

    move-result-object v0

    .line 58126
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Py;->A01(Lcom/facebook/ads/redexgen/X/Py;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowInsets;

    return-object v0
.end method
