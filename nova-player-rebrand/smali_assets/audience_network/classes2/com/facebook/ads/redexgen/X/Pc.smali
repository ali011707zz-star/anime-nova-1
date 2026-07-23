.class public final Lcom/facebook/ads/redexgen/X/Pc;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/facebook/ads/redexgen/X/Rk;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/ads/redexgen/X/PZ;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic A00:Lcom/facebook/ads/redexgen/X/PZ;


# direct methods
.method public constructor <init>(Lcom/facebook/ads/redexgen/X/PZ;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 58007
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/Pc;->A00:Lcom/facebook/ads/redexgen/X/PZ;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final AAI()Z
    .locals 1

    .line 58008
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Pc;->A00:Lcom/facebook/ads/redexgen/X/PZ;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/PZ;->A0E:Lcom/facebook/ads/redexgen/X/M3;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/M3;->canGoBack()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 58009
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Pc;->A00:Lcom/facebook/ads/redexgen/X/PZ;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/PZ;->A0E:Lcom/facebook/ads/redexgen/X/M3;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/M3;->goBack()V

    .line 58010
    const/4 v0, 0x1

    return v0

    .line 58011
    :cond_0
    const/4 v0, 0x0

    return v0
.end method
