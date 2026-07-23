.class public final Lcom/facebook/ads/redexgen/X/Gp;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/facebook/ads/redexgen/X/Yf;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/ads/redexgen/X/Gj;->A0c()Lcom/facebook/ads/redexgen/X/Yb;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic A00:Lcom/facebook/ads/redexgen/X/Gj;


# direct methods
.method public constructor <init>(Lcom/facebook/ads/redexgen/X/Gj;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 37778
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/Gp;->A00:Lcom/facebook/ads/redexgen/X/Gj;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final AEZ(I)V
    .locals 2

    .line 37779
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Gp;->A00:Lcom/facebook/ads/redexgen/X/Gj;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Gj;->A0d()V

    .line 37780
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Gp;->A00:Lcom/facebook/ads/redexgen/X/Gj;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/Gj;->A01:Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    .line 37781
    const/4 v0, -0x1

    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v1, v0, v0}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 37782
    .local v0, "hostParams":Landroid/widget/FrameLayout$LayoutParams;
    iput p1, v1, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 37783
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Gp;->A00:Lcom/facebook/ads/redexgen/X/Gj;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/Gj;->A01:Landroid/view/ViewGroup;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 37784
    .end local v0    # "hostParams":Landroid/widget/FrameLayout$LayoutParams;
    :cond_0
    return-void
.end method
