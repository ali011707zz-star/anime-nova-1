.class public final Lcom/facebook/ads/redexgen/X/dt;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/ads/redexgen/X/4V;->A0G(Lcom/facebook/ads/redexgen/X/VH;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic A00:Lcom/facebook/ads/redexgen/X/4V;


# direct methods
.method public constructor <init>(Lcom/facebook/ads/redexgen/X/4V;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 80487
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/dt;->A00:Lcom/facebook/ads/redexgen/X/4V;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    invoke-static {p0}, Lcom/facebook/ads/redexgen/X/WU;->A02(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    move-object v2, p0

    .line 80488
    .local v0, "this":Lcom/facebook/ads/redexgen/X/dt;
    :try_start_0
    iget-object v0, v2, Lcom/facebook/ads/redexgen/X/dt;->A00:Lcom/facebook/ads/redexgen/X/4V;

    iget-object v1, v0, Lcom/facebook/ads/redexgen/X/Gj;->A0A:Lcom/facebook/ads/redexgen/X/Yh;

    iget-object v0, v2, Lcom/facebook/ads/redexgen/X/dt;->A00:Lcom/facebook/ads/redexgen/X/4V;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/Gj;->A0B:Lcom/facebook/ads/redexgen/X/ZU;

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/ZU;->A7w()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Lcom/facebook/ads/redexgen/X/Yh;->A4j(Ljava/lang/String;)V

    .line 80489
    return-void
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .end local v0    # "this":Lcom/facebook/ads/redexgen/X/dt;
    :catchall_0
    move-exception v0

    invoke-static {v0, v2}, Lcom/facebook/ads/redexgen/X/WU;->A00(Ljava/lang/Throwable;Ljava/lang/Object;)V

    return-void
.end method
