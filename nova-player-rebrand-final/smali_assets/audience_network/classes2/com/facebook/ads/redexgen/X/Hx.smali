.class public final Lcom/facebook/ads/redexgen/X/Hx;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/facebook/ads/redexgen/X/XN;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/ads/redexgen/X/5F;->A1H()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic A00:Lcom/facebook/ads/redexgen/X/5F;


# direct methods
.method public constructor <init>(Lcom/facebook/ads/redexgen/X/5F;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 40007
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/Hx;->A00:Lcom/facebook/ads/redexgen/X/5F;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final ADS()V
    .locals 2

    .line 40008
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Hx;->A00:Lcom/facebook/ads/redexgen/X/5F;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/5F;->A1O()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 40009
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Hx;->A00:Lcom/facebook/ads/redexgen/X/5F;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/5F;->A0D(Lcom/facebook/ads/redexgen/X/5F;)Lcom/facebook/ads/redexgen/X/Yb;

    move-result-object v1

    const/16 v0, 0x8

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/Yb;->setToolbarActionMode(I)V

    .line 40010
    :cond_0
    return-void
.end method

.method public final AFV(F)V
    .locals 0

    .line 40011
    return-void
.end method
