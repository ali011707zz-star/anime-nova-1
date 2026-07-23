.class public final Lcom/facebook/ads/redexgen/X/4o;
.super Landroid/content/BroadcastReceiver;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/ads/redexgen/X/4p;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "Receiver"
.end annotation


# instance fields
.field public final synthetic A00:Lcom/facebook/ads/redexgen/X/4p;


# direct methods
.method public constructor <init>(Lcom/facebook/ads/redexgen/X/4p;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            null
        }
    .end annotation

    .line 12414
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/4o;->A00:Lcom/facebook/ads/redexgen/X/4p;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/facebook/ads/redexgen/X/4p;Lcom/facebook/ads/redexgen/X/4k;)V
    .locals 0

    .line 12415
    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/4o;-><init>(Lcom/facebook/ads/redexgen/X/4p;)V

    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3

    .line 12416
    invoke-static {p1}, Lcom/facebook/ads/redexgen/X/4p;->A01(Landroid/content/Context;)I

    move-result v2

    .line 12417
    .local v0, "networkType":I
    sget v1, Lcom/facebook/ads/redexgen/X/5C;->A02:I

    const/16 v0, 0x1f

    if-lt v1, v0, :cond_0

    const/4 v0, 0x5

    if-ne v2, v0, :cond_0

    .line 12418
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/4o;->A00:Lcom/facebook/ads/redexgen/X/4p;

    invoke-static {p1, v0}, Lcom/facebook/ads/redexgen/X/4m;->A02(Landroid/content/Context;Lcom/facebook/ads/redexgen/X/4p;)V

    .line 12419
    :goto_0
    return-void

    .line 12420
    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/4o;->A00:Lcom/facebook/ads/redexgen/X/4p;

    invoke-static {v0, v2}, Lcom/facebook/ads/redexgen/X/4p;->A08(Lcom/facebook/ads/redexgen/X/4p;I)V

    goto :goto_0
.end method
