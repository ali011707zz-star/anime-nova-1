.class public final Lcom/facebook/ads/redexgen/X/4r;
.super Lcom/facebook/ads/redexgen/X/Dz;
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

    .line 12485
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/4r;->A00:Lcom/facebook/ads/redexgen/X/4V;

    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/Dz;-><init>()V

    return-void
.end method

.method private final A00(Lcom/facebook/ads/redexgen/X/4A;)V
    .locals 2

    .line 12486
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/4r;->A00:Lcom/facebook/ads/redexgen/X/4V;

    invoke-static {v0, p1}, Lcom/facebook/ads/redexgen/X/4V;->A0K(Lcom/facebook/ads/redexgen/X/4V;Lcom/facebook/ads/redexgen/X/4A;)V

    .line 12487
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/4r;->A00:Lcom/facebook/ads/redexgen/X/4V;

    invoke-static {v0, p1}, Lcom/facebook/ads/redexgen/X/4V;->A0L(Lcom/facebook/ads/redexgen/X/4V;Lcom/facebook/ads/redexgen/X/4A;)V

    .line 12488
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/4r;->A00:Lcom/facebook/ads/redexgen/X/4V;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/4V;->A07(Lcom/facebook/ads/redexgen/X/4V;)Lcom/facebook/ads/redexgen/X/c3;

    move-result-object v1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/4r;->A00:Lcom/facebook/ads/redexgen/X/4V;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/4V;->A03(Lcom/facebook/ads/redexgen/X/4V;)I

    move-result v0

    invoke-virtual {v1, p1, v0}, Lcom/facebook/ads/redexgen/X/c3;->A1K(Lcom/facebook/ads/redexgen/X/4A;I)V

    .line 12489
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

    .line 12490
    check-cast p1, Lcom/facebook/ads/redexgen/X/4A;

    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/4r;->A00(Lcom/facebook/ads/redexgen/X/4A;)V

    return-void
.end method
