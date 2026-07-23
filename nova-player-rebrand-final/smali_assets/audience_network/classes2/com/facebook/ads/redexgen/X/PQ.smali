.class public final Lcom/facebook/ads/redexgen/X/PQ;
.super Lcom/facebook/ads/redexgen/X/Wc;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/ads/redexgen/X/Yu;->onAnimationEnd(Landroid/view/animation/Animation;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic A00:Lcom/facebook/ads/redexgen/X/Yu;


# direct methods
.method public constructor <init>(Lcom/facebook/ads/redexgen/X/Yu;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 57643
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/PQ;->A00:Lcom/facebook/ads/redexgen/X/Yu;

    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/Wc;-><init>()V

    return-void
.end method


# virtual methods
.method public final A07()V
    .locals 3

    .line 57644
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/PQ;->A00:Lcom/facebook/ads/redexgen/X/Yu;

    iget-object v1, v0, Lcom/facebook/ads/redexgen/X/Yu;->A00:Lcom/facebook/ads/redexgen/X/Re;

    const/4 v0, 0x3

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/Re;->finish(I)V

    .line 57645
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/PQ;->A00:Lcom/facebook/ads/redexgen/X/Yu;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/Yu;->A00:Lcom/facebook/ads/redexgen/X/Re;

    .line 57646
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Re;->A05()Lcom/facebook/ads/AudienceNetworkActivity;

    move-result-object v2

    .line 57647
    const/high16 v1, 0x10a0000

    const v0, 0x10a0001

    invoke-virtual {v2, v1, v0}, Lcom/facebook/ads/AudienceNetworkActivity;->overridePendingTransition(II)V

    .line 57648
    return-void
.end method
