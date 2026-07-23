.class public final Lcom/facebook/ads/redexgen/X/iX;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/facebook/ads/redexgen/X/OR;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/ads/redexgen/X/iV;->A5T(Lcom/facebook/ads/redexgen/X/iY;)Lcom/facebook/ads/redexgen/X/iX;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic A00:Lcom/facebook/ads/redexgen/X/iY;

.field public final synthetic A01:Lcom/facebook/ads/redexgen/X/iV;


# direct methods
.method public constructor <init>(Lcom/facebook/ads/redexgen/X/iV;Lcom/facebook/ads/redexgen/X/iY;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010
        }
        names = {
            null,
            null
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 86923
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/iX;->A01:Lcom/facebook/ads/redexgen/X/iV;

    iput-object p2, p0, Lcom/facebook/ads/redexgen/X/iX;->A00:Lcom/facebook/ads/redexgen/X/iY;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final A5S(Lcom/facebook/ads/redexgen/X/OE;Lcom/facebook/ads/redexgen/X/ik;Lcom/facebook/ads/redexgen/X/OL;)Lcom/facebook/ads/redexgen/X/OQ;
    .locals 3

    .line 86924
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/iX;->A00:Lcom/facebook/ads/redexgen/X/iY;

    .line 86925
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/iY;->A05()Lcom/facebook/ads/redexgen/X/gi;

    move-result-object v2

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/iX;->A00:Lcom/facebook/ads/redexgen/X/iY;

    new-instance v0, Lcom/facebook/ads/redexgen/X/iU;

    invoke-direct {v0, v2, v1, p1, p3}, Lcom/facebook/ads/redexgen/X/iU;-><init>(Lcom/facebook/ads/redexgen/X/gi;Lcom/facebook/ads/redexgen/X/iY;Lcom/facebook/ads/redexgen/X/OE;Lcom/facebook/ads/redexgen/X/OL;)V

    .line 86926
    return-object v0
.end method
