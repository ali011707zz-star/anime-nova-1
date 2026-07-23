.class public abstract Lcom/facebook/ads/redexgen/X/hV;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static A00:Lcom/facebook/ads/redexgen/X/hW;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 2922
    invoke-static {}, Lcom/facebook/ads/redexgen/X/CI;->A00()Lcom/facebook/ads/redexgen/X/CI;

    move-result-object v0

    sput-object v0, Lcom/facebook/ads/redexgen/X/hV;->A00:Lcom/facebook/ads/redexgen/X/hW;

    return-void
.end method

.method public static A00(Lcom/facebook/ads/redexgen/X/hW;)V
    .locals 0

    .line 84740
    if-eqz p0, :cond_0

    .line 84741
    sput-object p0, Lcom/facebook/ads/redexgen/X/hV;->A00:Lcom/facebook/ads/redexgen/X/hW;

    .line 84742
    return-void

    .line 84743
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p0
.end method
