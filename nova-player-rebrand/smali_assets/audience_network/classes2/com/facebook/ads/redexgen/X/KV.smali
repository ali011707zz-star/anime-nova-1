.class public final Lcom/facebook/ads/redexgen/X/KV;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/facebook/ads/redexgen/X/XN;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/ads/redexgen/X/6H;->A0B()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic A00:Lcom/facebook/ads/redexgen/X/6H;


# direct methods
.method public constructor <init>(Lcom/facebook/ads/redexgen/X/6H;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 47252
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/KV;->A00:Lcom/facebook/ads/redexgen/X/6H;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final ADS()V
    .locals 2

    .line 47253
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/KV;->A00:Lcom/facebook/ads/redexgen/X/6H;

    const/4 v0, 0x0

    invoke-static {v1, v0}, Lcom/facebook/ads/redexgen/X/6H;->A0I(Lcom/facebook/ads/redexgen/X/6H;Z)Z

    .line 47254
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/KV;->A00:Lcom/facebook/ads/redexgen/X/6H;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/6H;->A00(Lcom/facebook/ads/redexgen/X/6H;)Lcom/facebook/ads/redexgen/X/Yb;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 47255
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/KV;->A00:Lcom/facebook/ads/redexgen/X/6H;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/6H;->A00(Lcom/facebook/ads/redexgen/X/6H;)Lcom/facebook/ads/redexgen/X/Yb;

    move-result-object v1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/KV;->A00:Lcom/facebook/ads/redexgen/X/6H;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/6H;->getCloseButtonStyle()I

    move-result v0

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/Yb;->setToolbarActionMode(I)V

    .line 47256
    :cond_0
    return-void
.end method

.method public final AFV(F)V
    .locals 3

    .line 47257
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/KV;->A00:Lcom/facebook/ads/redexgen/X/6H;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/6H;->A00(Lcom/facebook/ads/redexgen/X/6H;)Lcom/facebook/ads/redexgen/X/Yb;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 47258
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/KV;->A00:Lcom/facebook/ads/redexgen/X/6H;

    .line 47259
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Ka;->getAdInfo()Lcom/facebook/ads/redexgen/X/NR;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/NR;->A0K()Lcom/facebook/ads/redexgen/X/Nd;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Nd;->A00()J

    move-result-wide v1

    long-to-float v0, v1

    div-float/2addr p1, v0

    const/high16 v2, 0x3f800000    # 1.0f

    sub-float/2addr v2, p1

    .line 47260
    .local v1, "percentage":F
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/KV;->A00:Lcom/facebook/ads/redexgen/X/6H;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/6H;->A00(Lcom/facebook/ads/redexgen/X/6H;)Lcom/facebook/ads/redexgen/X/Yb;

    move-result-object v1

    const/high16 v0, 0x42c80000    # 100.0f

    mul-float/2addr v0, v2

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/Yb;->setProgressImmediate(F)V

    .line 47261
    .end local v1    # "percentage":F
    :cond_0
    return-void
.end method
