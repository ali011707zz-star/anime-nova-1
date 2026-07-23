.class public final Lcom/tonyodev/fetch2/model/FetchGroupInfo;
.super Ljava/lang/Object;
.source "FetchGroupInfo.kt"

# interfaces
.implements Lcom/tonyodev/fetch2/FetchGroup;


# instance fields
.field private addedDownloads:Ljava/util/List;

.field private cancelledDownloads:Ljava/util/List;

.field private completedDownloads:Ljava/util/List;

.field private deletedDownloads:Ljava/util/List;

.field private downloadingDownloads:Ljava/util/List;

.field private volatile downloads:Ljava/util/List;

.field private failedDownloads:Ljava/util/List;

.field private final id:I

.field private final namespace:Ljava/lang/String;

.field private final observerSet:Ljava/util/Set;

.field private pausedDownloads:Ljava/util/List;

.field private queuedDownloads:Ljava/util/List;

.field private removedDownloads:Ljava/util/List;


# direct methods
.method public static synthetic $r8$lambda$oWDTYjKdSmZVK9k5jtL8Gk2faAE(Lcom/tonyodev/fetch2/model/FetchGroupInfo;Ljava/util/List;Lcom/tonyodev/fetch2core/Reason;Lcom/tonyodev/fetch2/Download;)V
    .locals 0

    .line 0
    invoke-static {p0, p1, p2, p3}, Lcom/tonyodev/fetch2/model/FetchGroupInfo;->update$lambda$11(Lcom/tonyodev/fetch2/model/FetchGroupInfo;Ljava/util/List;Lcom/tonyodev/fetch2core/Reason;Lcom/tonyodev/fetch2/Download;)V

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;)V
    .locals 1

    const-string v0, "namespace"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/tonyodev/fetch2/model/FetchGroupInfo;->id:I

    .line 13
    iput-object p2, p0, Lcom/tonyodev/fetch2/model/FetchGroupInfo;->namespace:Ljava/lang/String;

    .line 15
    new-instance p1, Ljava/util/LinkedHashSet;

    invoke-direct {p1}, Ljava/util/LinkedHashSet;-><init>()V

    iput-object p1, p0, Lcom/tonyodev/fetch2/model/FetchGroupInfo;->observerSet:Ljava/util/Set;

    .line 18
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/tonyodev/fetch2/model/FetchGroupInfo;->downloads:Ljava/util/List;

    .line 48
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/tonyodev/fetch2/model/FetchGroupInfo;->queuedDownloads:Ljava/util/List;

    .line 50
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/tonyodev/fetch2/model/FetchGroupInfo;->addedDownloads:Ljava/util/List;

    .line 52
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/tonyodev/fetch2/model/FetchGroupInfo;->pausedDownloads:Ljava/util/List;

    .line 54
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/tonyodev/fetch2/model/FetchGroupInfo;->downloadingDownloads:Ljava/util/List;

    .line 56
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/tonyodev/fetch2/model/FetchGroupInfo;->completedDownloads:Ljava/util/List;

    .line 58
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/tonyodev/fetch2/model/FetchGroupInfo;->cancelledDownloads:Ljava/util/List;

    .line 60
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/tonyodev/fetch2/model/FetchGroupInfo;->failedDownloads:Ljava/util/List;

    .line 62
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/tonyodev/fetch2/model/FetchGroupInfo;->deletedDownloads:Ljava/util/List;

    .line 64
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/tonyodev/fetch2/model/FetchGroupInfo;->removedDownloads:Ljava/util/List;

    return-void
.end method

.method private static final update$lambda$11(Lcom/tonyodev/fetch2/model/FetchGroupInfo;Ljava/util/List;Lcom/tonyodev/fetch2core/Reason;Lcom/tonyodev/fetch2/Download;)V
    .locals 0

    .line 36
    iget-object p1, p0, Lcom/tonyodev/fetch2/model/FetchGroupInfo;->observerSet:Ljava/util/Set;

    monitor-enter p1

    .line 37
    :try_start_0
    iget-object p0, p0, Lcom/tonyodev/fetch2/model/FetchGroupInfo;->observerSet:Ljava/util/Set;

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    .line 32
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-nez p2, :cond_0

    .line 43
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 36
    monitor-exit p1

    return-void

    :catchall_0
    move-exception p0

    goto :goto_0

    .line 32
    :cond_0
    :try_start_1
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Landroid/support/v4/media/session/MediaControllerCompat$MediaControllerImplApi21$ExtraBinderRequestResultReceiver$$ExternalSyntheticThrowCCEIfNotNull0;->m(Ljava/lang/Object;)V

    const/4 p0, 0x0

    .line 38
    throw p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 36
    :goto_0
    monitor-exit p1

    throw p0
.end method


