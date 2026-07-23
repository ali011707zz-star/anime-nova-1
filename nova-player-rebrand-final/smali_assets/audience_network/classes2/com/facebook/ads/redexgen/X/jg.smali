.class public final Lcom/facebook/ads/redexgen/X/jg;
.super Lcom/facebook/ads/redexgen/X/fo;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/ads/redexgen/X/je;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic A00:Lcom/facebook/ads/redexgen/X/je;


# direct methods
.method public constructor <init>(Lcom/facebook/ads/redexgen/X/je;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 88600
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/jg;->A00:Lcom/facebook/ads/redexgen/X/je;

    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/fo;-><init>()V

    return-void
.end method


# virtual methods
.method public final A03()V
    .locals 1

    .line 88601
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/jg;->A00:Lcom/facebook/ads/redexgen/X/je;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/je;->A02(Lcom/facebook/ads/redexgen/X/je;)Lcom/facebook/ads/redexgen/X/NM;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 88602
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/jg;->A00:Lcom/facebook/ads/redexgen/X/je;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/je;->A02(Lcom/facebook/ads/redexgen/X/je;)Lcom/facebook/ads/redexgen/X/NM;

    move-result-object v0

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/NM;->ADM()V

    .line 88603
    :cond_0
    return-void
.end method
