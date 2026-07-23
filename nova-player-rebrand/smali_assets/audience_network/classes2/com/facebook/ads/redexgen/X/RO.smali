.class public final Lcom/facebook/ads/redexgen/X/RO;
.super Lcom/facebook/ads/redexgen/X/Wc;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/ads/redexgen/X/WD;->A0E(Lcom/facebook/ads/redexgen/X/Vm;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic A00:Lcom/facebook/ads/redexgen/X/Vm;

.field public final synthetic A01:Lcom/facebook/ads/redexgen/X/WD;


# direct methods
.method public constructor <init>(Lcom/facebook/ads/redexgen/X/WD;Lcom/facebook/ads/redexgen/X/Vm;)V
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

    .line 62166
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/RO;->A01:Lcom/facebook/ads/redexgen/X/WD;

    iput-object p2, p0, Lcom/facebook/ads/redexgen/X/RO;->A00:Lcom/facebook/ads/redexgen/X/Vm;

    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/Wc;-><init>()V

    return-void
.end method


# virtual methods
.method public final A07()V
    .locals 2

    .line 62167
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/RO;->A01:Lcom/facebook/ads/redexgen/X/WD;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/RO;->A00:Lcom/facebook/ads/redexgen/X/Vm;

    invoke-static {v1, v0}, Lcom/facebook/ads/redexgen/X/WD;->A0G(Lcom/facebook/ads/redexgen/X/WD;Lcom/facebook/ads/redexgen/X/Vm;)V

    .line 62168
    return-void
.end method
