.class public final Lcom/facebook/ads/redexgen/X/3n;
.super Lcom/facebook/ads/redexgen/X/E2;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/ads/redexgen/X/Dh;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic A00:Lcom/facebook/ads/redexgen/X/Dh;


# direct methods
.method public constructor <init>(Lcom/facebook/ads/redexgen/X/Dh;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 10848
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/3n;->A00:Lcom/facebook/ads/redexgen/X/Dh;

    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/E2;-><init>()V

    return-void
.end method

.method private final A00(Lcom/facebook/ads/redexgen/X/E3;)V
    .locals 3

    .line 10849
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/3n;->A00:Lcom/facebook/ads/redexgen/X/Dh;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Dh;->A0C(Lcom/facebook/ads/redexgen/X/Dh;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 10850
    return-void

    .line 10851
    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/3n;->A00:Lcom/facebook/ads/redexgen/X/Dh;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Dh;->A03(Lcom/facebook/ads/redexgen/X/Dh;)Lcom/facebook/ads/redexgen/X/f9;

    move-result-object v1

    sget-object v0, Lcom/facebook/ads/redexgen/X/f9;->A02:Lcom/facebook/ads/redexgen/X/f9;

    if-eq v1, v0, :cond_1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/3n;->A00:Lcom/facebook/ads/redexgen/X/Dh;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Dh;->A0D(Lcom/facebook/ads/redexgen/X/Dh;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 10852
    :cond_1
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/3n;->A00:Lcom/facebook/ads/redexgen/X/Dh;

    const/4 v0, 0x0

    invoke-static {v1, v0}, Lcom/facebook/ads/redexgen/X/Dh;->A04(Lcom/facebook/ads/redexgen/X/Dh;Lcom/facebook/ads/redexgen/X/f9;)Lcom/facebook/ads/redexgen/X/f9;

    .line 10853
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/3n;->A00:Lcom/facebook/ads/redexgen/X/Dh;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Dh;->A09(Lcom/facebook/ads/redexgen/X/Dh;)V

    .line 10854
    return-void

    .line 10855
    :cond_2
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/3n;->A00:Lcom/facebook/ads/redexgen/X/Dh;

    const/4 v1, 0x0

    const/16 v0, 0x8

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Dh;->A0A(Lcom/facebook/ads/redexgen/X/Dh;II)V

    .line 10856
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

    .line 10857
    check-cast p1, Lcom/facebook/ads/redexgen/X/E3;

    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/3n;->A00(Lcom/facebook/ads/redexgen/X/E3;)V

    return-void
.end method
