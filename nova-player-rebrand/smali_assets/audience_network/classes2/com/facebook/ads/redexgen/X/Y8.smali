.class public final Lcom/facebook/ads/redexgen/X/Y8;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/facebook/ads/redexgen/X/Ub;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/ads/redexgen/X/Y3;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "RecordFileBasedFetch"
.end annotation


# instance fields
.field public final A00:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/facebook/ads/redexgen/X/Ug;",
            ">;"
        }
    .end annotation
.end field

.field public final A01:Z

.field public final synthetic A02:Lcom/facebook/ads/redexgen/X/Y3;


# direct methods
.method public constructor <init>(Lcom/facebook/ads/redexgen/X/Y3;Ljava/util/List;Z)V
    .locals 7
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x0,
            0x0
        }
        names = {
            null,
            null,
            null
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/facebook/ads/redexgen/X/UX;",
            ">;Z)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 73548
    .local p0, "this":Lcom/facebook/ads/redexgen/X/Y8;, "Lcom/facebook/ads/internal/eventstorage/record/RecordFileBasedRecordDatabase<TT;>.RecordFileBasedFetch;"
    .local p2, "fetches":Ljava/util/List;, "Ljava/util/List<Lcom/facebook/ads/internal/eventstorage/record/FileSequenceFetchResult;>;"
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/Y8;->A02:Lcom/facebook/ads/redexgen/X/Y3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 73549
    iput-boolean p3, p0, Lcom/facebook/ads/redexgen/X/Y8;->A01:Z

    .line 73550
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Y8;->A00:Ljava/util/List;

    .line 73551
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/redexgen/X/UX;

    .line 73552
    .local v0, "fetch":Lcom/facebook/ads/redexgen/X/UX;
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/UX;->A01()Lcom/facebook/ads/redexgen/X/UW;

    move-result-object v5

    .line 73553
    .local v1, "fileFetchResult":Lcom/facebook/ads/redexgen/X/UW;
    iget-object v4, p0, Lcom/facebook/ads/redexgen/X/Y8;->A00:Ljava/util/List;

    .line 73554
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/UX;->A00()I

    move-result v1

    invoke-virtual {v5}, Lcom/facebook/ads/redexgen/X/UW;->A01()I

    move-result v0

    new-instance v3, Lcom/facebook/ads/redexgen/X/UU;

    invoke-direct {v3, v1, v0}, Lcom/facebook/ads/redexgen/X/UU;-><init>(II)V

    .line 73555
    invoke-virtual {v5}, Lcom/facebook/ads/redexgen/X/UW;->A00()I

    move-result v2

    invoke-virtual {v5}, Lcom/facebook/ads/redexgen/X/UW;->A01()I

    move-result v0

    sub-int/2addr v2, v0

    .line 73556
    invoke-virtual {v5}, Lcom/facebook/ads/redexgen/X/UW;->A00()I

    move-result v1

    new-instance v0, Lcom/facebook/ads/redexgen/X/Ug;

    invoke-direct {v0, v3, v2, v1}, Lcom/facebook/ads/redexgen/X/Ug;-><init>(Lcom/facebook/ads/redexgen/X/UU;II)V

    .line 73557
    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 73558
    .end local v0    # "fetch":Lcom/facebook/ads/redexgen/X/UX;
    .end local v1    # "fileFetchResult":Lcom/facebook/ads/redexgen/X/UW;
    goto :goto_0

    .line 73559
    :cond_0
    return-void
.end method


# virtual methods
.method public final A00()Lcom/facebook/ads/redexgen/X/Ug;
    .locals 2

    .line 73560
    .local p0, "this":Lcom/facebook/ads/redexgen/X/Y8;, "Lcom/facebook/ads/internal/eventstorage/record/RecordFileBasedRecordDatabase<TT;>.RecordFileBasedFetch;"
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Y8;->A00:Ljava/util/List;

    const/4 v0, 0x0

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/redexgen/X/Ug;

    return-object v0
.end method

.method public final A01()Lcom/facebook/ads/redexgen/X/Ug;
    .locals 2

    .line 73561
    .local p0, "this":Lcom/facebook/ads/redexgen/X/Y8;, "Lcom/facebook/ads/internal/eventstorage/record/RecordFileBasedRecordDatabase<TT;>.RecordFileBasedFetch;"
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Y8;->A00:Ljava/util/List;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Y8;->A00:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/redexgen/X/Ug;

    return-object v0
.end method

.method public final A5p()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/facebook/ads/redexgen/X/Ul;
        }
    .end annotation

    .line 73562
    .local p0, "this":Lcom/facebook/ads/redexgen/X/Y8;, "Lcom/facebook/ads/internal/eventstorage/record/RecordFileBasedRecordDatabase<TT;>.RecordFileBasedFetch;"
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Y8;->A02:Lcom/facebook/ads/redexgen/X/Y3;

    invoke-static {v0, p0}, Lcom/facebook/ads/redexgen/X/Y3;->A04(Lcom/facebook/ads/redexgen/X/Y3;Lcom/facebook/ads/redexgen/X/Y8;)V

    .line 73563
    return-void
.end method

.method public final declared-synchronized A6X()I
    .locals 3

    .local p1, "this":Lcom/facebook/ads/redexgen/X/Y8;, "Lcom/facebook/ads/internal/eventstorage/record/RecordFileBasedRecordDatabase<TT;>.RecordFileBasedFetch;"
    monitor-enter p0

    .line 73564
    const/4 v2, 0x0

    .line 73565
    .local v0, "count":I
    :try_start_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Y8;->A00:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/redexgen/X/Ug;

    .line 73566
    .local v2, "location":Lcom/facebook/ads/redexgen/X/Ug;
    iget v0, v0, Lcom/facebook/ads/redexgen/X/Ug;->A01:I

    add-int/2addr v2, v0

    .line 73567
    .end local v2    # "location":Lcom/facebook/ads/redexgen/X/Ug;
    goto :goto_0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 73568
    .end local p1
    :cond_0
    monitor-exit p0

    return v2

    .line 73569
    .end local v0    # "count":I
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final ACO()Z
    .locals 1

    .line 73570
    .local p0, "this":Lcom/facebook/ads/redexgen/X/Y8;, "Lcom/facebook/ads/internal/eventstorage/record/RecordFileBasedRecordDatabase<TT;>.RecordFileBasedFetch;"
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/Y8;->A01:Z

    return v0
.end method

.method public final close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 73571
    .local p0, "this":Lcom/facebook/ads/redexgen/X/Y8;, "Lcom/facebook/ads/internal/eventstorage/record/RecordFileBasedRecordDatabase<TT;>.RecordFileBasedFetch;"
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Y8;->A02:Lcom/facebook/ads/redexgen/X/Y3;

    invoke-static {v0, p0}, Lcom/facebook/ads/redexgen/X/Y3;->A07(Lcom/facebook/ads/redexgen/X/Y3;Lcom/facebook/ads/redexgen/X/Y8;)Z

    .line 73572
    return-void
.end method
