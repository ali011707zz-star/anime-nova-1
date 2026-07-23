.class public final Lcom/tonyodev/fetch2/provider/DownloadProvider;
.super Ljava/lang/Object;
.source "DownloadProvider.kt"


# instance fields
.field private final fetchDatabaseManagerWrapper:Lcom/tonyodev/fetch2/database/FetchDatabaseManagerWrapper;


# direct methods
.method public constructor <init>(Lcom/tonyodev/fetch2/database/FetchDatabaseManagerWrapper;)V
    .locals 1

    const-string v0, "fetchDatabaseManagerWrapper"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/tonyodev/fetch2/provider/DownloadProvider;->fetchDatabaseManagerWrapper:Lcom/tonyodev/fetch2/database/FetchDatabaseManagerWrapper;

    return-void
.end method


# virtual methods
.method public final getByGroup(I)Ljava/util/List;
    .locals 1

    .line 24
    iget-object v0, p0, Lcom/tonyodev/fetch2/provider/DownloadProvider;->fetchDatabaseManagerWrapper:Lcom/tonyodev/fetch2/database/FetchDatabaseManagerWrapper;

    invoke-virtual {v0, p1}, Lcom/tonyodev/fetch2/database/FetchDatabaseManagerWrapper;->getByGroup(I)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public final getByGroupReplace(ILcom/tonyodev/fetch2/Download;)Ljava/util/List;
    .locals 6

    const-string v0, "download"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 28
    invoke-virtual {p0, p1}, Lcom/tonyodev/fetch2/provider/DownloadProvider;->getByGroup(I)Ljava/util/List;

    move-result-object p1

    const-string v0, "null cannot be cast to non-null type java.util.ArrayList<com.tonyodev.fetch2.Download>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Ljava/util/ArrayList;

    .line 46
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    const/4 v3, -0x1

    if-ge v2, v0, :cond_1

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    add-int/lit8 v2, v2, 0x1

    .line 47
    check-cast v4, Lcom/tonyodev/fetch2/Download;

    .line 29
    invoke-interface {v4}, Lcom/tonyodev/fetch2/Download;->getId()I

    move-result v4

    invoke-interface {p2}, Lcom/tonyodev/fetch2/Download;->getId()I

    move-result v5

    if-ne v4, v5, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    move v1, v3

    :goto_1
    if-eq v1, v3, :cond_2

    .line 31
    invoke-virtual {p1, v1, p2}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    :cond_2
    return-object p1
.end method

.method public final getPendingDownloadsSorted(Lcom/tonyodev/fetch2/PrioritySort;)Ljava/util/List;
    .locals 1

    const-string v0, "prioritySort"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 41
    iget-object v0, p0, Lcom/tonyodev/fetch2/provider/DownloadProvider;->fetchDatabaseManagerWrapper:Lcom/tonyodev/fetch2/database/FetchDatabaseManagerWrapper;

    invoke-virtual {v0, p1}, Lcom/tonyodev/fetch2/database/FetchDatabaseManagerWrapper;->getPendingDownloadsSorted(Lcom/tonyodev/fetch2/PrioritySort;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method
