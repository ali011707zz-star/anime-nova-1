.class public final Lcom/facebook/ads/redexgen/X/bJ;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/ads/redexgen/X/LK;-><init>(Lcom/facebook/ads/redexgen/X/gi;Lcom/facebook/ads/redexgen/X/Kr;IZLcom/facebook/ads/redexgen/X/Na;ZLjava/lang/String;Lcom/facebook/ads/redexgen/X/VA;Lcom/facebook/ads/redexgen/X/Yh;Lcom/facebook/ads/redexgen/X/fp;Lcom/facebook/ads/redexgen/X/Y2;Lcom/facebook/ads/redexgen/X/jd;Lcom/facebook/ads/redexgen/X/DZ;Lcom/facebook/ads/redexgen/X/VI;Z)V
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

    .line 77648
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/bJ;->A00:Lcom/facebook/ads/redexgen/X/LK;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 5

    invoke-static {p0}, Lcom/facebook/ads/redexgen/X/WU;->A02(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    move-object v4, p0

    .line 77649
    .local v0, "this":Lcom/facebook/ads/redexgen/X/bJ;
    .local p1, "v":Landroid/view/View;
    :try_start_0
    iget-object v0, v4, Lcom/facebook/ads/redexgen/X/bJ;->A00:Lcom/facebook/ads/redexgen/X/LK;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/LK;->A0I:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getVisibility()I

    move-result v0

    const/16 v2, 0x8

    if-ne v0, v2, :cond_1

    .line 77650
    iget-object v1, v4, Lcom/facebook/ads/redexgen/X/bJ;->A00:Lcom/facebook/ads/redexgen/X/LK;

    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/LK;->A0t(I)V

    .line 77651
    iget-object v0, v4, Lcom/facebook/ads/redexgen/X/bJ;->A00:Lcom/facebook/ads/redexgen/X/LK;

    iget-object v3, v0, Lcom/facebook/ads/redexgen/X/LK;->A0G:Landroid/os/Handler;

    iget-object v0, v4, Lcom/facebook/ads/redexgen/X/bJ;->A00:Lcom/facebook/ads/redexgen/X/LK;

    iget-object v2, v0, Lcom/facebook/ads/redexgen/X/LK;->A0X:Ljava/lang/Runnable;

    const-wide/16 v0, 0x5dc

    invoke-virtual {v3, v2, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 77652
    .end local v0    # "this":Lcom/facebook/ads/redexgen/X/bJ;
    :cond_1
    iget-object v0, v4, Lcom/facebook/ads/redexgen/X/bJ;->A00:Lcom/facebook/ads/redexgen/X/LK;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/LK;->A0g(Lcom/facebook/ads/redexgen/X/LK;)V

    .line 77653
    iget-object v0, v4, Lcom/facebook/ads/redexgen/X/bJ;->A00:Lcom/facebook/ads/redexgen/X/LK;

    iget-object v1, v0, Lcom/facebook/ads/redexgen/X/LK;->A0G:Landroid/os/Handler;

    iget-object v0, v4, Lcom/facebook/ads/redexgen/X/bJ;->A00:Lcom/facebook/ads/redexgen/X/LK;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/LK;->A0X:Ljava/lang/Runnable;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 77654
    iget-object v0, v4, Lcom/facebook/ads/redexgen/X/bJ;->A00:Lcom/facebook/ads/redexgen/X/LK;

    invoke-virtual {v0, v2}, Lcom/facebook/ads/redexgen/X/LK;->A0t(I)V

    .line 77655
    :goto_0
    return-void
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .end local p1    # "v":Landroid/view/View;
    :catchall_0
    move-exception v0

    invoke-static {v0, v4}, Lcom/facebook/ads/redexgen/X/WU;->A00(Ljava/lang/Throwable;Ljava/lang/Object;)V

    return-void
.end method
