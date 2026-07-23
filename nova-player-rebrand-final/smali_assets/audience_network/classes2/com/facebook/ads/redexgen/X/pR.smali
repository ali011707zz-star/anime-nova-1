.class public final Lcom/facebook/ads/redexgen/X/pR;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/facebook/ads/redexgen/X/24;


# static fields
.field public static final A02:Lcom/facebook/ads/redexgen/X/23;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/facebook/ads/redexgen/X/23<",
            "Lcom/facebook/ads/redexgen/X/pR;",
            ">;"
        }
    .end annotation
.end field

.field public static final A03:Lcom/facebook/ads/redexgen/X/pR;

.field public static final A04:Ljava/lang/String;

.field public static final A05:Ljava/lang/String;


# instance fields
.field public final A00:J

.field public final A01:Ljava/util/List;
    .annotation runtime Lcom/facebook/video/heroplayer/exocustom/MetaExoPlayerCustomization;
        value = "Oculus does not work well with Google Guava"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/facebook/ads/redexgen/X/pT;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 4

    .line 3347
    invoke-static {}, Lcom/facebook/ads/redexgen/X/jW;->A01()Ljava/util/List;

    move-result-object v3

    const-wide/16 v1, 0x0

    new-instance v0, Lcom/facebook/ads/redexgen/X/pR;

    invoke-direct {v0, v3, v1, v2}, Lcom/facebook/ads/redexgen/X/pR;-><init>(Ljava/util/List;J)V

    sput-object v0, Lcom/facebook/ads/redexgen/X/pR;->A03:Lcom/facebook/ads/redexgen/X/pR;

    .line 3348
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/5C;->A0h(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/facebook/ads/redexgen/X/pR;->A04:Ljava/lang/String;

    .line 3349
    const/4 v0, 0x1

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/5C;->A0h(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/facebook/ads/redexgen/X/pR;->A05:Ljava/lang/String;

    .line 3350
    new-instance v0, Lcom/facebook/ads/redexgen/X/pS;

    invoke-direct {v0}, Lcom/facebook/ads/redexgen/X/pS;-><init>()V

    sput-object v0, Lcom/facebook/ads/redexgen/X/pR;->A02:Lcom/facebook/ads/redexgen/X/23;

    return-void
.end method

.method public constructor <init>(Ljava/util/List;J)V
    .locals 1
    .annotation runtime Lcom/facebook/video/heroplayer/exocustom/MetaExoPlayerCustomization;
        value = "Oculus does not work well with Google Guava"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/facebook/ads/redexgen/X/pT;",
            ">;J)V"
        }
    .end annotation

    .line 104153
    .local p1, "cues":Ljava/util/List;, "Ljava/util/List<Lcom/facebook/ads/androidx/media3/common/text/Cue;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 104154
    const/4 v0, 0x0

    new-array v0, v0, [Lcom/facebook/ads/redexgen/X/pT;

    invoke-interface {p1, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/facebook/ads/redexgen/X/pT;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/jW;->A03([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/pR;->A01:Ljava/util/List;

    .line 104155
    iput-wide p2, p0, Lcom/facebook/ads/redexgen/X/pR;->A00:J

    .line 104156
    return-void
.end method

.method public static final A00(Landroid/os/Bundle;)Lcom/facebook/ads/redexgen/X/pR;
    .locals 4

    .line 104157
    sget-object v0, Lcom/facebook/ads/redexgen/X/pR;->A04:Ljava/lang/String;

    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    .line 104158
    .local v0, "cueBundles":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/os/Bundle;>;"
    if-nez v1, :cond_0

    .line 104159
    invoke-static {}, Lcom/facebook/ads/redexgen/X/jW;->A01()Ljava/util/List;

    move-result-object v3

    .line 104160
    .local v1, "cues":Ljava/util/List;, "Ljava/util/List<Lcom/facebook/ads/androidx/media3/common/text/Cue;>;"
    :goto_0
    sget-object v0, Lcom/facebook/ads/redexgen/X/pR;->A05:Ljava/lang/String;

    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v1

    .line 104161
    .local v2, "presentationTimeUs":J
    new-instance v0, Lcom/facebook/ads/redexgen/X/pR;

    invoke-direct {v0, v3, v1, v2}, Lcom/facebook/ads/redexgen/X/pR;-><init>(Ljava/util/List;J)V

    return-object v0

    .line 104162
    :cond_0
    sget-object v0, Lcom/facebook/ads/redexgen/X/pT;->A0I:Lcom/facebook/ads/redexgen/X/23;

    invoke-static {v0, v1}, Lcom/facebook/ads/redexgen/X/44;->A01(Lcom/facebook/ads/redexgen/X/23;Ljava/util/List;)Lcom/facebook/ads/redexgen/X/BP;

    move-result-object v3

    goto :goto_0
.end method

.method public static synthetic A01(Landroid/os/Bundle;)Lcom/facebook/ads/redexgen/X/pR;
    .locals 0

    invoke-static {p0}, Lcom/facebook/ads/redexgen/X/pR;->A00(Landroid/os/Bundle;)Lcom/facebook/ads/redexgen/X/pR;

    move-result-object p0

    return-object p0
.end method
