.class public final Lcom/facebook/ads/redexgen/X/3O;
.super Lcom/facebook/ads/redexgen/X/E2;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/ads/redexgen/X/3L;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic A00:Lcom/facebook/ads/redexgen/X/3L;


# direct methods
.method public constructor <init>(Lcom/facebook/ads/redexgen/X/3L;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 10516
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/3O;->A00:Lcom/facebook/ads/redexgen/X/3L;

    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/E2;-><init>()V

    return-void
.end method

.method private final A00(Lcom/facebook/ads/redexgen/X/E3;)V
    .locals 2

    .line 10517
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/3O;->A00:Lcom/facebook/ads/redexgen/X/3L;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/3L;->A00(Lcom/facebook/ads/redexgen/X/3L;)Lcom/facebook/ads/redexgen/X/fI;

    move-result-object v1

    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/fI;->setChecked(Z)V

    .line 10518
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

    .line 10519
    check-cast p1, Lcom/facebook/ads/redexgen/X/E3;

    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/3O;->A00(Lcom/facebook/ads/redexgen/X/E3;)V

    return-void
.end method
