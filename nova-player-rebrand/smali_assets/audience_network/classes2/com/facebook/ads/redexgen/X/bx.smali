.class public final Lcom/facebook/ads/redexgen/X/bx;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/ads/redexgen/X/Kc;->A1Q()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic A00:Lcom/facebook/ads/redexgen/X/Kc;


# direct methods
.method public constructor <init>(Lcom/facebook/ads/redexgen/X/Kc;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 78633
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/bx;->A00:Lcom/facebook/ads/redexgen/X/Kc;

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

    .line 78634
    .local v0, "this":Lcom/facebook/ads/redexgen/X/bx;
    :try_start_0
    iget-object v0, v2, Lcom/facebook/ads/redexgen/X/bx;->A00:Lcom/facebook/ads/redexgen/X/Kc;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/facebook/ads/redexgen/X/Kc;->A08(Lcom/facebook/ads/redexgen/X/Kc;Z)Z

    .line 78635
    iget-object v0, v2, Lcom/facebook/ads/redexgen/X/bx;->A00:Lcom/facebook/ads/redexgen/X/Kc;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/c3;->A07:Lcom/facebook/ads/redexgen/X/c7;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/c7;->A0D()Lcom/facebook/ads/redexgen/X/dm;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 78636
    iget-object v0, v2, Lcom/facebook/ads/redexgen/X/bx;->A00:Lcom/facebook/ads/redexgen/X/Kc;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/c3;->A07:Lcom/facebook/ads/redexgen/X/c7;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/c7;->A0D()Lcom/facebook/ads/redexgen/X/dm;

    move-result-object v0

    invoke-interface {v0, v1}, Lcom/facebook/ads/redexgen/X/dm;->AFw(Z)V

    .line 78637
    .end local v0    # "this":Lcom/facebook/ads/redexgen/X/bx;
    :cond_1
    return-void
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v0

    invoke-static {v0, v2}, Lcom/facebook/ads/redexgen/X/WU;->A00(Ljava/lang/Throwable;Ljava/lang/Object;)V

    return-void
.end method
