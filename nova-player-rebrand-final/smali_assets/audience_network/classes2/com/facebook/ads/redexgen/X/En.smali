.class public final Lcom/facebook/ads/redexgen/X/En;
.super Lcom/facebook/ads/redexgen/X/Wc;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/ads/redexgen/X/Ek;->A0d(Lcom/facebook/ads/redexgen/X/el;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic A00:Lcom/facebook/ads/redexgen/X/Ek;


# direct methods
.method public constructor <init>(Lcom/facebook/ads/redexgen/X/Ek;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 35126
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/En;->A00:Lcom/facebook/ads/redexgen/X/Ek;

    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/Wc;-><init>()V

    return-void
.end method


# virtual methods
.method public final A07()V
    .locals 2

    .line 35127
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/En;->A00:Lcom/facebook/ads/redexgen/X/Ek;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Ek;->getEventBus()Lcom/facebook/ads/redexgen/X/UM;

    move-result-object v1

    invoke-static {}, Lcom/facebook/ads/redexgen/X/Ek;->A0E()Lcom/facebook/ads/redexgen/X/Dw;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/UM;->A02(Lcom/facebook/ads/redexgen/X/UL;)V

    .line 35128
    return-void
.end method
