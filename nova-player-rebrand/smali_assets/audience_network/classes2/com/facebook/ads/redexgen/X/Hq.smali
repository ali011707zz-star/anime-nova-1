.class public final Lcom/facebook/ads/redexgen/X/Hq;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/facebook/ads/redexgen/X/au;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/ads/redexgen/X/55;->setUpBrowserControls(Lcom/facebook/ads/redexgen/X/M3;)V
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

    .line 39961
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/Hq;->A00:Lcom/facebook/ads/redexgen/X/55;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final ADO()V
    .locals 2

    .line 39962
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Hq;->A00:Lcom/facebook/ads/redexgen/X/55;

    const/4 v0, 0x0

    invoke-static {v1, v0}, Lcom/facebook/ads/redexgen/X/55;->A0m(Lcom/facebook/ads/redexgen/X/55;Z)V

    .line 39963
    return-void
.end method

.method public final AF0()V
    .locals 1

    .line 39964
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Hq;->A00:Lcom/facebook/ads/redexgen/X/55;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/55;->A07(Lcom/facebook/ads/redexgen/X/55;)Lcom/facebook/ads/redexgen/X/gi;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Up;->A15(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 39965
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Hq;->A00:Lcom/facebook/ads/redexgen/X/55;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/55;->A0e(Lcom/facebook/ads/redexgen/X/55;)V

    .line 39966
    :cond_0
    return-void
.end method
