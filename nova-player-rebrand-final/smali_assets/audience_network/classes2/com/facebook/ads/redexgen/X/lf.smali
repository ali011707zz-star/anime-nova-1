.class public final Lcom/facebook/ads/redexgen/X/lf;
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

    .line 94877
    .local p1, "cues":Ljava/util/List;, "Ljava/util/List<Lcom/facebook/ads/androidx/media3/common/text/Cue;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 94878
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/lf;->A00:Ljava/util/List;

    .line 94879
    return-void
.end method


# virtual methods
.method public final A7X(J)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)",
            "Ljava/util/List<",
            "Lcom/facebook/ads/redexgen/X/pT;",
            ">;"
        }
    .end annotation

    .line 94880
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/lf;->A00:Ljava/util/List;

    return-object v0
.end method

.method public final A83(I)J
    .locals 2

    .line 94881
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public final A84()I
    .locals 1

    .line 94882
    const/4 v0, 0x1

    return v0
.end method

.method public final A8a(J)I
    .locals 1

    .line 94883
    const/4 v0, -0x1

    return v0
.end method
