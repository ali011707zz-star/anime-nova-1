.class public final Lcom/facebook/ads/redexgen/X/68;
.super Lcom/facebook/ads/redexgen/X/E0;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/ads/redexgen/X/67;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic A00:Lcom/facebook/ads/redexgen/X/67;


# direct methods
.method public constructor <init>(Lcom/facebook/ads/redexgen/X/67;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 15889
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/68;->A00:Lcom/facebook/ads/redexgen/X/67;

    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/E0;-><init>()V

    return-void
.end method

.method private final A00(Lcom/facebook/ads/redexgen/X/E1;)V
    .locals 2

    .line 15890
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/68;->A00:Lcom/facebook/ads/redexgen/X/67;

    const/4 v0, 0x1

    invoke-static {v1, v0}, Lcom/facebook/ads/redexgen/X/67;->A06(Lcom/facebook/ads/redexgen/X/67;Z)Z

    .line 15891
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/68;->A00:Lcom/facebook/ads/redexgen/X/67;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/67;->A05(Lcom/facebook/ads/redexgen/X/67;)V

    .line 15892
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

    .line 15893
    check-cast p1, Lcom/facebook/ads/redexgen/X/E1;

    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/68;->A00(Lcom/facebook/ads/redexgen/X/E1;)V

    return-void
.end method
