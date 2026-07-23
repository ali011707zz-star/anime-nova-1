.class public final Lcom/facebook/ads/redexgen/X/Gl;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/facebook/ads/redexgen/X/Ya;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/ads/redexgen/X/Gj;->A0Y()Lcom/facebook/ads/redexgen/X/Yb;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic A00:Lcom/facebook/ads/redexgen/X/Gj;


# direct methods
.method public constructor <init>(Lcom/facebook/ads/redexgen/X/Gj;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 37705
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/Gl;->A00:Lcom/facebook/ads/redexgen/X/Gj;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final ACl(Lcom/facebook/ads/redexgen/X/Yb;)V
    .locals 3

    .line 37706
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/Yb;->getToolbarActionMode()I

    move-result v1

    const/16 v0, 0x8

    if-ne v1, v0, :cond_0

    .line 37707
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Gl;->A00:Lcom/facebook/ads/redexgen/X/Gj;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Gj;->A0g()V

    .line 37708
    :goto_0
    return-void

    .line 37709
    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Gl;->A00:Lcom/facebook/ads/redexgen/X/Gj;

    iget-object v2, v0, Lcom/facebook/ads/redexgen/X/Gj;->A07:Lcom/facebook/ads/redexgen/X/VI;

    sget-object v1, Lcom/facebook/ads/redexgen/X/VH;->A07:Lcom/facebook/ads/redexgen/X/VH;

    const/4 v0, 0x0

    invoke-virtual {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/VI;->A04(Lcom/facebook/ads/redexgen/X/VH;Ljava/util/Map;)V

    .line 37710
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Gl;->A00:Lcom/facebook/ads/redexgen/X/Gj;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Gj;->A0l()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 37711
    return-void

    .line 37712
    :cond_1
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Gl;->A00:Lcom/facebook/ads/redexgen/X/Gj;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/Gj;->A05:Lcom/facebook/ads/redexgen/X/gi;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/gi;->A0F()Lcom/facebook/ads/redexgen/X/Lt;

    move-result-object v0

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/Lt;->AB0()V

    .line 37713
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Gl;->A00:Lcom/facebook/ads/redexgen/X/Gj;

    iget-object v1, v0, Lcom/facebook/ads/redexgen/X/Gj;->A0A:Lcom/facebook/ads/redexgen/X/Yh;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Gl;->A00:Lcom/facebook/ads/redexgen/X/Gj;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/Gj;->A0B:Lcom/facebook/ads/redexgen/X/ZU;

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/ZU;->A7w()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Lcom/facebook/ads/redexgen/X/Yh;->A4j(Ljava/lang/String;)V

    goto :goto_0
.end method
