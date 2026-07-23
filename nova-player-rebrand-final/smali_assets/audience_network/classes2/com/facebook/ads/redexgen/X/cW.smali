.class public final Lcom/facebook/ads/redexgen/X/cW;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/ads/redexgen/X/KD;->A07()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic A00:Lcom/facebook/ads/redexgen/X/KD;


# direct methods
.method public constructor <init>(Lcom/facebook/ads/redexgen/X/KD;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 79232
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/cW;->A00:Lcom/facebook/ads/redexgen/X/KD;

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

    .line 79233
    .local v0, "this":Lcom/facebook/ads/redexgen/X/cW;
    .local p1, "view":Landroid/view/View;
    :try_start_0
    iget-object v0, v1, Lcom/facebook/ads/redexgen/X/cW;->A00:Lcom/facebook/ads/redexgen/X/KD;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/KD;->A04(Lcom/facebook/ads/redexgen/X/KD;)Lcom/facebook/ads/redexgen/X/dx;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 79234
    iget-object v0, v1, Lcom/facebook/ads/redexgen/X/cW;->A00:Lcom/facebook/ads/redexgen/X/KD;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/KD;->A04(Lcom/facebook/ads/redexgen/X/KD;)Lcom/facebook/ads/redexgen/X/dx;

    move-result-object v0

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/dx;->AJz()V

    .line 79235
    .end local v0    # "this":Lcom/facebook/ads/redexgen/X/cW;
    :cond_1
    return-void
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .end local p1    # "view":Landroid/view/View;
    :catchall_0
    move-exception v0

    invoke-static {v0, v1}, Lcom/facebook/ads/redexgen/X/WU;->A00(Ljava/lang/Throwable;Ljava/lang/Object;)V

    return-void
.end method
