.class public final Lcom/facebook/ads/redexgen/X/bI;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/ads/redexgen/X/LK;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic A00:Lcom/facebook/ads/redexgen/X/LK;


# direct methods
.method public constructor <init>(Lcom/facebook/ads/redexgen/X/LK;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 77644
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/bI;->A00:Lcom/facebook/ads/redexgen/X/LK;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    invoke-static {p0}, Lcom/facebook/ads/redexgen/X/WU;->A02(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    move-object v3, p0

    .line 77645
    .local v0, "this":Lcom/facebook/ads/redexgen/X/bI;
    :try_start_0
    iget-object v0, v3, Lcom/facebook/ads/redexgen/X/bI;->A00:Lcom/facebook/ads/redexgen/X/LK;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/LK;->A0r()V

    .line 77646
    iget-object v2, v3, Lcom/facebook/ads/redexgen/X/bI;->A00:Lcom/facebook/ads/redexgen/X/LK;

    const-wide/16 v0, 0x3e8

    invoke-virtual {v2, v0, v1}, Lcom/facebook/ads/redexgen/X/LK;->A0v(J)V

    .line 77647
    return-void
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .end local v0    # "this":Lcom/facebook/ads/redexgen/X/bI;
    :catchall_0
    move-exception v0

    invoke-static {v0, v3}, Lcom/facebook/ads/redexgen/X/WU;->A00(Ljava/lang/Throwable;Ljava/lang/Object;)V

    return-void
.end method
