.class public final Lcom/facebook/ads/redexgen/X/4O;
.super Lcom/facebook/ads/redexgen/X/EA;
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

    .line 11446
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/4O;->A00:Lcom/facebook/ads/redexgen/X/Eu;

    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/EA;-><init>()V

    return-void
.end method

.method private final A00(Lcom/facebook/ads/redexgen/X/4K;)V
    .locals 2

    .line 11447
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/4O;->A00:Lcom/facebook/ads/redexgen/X/Eu;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Eu;->A05(Lcom/facebook/ads/redexgen/X/Eu;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_0

    .line 11448
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/4O;->A00:Lcom/facebook/ads/redexgen/X/Eu;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Eu;->A00(Lcom/facebook/ads/redexgen/X/Eu;)Lcom/facebook/ads/redexgen/X/gi;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/gi;->A0F()Lcom/facebook/ads/redexgen/X/Lt;

    move-result-object v0

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/Lt;->AJ0()V

    .line 11449
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/4O;->A00:Lcom/facebook/ads/redexgen/X/Eu;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Eu;->A08()V

    .line 11450
    :cond_0
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/4O;->A00:Lcom/facebook/ads/redexgen/X/Eu;

    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/facebook/ads/redexgen/X/Eu;->A06(Lcom/facebook/ads/redexgen/X/Eu;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    .line 11451
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

    .line 11452
    check-cast p1, Lcom/facebook/ads/redexgen/X/4K;

    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/4O;->A00(Lcom/facebook/ads/redexgen/X/4K;)V

    return-void
.end method
