.class public final Lcom/facebook/ads/redexgen/X/f2;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/facebook/ads/redexgen/X/TV;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 82080
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final AL5(Ljava/lang/String;Ljava/util/Map;Lcom/facebook/ads/redexgen/X/T8;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/facebook/ads/redexgen/X/T8;",
            ")V"
        }
    .end annotation

    .line 82081
    .local p2, "staticEnvironmentData":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-static {}, Lcom/facebook/ads/redexgen/X/Tb;->A00()Lcom/facebook/ads/redexgen/X/Ta;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3}, Lcom/facebook/ads/redexgen/X/Ta;->AL5(Ljava/lang/String;Ljava/util/Map;Lcom/facebook/ads/redexgen/X/T8;)V

    .line 82082
    return-void
.end method
