.class public final Lcom/facebook/ads/redexgen/X/eX;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/ads/redexgen/X/FO;-><init>(Lcom/facebook/ads/redexgen/X/gi;Ljava/util/List;ILcom/facebook/ads/redexgen/X/7M;Lcom/facebook/ads/redexgen/X/Kr;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic A00:Lcom/facebook/ads/redexgen/X/FO;


# direct methods
.method public constructor <init>(Lcom/facebook/ads/redexgen/X/FO;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 81670
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/eX;->A00:Lcom/facebook/ads/redexgen/X/FO;

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

    .line 81671
    .local v0, "this":Lcom/facebook/ads/redexgen/X/eX;
    :try_start_0
    iget-object v0, v3, Lcom/facebook/ads/redexgen/X/eX;->A00:Lcom/facebook/ads/redexgen/X/FO;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/FO;->A0B()I

    move-result v0

    if-nez v0, :cond_1

    .line 81672
    return-void

    .line 81673
    :cond_1
    iget-object v0, v3, Lcom/facebook/ads/redexgen/X/eX;->A00:Lcom/facebook/ads/redexgen/X/FO;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/FO;->A02(Lcom/facebook/ads/redexgen/X/FO;)Lcom/facebook/ads/redexgen/X/7M;

    move-result-object v2

    iget-object v0, v3, Lcom/facebook/ads/redexgen/X/eX;->A00:Lcom/facebook/ads/redexgen/X/FO;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/FO;->A00(Lcom/facebook/ads/redexgen/X/FO;)I

    move-result v1

    const/4 v0, 0x0

    invoke-virtual {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/7M;->scrollBy(II)V

    .line 81674
    iget-object v0, v3, Lcom/facebook/ads/redexgen/X/eX;->A00:Lcom/facebook/ads/redexgen/X/FO;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/FO;->A01(Lcom/facebook/ads/redexgen/X/FO;)Landroid/os/Handler;

    move-result-object v2

    const-wide/16 v0, 0x10

    invoke-virtual {v2, v3, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 81675
    return-void
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .end local v0    # "this":Lcom/facebook/ads/redexgen/X/eX;
    :catchall_0
    move-exception v0

    invoke-static {v0, v3}, Lcom/facebook/ads/redexgen/X/WU;->A00(Ljava/lang/Throwable;Ljava/lang/Object;)V

    return-void
.end method
