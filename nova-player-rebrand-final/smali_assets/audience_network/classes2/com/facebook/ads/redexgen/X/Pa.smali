.class public final Lcom/facebook/ads/redexgen/X/Pa;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/facebook/ads/redexgen/X/aq;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/ads/redexgen/X/PZ;->A0F()Lcom/facebook/ads/redexgen/X/aq;
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

    .line 57988
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/Pa;->A00:Lcom/facebook/ads/redexgen/X/PZ;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final AF7(Ljava/lang/String;)V
    .locals 2

    .line 57989
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Pa;->A00:Lcom/facebook/ads/redexgen/X/PZ;

    iget-object v1, v0, Lcom/facebook/ads/redexgen/X/PZ;->A0C:Lcom/facebook/ads/redexgen/X/ah;

    const/16 v0, 0x64

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/ah;->setProgress(I)V

    .line 57990
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Pa;->A00:Lcom/facebook/ads/redexgen/X/PZ;

    const/4 v0, 0x0

    iput-boolean v0, v1, Lcom/facebook/ads/redexgen/X/PZ;->A05:Z

    .line 57991
    return-void
.end method

.method public final AF9(Ljava/lang/String;)V
    .locals 2

    .line 57992
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Pa;->A00:Lcom/facebook/ads/redexgen/X/PZ;

    const/4 v0, 0x1

    iput-boolean v0, v1, Lcom/facebook/ads/redexgen/X/PZ;->A05:Z

    .line 57993
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Pa;->A00:Lcom/facebook/ads/redexgen/X/PZ;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/PZ;->A0F:Lcom/facebook/ads/redexgen/X/av;

    invoke-interface {v0, p1}, Lcom/facebook/ads/redexgen/X/av;->setUrl(Ljava/lang/String;)V

    .line 57994
    return-void
.end method

.method public final AFY(I)V
    .locals 1

    .line 57995
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Pa;->A00:Lcom/facebook/ads/redexgen/X/PZ;

    iget-boolean v0, v0, Lcom/facebook/ads/redexgen/X/PZ;->A05:Z

    if-eqz v0, :cond_0

    .line 57996
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Pa;->A00:Lcom/facebook/ads/redexgen/X/PZ;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/PZ;->A0C:Lcom/facebook/ads/redexgen/X/ah;

    invoke-virtual {v0, p1}, Lcom/facebook/ads/redexgen/X/ah;->setProgress(I)V

    .line 57997
    :cond_0
    return-void
.end method

.method public final AFb(Ljava/lang/String;)V
    .locals 1

    .line 57998
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Pa;->A00:Lcom/facebook/ads/redexgen/X/PZ;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/PZ;->A0F:Lcom/facebook/ads/redexgen/X/av;

    invoke-interface {v0, p1}, Lcom/facebook/ads/redexgen/X/av;->setTitle(Ljava/lang/String;)V

    .line 57999
    return-void
.end method

.method public final AFe()V
    .locals 2

    .line 58000
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Pa;->A00:Lcom/facebook/ads/redexgen/X/PZ;

    iget-object v1, v0, Lcom/facebook/ads/redexgen/X/PZ;->A0B:Lcom/facebook/ads/redexgen/X/Yh;

    const/16 v0, 0xe

    invoke-interface {v1, v0}, Lcom/facebook/ads/redexgen/X/Yh;->ADJ(I)V

    .line 58001
    return-void
.end method
