.class public final Lcom/facebook/ads/redexgen/X/Ep;
.super Lcom/facebook/ads/redexgen/X/Wc;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/ads/redexgen/X/Ek;->AFr(II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic A00:I

.field public final synthetic A01:I

.field public final synthetic A02:Lcom/facebook/ads/redexgen/X/Ek;


# direct methods
.method public constructor <init>(Lcom/facebook/ads/redexgen/X/Ek;II)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010,
            0x1010
        }
        names = {
            null,
            null,
            null
        }
    .end annotation

    .line 35173
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/Ep;->A02:Lcom/facebook/ads/redexgen/X/Ek;

    iput p2, p0, Lcom/facebook/ads/redexgen/X/Ep;->A00:I

    iput p3, p0, Lcom/facebook/ads/redexgen/X/Ep;->A01:I

    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/Wc;-><init>()V

    return-void
.end method


# virtual methods
.method public final A07()V
    .locals 4

    .line 35174
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Ep;->A02:Lcom/facebook/ads/redexgen/X/Ek;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Ek;->A0A(Lcom/facebook/ads/redexgen/X/Ek;)Lcom/facebook/ads/redexgen/X/UM;

    move-result-object v3

    iget v2, p0, Lcom/facebook/ads/redexgen/X/Ep;->A00:I

    iget v1, p0, Lcom/facebook/ads/redexgen/X/Ep;->A01:I

    new-instance v0, Lcom/facebook/ads/redexgen/X/Dy;

    invoke-direct {v0, v2, v1}, Lcom/facebook/ads/redexgen/X/Dy;-><init>(II)V

    invoke-virtual {v3, v0}, Lcom/facebook/ads/redexgen/X/UM;->A02(Lcom/facebook/ads/redexgen/X/UL;)V

    .line 35175
    return-void
.end method
