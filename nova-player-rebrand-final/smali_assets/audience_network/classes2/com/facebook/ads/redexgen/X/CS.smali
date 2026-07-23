.class public final Lcom/facebook/ads/redexgen/X/CS;
.super Landroid/content/BroadcastReceiver;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/ads/redexgen/X/CX;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "DeviceStatusChangeReceiver"
.end annotation


# instance fields
.field public final synthetic A00:Lcom/facebook/ads/redexgen/X/CX;


# direct methods
.method public constructor <init>(Lcom/facebook/ads/redexgen/X/CX;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            null
        }
    .end annotation

    .line 32106
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/CS;->A00:Lcom/facebook/ads/redexgen/X/CX;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/facebook/ads/redexgen/X/CX;Lcom/facebook/ads/redexgen/X/CR;)V
    .locals 0

    .line 32107
    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/CS;-><init>(Lcom/facebook/ads/redexgen/X/CX;)V

    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1

    .line 32108
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/CS;->isInitialStickyBroadcast()Z

    move-result v0

    if-nez v0, :cond_0

    .line 32109
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/CS;->A00:Lcom/facebook/ads/redexgen/X/CX;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/CX;->A07(Lcom/facebook/ads/redexgen/X/CX;)V

    .line 32110
    :cond_0
    return-void
.end method
