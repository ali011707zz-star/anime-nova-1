.class public final Lcom/facebook/ads/redexgen/X/G0;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/facebook/ads/redexgen/X/cr;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/ads/redexgen/X/Fy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic A00:Lcom/facebook/ads/redexgen/X/Fy;


# direct methods
.method public constructor <init>(Lcom/facebook/ads/redexgen/X/Fy;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 36644
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/G0;->A00:Lcom/facebook/ads/redexgen/X/Fy;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final AGM(I)V
    .locals 2

    .line 36645
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/G0;->A00:Lcom/facebook/ads/redexgen/X/Fy;

    const/4 v0, 0x1

    invoke-static {v1, p1, v0}, Lcom/facebook/ads/redexgen/X/Fy;->A0G(Lcom/facebook/ads/redexgen/X/Fy;IZ)V

    .line 36646
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/G0;->A00:Lcom/facebook/ads/redexgen/X/Fy;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Fy;->A0K(Lcom/facebook/ads/redexgen/X/Fy;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 36647
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/G0;->A00:Lcom/facebook/ads/redexgen/X/Fy;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Fy;->A0E(Lcom/facebook/ads/redexgen/X/Fy;)V

    .line 36648
    :goto_0
    return-void

    .line 36649
    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/G0;->A00:Lcom/facebook/ads/redexgen/X/Fy;

    invoke-static {v0, p1}, Lcom/facebook/ads/redexgen/X/Fy;->A0F(Lcom/facebook/ads/redexgen/X/Fy;I)V

    goto :goto_0
.end method
