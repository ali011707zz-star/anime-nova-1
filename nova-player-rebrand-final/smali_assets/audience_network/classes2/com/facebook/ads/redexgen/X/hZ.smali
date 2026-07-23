.class public final Lcom/facebook/ads/redexgen/X/hZ;
.super Lcom/facebook/ads/redexgen/X/R7;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/ads/redexgen/X/hU;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public A00:Z

.field public final synthetic A01:Lcom/facebook/ads/redexgen/X/hU;


# direct methods
.method public constructor <init>(Lcom/facebook/ads/redexgen/X/hU;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 84950
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/hZ;->A01:Lcom/facebook/ads/redexgen/X/hU;

    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/R7;-><init>()V

    .line 84951
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/hZ;->A00:Z

    return-void
.end method


# virtual methods
.method public final A0L(Lcom/facebook/ads/redexgen/X/7M;I)V
    .locals 1

    .line 84952
    invoke-super {p0, p1, p2}, Lcom/facebook/ads/redexgen/X/R7;->A0L(Lcom/facebook/ads/redexgen/X/7M;I)V

    .line 84953
    if-nez p2, :cond_0

    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/hZ;->A00:Z

    if-eqz v0, :cond_0

    .line 84954
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/hZ;->A00:Z

    .line 84955
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/hZ;->A01:Lcom/facebook/ads/redexgen/X/hU;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/hU;->A0F()V

    .line 84956
    :cond_0
    return-void
.end method

.method public final A0M(Lcom/facebook/ads/redexgen/X/7M;II)V
    .locals 1

    .line 84957
    if-nez p2, :cond_0

    if-eqz p3, :cond_1

    .line 84958
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/hZ;->A00:Z

    .line 84959
    :cond_1
    return-void
.end method
