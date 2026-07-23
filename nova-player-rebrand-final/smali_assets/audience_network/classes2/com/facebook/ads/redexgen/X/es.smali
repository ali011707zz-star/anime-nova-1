.class public final Lcom/facebook/ads/redexgen/X/es;
.super Landroid/database/ContentObserver;
.source ""


# instance fields
.field public final A00:Lcom/facebook/ads/redexgen/X/EF;


# direct methods
.method public constructor <init>(Landroid/os/Handler;Lcom/facebook/ads/redexgen/X/EF;)V
    .locals 0

    .line 81922
    invoke-direct {p0, p1}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 81923
    iput-object p2, p0, Lcom/facebook/ads/redexgen/X/es;->A00:Lcom/facebook/ads/redexgen/X/EF;

    .line 81924
    return-void
.end method


# virtual methods
.method public final deliverSelfNotifications()Z
    .locals 1

    .line 81925
    const/4 v0, 0x0

    return v0
.end method

.method public final onChange(Z)V
    .locals 1

    .line 81926
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/es;->A00:Lcom/facebook/ads/redexgen/X/EF;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/EF;->A0f()V

    .line 81927
    return-void
.end method
