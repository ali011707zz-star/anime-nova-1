.class public final Lcom/facebook/ads/redexgen/X/5c;
.super Lcom/facebook/ads/redexgen/X/E2;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/ads/redexgen/X/5S;
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

    .line 15059
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/5c;->A00:Lcom/facebook/ads/redexgen/X/5S;

    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/E2;-><init>()V

    return-void
.end method

.method private final A00(Lcom/facebook/ads/redexgen/X/E3;)V
    .locals 1

    .line 15060
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/5c;->A00:Lcom/facebook/ads/redexgen/X/5S;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/Ij;->A0A:Lcom/facebook/ads/redexgen/X/Y2;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Y2;->A07()Z

    move-result v0

    if-nez v0, :cond_0

    .line 15061
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/5c;->A00:Lcom/facebook/ads/redexgen/X/5S;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Ij;->A1F()V

    .line 15062
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

    .line 15063
    check-cast p1, Lcom/facebook/ads/redexgen/X/E3;

    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/5c;->A00(Lcom/facebook/ads/redexgen/X/E3;)V

    return-void
.end method