# virtual methods
.method public setAddedDownloads(Ljava/util/List;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 50
    iput-object p1, p0, Lcom/tonyodev/fetch2/model/FetchGroupInfo;->addedDownloads:Ljava/util/List;

    return-void
.end method

.method public setCancelledDownloads(Ljava/util/List;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 58
    iput-object p1, p0, Lcom/tonyodev/fetch2/model/FetchGroupInfo;->cancelledDownloads:Ljava/util/List;

    return-void
.end method

.method public setCompletedDownloads(Ljava/util/List;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 56
    iput-object p1, p0, Lcom/tonyodev/fetch2/model/FetchGroupInfo;->completedDownloads:Ljava/util/List;

    return-void
.end method

.method public setDeletedDownloads(Ljava/util/List;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 62
    iput-object p1, p0, Lcom/tonyodev/fetch2/model/FetchGroupInfo;->deletedDownloads:Ljava/util/List;

    return-void
.end method

.method public setDownloadingDownloads(Ljava/util/List;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 54
    iput-object p1, p0, Lcom/tonyodev/fetch2/model/FetchGroupInfo;->downloadingDownloads:Ljava/util/List;

    return-void
.end method

.method public setDownloads(Ljava/util/List;)V
    .locals 5

    const-string v0, "value"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 20
    iput-object p1, p0, Lcom/tonyodev/fetch2/model/FetchGroupInfo;->downloads:Ljava/util/List;

    .line 115
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 116
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    move-object v3, v2

    check-cast v3, Lcom/tonyodev/fetch2/Download;

    .line 21
    invoke-interface {v3}, Lcom/tonyodev/fetch2/Download;->getStatus()Lcom/tonyodev/fetch2/Status;

    move-result-object v3

    sget-object v4, Lcom/tonyodev/fetch2/Status;->QUEUED:Lcom/tonyodev/fetch2/Status;

    if-ne v3, v4, :cond_0

    .line 116
    invoke-interface {v0, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 21
    :cond_1
    invoke-virtual {p0, v0}, Lcom/tonyodev/fetch2/model/FetchGroupInfo;->setQueuedDownloads(Ljava/util/List;)V

    .line 118
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 119
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    move-object v3, v2

    check-cast v3, Lcom/tonyodev/fetch2/Download;

    .line 22
    invoke-interface {v3}, Lcom/tonyodev/fetch2/Download;->getStatus()Lcom/tonyodev/fetch2/Status;

    move-result-object v3

    sget-object v4, Lcom/tonyodev/fetch2/Status;->ADDED:Lcom/tonyodev/fetch2/Status;

    if-ne v3, v4, :cond_2

    .line 119
    invoke-interface {v0, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 22
    :cond_3
    invoke-virtual {p0, v0}, Lcom/tonyodev/fetch2/model/FetchGroupInfo;->setAddedDownloads(Ljava/util/List;)V

    .line 121
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 122
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_4
    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    move-object v3, v2

    check-cast v3, Lcom/tonyodev/fetch2/Download;

    .line 23
    invoke-interface {v3}, Lcom/tonyodev/fetch2/Download;->getStatus()Lcom/tonyodev/fetch2/Status;

    move-result-object v3

    sget-object v4, Lcom/tonyodev/fetch2/Status;->PAUSED:Lcom/tonyodev/fetch2/Status;

    if-ne v3, v4, :cond_4

    .line 122
    invoke-interface {v0, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 23
    :cond_5
    invoke-virtual {p0, v0}, Lcom/tonyodev/fetch2/model/FetchGroupInfo;->setPausedDownloads(Ljava/util/List;)V

    .line 124
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 125
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_6
    :goto_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_7

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    move-object v3, v2

    check-cast v3, Lcom/tonyodev/fetch2/Download;

    .line 24
    invoke-interface {v3}, Lcom/tonyodev/fetch2/Download;->getStatus()Lcom/tonyodev/fetch2/Status;

    move-result-object v3

    sget-object v4, Lcom/tonyodev/fetch2/Status;->DOWNLOADING:Lcom/tonyodev/fetch2/Status;

    if-ne v3, v4, :cond_6

    .line 125
    invoke-interface {v0, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 24
    :cond_7
    invoke-virtual {p0, v0}, Lcom/tonyodev/fetch2/model/FetchGroupInfo;->setDownloadingDownloads(Ljava/util/List;)V

    .line 127
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 128
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_8
    :goto_4
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_9

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    move-object v3, v2

    check-cast v3, Lcom/tonyodev/fetch2/Download;

    .line 25
    invoke-interface {v3}, Lcom/tonyodev/fetch2/Download;->getStatus()Lcom/tonyodev/fetch2/Status;

    move-result-object v3

    sget-object v4, Lcom/tonyodev/fetch2/Status;->COMPLETED:Lcom/tonyodev/fetch2/Status;

    if-ne v3, v4, :cond_8

    .line 128
    invoke-interface {v0, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_4

    .line 25
    :cond_9
    invoke-virtual {p0, v0}, Lcom/tonyodev/fetch2/model/FetchGroupInfo;->setCompletedDownloads(Ljava/util/List;)V

    .line 130
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 131
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_a
    :goto_5
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_b

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    move-object v3, v2

    check-cast v3, Lcom/tonyodev/fetch2/Download;

    .line 26
    invoke-interface {v3}, Lcom/tonyodev/fetch2/Download;->getStatus()Lcom/tonyodev/fetch2/Status;

    move-result-object v3

    sget-object v4, Lcom/tonyodev/fetch2/Status;->CANCELLED:Lcom/tonyodev/fetch2/Status;

    if-ne v3, v4, :cond_a

    .line 131
    invoke-interface {v0, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_5

    .line 26
    :cond_b
    invoke-virtual {p0, v0}, Lcom/tonyodev/fetch2/model/FetchGroupInfo;->setCancelledDownloads(Ljava/util/List;)V

    .line 133
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 134
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_c
    :goto_6
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_d

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    move-object v3, v2

    check-cast v3, Lcom/tonyodev/fetch2/Download;

    .line 27
    invoke-interface {v3}, Lcom/tonyodev/fetch2/Download;->getStatus()Lcom/tonyodev/fetch2/Status;

    move-result-object v3

    sget-object v4, Lcom/tonyodev/fetch2/Status;->FAILED:Lcom/tonyodev/fetch2/Status;

    if-ne v3, v4, :cond_c

    .line 134
    invoke-interface {v0, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_6

    .line 27
    :cond_d
    invoke-virtual {p0, v0}, Lcom/tonyodev/fetch2/model/FetchGroupInfo;->setFailedDownloads(Ljava/util/List;)V

    .line 136
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 137
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_e
    :goto_7
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_f

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    move-object v3, v2

    check-cast v3, Lcom/tonyodev/fetch2/Download;

    .line 28
    invoke-interface {v3}, Lcom/tonyodev/fetch2/Download;->getStatus()Lcom/tonyodev/fetch2/Status;

    move-result-object v3

    sget-object v4, Lcom/tonyodev/fetch2/Status;->DELETED:Lcom/tonyodev/fetch2/Status;

    if-ne v3, v4, :cond_e

    .line 137
    invoke-interface {v0, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_7

    .line 28
    :cond_f
    invoke-virtual {p0, v0}, Lcom/tonyodev/fetch2/model/FetchGroupInfo;->setDeletedDownloads(Ljava/util/List;)V

    .line 139
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 140
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_10
    :goto_8
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_11

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Lcom/tonyodev/fetch2/Download;

    .line 29
    invoke-interface {v2}, Lcom/tonyodev/fetch2/Download;->getStatus()Lcom/tonyodev/fetch2/Status;

    move-result-object v2

    sget-object v3, Lcom/tonyodev/fetch2/Status;->REMOVED:Lcom/tonyodev/fetch2/Status;

    if-ne v2, v3, :cond_10

    .line 140
    invoke-interface {v0, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_8

    .line 29
    :cond_11
    invoke-virtual {p0, v0}, Lcom/tonyodev/fetch2/model/FetchGroupInfo;->setRemovedDownloads(Ljava/util/List;)V

    return-void
.end method

.method public setFailedDownloads(Ljava/util/List;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 60
    iput-object p1, p0, Lcom/tonyodev/fetch2/model/FetchGroupInfo;->failedDownloads:Ljava/util/List;

    return-void
.end method

.method public setPausedDownloads(Ljava/util/List;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 52
    iput-object p1, p0, Lcom/tonyodev/fetch2/model/FetchGroupInfo;->pausedDownloads:Ljava/util/List;

    return-void
.end method

.method public setQueuedDownloads(Ljava/util/List;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 48
    iput-object p1, p0, Lcom/tonyodev/fetch2/model/FetchGroupInfo;->queuedDownloads:Ljava/util/List;

    return-void
.end method

.method public setRemovedDownloads(Ljava/util/List;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 64
    iput-object p1, p0, Lcom/tonyodev/fetch2/model/FetchGroupInfo;->removedDownloads:Ljava/util/List;

    return-void
.end method

.method public final update(Ljava/util/List;Lcom/tonyodev/fetch2/Download;Lcom/tonyodev/fetch2core/Reason;)V
    .locals 2

    const-string v0, "downloads"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "reason"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 33
    invoke-virtual {p0, p1}, Lcom/tonyodev/fetch2/model/FetchGroupInfo;->setDownloads(Ljava/util/List;)V

    .line 34
    sget-object v0, Lcom/tonyodev/fetch2core/Reason;->DOWNLOAD_BLOCK_UPDATED:Lcom/tonyodev/fetch2core/Reason;

    if-eq p3, v0, :cond_0

    .line 35
    sget-object v0, Lcom/tonyodev/fetch2/fetch/FetchModulesBuilder;->INSTANCE:Lcom/tonyodev/fetch2/fetch/FetchModulesBuilder;

    invoke-virtual {v0}, Lcom/tonyodev/fetch2/fetch/FetchModulesBuilder;->getMainUIHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/tonyodev/fetch2/model/FetchGroupInfo$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p1, p3, p2}, Lcom/tonyodev/fetch2/model/FetchGroupInfo$$ExternalSyntheticLambda0;-><init>(Lcom/tonyodev/fetch2/model/FetchGroupInfo;Ljava/util/List;Lcom/tonyodev/fetch2core/Reason;Lcom/tonyodev/fetch2/Download;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method
