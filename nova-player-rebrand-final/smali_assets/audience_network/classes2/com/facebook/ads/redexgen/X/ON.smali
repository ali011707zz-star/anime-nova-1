.class public final Lcom/facebook/ads/redexgen/X/ON;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/ads/redexgen/X/OO;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic A00:Lcom/facebook/ads/redexgen/X/OO;


# direct methods
.method public constructor <init>(Lcom/facebook/ads/redexgen/X/OO;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 55625
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/ON;->A00:Lcom/facebook/ads/redexgen/X/OO;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 2

    .line 55626
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/ON;->A00:Lcom/facebook/ads/redexgen/X/OO;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/OO;->A00(Lcom/facebook/ads/redexgen/X/OO;)Landroid/os/Handler;

    move-result-object v1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/ON;->A00:Lcom/facebook/ads/redexgen/X/OO;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/OO;->A04(Lcom/facebook/ads/redexgen/X/OO;)Lcom/facebook/ads/redexgen/X/Wc;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 55627
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/ON;->A00:Lcom/facebook/ads/redexgen/X/OO;

    new-instance v0, Landroid/os/Messenger;

    invoke-direct {v0, p2}, Landroid/os/Messenger;-><init>(Landroid/os/IBinder;)V

    invoke-static {v1, v0}, Lcom/facebook/ads/redexgen/X/OO;->A02(Lcom/facebook/ads/redexgen/X/OO;Landroid/os/Messenger;)Landroid/os/Messenger;

    .line 55628
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/ON;->A00:Lcom/facebook/ads/redexgen/X/OO;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/OO;->A03(Lcom/facebook/ads/redexgen/X/OO;)Lcom/facebook/ads/redexgen/X/ge;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Us;->A09(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 55629
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/ON;->A00:Lcom/facebook/ads/redexgen/X/OO;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/ON;->A00:Lcom/facebook/ads/redexgen/X/OO;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/OO;->A01(Lcom/facebook/ads/redexgen/X/OO;)Landroid/os/Messenger;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/facebook/ads/redexgen/X/OO;->A08(Lcom/facebook/ads/redexgen/X/OO;Landroid/os/Messenger;)V

    .line 55630
    :cond_0
    return-void
.end method

.method public final onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 1

    .line 55631
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/ON;->A00:Lcom/facebook/ads/redexgen/X/OO;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/OO;->A09()V

    .line 55632
    return-void
.end method
