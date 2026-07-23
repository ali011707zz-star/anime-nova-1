.class public final Lcom/facebook/ads/redexgen/X/lc;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/facebook/ads/redexgen/X/Jj;


# instance fields
.field public final A00:Lcom/facebook/ads/redexgen/X/KM;

.field public final A01:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/facebook/ads/redexgen/X/KT;",
            ">;"
        }
    .end annotation
.end field

.field public final A02:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public final A03:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/facebook/ads/redexgen/X/KN;",
            ">;"
        }
    .end annotation
.end field

.field public final A04:[J


# direct methods
.method public constructor <init>(Lcom/facebook/ads/redexgen/X/KM;Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/ads/redexgen/X/KM;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/facebook/ads/redexgen/X/KT;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/facebook/ads/redexgen/X/KN;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 94832
    .local p2, "globalStyles":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/facebook/ads/androidx/media3/extractor/text/ttml/TtmlStyle;>;"
    .local p3, "regionMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/facebook/ads/androidx/media3/extractor/text/ttml/TtmlRegion;>;"
    .local p4, "imageMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 94833
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/lc;->A00:Lcom/facebook/ads/redexgen/X/KM;

    .line 94834
    iput-object p3, p0, Lcom/facebook/ads/redexgen/X/lc;->A03:Ljava/util/Map;

    .line 94835
    iput-object p4, p0, Lcom/facebook/ads/redexgen/X/lc;->A02:Ljava/util/Map;

    .line 94836
    if-eqz p2, :cond_0

    invoke-static {p2}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    :goto_0
    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/lc;->A01:Ljava/util/Map;

    .line 94837
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/KM;->A0G()[J

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/lc;->A04:[J

    .line 94838
    return-void

    .line 94839
    :cond_0
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v0

    goto :goto_0
.end method


# virtual methods
.method public final A7X(J)Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)",
            "Ljava/util/List<",
            "Lcom/facebook/ads/redexgen/X/pT;",
            ">;"
        }
    .end annotation

    .line 94840
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/lc;->A00:Lcom/facebook/ads/redexgen/X/KM;

    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/lc;->A01:Ljava/util/Map;

    iget-object v4, p0, Lcom/facebook/ads/redexgen/X/lc;->A03:Ljava/util/Map;

    iget-object v5, p0, Lcom/facebook/ads/redexgen/X/lc;->A02:Ljava/util/Map;

    move-wide v1, p1

    invoke-virtual/range {v0 .. v5}, Lcom/facebook/ads/redexgen/X/KM;->A0E(JLjava/util/Map;Ljava/util/Map;Ljava/util/Map;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public final A83(I)J
    .locals 2

    .line 94841
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/lc;->A04:[J

    aget-wide v0, v0, p1

    return-wide v0
.end method

.method public final A84()I
    .locals 1

    .line 94842
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/lc;->A04:[J

    array-length v0, v0

    return v0
.end method

.method public final A8a(J)I
    .locals 2

    .line 94843
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/lc;->A04:[J

    const/4 v0, 0x0

    invoke-static {v1, p1, p2, v0, v0}, Lcom/facebook/ads/redexgen/X/5C;->A0K([JJZZ)I

    move-result v1

    .line 94844
    .local v0, "index":I
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/lc;->A04:[J

    array-length v0, v0

    if-ge v1, v0, :cond_0

    :goto_0
    return v1

    :cond_0
    const/4 v1, -0x1

    goto :goto_0
.end method
