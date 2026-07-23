.class public final Lcom/tonyodev/fetch2/helper/DownloadInfoUpdater;
.super Ljava/lang/Object;
.source "DownloadInfoUpdater.kt"


# instance fields
.field private final fetchDatabaseManagerWrapper:Lcom/tonyodev/fetch2/database/FetchDatabaseManagerWrapper;


# direct methods
.method public constructor <init>(Lcom/tonyodev/fetch2/database/FetchDatabaseManagerWrapper;)V
    .locals 1

    const-string v0, "fetchDatabaseManagerWrapper"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/tonyodev/fetch2/helper/DownloadInfoUpdater;->fetchDatabaseManagerWrapper:Lcom/tonyodev/fetch2/database/FetchDatabaseManagerWrapper;

    return-void
.end method


# virtual methods
.method public final getNewDownloadInfoInstance()Lcom/tonyodev/fetch2/database/DownloadInfo;
    .locals 1

    .line 18
    iget-object v0, p0, Lcom/tonyodev/fetch2/helper/DownloadInfoUpdater;->fetchDatabaseManagerWrapper:Lcom/tonyodev/fetch2/database/FetchDatabaseManagerWrapper;

    invoke-virtual {v0}, Lcom/tonyodev/fetch2/database/FetchDatabaseManagerWrapper;->getNewDownloadInfoInstance()Lcom/tonyodev/fetch2/database/DownloadInfo;

    move-result-object v0

    return-object v0
.end method

.method public final update(Lcom/tonyodev/fetch2/database/DownloadInfo;)V
    .locals 1

    const-string v0, "downloadInfo"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    iget-object v0, p0, Lcom/tonyodev/fetch2/helper/DownloadInfoUpdater;->fetchDatabaseManagerWrapper:Lcom/tonyodev/fetch2/database/FetchDatabaseManagerWrapper;

    invoke-virtual {v0, p1}, Lcom/tonyodev/fetch2/database/FetchDatabaseManagerWrapper;->update(Lcom/tonyodev/fetch2/database/DownloadInfo;)V

    return-void
.end method

.method public final updateFileBytesInfoAndStatusOnly(Lcom/tonyodev/fetch2/database/DownloadInfo;)V
    .locals 1

    const-string v0, "downloadInfo"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10
    iget-object v0, p0, Lcom/tonyodev/fetch2/helper/DownloadInfoUpdater;->fetchDatabaseManagerWrapper:Lcom/tonyodev/fetch2/database/FetchDatabaseManagerWrapper;

    invoke-virtual {v0, p1}, Lcom/tonyodev/fetch2/database/FetchDatabaseManagerWrapper;->updateFileBytesInfoAndStatusOnly(Lcom/tonyodev/fetch2/database/DownloadInfo;)V

    return-void
.end method
