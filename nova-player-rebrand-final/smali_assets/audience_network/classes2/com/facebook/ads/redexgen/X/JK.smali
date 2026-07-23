.class public final Lcom/facebook/ads/redexgen/X/JK;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/facebook/ads/redexgen/X/dp;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/ads/redexgen/X/66;->A0C()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic A00:Lcom/facebook/ads/redexgen/X/66;


# direct methods
.method public constructor <init>(Lcom/facebook/ads/redexgen/X/66;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 42736
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/JK;->A00:Lcom/facebook/ads/redexgen/X/66;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final AEL()V
    .locals 3

    .line 42737
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/JK;->A00:Lcom/facebook/ads/redexgen/X/66;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/66;->A04(Lcom/facebook/ads/redexgen/X/66;)Lcom/facebook/ads/redexgen/X/VI;

    move-result-object v2

    sget-object v1, Lcom/facebook/ads/redexgen/X/VH;->A0M:Lcom/facebook/ads/redexgen/X/VH;

    const/4 v0, 0x0

    invoke-virtual {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/VI;->A04(Lcom/facebook/ads/redexgen/X/VH;Ljava/util/Map;)V

    .line 42738
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/JK;->A00:Lcom/facebook/ads/redexgen/X/66;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/66;->A02(Lcom/facebook/ads/redexgen/X/66;)Lcom/facebook/ads/redexgen/X/gi;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/gi;->A0F()Lcom/facebook/ads/redexgen/X/Lt;

    move-result-object v0

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/Lt;->A68()V

    .line 42739
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/JK;->A00:Lcom/facebook/ads/redexgen/X/66;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/66;->A09(Lcom/facebook/ads/redexgen/X/66;)Lcom/facebook/ads/redexgen/X/dC;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/dC;->A0W()V

    .line 42740
    return-void
.end method
