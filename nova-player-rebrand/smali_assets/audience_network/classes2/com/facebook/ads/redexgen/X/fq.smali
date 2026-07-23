.class public final Lcom/facebook/ads/redexgen/X/fq;
.super Ljava/lang/Object;
.source ""


# instance fields
.field public A00:F

.field public A01:Lcom/facebook/ads/redexgen/X/Lr;

.field public A02:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/facebook/ads/redexgen/X/Lr;)V
    .locals 1

    .line 82945
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/facebook/ads/redexgen/X/fq;-><init>(Lcom/facebook/ads/redexgen/X/Lr;F)V

    .line 82946
    return-void
.end method

.method public constructor <init>(Lcom/facebook/ads/redexgen/X/Lr;F)V
    .locals 1

    .line 82947
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/facebook/ads/redexgen/X/fq;-><init>(Lcom/facebook/ads/redexgen/X/Lr;FLjava/util/Map;)V

    .line 82948
    return-void
.end method

.method public constructor <init>(Lcom/facebook/ads/redexgen/X/Lr;FLjava/util/Map;)V
    .locals 1
    .param p1    # Lcom/facebook/ads/redexgen/X/Lr;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/ads/redexgen/X/Lr;",
            "F",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 82949
    .local p3, "windowParams":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 82950
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/fq;->A01:Lcom/facebook/ads/redexgen/X/Lr;

    .line 82951
    iput p2, p0, Lcom/facebook/ads/redexgen/X/fq;->A00:F

    .line 82952
    if-eqz p3, :cond_0

    .line 82953
    iput-object p3, p0, Lcom/facebook/ads/redexgen/X/fq;->A02:Ljava/util/Map;

    .line 82954
    :goto_0
    return-void

    .line 82955
    :cond_0
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/fq;->A02:Ljava/util/Map;

    goto :goto_0
.end method


# virtual methods
.method public final A00()F
    .locals 1

    .line 82956
    iget v0, p0, Lcom/facebook/ads/redexgen/X/fq;->A00:F

    return v0
.end method

.method public final A01()I
    .locals 1

    .line 82957
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/fq;->A01:Lcom/facebook/ads/redexgen/X/Lr;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Lr;->A03()I

    move-result v0

    return v0
.end method

.method public final A02()Lcom/facebook/ads/redexgen/X/Lr;
    .locals 1

    .line 82958
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/fq;->A01:Lcom/facebook/ads/redexgen/X/Lr;

    return-object v0
.end method

.method public final A03()Ljava/util/Map;
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

    .line 82959
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/fq;->A02:Ljava/util/Map;

    return-object v0
.end method

.method public final A04()Z
    .locals 2

    .line 82960
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/fq;->A01:Lcom/facebook/ads/redexgen/X/Lr;

    sget-object v0, Lcom/facebook/ads/redexgen/X/Lr;->A0I:Lcom/facebook/ads/redexgen/X/Lr;

    if-ne v1, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
