.class public final Lcom/facebook/ads/redexgen/X/iQ;
.super Lcom/facebook/ads/redexgen/X/Wc;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/ads/redexgen/X/OL;-><init>(Lcom/facebook/ads/redexgen/X/gi;Lcom/facebook/ads/redexgen/X/ik;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic A00:Lcom/facebook/ads/redexgen/X/OL;


# direct methods
.method public constructor <init>(Lcom/facebook/ads/redexgen/X/OL;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 86668
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/iQ;->A00:Lcom/facebook/ads/redexgen/X/OL;

    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/Wc;-><init>()V

    return-void
.end method


# virtual methods
.method public final A07()V
    .locals 1

    .line 86669
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/iQ;->A00:Lcom/facebook/ads/redexgen/X/OL;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/OL;->A02(Lcom/facebook/ads/redexgen/X/OL;)Lcom/facebook/ads/redexgen/X/gi;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/gi;->A0F()Lcom/facebook/ads/redexgen/X/Lt;

    move-result-object v0

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/Lt;->AHz()V

    .line 86670
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/iQ;->A00:Lcom/facebook/ads/redexgen/X/OL;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/OL;->A09(Lcom/facebook/ads/redexgen/X/OL;)V

    .line 86671
    return-void
.end method
