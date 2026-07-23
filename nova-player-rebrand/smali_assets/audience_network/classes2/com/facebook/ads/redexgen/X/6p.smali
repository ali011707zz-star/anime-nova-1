.class public final Lcom/facebook/ads/redexgen/X/6p;
.super Lcom/facebook/ads/redexgen/X/EA;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/ads/redexgen/X/6g;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic A00:Lcom/facebook/ads/redexgen/X/6g;


# direct methods
.method public constructor <init>(Lcom/facebook/ads/redexgen/X/6g;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 17878
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/6p;->A00:Lcom/facebook/ads/redexgen/X/6g;

    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/EA;-><init>()V

    return-void
.end method

.method private final A00(Lcom/facebook/ads/redexgen/X/4K;)V
    .locals 3

    .line 17879
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/6p;->A00:Lcom/facebook/ads/redexgen/X/6g;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/Oq;->A08:Lcom/facebook/ads/redexgen/X/gi;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Up;->A1T(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 17880
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/6p;->A00:Lcom/facebook/ads/redexgen/X/6g;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/6g;->A02(Lcom/facebook/ads/redexgen/X/6g;)Lcom/facebook/ads/redexgen/X/Ek;

    move-result-object v2

    sget-object v1, Lcom/facebook/ads/redexgen/X/et;->A02:Lcom/facebook/ads/redexgen/X/et;

    const/16 v0, 0x1e

    invoke-virtual {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Ek;->A0e(Lcom/facebook/ads/redexgen/X/et;I)V

    .line 17881
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

    .line 17882
    check-cast p1, Lcom/facebook/ads/redexgen/X/4K;

    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/6p;->A00(Lcom/facebook/ads/redexgen/X/4K;)V

    return-void
.end method
