.class public final Lcom/facebook/ads/redexgen/X/lh;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/facebook/ads/redexgen/X/Jj;


# instance fields
.field public final A00:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/facebook/ads/redexgen/X/pT;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/facebook/ads/redexgen/X/pT;",
            ">;)V"
        }
    .end annotation

    .line 94891
    .local p1, "cues":Ljava/util/List;, "Ljava/util/List<Lcom/facebook/ads/androidx/media3/common/text/Cue;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 94892
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/lh;->A00:Ljava/util/List;

    .line 94893
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

    .line 94894
    const-wide/16 v1, 0x0

    cmp-long v0, p1, v1

    if-ltz v0, :cond_0

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/lh;->A00:Ljava/util/List;

    :goto_0
    return-object v0

    :cond_0
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    goto :goto_0
.end method

.method public final A83(I)J
    .locals 2

    .line 94895
    if-nez p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/3y;->A07(Z)V

    .line 94896
    const-wide/16 v0, 0x0

    return-wide v0

    .line 94897
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final A84()I
    .locals 1

    .line 94898
    const/4 v0, 0x1

    return v0
.end method

.method public final A8a(J)I
    .locals 3

    .line 94899
    const-wide/16 v1, 0x0

    cmp-long v0, p1, v1

    if-gez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method
