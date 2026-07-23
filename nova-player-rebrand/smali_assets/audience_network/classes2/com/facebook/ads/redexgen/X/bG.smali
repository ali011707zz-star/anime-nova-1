.class public final Lcom/facebook/ads/redexgen/X/bG;
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

    .line 77635
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/bG;->A00:Lcom/facebook/ads/redexgen/X/LK;

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

    .line 77636
    .local v0, "this":Lcom/facebook/ads/redexgen/X/bG;
    :try_start_0
    iget-object v0, v2, Lcom/facebook/ads/redexgen/X/bG;->A00:Lcom/facebook/ads/redexgen/X/LK;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/LK;->A0I:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_1

    .line 77637
    iget-object v1, v2, Lcom/facebook/ads/redexgen/X/bG;->A00:Lcom/facebook/ads/redexgen/X/LK;

    const/16 v0, 0x8

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/LK;->A0t(I)V

    .line 77638
    .end local v0    # "this":Lcom/facebook/ads/redexgen/X/bG;
    :cond_1
    return-void
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v0

    invoke-static {v0, v2}, Lcom/facebook/ads/redexgen/X/WU;->A00(Ljava/lang/Throwable;Ljava/lang/Object;)V

    return-void
.end method
