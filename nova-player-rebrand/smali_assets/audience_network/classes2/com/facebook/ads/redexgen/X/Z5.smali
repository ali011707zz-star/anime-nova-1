.class public final Lcom/facebook/ads/redexgen/X/Z5;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/ads/redexgen/X/NO;->A0N()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic A00:Lcom/facebook/ads/redexgen/X/NO;


# direct methods
.method public constructor <init>(Lcom/facebook/ads/redexgen/X/NO;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 74827
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/Z5;->A00:Lcom/facebook/ads/redexgen/X/NO;

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

    .line 74828
    .local v0, "this":Lcom/facebook/ads/redexgen/X/Z5;
    .local p1, "v":Landroid/view/View;
    :try_start_0
    iget-object v0, v3, Lcom/facebook/ads/redexgen/X/Z5;->A00:Lcom/facebook/ads/redexgen/X/NO;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/NO;->A04(Lcom/facebook/ads/redexgen/X/NO;)Lcom/facebook/ads/redexgen/X/VI;

    move-result-object v2

    sget-object v1, Lcom/facebook/ads/redexgen/X/VH;->A07:Lcom/facebook/ads/redexgen/X/VH;

    const/4 v0, 0x0

    invoke-virtual {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/VI;->A04(Lcom/facebook/ads/redexgen/X/VH;Ljava/util/Map;)V

    .line 74829
    iget-object v0, v3, Lcom/facebook/ads/redexgen/X/Z5;->A00:Lcom/facebook/ads/redexgen/X/NO;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/NO;->A06(Lcom/facebook/ads/redexgen/X/NO;)Lcom/facebook/ads/redexgen/X/Yh;

    move-result-object v1

    iget-object v0, v3, Lcom/facebook/ads/redexgen/X/Z5;->A00:Lcom/facebook/ads/redexgen/X/NO;

    .line 74830
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/NO;->A08(Lcom/facebook/ads/redexgen/X/NO;)Lcom/facebook/ads/redexgen/X/ZU;

    move-result-object v0

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/ZU;->A7w()Ljava/lang/String;

    move-result-object v0

    .line 74831
    invoke-interface {v1, v0}, Lcom/facebook/ads/redexgen/X/Yh;->A4j(Ljava/lang/String;)V

    .line 74832
    return-void
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .end local v0    # "this":Lcom/facebook/ads/redexgen/X/Z5;
    .end local p1    # "v":Landroid/view/View;
    :catchall_0
    move-exception v0

    invoke-static {v0, v3}, Lcom/facebook/ads/redexgen/X/WU;->A00(Ljava/lang/Throwable;Ljava/lang/Object;)V

    return-void
.end method
