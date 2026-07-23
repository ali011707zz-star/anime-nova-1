.class public final Lcom/facebook/ads/redexgen/X/nT;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/facebook/ads/redexgen/X/Jj;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/ads/redexgen/X/9k;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "SingleEventSubtitle"
.end annotation


# instance fields
.field public final A00:J

.field public final A01:Lcom/facebook/ads/redexgen/X/BP;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/facebook/ads/redexgen/X/BP<",
            "Lcom/facebook/ads/redexgen/X/pT;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(JLcom/facebook/ads/redexgen/X/BP;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Lcom/facebook/ads/redexgen/X/BP<",
            "Lcom/facebook/ads/redexgen/X/pT;",
            ">;)V"
        }
    .end annotation

    .line 100693
    .local p3, "cues":Lcom/facebook/ads/redexgen/X/BP;, "Lcom/google/common/collect/ImmutableList<Lcom/facebook/ads/androidx/media3/common/text/Cue;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 100694
    iput-wide p1, p0, Lcom/facebook/ads/redexgen/X/nT;->A00:J

    .line 100695
    iput-object p3, p0, Lcom/facebook/ads/redexgen/X/nT;->A01:Lcom/facebook/ads/redexgen/X/BP;

    .line 100696
    return-void
.end method


# virtual methods
.method public final A7X(J)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)",
            "Ljava/util/List<",
            "Lcom/facebook/ads/redexgen/X/pT;",
            ">;"
        }
    .end annotation

    .line 100697
    iget-wide v1, p0, Lcom/facebook/ads/redexgen/X/nT;->A00:J

    cmp-long v0, p1, v1

    if-ltz v0, :cond_0

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/nT;->A01:Lcom/facebook/ads/redexgen/X/BP;

    :goto_0
    return-object v0

    :cond_0
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    goto :goto_0
.end method

.method public final A83(I)J
    .locals 2

    .line 100698
    if-nez p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/3y;->A07(Z)V

    .line 100699
    iget-wide v0, p0, Lcom/facebook/ads/redexgen/X/nT;->A00:J

    return-wide v0

    .line 100700
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final A84()I
    .locals 1

    .line 100701
    const/4 v0, 0x1

    return v0
.end method

.method public final A8a(J)I
    .locals 3

    .line 100702
    iget-wide v1, p0, Lcom/facebook/ads/redexgen/X/nT;->A00:J

    cmp-long v0, v1, p1

    if-lez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method
