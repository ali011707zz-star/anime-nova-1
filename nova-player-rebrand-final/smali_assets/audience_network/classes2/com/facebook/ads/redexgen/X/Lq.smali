.class public final Lcom/facebook/ads/redexgen/X/Lq;
.super Lcom/facebook/ads/redexgen/X/fo;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/ads/redexgen/X/LV;-><init>(Lcom/facebook/ads/redexgen/X/gi;Ljava/lang/ref/WeakReference;IZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic A00:Lcom/facebook/ads/redexgen/X/LV;


# direct methods
.method public constructor <init>(Lcom/facebook/ads/redexgen/X/LV;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 50675
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/Lq;->A00:Lcom/facebook/ads/redexgen/X/LV;

    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/fo;-><init>()V

    return-void
.end method


# virtual methods
.method public final A03()V
    .locals 1

    .line 50676
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Lq;->A00:Lcom/facebook/ads/redexgen/X/LV;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/LV;->A06(Lcom/facebook/ads/redexgen/X/LV;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Lq;->A00:Lcom/facebook/ads/redexgen/X/LV;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/LV;->A00(Lcom/facebook/ads/redexgen/X/LV;)Lcom/facebook/ads/redexgen/X/Y2;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Y2;->A07()Z

    move-result v0

    if-nez v0, :cond_1

    .line 50677
    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Lq;->A00:Lcom/facebook/ads/redexgen/X/LV;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/LV;->A00(Lcom/facebook/ads/redexgen/X/LV;)Lcom/facebook/ads/redexgen/X/Y2;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Y2;->A05()V

    .line 50678
    :cond_1
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Lq;->A00:Lcom/facebook/ads/redexgen/X/LV;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/LV;->A03(Lcom/facebook/ads/redexgen/X/LV;)Ljava/lang/ref/WeakReference;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 50679
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Lq;->A00:Lcom/facebook/ads/redexgen/X/LV;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/LV;->A03(Lcom/facebook/ads/redexgen/X/LV;)Ljava/lang/ref/WeakReference;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/redexgen/X/b1;

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/b1;->AEA()V

    .line 50680
    :cond_2
    return-void
.end method
