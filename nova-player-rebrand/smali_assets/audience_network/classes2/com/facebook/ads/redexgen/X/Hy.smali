.class public final Lcom/facebook/ads/redexgen/X/Hy;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/facebook/ads/redexgen/X/au;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/ads/redexgen/X/5F;->setUpBrowserControls(Lcom/facebook/ads/redexgen/X/M3;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic A00:Lcom/facebook/ads/redexgen/X/5F;


# direct methods
.method public constructor <init>(Lcom/facebook/ads/redexgen/X/5F;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 40012
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/Hy;->A00:Lcom/facebook/ads/redexgen/X/5F;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final ADO()V
    .locals 2

    .line 40013
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Hy;->A00:Lcom/facebook/ads/redexgen/X/5F;

    const/4 v0, 0x0

    invoke-static {v1, v0}, Lcom/facebook/ads/redexgen/X/5F;->A0e(Lcom/facebook/ads/redexgen/X/5F;Z)V

    .line 40014
    return-void
.end method

.method public final AF0()V
    .locals 1

    .line 40015
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Hy;->A00:Lcom/facebook/ads/redexgen/X/5F;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/5F;->A0B(Lcom/facebook/ads/redexgen/X/5F;)Lcom/facebook/ads/redexgen/X/gi;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Up;->A15(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 40016
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Hy;->A00:Lcom/facebook/ads/redexgen/X/5F;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/5F;->A0Z(Lcom/facebook/ads/redexgen/X/5F;)V

    .line 40017
    :cond_0
    return-void
.end method
