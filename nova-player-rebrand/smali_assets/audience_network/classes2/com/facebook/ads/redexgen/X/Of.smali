.class public final Lcom/facebook/ads/redexgen/X/Of;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/ads/redexgen/X/Oe;
    }
.end annotation


# instance fields
.field public A00:Lcom/facebook/ads/redexgen/X/Oe;

.field public A01:Lcom/facebook/ads/redexgen/X/Oe;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 55960
    const-wide/high16 v0, 0x3fe0000000000000L    # 0.5

    invoke-direct {p0, v0, v1, v0, v1}, Lcom/facebook/ads/redexgen/X/Of;-><init>(DD)V

    .line 55961
    return-void
.end method

.method public constructor <init>(D)V
    .locals 2

    .line 55962
    const-wide/high16 v0, 0x3fe0000000000000L    # 0.5

    invoke-direct {p0, p1, p2, v0, v1}, Lcom/facebook/ads/redexgen/X/Of;-><init>(DD)V

    .line 55963
    return-void
.end method

.method public constructor <init>(DD)V
    .locals 1

    .line 55964
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55965
    new-instance v0, Lcom/facebook/ads/redexgen/X/Oe;

    invoke-direct {v0, p1, p2}, Lcom/facebook/ads/redexgen/X/Oe;-><init>(D)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Of;->A00:Lcom/facebook/ads/redexgen/X/Oe;

    .line 55966
    new-instance v0, Lcom/facebook/ads/redexgen/X/Oe;

    invoke-direct {v0, p3, p4}, Lcom/facebook/ads/redexgen/X/Oe;-><init>(D)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Of;->A01:Lcom/facebook/ads/redexgen/X/Oe;

    .line 55967
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/Of;->A02()V

    .line 55968
    return-void
.end method


# virtual methods
.method public final A00()Lcom/facebook/ads/redexgen/X/Oe;
    .locals 1

    .line 55969
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Of;->A00:Lcom/facebook/ads/redexgen/X/Oe;

    return-object v0
.end method

.method public final A01()Lcom/facebook/ads/redexgen/X/Oe;
    .locals 1

    .line 55970
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Of;->A01:Lcom/facebook/ads/redexgen/X/Oe;

    return-object v0
.end method

.method public final A02()V
    .locals 1

    .line 55971
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Of;->A00:Lcom/facebook/ads/redexgen/X/Oe;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Oe;->A07()V

    .line 55972
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Of;->A01:Lcom/facebook/ads/redexgen/X/Oe;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Oe;->A07()V

    .line 55973
    return-void
.end method

.method public final A03()V
    .locals 1

    .line 55974
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Of;->A00:Lcom/facebook/ads/redexgen/X/Oe;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Oe;->A08()V

    .line 55975
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Of;->A01:Lcom/facebook/ads/redexgen/X/Oe;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Oe;->A08()V

    .line 55976
    return-void
.end method

.method public final A04(DD)V
    .locals 1

    .line 55977
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Of;->A00:Lcom/facebook/ads/redexgen/X/Oe;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/facebook/ads/redexgen/X/Oe;->A09(DD)V

    .line 55978
    return-void
.end method

.method public final A05(DD)V
    .locals 1

    .line 55979
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Of;->A01:Lcom/facebook/ads/redexgen/X/Oe;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/facebook/ads/redexgen/X/Oe;->A09(DD)V

    .line 55980
    return-void
.end method
