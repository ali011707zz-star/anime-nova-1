.class public final Lcom/tonyodev/fetch2/fetch/FetchModulesBuilder$Holder;
.super Ljava/lang/Object;
.source "FetchModulesBuilder.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tonyodev/fetch2/fetch/FetchModulesBuilder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Holder"
.end annotation


# instance fields
.field private final downloadManagerCoordinator:Lcom/tonyodev/fetch2/downloader/DownloadManagerCoordinator;

.field private final downloadProvider:Lcom/tonyodev/fetch2/provider/DownloadProvider;

.field private final fetchDatabaseManagerWrapper:Lcom/tonyodev/fetch2/database/FetchDatabaseManagerWrapper;

.field private final groupInfoProvider:Lcom/tonyodev/fetch2/provider/GroupInfoProvider;

.field private final handlerWrapper:Lcom/tonyodev/fetch2core/HandlerWrapper;

.field private final listenerCoordinator:Lcom/tonyodev/fetch2/fetch/ListenerCoordinator;

.field private final networkInfoProvider:Lcom/tonyodev/fetch2/provider/NetworkInfoProvider;

.field private final uiHandler:Landroid/os/Handler;


# direct methods
.method public constructor <init>(Lcom/tonyodev/fetch2core/HandlerWrapper;Lcom/tonyodev/fetch2/database/FetchDatabaseManagerWrapper;Lcom/tonyodev/fetch2/provider/DownloadProvider;Lcom/tonyodev/fetch2/provider/GroupInfoProvider;Landroid/os/Handler;Lcom/tonyodev/fetch2/downloader/DownloadManagerCoordinator;Lcom/tonyodev/fetch2/fetch/ListenerCoordinator;Lcom/tonyodev/fetch2/provider/NetworkInfoProvider;)V
    .locals 1

    const-string v0, "handlerWrapper"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "fetchDatabaseManagerWrapper"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "downloadProvider"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "groupInfoProvider"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "uiHandler"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "downloadManagerCoordinator"

    invoke-static {p6, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "listenerCoordinator"

    invoke-static {p7, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "networkInfoProvider"

    invoke-static {p8, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 82
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/tonyodev/fetch2/fetch/FetchModulesBuilder$Holder;->handlerWrapper:Lcom/tonyodev/fetch2core/HandlerWrapper;

    .line 83
    iput-object p2, p0, Lcom/tonyodev/fetch2/fetch/FetchModulesBuilder$Holder;->fetchDatabaseManagerWrapper:Lcom/tonyodev/fetch2/database/FetchDatabaseManagerWrapper;

    .line 84
    iput-object p3, p0, Lcom/tonyodev/fetch2/fetch/FetchModulesBuilder$Holder;->downloadProvider:Lcom/tonyodev/fetch2/provider/DownloadProvider;

    .line 85
    iput-object p4, p0, Lcom/tonyodev/fetch2/fetch/FetchModulesBuilder$Holder;->groupInfoProvider:Lcom/tonyodev/fetch2/provider/GroupInfoProvider;

    .line 86
    iput-object p5, p0, Lcom/tonyodev/fetch2/fetch/FetchModulesBuilder$Holder;->uiHandler:Landroid/os/Handler;

    .line 87
    iput-object p6, p0, Lcom/tonyodev/fetch2/fetch/FetchModulesBuilder$Holder;->downloadManagerCoordinator:Lcom/tonyodev/fetch2/downloader/DownloadManagerCoordinator;

    .line 88
    iput-object p7, p0, Lcom/tonyodev/fetch2/fetch/FetchModulesBuilder$Holder;->listenerCoordinator:Lcom/tonyodev/fetch2/fetch/ListenerCoordinator;

    .line 89
    iput-object p8, p0, Lcom/tonyodev/fetch2/fetch/FetchModulesBuilder$Holder;->networkInfoProvider:Lcom/tonyodev/fetch2/provider/NetworkInfoProvider;

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    .line 0
    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/tonyodev/fetch2/fetch/FetchModulesBuilder$Holder;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/tonyodev/fetch2/fetch/FetchModulesBuilder$Holder;

    iget-object v1, p0, Lcom/tonyodev/fetch2/fetch/FetchModulesBuilder$Holder;->handlerWrapper:Lcom/tonyodev/fetch2core/HandlerWrapper;

    iget-object v3, p1, Lcom/tonyodev/fetch2/fetch/FetchModulesBuilder$Holder;->handlerWrapper:Lcom/tonyodev/fetch2core/HandlerWrapper;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Lcom/tonyodev/fetch2/fetch/FetchModulesBuilder$Holder;->fetchDatabaseManagerWrapper:Lcom/tonyodev/fetch2/database/FetchDatabaseManagerWrapper;

    iget-object v3, p1, Lcom/tonyodev/fetch2/fetch/FetchModulesBuilder$Holder;->fetchDatabaseManagerWrapper:Lcom/tonyodev/fetch2/database/FetchDatabaseManagerWrapper;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    :cond_3
    iget-object v1, p0, Lcom/tonyodev/fetch2/fetch/FetchModulesBuilder$Holder;->downloadProvider:Lcom/tonyodev/fetch2/provider/DownloadProvider;

    iget-object v3, p1, Lcom/tonyodev/fetch2/fetch/FetchModulesBuilder$Holder;->downloadProvider:Lcom/tonyodev/fetch2/provider/DownloadProvider;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    return v2

    :cond_4
    iget-object v1, p0, Lcom/tonyodev/fetch2/fetch/FetchModulesBuilder$Holder;->groupInfoProvider:Lcom/tonyodev/fetch2/provider/GroupInfoProvider;

    iget-object v3, p1, Lcom/tonyodev/fetch2/fetch/FetchModulesBuilder$Holder;->groupInfoProvider:Lcom/tonyodev/fetch2/provider/GroupInfoProvider;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    return v2

    :cond_5
    iget-object v1, p0, Lcom/tonyodev/fetch2/fetch/FetchModulesBuilder$Holder;->uiHandler:Landroid/os/Handler;

    iget-object v3, p1, Lcom/tonyodev/fetch2/fetch/FetchModulesBuilder$Holder;->uiHandler:Landroid/os/Handler;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    return v2

    :cond_6
    iget-object v1, p0, Lcom/tonyodev/fetch2/fetch/FetchModulesBuilder$Holder;->downloadManagerCoordinator:Lcom/tonyodev/fetch2/downloader/DownloadManagerCoordinator;

    iget-object v3, p1, Lcom/tonyodev/fetch2/fetch/FetchModulesBuilder$Holder;->downloadManagerCoordinator:Lcom/tonyodev/fetch2/downloader/DownloadManagerCoordinator;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7

    return v2

    :cond_7
    iget-object v1, p0, Lcom/tonyodev/fetch2/fetch/FetchModulesBuilder$Holder;->listenerCoordinator:Lcom/tonyodev/fetch2/fetch/ListenerCoordinator;

    iget-object v3, p1, Lcom/tonyodev/fetch2/fetch/FetchModulesBuilder$Holder;->listenerCoordinator:Lcom/tonyodev/fetch2/fetch/ListenerCoordinator;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_8

    return v2

    :cond_8
    iget-object v1, p0, Lcom/tonyodev/fetch2/fetch/FetchModulesBuilder$Holder;->networkInfoProvider:Lcom/tonyodev/fetch2/provider/NetworkInfoProvider;

    iget-object p1, p1, Lcom/tonyodev/fetch2/fetch/FetchModulesBuilder$Holder;->networkInfoProvider:Lcom/tonyodev/fetch2/provider/NetworkInfoProvider;

    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_9

    return v2

    :cond_9
    return v0
.end method

.method public final getDownloadManagerCoordinator()Lcom/tonyodev/fetch2/downloader/DownloadManagerCoordinator;
    .locals 1

    .line 87
    iget-object v0, p0, Lcom/tonyodev/fetch2/fetch/FetchModulesBuilder$Holder;->downloadManagerCoordinator:Lcom/tonyodev/fetch2/downloader/DownloadManagerCoordinator;

    return-object v0
.end method

.method public final getDownloadProvider()Lcom/tonyodev/fetch2/provider/DownloadProvider;
    .locals 1

    .line 84
    iget-object v0, p0, Lcom/tonyodev/fetch2/fetch/FetchModulesBuilder$Holder;->downloadProvider:Lcom/tonyodev/fetch2/provider/DownloadProvider;

    return-object v0
.end method

.method public final getFetchDatabaseManagerWrapper()Lcom/tonyodev/fetch2/database/FetchDatabaseManagerWrapper;
    .locals 1

    .line 83
    iget-object v0, p0, Lcom/tonyodev/fetch2/fetch/FetchModulesBuilder$Holder;->fetchDatabaseManagerWrapper:Lcom/tonyodev/fetch2/database/FetchDatabaseManagerWrapper;

    return-object v0
.end method

.method public final getGroupInfoProvider()Lcom/tonyodev/fetch2/provider/GroupInfoProvider;
    .locals 1

    .line 85
    iget-object v0, p0, Lcom/tonyodev/fetch2/fetch/FetchModulesBuilder$Holder;->groupInfoProvider:Lcom/tonyodev/fetch2/provider/GroupInfoProvider;

    return-object v0
.end method

.method public final getHandlerWrapper()Lcom/tonyodev/fetch2core/HandlerWrapper;
    .locals 1

    .line 82
    iget-object v0, p0, Lcom/tonyodev/fetch2/fetch/FetchModulesBuilder$Holder;->handlerWrapper:Lcom/tonyodev/fetch2core/HandlerWrapper;

    return-object v0
.end method

.method public final getListenerCoordinator()Lcom/tonyodev/fetch2/fetch/ListenerCoordinator;
    .locals 1

    .line 88
    iget-object v0, p0, Lcom/tonyodev/fetch2/fetch/FetchModulesBuilder$Holder;->listenerCoordinator:Lcom/tonyodev/fetch2/fetch/ListenerCoordinator;

    return-object v0
.end method

.method public final getNetworkInfoProvider()Lcom/tonyodev/fetch2/provider/NetworkInfoProvider;
    .locals 1

    .line 89
    iget-object v0, p0, Lcom/tonyodev/fetch2/fetch/FetchModulesBuilder$Holder;->networkInfoProvider:Lcom/tonyodev/fetch2/provider/NetworkInfoProvider;

    return-object v0
.end method

.method public final getUiHandler()Landroid/os/Handler;
    .locals 1

    .line 86
    iget-object v0, p0, Lcom/tonyodev/fetch2/fetch/FetchModulesBuilder$Holder;->uiHandler:Landroid/os/Handler;

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    .line 0
    iget-object v0, p0, Lcom/tonyodev/fetch2/fetch/FetchModulesBuilder$Holder;->handlerWrapper:Lcom/tonyodev/fetch2core/HandlerWrapper;

    invoke-virtual {v0}, Lcom/tonyodev/fetch2core/HandlerWrapper;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/tonyodev/fetch2/fetch/FetchModulesBuilder$Holder;->fetchDatabaseManagerWrapper:Lcom/tonyodev/fetch2/database/FetchDatabaseManagerWrapper;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/tonyodev/fetch2/fetch/FetchModulesBuilder$Holder;->downloadProvider:Lcom/tonyodev/fetch2/provider/DownloadProvider;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/tonyodev/fetch2/fetch/FetchModulesBuilder$Holder;->groupInfoProvider:Lcom/tonyodev/fetch2/provider/GroupInfoProvider;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/tonyodev/fetch2/fetch/FetchModulesBuilder$Holder;->uiHandler:Landroid/os/Handler;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/tonyodev/fetch2/fetch/FetchModulesBuilder$Holder;->downloadManagerCoordinator:Lcom/tonyodev/fetch2/downloader/DownloadManagerCoordinator;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/tonyodev/fetch2/fetch/FetchModulesBuilder$Holder;->listenerCoordinator:Lcom/tonyodev/fetch2/fetch/ListenerCoordinator;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/tonyodev/fetch2/fetch/FetchModulesBuilder$Holder;->networkInfoProvider:Lcom/tonyodev/fetch2/provider/NetworkInfoProvider;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 10

    .line 0
    iget-object v0, p0, Lcom/tonyodev/fetch2/fetch/FetchModulesBuilder$Holder;->handlerWrapper:Lcom/tonyodev/fetch2core/HandlerWrapper;

    iget-object v1, p0, Lcom/tonyodev/fetch2/fetch/FetchModulesBuilder$Holder;->fetchDatabaseManagerWrapper:Lcom/tonyodev/fetch2/database/FetchDatabaseManagerWrapper;

    iget-object v2, p0, Lcom/tonyodev/fetch2/fetch/FetchModulesBuilder$Holder;->downloadProvider:Lcom/tonyodev/fetch2/provider/DownloadProvider;

    iget-object v3, p0, Lcom/tonyodev/fetch2/fetch/FetchModulesBuilder$Holder;->groupInfoProvider:Lcom/tonyodev/fetch2/provider/GroupInfoProvider;

    iget-object v4, p0, Lcom/tonyodev/fetch2/fetch/FetchModulesBuilder$Holder;->uiHandler:Landroid/os/Handler;

    iget-object v5, p0, Lcom/tonyodev/fetch2/fetch/FetchModulesBuilder$Holder;->downloadManagerCoordinator:Lcom/tonyodev/fetch2/downloader/DownloadManagerCoordinator;

    iget-object v6, p0, Lcom/tonyodev/fetch2/fetch/FetchModulesBuilder$Holder;->listenerCoordinator:Lcom/tonyodev/fetch2/fetch/ListenerCoordinator;

    iget-object v7, p0, Lcom/tonyodev/fetch2/fetch/FetchModulesBuilder$Holder;->networkInfoProvider:Lcom/tonyodev/fetch2/provider/NetworkInfoProvider;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Holder(handlerWrapper="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", fetchDatabaseManagerWrapper="

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", downloadProvider="

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", groupInfoProvider="

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", uiHandler="

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", downloadManagerCoordinator="

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", listenerCoordinator="

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", networkInfoProvider="

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ")"

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
