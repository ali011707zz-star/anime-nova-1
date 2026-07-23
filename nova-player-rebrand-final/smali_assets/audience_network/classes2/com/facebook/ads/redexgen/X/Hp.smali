.class public final Lcom/facebook/ads/redexgen/X/Hp;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/facebook/ads/redexgen/X/XN;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/ads/redexgen/X/55;->A1H()V
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

    .line 39956
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/Hp;->A00:Lcom/facebook/ads/redexgen/X/55;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final ADS()V
    .locals 2

    .line 39957
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Hp;->A00:Lcom/facebook/ads/redexgen/X/55;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/55;->A1O()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 39958
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Hp;->A00:Lcom/facebook/ads/redexgen/X/55;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/55;->A09(Lcom/facebook/ads/redexgen/X/55;)Lcom/facebook/ads/redexgen/X/Yb;

    move-result-object v1

    const/16 v0, 0x8

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/Yb;->setToolbarActionMode(I)V

    .line 39959
    :cond_0
    return-void
.end method

.method public final AFV(F)V
    .locals 0

    .line 39960
    return-void
.end method
