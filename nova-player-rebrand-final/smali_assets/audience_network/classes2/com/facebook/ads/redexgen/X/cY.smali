.class public final Lcom/facebook/ads/redexgen/X/cY;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/ads/redexgen/X/KB;->A0O()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic A00:Lcom/facebook/ads/redexgen/X/KB;


# direct methods
.method public constructor <init>(Lcom/facebook/ads/redexgen/X/KB;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 79240
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/cY;->A00:Lcom/facebook/ads/redexgen/X/KB;

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

    .line 79241
    .local v0, "this":Lcom/facebook/ads/redexgen/X/cY;
    .local p1, "v":Landroid/view/View;
    :try_start_0
    iget-object v0, v4, Lcom/facebook/ads/redexgen/X/cY;->A00:Lcom/facebook/ads/redexgen/X/KB;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/KB;->A02(Lcom/facebook/ads/redexgen/X/KB;)Landroid/widget/ImageView;

    move-result-object v0

    const/16 v2, 0x8

    if-eqz v0, :cond_1

    iget-object v0, v4, Lcom/facebook/ads/redexgen/X/cY;->A00:Lcom/facebook/ads/redexgen/X/KB;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/KB;->A02(Lcom/facebook/ads/redexgen/X/KB;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ImageView;->getVisibility()I

    move-result v0

    if-ne v0, v2, :cond_1

    .line 79242
    iget-object v1, v4, Lcom/facebook/ads/redexgen/X/cY;->A00:Lcom/facebook/ads/redexgen/X/KB;

    const/4 v0, 0x0

    invoke-static {v1, v0}, Lcom/facebook/ads/redexgen/X/KB;->A0l(Lcom/facebook/ads/redexgen/X/KB;I)V

    .line 79243
    iget-object v0, v4, Lcom/facebook/ads/redexgen/X/cY;->A00:Lcom/facebook/ads/redexgen/X/KB;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/KB;->A00(Lcom/facebook/ads/redexgen/X/KB;)Landroid/os/Handler;

    move-result-object v3

    iget-object v0, v4, Lcom/facebook/ads/redexgen/X/cY;->A00:Lcom/facebook/ads/redexgen/X/KB;

    .line 79244
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/KB;->A0I(Lcom/facebook/ads/redexgen/X/KB;)Ljava/lang/Runnable;

    move-result-object v2

    .line 79245
    const-wide/16 v0, 0x5dc

    invoke-virtual {v3, v2, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 79246
    .end local v0    # "this":Lcom/facebook/ads/redexgen/X/cY;
    :cond_1
    iget-object v0, v4, Lcom/facebook/ads/redexgen/X/cY;->A00:Lcom/facebook/ads/redexgen/X/KB;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/KB;->A0k(Lcom/facebook/ads/redexgen/X/KB;)V

    .line 79247
    iget-object v0, v4, Lcom/facebook/ads/redexgen/X/cY;->A00:Lcom/facebook/ads/redexgen/X/KB;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/KB;->A00(Lcom/facebook/ads/redexgen/X/KB;)Landroid/os/Handler;

    move-result-object v1

    iget-object v0, v4, Lcom/facebook/ads/redexgen/X/cY;->A00:Lcom/facebook/ads/redexgen/X/KB;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/KB;->A0I(Lcom/facebook/ads/redexgen/X/KB;)Ljava/lang/Runnable;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 79248
    iget-object v0, v4, Lcom/facebook/ads/redexgen/X/cY;->A00:Lcom/facebook/ads/redexgen/X/KB;

    invoke-static {v0, v2}, Lcom/facebook/ads/redexgen/X/KB;->A0l(Lcom/facebook/ads/redexgen/X/KB;I)V

    .line 79249
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
