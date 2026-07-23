.class public final Lcom/facebook/ads/redexgen/X/Aj;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/facebook/ads/redexgen/X/rM;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/ads/redexgen/X/r5;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "LifecycleControllerListener"
.end annotation


# instance fields
.field public final A00:Lcom/facebook/ads/redexgen/X/rF;


# direct methods
.method public constructor <init>(Lcom/facebook/ads/redexgen/X/rF;)V
    .locals 0

    .line 29360
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29361
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/Aj;->A00:Lcom/facebook/ads/redexgen/X/rF;

    .line 29362
    return-void
.end method

.method public synthetic constructor <init>(Lcom/facebook/ads/redexgen/X/rF;Lcom/facebook/ads/redexgen/X/r6;)V
    .locals 0

    .line 29363
    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/Aj;-><init>(Lcom/facebook/ads/redexgen/X/rF;)V

    return-void
.end method


# virtual methods
.method public final onStart()V
    .locals 1

    .line 29364
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Aj;->A00:Lcom/facebook/ads/redexgen/X/rF;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/rF;->A0G()V

    .line 29365
    return-void
.end method

.method public final onStop()V
    .locals 1

    .line 29366
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Aj;->A00:Lcom/facebook/ads/redexgen/X/rF;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/rF;->A0F()V

    .line 29367
    return-void
.end method
