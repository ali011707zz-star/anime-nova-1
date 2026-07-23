.class public final Lcom/facebook/ads/redexgen/X/IT;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/facebook/ads/redexgen/X/XN;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/ads/redexgen/X/5S;->A1H()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic A00:Lcom/facebook/ads/redexgen/X/5S;


# direct methods
.method public constructor <init>(Lcom/facebook/ads/redexgen/X/5S;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 40220
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/IT;->A00:Lcom/facebook/ads/redexgen/X/5S;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final ADS()V
    .locals 2

    .line 40221
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/IT;->A00:Lcom/facebook/ads/redexgen/X/5S;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/5S;->A05(Lcom/facebook/ads/redexgen/X/5S;)Lcom/facebook/ads/redexgen/X/Yb;

    move-result-object v1

    const/16 v0, 0x8

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/Yb;->setToolbarActionMode(I)V

    .line 40222
    return-void
.end method

.method public final AFV(F)V
    .locals 0

    .line 40223
    return-void
.end method
