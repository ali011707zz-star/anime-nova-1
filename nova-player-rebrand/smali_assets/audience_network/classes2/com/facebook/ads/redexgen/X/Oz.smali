.class public final Lcom/facebook/ads/redexgen/X/Oz;
.super Landroid/os/Handler;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/ads/redexgen/X/P2;-><init>(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic A00:Lcom/facebook/ads/redexgen/X/P2;


# direct methods
.method public constructor <init>(Lcom/facebook/ads/redexgen/X/P2;Landroid/os/Looper;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x0
        }
        names = {
            null,
            null
        }
    .end annotation

    .line 56455
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/Oz;->A00:Lcom/facebook/ads/redexgen/X/P2;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 1

    .line 56456
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 56457
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 56458
    :goto_0
    return-void

    .line 56459
    :pswitch_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Oz;->A00:Lcom/facebook/ads/redexgen/X/P2;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/P2;->A04(Lcom/facebook/ads/redexgen/X/P2;)V

    .line 56460
    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
