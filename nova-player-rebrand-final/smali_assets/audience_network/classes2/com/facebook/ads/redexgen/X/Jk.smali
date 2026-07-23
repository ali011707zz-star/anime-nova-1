.class public final Lcom/facebook/ads/redexgen/X/Jk;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/facebook/ads/redexgen/X/au;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/ads/redexgen/X/Ji;->setUpBrowserControls(Lcom/facebook/ads/redexgen/X/M3;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic A00:Lcom/facebook/ads/redexgen/X/Ji;


# direct methods
.method public constructor <init>(Lcom/facebook/ads/redexgen/X/Ji;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 44005
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/Jk;->A00:Lcom/facebook/ads/redexgen/X/Ji;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final ADO()V
    .locals 2

    .line 44006
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Jk;->A00:Lcom/facebook/ads/redexgen/X/Ji;

    const/4 v0, 0x0

    invoke-static {v1, v0}, Lcom/facebook/ads/redexgen/X/Ji;->A0k(Lcom/facebook/ads/redexgen/X/Ji;Z)V

    .line 44007
    return-void
.end method

.method public final AF0()V
    .locals 1

    .line 44008
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Jk;->A00:Lcom/facebook/ads/redexgen/X/Ji;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/c3;->getAdContextWrapper()Lcom/facebook/ads/redexgen/X/gi;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Up;->A15(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 44009
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Jk;->A00:Lcom/facebook/ads/redexgen/X/Ji;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Ji;->A0g(Lcom/facebook/ads/redexgen/X/Ji;)V

    .line 44010
    :cond_0
    return-void
.end method
