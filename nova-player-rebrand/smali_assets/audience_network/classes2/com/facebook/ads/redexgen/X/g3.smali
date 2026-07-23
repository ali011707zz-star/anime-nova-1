.class public final Lcom/facebook/ads/redexgen/X/g3;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/ads/redexgen/X/g2;
    }
.end annotation


# instance fields
.field public A00:I

.field public A01:I

.field public A02:I

.field public A03:Lcom/facebook/ads/redexgen/X/ft;

.field public A04:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public final A05:I

.field public final A06:I


# direct methods
.method public constructor <init>(IIIIILjava/util/Map;Lcom/facebook/ads/redexgen/X/ft;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IIIII",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/facebook/ads/redexgen/X/ft;",
            ")V"
        }
    .end annotation

    .line 83042
    .local p6, "requestHeaders":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 83043
    iput p1, p0, Lcom/facebook/ads/redexgen/X/g3;->A06:I

    .line 83044
    iput p2, p0, Lcom/facebook/ads/redexgen/X/g3;->A00:I

    .line 83045
    iput p3, p0, Lcom/facebook/ads/redexgen/X/g3;->A02:I

    .line 83046
    iput p4, p0, Lcom/facebook/ads/redexgen/X/g3;->A05:I

    .line 83047
    iput p5, p0, Lcom/facebook/ads/redexgen/X/g3;->A01:I

    .line 83048
    iput-object p6, p0, Lcom/facebook/ads/redexgen/X/g3;->A04:Ljava/util/Map;

    .line 83049
    iput-object p7, p0, Lcom/facebook/ads/redexgen/X/g3;->A03:Lcom/facebook/ads/redexgen/X/ft;

    .line 83050
    return-void
.end method

.method public synthetic constructor <init>(IIIIILjava/util/Map;Lcom/facebook/ads/redexgen/X/ft;Lcom/facebook/ads/redexgen/X/g1;)V
    .locals 0

    .line 83051
    invoke-direct/range {p0 .. p7}, Lcom/facebook/ads/redexgen/X/g3;-><init>(IIIIILjava/util/Map;Lcom/facebook/ads/redexgen/X/ft;)V

    return-void
.end method


# virtual methods
.method public final A00()I
    .locals 1

    .line 83052
    iget v0, p0, Lcom/facebook/ads/redexgen/X/g3;->A00:I

    return v0
.end method

.method public final A01()I
    .locals 1

    .line 83053
    iget v0, p0, Lcom/facebook/ads/redexgen/X/g3;->A01:I

    return v0
.end method

.method public final A02()I
    .locals 1

    .line 83054
    iget v0, p0, Lcom/facebook/ads/redexgen/X/g3;->A02:I

    return v0
.end method

.method public final A03()I
    .locals 1

    .line 83055
    iget v0, p0, Lcom/facebook/ads/redexgen/X/g3;->A05:I

    return v0
.end method

.method public final A04()I
    .locals 1

    .line 83056
    iget v0, p0, Lcom/facebook/ads/redexgen/X/g3;->A06:I

    return v0
.end method

.method public final A05()Lcom/facebook/ads/redexgen/X/ft;
    .locals 1

    .line 83057
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/g3;->A03:Lcom/facebook/ads/redexgen/X/ft;

    return-object v0
.end method

.method public final A06()Ljava/util/Map;
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

    .line 83058
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/g3;->A04:Ljava/util/Map;

    return-object v0
.end method
