.class public final Lcom/facebook/ads/redexgen/X/bf;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/ads/redexgen/X/bi;->A04()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic A00:Lcom/facebook/ads/redexgen/X/bi;


# direct methods
.method public constructor <init>(Lcom/facebook/ads/redexgen/X/bi;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 78262
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/bf;->A00:Lcom/facebook/ads/redexgen/X/bi;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 4

    invoke-static {p0}, Lcom/facebook/ads/redexgen/X/WU;->A02(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    move-object v3, p0

    .line 78263
    .local v0, "this":Lcom/facebook/ads/redexgen/X/bf;
    .local p1, "v":Landroid/view/View;
    :try_start_0
    iget-object v0, v3, Lcom/facebook/ads/redexgen/X/bf;->A00:Lcom/facebook/ads/redexgen/X/bi;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/bi;->A01(Lcom/facebook/ads/redexgen/X/bi;)Lcom/facebook/ads/redexgen/X/bh;

    move-result-object v0

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/bh;->AEm()V

    .line 78264
    iget-object v0, v3, Lcom/facebook/ads/redexgen/X/bf;->A00:Lcom/facebook/ads/redexgen/X/bi;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/bi;->A00(Lcom/facebook/ads/redexgen/X/bi;)Lcom/facebook/ads/redexgen/X/Yb;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 78265
    iget-object v0, v3, Lcom/facebook/ads/redexgen/X/bf;->A00:Lcom/facebook/ads/redexgen/X/bi;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/bi;->A00(Lcom/facebook/ads/redexgen/X/bi;)Lcom/facebook/ads/redexgen/X/Yb;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/YB;->A0L(Landroid/view/View;)V

    .line 78266
    .end local v0    # "this":Lcom/facebook/ads/redexgen/X/bf;
    :cond_1
    iget-object v0, v3, Lcom/facebook/ads/redexgen/X/bf;->A00:Lcom/facebook/ads/redexgen/X/bi;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/bi;->A03(Lcom/facebook/ads/redexgen/X/bi;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 78267
    .local v2, "view":Landroid/view/View;
    invoke-static {v0, v1}, Lcom/facebook/ads/redexgen/X/YB;->A0O(Landroid/view/View;I)V

    goto :goto_0

    .line 78268
    :cond_2
    iget-object v0, v3, Lcom/facebook/ads/redexgen/X/bf;->A00:Lcom/facebook/ads/redexgen/X/bi;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/YB;->A0J(Landroid/view/View;)V

    .line 78269
    iget-object v0, v3, Lcom/facebook/ads/redexgen/X/bf;->A00:Lcom/facebook/ads/redexgen/X/bi;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/bi;->A02(Lcom/facebook/ads/redexgen/X/bi;)Lcom/facebook/ads/redexgen/X/Ek;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 78270
    iget-object v0, v3, Lcom/facebook/ads/redexgen/X/bf;->A00:Lcom/facebook/ads/redexgen/X/bi;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/bi;->A02(Lcom/facebook/ads/redexgen/X/bi;)Lcom/facebook/ads/redexgen/X/Ek;

    move-result-object v0

    invoke-static {v0, v1}, Lcom/facebook/ads/redexgen/X/YB;->A0O(Landroid/view/View;I)V

    .line 78271
    iget-object v0, v3, Lcom/facebook/ads/redexgen/X/bf;->A00:Lcom/facebook/ads/redexgen/X/bi;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/bi;->A02(Lcom/facebook/ads/redexgen/X/bi;)Lcom/facebook/ads/redexgen/X/Ek;

    move-result-object v2

    sget-object v1, Lcom/facebook/ads/redexgen/X/et;->A02:Lcom/facebook/ads/redexgen/X/et;

    const/16 v0, 0xe

    invoke-virtual {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Ek;->A0e(Lcom/facebook/ads/redexgen/X/et;I)V

    .line 78272
    :cond_3
    return-void
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .end local p1    # "v":Landroid/view/View;
    :catchall_0
    move-exception v0

    invoke-static {v0, v3}, Lcom/facebook/ads/redexgen/X/WU;->A00(Ljava/lang/Throwable;Ljava/lang/Object;)V

    return-void
.end method
