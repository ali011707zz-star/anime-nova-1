.class public final Lcom/facebook/ads/redexgen/X/Uw;
.super Ljava/lang/Object;
.source ""


# instance fields
.field public final A00:Landroid/view/View;

.field public final A01:Lcom/facebook/ads/redexgen/X/ge;

.field public final A02:Lcom/facebook/ads/redexgen/X/VA;

.field public final A03:Ljava/lang/String;

.field public final A04:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public final A05:Z

.field public final A06:Z


# direct methods
.method public constructor <init>(Lcom/facebook/ads/redexgen/X/ge;Landroid/view/View;Ljava/lang/String;ZZ)V
    .locals 1

    .line 68939
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 68940
    iput-object p3, p0, Lcom/facebook/ads/redexgen/X/Uw;->A03:Ljava/lang/String;

    .line 68941
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/Uw;->A01:Lcom/facebook/ads/redexgen/X/ge;

    .line 68942
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/T8;->A0A()Lcom/facebook/ads/redexgen/X/VA;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Uw;->A02:Lcom/facebook/ads/redexgen/X/VA;

    .line 68943
    iput-object p2, p0, Lcom/facebook/ads/redexgen/X/Uw;->A00:Landroid/view/View;

    .line 68944
    iput-boolean p5, p0, Lcom/facebook/ads/redexgen/X/Uw;->A05:Z

    .line 68945
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Uw;->A04:Ljava/util/HashMap;

    .line 68946
    iput-boolean p4, p0, Lcom/facebook/ads/redexgen/X/Uw;->A06:Z

    .line 68947
    return-void
.end method


# virtual methods
.method public final A00()Landroid/view/View;
    .locals 1

    .line 68948
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Uw;->A00:Landroid/view/View;

    return-object v0
.end method

.method public final A01()Lcom/facebook/ads/redexgen/X/ge;
    .locals 1

    .line 68949
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Uw;->A01:Lcom/facebook/ads/redexgen/X/ge;

    return-object v0
.end method

.method public final A02()Lcom/facebook/ads/redexgen/X/VA;
    .locals 1

    .line 68950
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Uw;->A02:Lcom/facebook/ads/redexgen/X/VA;

    return-object v0
.end method

.method public final A03()Ljava/lang/String;
    .locals 1

    .line 68951
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Uw;->A03:Ljava/lang/String;

    return-object v0
.end method

.method public final A04()Ljava/util/Map;
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

    .line 68952
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Uw;->A04:Ljava/util/HashMap;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public final A05()Z
    .locals 1

    .line 68953
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/Uw;->A05:Z

    return v0
.end method

.method public final A06()Z
    .locals 1

    .line 68954
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/Uw;->A06:Z

    return v0
.end method
