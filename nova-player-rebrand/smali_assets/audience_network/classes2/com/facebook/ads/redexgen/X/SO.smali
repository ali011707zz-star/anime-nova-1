.class public final Lcom/facebook/ads/redexgen/X/SO;
.super Lcom/facebook/ads/redexgen/X/Wc;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/ads/redexgen/X/WD;->A0M(Lcom/facebook/ads/redexgen/X/RG;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic A00:Lcom/facebook/ads/redexgen/X/WD;

.field public final synthetic A01:Lcom/facebook/ads/redexgen/X/RG;


# direct methods
.method public constructor <init>(Lcom/facebook/ads/redexgen/X/WD;Lcom/facebook/ads/redexgen/X/RG;)V
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

    .line 63962
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/SO;->A00:Lcom/facebook/ads/redexgen/X/WD;

    iput-object p2, p0, Lcom/facebook/ads/redexgen/X/SO;->A01:Lcom/facebook/ads/redexgen/X/RG;

    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/Wc;-><init>()V

    return-void
.end method


# virtual methods
.method public final A07()V
    .locals 2

    .line 63963
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/SO;->A00:Lcom/facebook/ads/redexgen/X/WD;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/SO;->A01:Lcom/facebook/ads/redexgen/X/RG;

    invoke-static {v1, v0}, Lcom/facebook/ads/redexgen/X/WD;->A0I(Lcom/facebook/ads/redexgen/X/WD;Lcom/facebook/ads/redexgen/X/RG;)V

    .line 63964
    return-void
.end method
