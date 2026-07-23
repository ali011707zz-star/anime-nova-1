.class public final Lcom/facebook/ads/redexgen/X/Nz;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/facebook/ads/redexgen/X/bh;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/ads/redexgen/X/NO;-><init>(Lcom/facebook/ads/redexgen/X/gi;Lcom/facebook/ads/redexgen/X/VA;Lcom/facebook/ads/redexgen/X/Yh;Lcom/facebook/ads/redexgen/X/jd;Ljava/lang/String;Lcom/facebook/ads/redexgen/X/ZU;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic A00:Lcom/facebook/ads/redexgen/X/NO;


# direct methods
.method public constructor <init>(Lcom/facebook/ads/redexgen/X/NO;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 55188
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/Nz;->A00:Lcom/facebook/ads/redexgen/X/NO;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final ACt()V
    .locals 2

    .line 55189
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Nz;->A00:Lcom/facebook/ads/redexgen/X/NO;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/NO;->A0h(Lcom/facebook/ads/redexgen/X/NO;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 55190
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Nz;->A00:Lcom/facebook/ads/redexgen/X/NO;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/NO;->A0S(Lcom/facebook/ads/redexgen/X/NO;)V

    .line 55191
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Nz;->A00:Lcom/facebook/ads/redexgen/X/NO;

    iget-object v1, v0, Lcom/facebook/ads/redexgen/X/NO;->A0g:Lcom/facebook/ads/redexgen/X/Yb;

    const-string v0, ""

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/Yb;->setToolbarActionMessage(Ljava/lang/String;)V

    .line 55192
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Nz;->A00:Lcom/facebook/ads/redexgen/X/NO;

    iget-object v1, v0, Lcom/facebook/ads/redexgen/X/NO;->A0g:Lcom/facebook/ads/redexgen/X/Yb;

    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/Yb;->setToolbarActionMode(I)V

    .line 55193
    :cond_0
    return-void
.end method

.method public final AEm()V
    .locals 2

    .line 55194
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Nz;->A00:Lcom/facebook/ads/redexgen/X/NO;

    const/4 v0, 0x0

    invoke-static {v1, v0}, Lcom/facebook/ads/redexgen/X/NO;->A0k(Lcom/facebook/ads/redexgen/X/NO;Z)Z

    .line 55195
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Nz;->A00:Lcom/facebook/ads/redexgen/X/NO;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/NO;->A05(Lcom/facebook/ads/redexgen/X/NO;)Lcom/facebook/ads/redexgen/X/XO;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/XO;->A07()Z

    .line 55196
    return-void
.end method

.method public final AEn()V
    .locals 2

    .line 55197
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Nz;->A00:Lcom/facebook/ads/redexgen/X/NO;

    const/4 v0, 0x1

    invoke-static {v1, v0}, Lcom/facebook/ads/redexgen/X/NO;->A0k(Lcom/facebook/ads/redexgen/X/NO;Z)Z

    .line 55198
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Nz;->A00:Lcom/facebook/ads/redexgen/X/NO;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/NO;->A05(Lcom/facebook/ads/redexgen/X/NO;)Lcom/facebook/ads/redexgen/X/XO;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/XO;->A06()Z

    .line 55199
    return-void
.end method
