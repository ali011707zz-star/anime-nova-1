.class public abstract Lcom/facebook/ads/redexgen/X/bo;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/facebook/ads/redexgen/X/TB;


# instance fields
.field public final A00:Lcom/facebook/ads/redexgen/X/T8;


# direct methods
.method public constructor <init>(Lcom/facebook/ads/redexgen/X/T8;)V
    .locals 0

    .line 78481
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 78482
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/bo;->A00:Lcom/facebook/ads/redexgen/X/T8;

    .line 78483
    return-void
.end method


# virtual methods
.method public final A5a()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 78484
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/bo;->A00:Lcom/facebook/ads/redexgen/X/T8;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/U8;->A01(Lcom/facebook/ads/redexgen/X/T8;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public final A6w()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 78485
    invoke-static {}, Lcom/facebook/ads/redexgen/X/Tn;->A02()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public final A8L()Ljava/lang/String;
    .locals 1

    .line 78486
    invoke-static {}, Lcom/facebook/ads/redexgen/X/Tn;->A00()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final A8N()Ljava/lang/String;
    .locals 1

    .line 78487
    invoke-static {}, Lcom/facebook/ads/redexgen/X/SZ;->A00()Lcom/facebook/ads/redexgen/X/SX;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/SX;->A03()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final AAU()Z
    .locals 1

    .line 78488
    invoke-static {}, Lcom/facebook/ads/redexgen/X/X0;->A00()Lcom/facebook/ads/redexgen/X/X0;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/X0;->A03()Z

    move-result v0

    return v0
.end method
