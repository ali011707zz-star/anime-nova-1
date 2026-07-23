.class public final Lcom/facebook/ads/redexgen/X/6Y;
.super Lcom/facebook/ads/redexgen/X/E8;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/ads/redexgen/X/MI;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic A00:Lcom/facebook/ads/redexgen/X/MI;


# direct methods
.method public constructor <init>(Lcom/facebook/ads/redexgen/X/MI;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 17672
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/6Y;->A00:Lcom/facebook/ads/redexgen/X/MI;

    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/E8;-><init>()V

    return-void
.end method

.method private final A00(Lcom/facebook/ads/redexgen/X/E9;)V
    .locals 1

    .line 17673
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/6Y;->A00:Lcom/facebook/ads/redexgen/X/MI;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/MI;->A01(Lcom/facebook/ads/redexgen/X/MI;)Lcom/facebook/ads/redexgen/X/ZP;

    move-result-object v0

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/ZP;->ADv()V

    .line 17674
    return-void
.end method


# virtual methods
.method public final bridge synthetic A03(Lcom/facebook/ads/redexgen/X/UL;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 17675
    check-cast p1, Lcom/facebook/ads/redexgen/X/E9;

    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/6Y;->A00(Lcom/facebook/ads/redexgen/X/E9;)V

    return-void
.end method
