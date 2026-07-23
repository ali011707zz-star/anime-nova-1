.class public final Lcom/facebook/ads/redexgen/X/Id;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/facebook/ads/redexgen/X/XN;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/ads/redexgen/X/5h;->A1H()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic A00:Lcom/facebook/ads/redexgen/X/5h;


# direct methods
.method public constructor <init>(Lcom/facebook/ads/redexgen/X/5h;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 40378
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/Id;->A00:Lcom/facebook/ads/redexgen/X/5h;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final ADS()V
    .locals 2

    .line 40379
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Id;->A00:Lcom/facebook/ads/redexgen/X/5h;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/5h;->A01(Lcom/facebook/ads/redexgen/X/5h;)Lcom/facebook/ads/redexgen/X/Yb;

    move-result-object v1

    const/16 v0, 0x8

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/Yb;->setToolbarActionMode(I)V

    .line 40380
    return-void
.end method

.method public final AFV(F)V
    .locals 0

    .line 40381
    return-void
.end method
