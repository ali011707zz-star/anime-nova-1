.class public final Lcom/facebook/ads/redexgen/X/Yr;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/ads/redexgen/X/PU;->A03()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic A00:Lcom/facebook/ads/redexgen/X/PU;


# direct methods
.method public constructor <init>(Lcom/facebook/ads/redexgen/X/PU;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 74567
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/Yr;->A00:Lcom/facebook/ads/redexgen/X/PU;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 3

    invoke-static {p0}, Lcom/facebook/ads/redexgen/X/WU;->A02(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    move-object v2, p0

    .line 74568
    .local v0, "this":Lcom/facebook/ads/redexgen/X/Yr;
    .local p1, "v":Landroid/view/View;
    :try_start_0
    iget-object v0, v2, Lcom/facebook/ads/redexgen/X/Yr;->A00:Lcom/facebook/ads/redexgen/X/PU;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/PU;->A00(Lcom/facebook/ads/redexgen/X/PU;)Lcom/facebook/ads/redexgen/X/Ya;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, v2, Lcom/facebook/ads/redexgen/X/Yr;->A00:Lcom/facebook/ads/redexgen/X/PU;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/PU;->A01(Lcom/facebook/ads/redexgen/X/PU;)Lcom/facebook/ads/redexgen/X/ZM;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/ZM;->A03()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 74569
    iget-object v0, v2, Lcom/facebook/ads/redexgen/X/Yr;->A00:Lcom/facebook/ads/redexgen/X/PU;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/PU;->A00(Lcom/facebook/ads/redexgen/X/PU;)Lcom/facebook/ads/redexgen/X/Ya;

    move-result-object v1

    iget-object v0, v2, Lcom/facebook/ads/redexgen/X/Yr;->A00:Lcom/facebook/ads/redexgen/X/PU;

    invoke-interface {v1, v0}, Lcom/facebook/ads/redexgen/X/Ya;->ACl(Lcom/facebook/ads/redexgen/X/Yb;)V

    .line 74570
    .end local v0    # "this":Lcom/facebook/ads/redexgen/X/Yr;
    :cond_1
    return-void
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .end local p1    # "v":Landroid/view/View;
    :catchall_0
    move-exception v0

    invoke-static {v0, v2}, Lcom/facebook/ads/redexgen/X/WU;->A00(Ljava/lang/Throwable;Ljava/lang/Object;)V

    return-void
.end method
