.class public final Lcom/facebook/ads/redexgen/X/G8;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/hardware/display/DisplayManager$DisplayListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/ads/redexgen/X/GA;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "DefaultDisplayListener"
.end annotation


# instance fields
.field public final A00:Landroid/hardware/display/DisplayManager;

.field public final synthetic A01:Lcom/facebook/ads/redexgen/X/GA;


# direct methods
.method public constructor <init>(Lcom/facebook/ads/redexgen/X/GA;Landroid/hardware/display/DisplayManager;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x0
        }
        names = {
            null,
            null
        }
    .end annotation

    .line 36820
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/G8;->A01:Lcom/facebook/ads/redexgen/X/GA;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36821
    iput-object p2, p0, Lcom/facebook/ads/redexgen/X/G8;->A00:Landroid/hardware/display/DisplayManager;

    .line 36822
    return-void
.end method


# virtual methods
.method public final A00()V
    .locals 2

    .line 36823
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/G8;->A00:Landroid/hardware/display/DisplayManager;

    const/4 v0, 0x0

    invoke-virtual {v1, p0, v0}, Landroid/hardware/display/DisplayManager;->registerDisplayListener(Landroid/hardware/display/DisplayManager$DisplayListener;Landroid/os/Handler;)V

    .line 36824
    return-void
.end method

.method public final A01()V
    .locals 1

    .line 36825
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/G8;->A00:Landroid/hardware/display/DisplayManager;

    invoke-virtual {v0, p0}, Landroid/hardware/display/DisplayManager;->unregisterDisplayListener(Landroid/hardware/display/DisplayManager$DisplayListener;)V

    .line 36826
    return-void
.end method

.method public final onDisplayAdded(I)V
    .locals 0

    .line 36827
    return-void
.end method

.method public final onDisplayChanged(I)V
    .locals 1

    .line 36828
    if-nez p1, :cond_0

    .line 36829
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/G8;->A01:Lcom/facebook/ads/redexgen/X/GA;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/GA;->A05(Lcom/facebook/ads/redexgen/X/GA;)V

    .line 36830
    :cond_0
    return-void
.end method

.method public final onDisplayRemoved(I)V
    .locals 0

    .line 36831
    return-void
.end method
