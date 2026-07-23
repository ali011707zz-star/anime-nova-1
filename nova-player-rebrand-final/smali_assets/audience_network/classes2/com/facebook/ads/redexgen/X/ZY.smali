.class public final Lcom/facebook/ads/redexgen/X/ZY;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/ads/redexgen/X/Zb;->A01(Lcom/facebook/ads/redexgen/X/Za;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic A00:Lcom/facebook/ads/redexgen/X/Zb;


# direct methods
.method public constructor <init>(Lcom/facebook/ads/redexgen/X/Zb;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 75615
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/ZY;->A00:Lcom/facebook/ads/redexgen/X/Zb;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    invoke-static {p0}, Lcom/facebook/ads/redexgen/X/WU;->A02(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    move-object v1, p0

    .line 75616
    .local v0, "this":Lcom/facebook/ads/redexgen/X/ZY;
    .local p1, "view":Landroid/view/View;
    :try_start_0
    iget-object v0, v1, Lcom/facebook/ads/redexgen/X/ZY;->A00:Lcom/facebook/ads/redexgen/X/Zb;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Zb;->A03(Lcom/facebook/ads/redexgen/X/Zb;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 75617
    iget-object v0, v1, Lcom/facebook/ads/redexgen/X/ZY;->A00:Lcom/facebook/ads/redexgen/X/Zb;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Zb;->A02(Lcom/facebook/ads/redexgen/X/Zb;)Lcom/facebook/ads/redexgen/X/Zf;

    move-result-object v0

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/Zf;->A53()V

    goto :goto_0

    .line 75618
    .end local v0    # "this":Lcom/facebook/ads/redexgen/X/ZY;
    :cond_1
    iget-object v0, v1, Lcom/facebook/ads/redexgen/X/ZY;->A00:Lcom/facebook/ads/redexgen/X/Zb;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Zb;->A02(Lcom/facebook/ads/redexgen/X/Zb;)Lcom/facebook/ads/redexgen/X/Zf;

    move-result-object v0

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/Zf;->A54()V

    .line 75619
    :goto_0
    return-void
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .end local p1    # "view":Landroid/view/View;
    :catchall_0
    move-exception v0

    invoke-static {v0, v1}, Lcom/facebook/ads/redexgen/X/WU;->A00(Ljava/lang/Throwable;Ljava/lang/Object;)V

    return-void
.end method
