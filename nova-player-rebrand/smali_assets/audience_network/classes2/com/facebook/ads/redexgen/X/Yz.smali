.class public final Lcom/facebook/ads/redexgen/X/Yz;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/ads/redexgen/X/Z2;->A04(Lcom/facebook/ads/redexgen/X/Sx;)Lcom/facebook/ads/redexgen/X/Oq;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic A00:Lcom/facebook/ads/redexgen/X/Z2;


# direct methods
.method public constructor <init>(Lcom/facebook/ads/redexgen/X/Z2;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 74621
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/Yz;->A00:Lcom/facebook/ads/redexgen/X/Z2;

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

    .line 74622
    .local v0, "this":Lcom/facebook/ads/redexgen/X/Yz;
    .local p1, "view":Landroid/view/View;
    :try_start_0
    iget-object v0, v1, Lcom/facebook/ads/redexgen/X/Yz;->A00:Lcom/facebook/ads/redexgen/X/Z2;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Z2;->A0G(Lcom/facebook/ads/redexgen/X/Z2;)V

    .line 74623
    return-void
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .end local v0    # "this":Lcom/facebook/ads/redexgen/X/Yz;
    .end local p1    # "view":Landroid/view/View;
    :catchall_0
    move-exception v0

    invoke-static {v0, v1}, Lcom/facebook/ads/redexgen/X/WU;->A00(Ljava/lang/Throwable;Ljava/lang/Object;)V

    return-void
.end method
