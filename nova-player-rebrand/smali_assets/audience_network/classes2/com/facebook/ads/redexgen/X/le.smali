.class public final Lcom/facebook/ads/redexgen/X/le;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/facebook/ads/redexgen/X/Jj;


# static fields
.field public static A02:[Ljava/lang/String;


# instance fields
.field public final A00:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field public final A01:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/util/List<",
            "Lcom/facebook/ads/redexgen/X/pT;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    .line 3199
    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "HEj97KvUnOVi99GyCemBfj1IlRVMCYKa"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "bKpF78P6yplIZiN4oLHJNmT5FnU1SEKu"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "7Sc49g8U0pFUCwWrHEqt4gm3cHokAbZL"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "cD1aak7SOkYBFQ5WYMuE6fCzYSMr5rzP"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "nFSB3U7GisPQJq8UC8oIR6SGnDGaOjWF"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "F8IIvOctPHFdHQL4x7ywQ6I9IFbldSVz"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "cjwMlxT4uAsHz8zserTiMsrkd8r9G7hR"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "hk7t5bmYHUtAqM49rcYSiap2RmT4cwS9"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/le;->A02:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/util/List;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/util/List<",
            "Lcom/facebook/ads/redexgen/X/pT;",
            ">;>;",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    .line 94861
    .local p1, "cues":Ljava/util/List;, "Ljava/util/List<Ljava/util/List<Lcom/facebook/ads/androidx/media3/common/text/Cue;>;>;"
    .local p2, "cueTimesUs":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 94862
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/le;->A01:Ljava/util/List;

    .line 94863
    iput-object p2, p0, Lcom/facebook/ads/redexgen/X/le;->A00:Ljava/util/List;

    .line 94864
    return-void
.end method


# virtual methods
.method public final A7X(J)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)",
            "Ljava/util/List<",
            "Lcom/facebook/ads/redexgen/X/pT;",
            ">;"
        }
    .end annotation

    .line 94865
    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/le;->A00:Ljava/util/List;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    const/4 v1, 0x1

    const/4 v0, 0x0

    invoke-static {v3, v2, v1, v0}, Lcom/facebook/ads/redexgen/X/5C;->A0H(Ljava/util/List;Ljava/lang/Comparable;ZZ)I

    move-result v1

    .line 94866
    .local v0, "index":I
    const/4 v0, -0x1

    if-ne v1, v0, :cond_0

    .line 94867
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 94868
    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/le;->A01:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    sget-object v1, Lcom/facebook/ads/redexgen/X/le;->A02:[Ljava/lang/String;

    const/4 v0, 0x7

    aget-object v1, v1, v0

    const/16 v0, 0xe

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x51

    if-eq v1, v0, :cond_1

    sget-object v2, Lcom/facebook/ads/redexgen/X/le;->A02:[Ljava/lang/String;

    const-string v1, "T22AU4Idz2xqABMljk02WspyVqHPQCmG"

    const/4 v0, 0x7

    aput-object v1, v2, v0

    return-object v3

    :cond_1
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
.end method

.method public final A83(I)J
    .locals 2

    .line 94869
    const/4 v1, 0x1

    if-ltz p1, :cond_1

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/3y;->A07(Z)V

    .line 94870
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/le;->A00:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge p1, v0, :cond_0

    :goto_1
    invoke-static {v1}, Lcom/facebook/ads/redexgen/X/3y;->A07(Z)V

    .line 94871
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/le;->A00:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    return-wide v0

    .line 94872
    :cond_0
    const/4 v1, 0x0

    goto :goto_1

    .line 94873
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final A84()I
    .locals 1

    .line 94874
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/le;->A00:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public final A8a(J)I
    .locals 3

    .line 94875
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/le;->A00:Ljava/util/List;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/4 v0, 0x0

    invoke-static {v2, v1, v0, v0}, Lcom/facebook/ads/redexgen/X/5C;->A0G(Ljava/util/List;Ljava/lang/Comparable;ZZ)I

    move-result v1

    .line 94876
    .local v0, "index":I
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/le;->A00:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_0

    :goto_0
    return v1

    :cond_0
    const/4 v1, -0x1

    goto :goto_0
.end method
