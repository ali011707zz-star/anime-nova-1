.class public final Lcom/facebook/ads/redexgen/X/4w;
.super Lcom/facebook/ads/redexgen/X/E0;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/ads/redexgen/X/4V;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic A00:Lcom/facebook/ads/redexgen/X/4V;


# direct methods
.method public constructor <init>(Lcom/facebook/ads/redexgen/X/4V;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 12808
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/4w;->A00:Lcom/facebook/ads/redexgen/X/4V;

    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/E0;-><init>()V

    return-void
.end method

.method private final A00(Lcom/facebook/ads/redexgen/X/E1;)V
    .locals 2

    .line 12809
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/4w;->A00:Lcom/facebook/ads/redexgen/X/4V;

    const/4 v0, 0x1

    invoke-static {v1, v0}, Lcom/facebook/ads/redexgen/X/4V;->A0W(Lcom/facebook/ads/redexgen/X/4V;Z)Z

    .line 12810
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/4w;->A00:Lcom/facebook/ads/redexgen/X/4V;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/4V;->A07(Lcom/facebook/ads/redexgen/X/4V;)Lcom/facebook/ads/redexgen/X/c3;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/facebook/ads/redexgen/X/c3;->A1J(Lcom/facebook/ads/redexgen/X/E1;)V

    .line 12811
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

    .line 12812
    check-cast p1, Lcom/facebook/ads/redexgen/X/E1;

    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/4w;->A00(Lcom/facebook/ads/redexgen/X/E1;)V

    return-void
.end method
