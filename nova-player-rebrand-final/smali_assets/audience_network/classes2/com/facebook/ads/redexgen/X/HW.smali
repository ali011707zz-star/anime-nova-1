.class public final Lcom/facebook/ads/redexgen/X/HW;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/facebook/ads/redexgen/X/bU;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/ads/redexgen/X/55;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic A00:Lcom/facebook/ads/redexgen/X/55;


# direct methods
.method public constructor <init>(Lcom/facebook/ads/redexgen/X/55;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 39537
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/HW;->A00:Lcom/facebook/ads/redexgen/X/55;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final ADY()V
    .locals 3

    .line 39538
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/HW;->A00:Lcom/facebook/ads/redexgen/X/55;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/55;->A08(Lcom/facebook/ads/redexgen/X/55;)Lcom/facebook/ads/redexgen/X/VI;

    move-result-object v2

    sget-object v1, Lcom/facebook/ads/redexgen/X/VH;->A0J:Lcom/facebook/ads/redexgen/X/VH;

    const/4 v0, 0x0

    invoke-virtual {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/VI;->A04(Lcom/facebook/ads/redexgen/X/VH;Ljava/util/Map;)V

    .line 39539
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/HW;->A00:Lcom/facebook/ads/redexgen/X/55;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/55;->A06(Lcom/facebook/ads/redexgen/X/55;)Lcom/facebook/ads/redexgen/X/Mt;

    move-result-object v0

    instance-of v0, v0, Lcom/facebook/ads/redexgen/X/85;

    if-eqz v0, :cond_0

    .line 39540
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/HW;->A00:Lcom/facebook/ads/redexgen/X/55;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/HW;->A00:Lcom/facebook/ads/redexgen/X/55;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/55;->A06(Lcom/facebook/ads/redexgen/X/55;)Lcom/facebook/ads/redexgen/X/Mt;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/redexgen/X/85;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/85;->A0M()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/facebook/ads/redexgen/X/55;->A0j(Lcom/facebook/ads/redexgen/X/55;Ljava/lang/String;)V

    .line 39541
    :cond_0
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/HW;->A00:Lcom/facebook/ads/redexgen/X/55;

    const/4 v0, 0x1

    invoke-static {v1, v0}, Lcom/facebook/ads/redexgen/X/55;->A0m(Lcom/facebook/ads/redexgen/X/55;Z)V

    .line 39542
    return-void
.end method
