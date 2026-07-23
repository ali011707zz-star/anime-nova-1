.class public final Lcom/facebook/ads/redexgen/X/g0;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/ads/redexgen/X/fz;
    }
.end annotation


# instance fields
.field public A00:Lcom/facebook/ads/redexgen/X/g3;

.field public A01:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public A02:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public A03:Z

.field public A04:Z


# direct methods
.method public constructor <init>(Lcom/facebook/ads/redexgen/X/g3;ZLjava/util/Set;Ljava/util/Set;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/ads/redexgen/X/g3;",
            "Z",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;Z)V"
        }
    .end annotation

    .line 83005
    .local p3, "pinnedPublicKeys":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .local p4, "pinnedCertificates":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 83006
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/g0;->A00:Lcom/facebook/ads/redexgen/X/g3;

    .line 83007
    iput-boolean p2, p0, Lcom/facebook/ads/redexgen/X/g0;->A04:Z

    .line 83008
    iput-object p3, p0, Lcom/facebook/ads/redexgen/X/g0;->A02:Ljava/util/Set;

    .line 83009
    iput-object p4, p0, Lcom/facebook/ads/redexgen/X/g0;->A01:Ljava/util/Set;

    .line 83010
    iput-boolean p5, p0, Lcom/facebook/ads/redexgen/X/g0;->A03:Z

    .line 83011
    return-void
.end method

.method public synthetic constructor <init>(Lcom/facebook/ads/redexgen/X/g3;ZLjava/util/Set;Ljava/util/Set;ZLcom/facebook/ads/redexgen/X/fy;)V
    .locals 0

    .line 83012
    invoke-direct/range {p0 .. p5}, Lcom/facebook/ads/redexgen/X/g0;-><init>(Lcom/facebook/ads/redexgen/X/g3;ZLjava/util/Set;Ljava/util/Set;Z)V

    return-void
.end method


# virtual methods
.method public final A00()Lcom/facebook/ads/redexgen/X/g3;
    .locals 1

    .line 83013
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/g0;->A00:Lcom/facebook/ads/redexgen/X/g3;

    return-object v0
.end method

.method public final A01()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 83014
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/g0;->A01:Ljava/util/Set;

    return-object v0
.end method

.method public final A02()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 83015
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/g0;->A02:Ljava/util/Set;

    return-object v0
.end method

.method public final A03()Z
    .locals 1

    .line 83016
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/g0;->A04:Z

    return v0
.end method

.method public final A04()Z
    .locals 1

    .line 83017
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/g0;->A03:Z

    return v0
.end method
