.class public final Lcom/facebook/ads/redexgen/X/4P;
.super Lcom/facebook/ads/redexgen/X/E4;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/ads/redexgen/X/Eu;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic A00:Lcom/facebook/ads/redexgen/X/Eu;


# direct methods
.method public constructor <init>(Lcom/facebook/ads/redexgen/X/Eu;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 11453
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/4P;->A00:Lcom/facebook/ads/redexgen/X/Eu;

    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/E4;-><init>()V

    return-void
.end method

.method private final A00(Lcom/facebook/ads/redexgen/X/4B;)V
    .locals 1

    .line 11454
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/4P;->A00:Lcom/facebook/ads/redexgen/X/Eu;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Eu;->A05(Lcom/facebook/ads/redexgen/X/Eu;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_0

    .line 11455
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/4P;->A00:Lcom/facebook/ads/redexgen/X/Eu;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Eu;->A00(Lcom/facebook/ads/redexgen/X/Eu;)Lcom/facebook/ads/redexgen/X/gi;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/gi;->A0F()Lcom/facebook/ads/redexgen/X/Lt;

    move-result-object v0

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/Lt;->AJ2()V

    .line 11456
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/4P;->A00:Lcom/facebook/ads/redexgen/X/Eu;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Eu;->A08()V

    .line 11457
    :cond_0
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

    .line 11458
    check-cast p1, Lcom/facebook/ads/redexgen/X/4B;

    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/4P;->A00(Lcom/facebook/ads/redexgen/X/4B;)V

    return-void
.end method
