.class public final Lcom/facebook/ads/redexgen/X/HM;
.super Ljava/lang/Object;
.source ""


# instance fields
.field public final A00:Lcom/facebook/ads/redexgen/X/4v;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 38878
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38879
    const/16 v1, 0xa

    new-instance v0, Lcom/facebook/ads/redexgen/X/4v;

    invoke-direct {v0, v1}, Lcom/facebook/ads/redexgen/X/4v;-><init>(I)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/HM;->A00:Lcom/facebook/ads/redexgen/X/4v;

    .line 38880
    return-void
.end method


# virtual methods
.method public final A00(Lcom/facebook/ads/redexgen/X/ms;Lcom/facebook/ads/redexgen/X/IE;)Lcom/facebook/ads/androidx/media3/common/Metadata;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 38881
    const/4 v5, 0x0

    .line 38882
    .local v0, "peekedId3Bytes":I
    const/4 v7, 0x0

    .line 38883
    .local v1, "metadata":Lcom/facebook/ads/androidx/media3/common/Metadata;
    :goto_0
    :try_start_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/HM;->A00:Lcom/facebook/ads/redexgen/X/4v;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/4v;->A0l()[B

    move-result-object v0

    const/16 v6, 0xa

    const/4 v4, 0x0

    invoke-interface {p1, v0, v4, v6}, Lcom/facebook/ads/redexgen/X/ms;->AGt([BII)V
    :try_end_0
    .catch Ljava/io/EOFException; {:try_start_0 .. :try_end_0} :catch_0

    .line 38884
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/HM;->A00:Lcom/facebook/ads/redexgen/X/4v;

    invoke-virtual {v0, v4}, Lcom/facebook/ads/redexgen/X/4v;->A0f(I)V

    .line 38885
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/HM;->A00:Lcom/facebook/ads/redexgen/X/4v;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/4v;->A0K()I

    move-result v1

    const v0, 0x494433

    if-eq v1, v0, :cond_0

    .line 38886
    .end local v2
    :catch_0
    invoke-interface {p1}, Lcom/facebook/ads/redexgen/X/ms;->AIl()V

    .line 38887
    invoke-interface {p1, v5}, Lcom/facebook/ads/redexgen/X/ms;->A47(I)V

    .line 38888
    return-object v7

    .line 38889
    :cond_0
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/HM;->A00:Lcom/facebook/ads/redexgen/X/4v;

    const/4 v0, 0x3

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/4v;->A0g(I)V

    .line 38890
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/HM;->A00:Lcom/facebook/ads/redexgen/X/4v;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/4v;->A0H()I

    move-result v3

    .line 38891
    .local v2, "framesLength":I
    add-int/lit8 v2, v3, 0xa

    .line 38892
    .local v5, "tagLength":I
    if-nez v7, :cond_1

    .line 38893
    new-array v1, v2, [B

    .line 38894
    .local v6, "id3Data":[B
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/HM;->A00:Lcom/facebook/ads/redexgen/X/4v;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/4v;->A0l()[B

    move-result-object v0

    invoke-static {v0, v4, v1, v4, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 38895
    invoke-interface {p1, v1, v6, v3}, Lcom/facebook/ads/redexgen/X/ms;->AGt([BII)V

    .line 38896
    new-instance v0, Lcom/facebook/ads/redexgen/X/9U;

    invoke-direct {v0, p2}, Lcom/facebook/ads/redexgen/X/9U;-><init>(Lcom/facebook/ads/redexgen/X/IE;)V

    invoke-virtual {v0, v1, v2}, Lcom/facebook/ads/redexgen/X/9U;->A0S([BI)Lcom/facebook/ads/androidx/media3/common/Metadata;

    move-result-object v7

    .line 38897
    .end local v6    # "id3Data":[B
    :goto_1
    add-int/2addr v5, v2

    .line 38898
    .end local v2    # "framesLength":I
    .end local v5    # "tagLength":I
    goto :goto_0

    .line 38899
    :cond_1
    invoke-interface {p1, v3}, Lcom/facebook/ads/redexgen/X/ms;->A47(I)V

    goto :goto_1
.end method
