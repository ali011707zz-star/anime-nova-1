.class public final Lcom/tonyodev/fetch2/helper/FileDownloaderDelegate;
.super Ljava/lang/Object;
.source "FileDownloaderDelegate.kt"

# interfaces
.implements Lcom/tonyodev/fetch2/downloader/FileDownloader$Delegate;


# instance fields
.field private final downloadInfoUpdater:Lcom/tonyodev/fetch2/helper/DownloadInfoUpdater;

.field private final fetchListener:Lcom/tonyodev/fetch2/FetchListener;

.field private final globalAutoRetryMaxAttempts:I

.field private volatile interrupted:Z

.field private final retryOnNetworkGain:Z


# direct methods
.method public constructor <init>(Lcom/tonyodev/fetch2/helper/DownloadInfoUpdater;Lcom/tonyodev/fetch2/FetchListener;ZI)V
    .locals 1

    const-string v0, "downloadInfoUpdater"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "fetchListener"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/tonyodev/fetch2/helper/FileDownloaderDelegate;->downloadInfoUpdater:Lcom/tonyodev/fetch2/helper/DownloadInfoUpdater;

    .line 13
    iput-object p2, p0, Lcom/tonyodev/fetch2/helper/FileDownloaderDelegate;->fetchListener:Lcom/tonyodev/fetch2/FetchListener;

    .line 14
    iput-boolean p3, p0, Lcom/tonyodev/fetch2/helper/FileDownloaderDelegate;->retryOnNetworkGain:Z

    .line 15
    iput p4, p0, Lcom/tonyodev/fetch2/helper/FileDownloaderDelegate;->globalAutoRetryMaxAttempts:I

    return-void
.end method


# virtual methods
.method public getInterrupted()Z
    .locals 1

    .line 17
    iget-boolean v0, p0, Lcom/tonyodev/fetch2/helper/FileDownloaderDelegate;->interrupted:Z

    return v0
.end method

.method public getNewDownloadInfoInstance()Lcom/tonyodev/fetch2/database/DownloadInfo;
    .locals 1

    .line 86
    iget-object v0, p0, Lcom/tonyodev/fetch2/helper/FileDownloaderDelegate;->downloadInfoUpdater:Lcom/tonyodev/fetch2/helper/DownloadInfoUpdater;

    invoke-virtual {v0}, Lcom/tonyodev/fetch2/helper/DownloadInfoUpdater;->getNewDownloadInfoInstance()Lcom/tonyodev/fetch2/database/DownloadInfo;

    move-result-object v0

    return-object v0
.end method

.method public onComplete(Lcom/tonyodev/fetch2/Download;)V
    .locals 2

    const-string v0, "download"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 69
    invoke-virtual {p0}, Lcom/tonyodev/fetch2/helper/FileDownloaderDelegate;->getInterrupted()Z

    move-result v0

    if-nez v0, :cond_0

    .line 70
    move-object v0, p1

    check-cast v0, Lcom/tonyodev/fetch2/database/DownloadInfo;

    .line 71
    sget-object v1, Lcom/tonyodev/fetch2/Status;->COMPLETED:Lcom/tonyodev/fetch2/Status;

    invoke-virtual {v0, v1}, Lcom/tonyodev/fetch2/database/DownloadInfo;->setStatus(Lcom/tonyodev/fetch2/Status;)V

    .line 72
    iget-object v1, p0, Lcom/tonyodev/fetch2/helper/FileDownloaderDelegate;->downloadInfoUpdater:Lcom/tonyodev/fetch2/helper/DownloadInfoUpdater;

    invoke-virtual {v1, v0}, Lcom/tonyodev/fetch2/helper/DownloadInfoUpdater;->update(Lcom/tonyodev/fetch2/database/DownloadInfo;)V

    .line 73
    iget-object v0, p0, Lcom/tonyodev/fetch2/helper/FileDownloaderDelegate;->fetchListener:Lcom/tonyodev/fetch2/FetchListener;

    invoke-interface {v0, p1}, Lcom/tonyodev/fetch2/FetchListener;->onCompleted(Lcom/tonyodev/fetch2/Download;)V

    :cond_0
    return-void
.end method

.method public onDownloadBlockUpdated(Lcom/tonyodev/fetch2/Download;Lcom/tonyodev/fetch2core/DownloadBlock;I)V
    .locals 1

    const-string v0, "download"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "downloadBlock"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 36
    invoke-virtual {p0}, Lcom/tonyodev/fetch2/helper/FileDownloaderDelegate;->getInterrupted()Z

    move-result v0

    if-nez v0, :cond_0

    .line 37
    iget-object v0, p0, Lcom/tonyodev/fetch2/helper/FileDownloaderDelegate;->fetchListener:Lcom/tonyodev/fetch2/FetchListener;

    invoke-interface {v0, p1, p2, p3}, Lcom/tonyodev/fetch2/FetchListener;->onDownloadBlockUpdated(Lcom/tonyodev/fetch2/Download;Lcom/tonyodev/fetch2core/DownloadBlock;I)V

    :cond_0
    return-void
.end method

.method public onError(Lcom/tonyodev/fetch2/Download;Lcom/tonyodev/fetch2/Error;Ljava/lang/Throwable;)V
    .locals 5

    const-string v0, "download"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "error"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 42
    invoke-virtual {p0}, Lcom/tonyodev/fetch2/helper/FileDownloaderDelegate;->getInterrupted()Z

    move-result v0

    if-nez v0, :cond_3

    .line 43
    iget v0, p0, Lcom/tonyodev/fetch2/helper/FileDownloaderDelegate;->globalAutoRetryMaxAttempts:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 46
    :cond_0
    invoke-interface {p1}, Lcom/tonyodev/fetch2/Download;->getAutoRetryMaxAttempts()I

    move-result v0

    .line 48
    :goto_0
    move-object v1, p1

    check-cast v1, Lcom/tonyodev/fetch2/database/DownloadInfo;

    .line 49
    iget-boolean v2, p0, Lcom/tonyodev/fetch2/helper/FileDownloaderDelegate;->retryOnNetworkGain:Z

    const/4 v3, 0x1

    if-eqz v2, :cond_1

    invoke-virtual {v1}, Lcom/tonyodev/fetch2/database/DownloadInfo;->getError()Lcom/tonyodev/fetch2/Error;

    move-result-object v2

    sget-object v4, Lcom/tonyodev/fetch2/Error;->NO_NETWORK_CONNECTION:Lcom/tonyodev/fetch2/Error;

    if-ne v2, v4, :cond_1

    .line 50
    sget-object p2, Lcom/tonyodev/fetch2/Status;->QUEUED:Lcom/tonyodev/fetch2/Status;

    invoke-virtual {v1, p2}, Lcom/tonyodev/fetch2/database/DownloadInfo;->setStatus(Lcom/tonyodev/fetch2/Status;)V

    .line 51
    invoke-static {}, Lcom/tonyodev/fetch2/util/FetchDefaults;->getDefaultNoError()Lcom/tonyodev/fetch2/Error;

    move-result-object p2

    invoke-virtual {v1, p2}, Lcom/tonyodev/fetch2/database/DownloadInfo;->setError(Lcom/tonyodev/fetch2/Error;)V

    .line 52
    iget-object p2, p0, Lcom/tonyodev/fetch2/helper/FileDownloaderDelegate;->downloadInfoUpdater:Lcom/tonyodev/fetch2/helper/DownloadInfoUpdater;

    invoke-virtual {p2, v1}, Lcom/tonyodev/fetch2/helper/DownloadInfoUpdater;->update(Lcom/tonyodev/fetch2/database/DownloadInfo;)V

    .line 53
    iget-object p2, p0, Lcom/tonyodev/fetch2/helper/FileDownloaderDelegate;->fetchListener:Lcom/tonyodev/fetch2/FetchListener;

    invoke-interface {p2, p1, v3}, Lcom/tonyodev/fetch2/FetchListener;->onQueued(Lcom/tonyodev/fetch2/Download;Z)V

    return-void

    .line 54
    :cond_1
    invoke-virtual {v1}, Lcom/tonyodev/fetch2/database/DownloadInfo;->getAutoRetryAttempts()I

    move-result v2

    if-ge v2, v0, :cond_2

    .line 55
    invoke-virtual {v1}, Lcom/tonyodev/fetch2/database/DownloadInfo;->getAutoRetryAttempts()I

    move-result p2

    add-int/2addr p2, v3

    invoke-virtual {v1, p2}, Lcom/tonyodev/fetch2/database/DownloadInfo;->setAutoRetryAttempts(I)V

    .line 56
    sget-object p2, Lcom/tonyodev/fetch2/Status;->QUEUED:Lcom/tonyodev/fetch2/Status;

    invoke-virtual {v1, p2}, Lcom/tonyodev/fetch2/database/DownloadInfo;->setStatus(Lcom/tonyodev/fetch2/Status;)V

    .line 57
    invoke-static {}, Lcom/tonyodev/fetch2/util/FetchDefaults;->getDefaultNoError()Lcom/tonyodev/fetch2/Error;

    move-result-object p2

    invoke-virtual {v1, p2}, Lcom/tonyodev/fetch2/database/DownloadInfo;->setError(Lcom/tonyodev/fetch2/Error;)V

    .line 58
    iget-object p2, p0, Lcom/tonyodev/fetch2/helper/FileDownloaderDelegate;->downloadInfoUpdater:Lcom/tonyodev/fetch2/helper/DownloadInfoUpdater;

    invoke-virtual {p2, v1}, Lcom/tonyodev/fetch2/helper/DownloadInfoUpdater;->update(Lcom/tonyodev/fetch2/database/DownloadInfo;)V

    .line 59
    iget-object p2, p0, Lcom/tonyodev/fetch2/helper/FileDownloaderDelegate;->fetchListener:Lcom/tonyodev/fetch2/FetchListener;

    invoke-interface {p2, p1, v3}, Lcom/tonyodev/fetch2/FetchListener;->onQueued(Lcom/tonyodev/fetch2/Download;Z)V

    return-void

    .line 61
    :cond_2
    sget-object v0, Lcom/tonyodev/fetch2/Status;->FAILED:Lcom/tonyodev/fetch2/Status;

    invoke-virtual {v1, v0}, Lcom/tonyodev/fetch2/database/DownloadInfo;->setStatus(Lcom/tonyodev/fetch2/Status;)V

    .line 62
    iget-object v0, p0, Lcom/tonyodev/fetch2/helper/FileDownloaderDelegate;->downloadInfoUpdater:Lcom/tonyodev/fetch2/helper/DownloadInfoUpdater;

    invoke-virtual {v0, v1}, Lcom/tonyodev/fetch2/helper/DownloadInfoUpdater;->update(Lcom/tonyodev/fetch2/database/DownloadInfo;)V

    .line 63
    iget-object v0, p0, Lcom/tonyodev/fetch2/helper/FileDownloaderDelegate;->fetchListener:Lcom/tonyodev/fetch2/FetchListener;

    invoke-interface {v0, p1, p2, p3}, Lcom/tonyodev/fetch2/FetchListener;->onError(Lcom/tonyodev/fetch2/Download;Lcom/tonyodev/fetch2/Error;Ljava/lang/Throwable;)V

    :cond_3
    return-void
.end method

.method public onProgress(Lcom/tonyodev/fetch2/Download;JJ)V
    .locals 7

    const-string v0, "download"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 30
    invoke-virtual {p0}, Lcom/tonyodev/fetch2/helper/FileDownloaderDelegate;->getInterrupted()Z

    move-result v0

    if-nez v0, :cond_0

    .line 31
    iget-object v1, p0, Lcom/tonyodev/fetch2/helper/FileDownloaderDelegate;->fetchListener:Lcom/tonyodev/fetch2/FetchListener;

    move-object v2, p1

    move-wide v3, p2

    move-wide v5, p4

    invoke-interface/range {v1 .. v6}, Lcom/tonyodev/fetch2/FetchListener;->onProgress(Lcom/tonyodev/fetch2/Download;JJ)V

    :cond_0
    return-void
.end method

.method public onStarted(Lcom/tonyodev/fetch2/Download;Ljava/util/List;I)V
    .locals 2

    const-string v0, "download"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "downloadBlocks"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 21
    invoke-virtual {p0}, Lcom/tonyodev/fetch2/helper/FileDownloaderDelegate;->getInterrupted()Z

    move-result v0

    if-nez v0, :cond_0

    .line 22
    move-object v0, p1

    check-cast v0, Lcom/tonyodev/fetch2/database/DownloadInfo;

    .line 23
    sget-object v1, Lcom/tonyodev/fetch2/Status;->DOWNLOADING:Lcom/tonyodev/fetch2/Status;

    invoke-virtual {v0, v1}, Lcom/tonyodev/fetch2/database/DownloadInfo;->setStatus(Lcom/tonyodev/fetch2/Status;)V

    .line 24
    iget-object v1, p0, Lcom/tonyodev/fetch2/helper/FileDownloaderDelegate;->downloadInfoUpdater:Lcom/tonyodev/fetch2/helper/DownloadInfoUpdater;

    invoke-virtual {v1, v0}, Lcom/tonyodev/fetch2/helper/DownloadInfoUpdater;->update(Lcom/tonyodev/fetch2/database/DownloadInfo;)V

    .line 25
    iget-object v0, p0, Lcom/tonyodev/fetch2/helper/FileDownloaderDelegate;->fetchListener:Lcom/tonyodev/fetch2/FetchListener;

    invoke-interface {v0, p1, p2, p3}, Lcom/tonyodev/fetch2/FetchListener;->onStarted(Lcom/tonyodev/fetch2/Download;Ljava/util/List;I)V

    :cond_0
    return-void
.end method

.method public saveDownloadProgress(Lcom/tonyodev/fetch2/Download;)V
    .locals 1

    const-string v0, "download"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 78
    invoke-virtual {p0}, Lcom/tonyodev/fetch2/helper/FileDownloaderDelegate;->getInterrupted()Z

    move-result v0

    if-nez v0, :cond_0

    .line 79
    check-cast p1, Lcom/tonyodev/fetch2/database/DownloadInfo;

    .line 80
    sget-object v0, Lcom/tonyodev/fetch2/Status;->DOWNLOADING:Lcom/tonyodev/fetch2/Status;

    invoke-virtual {p1, v0}, Lcom/tonyodev/fetch2/database/DownloadInfo;->setStatus(Lcom/tonyodev/fetch2/Status;)V

    .line 81
    iget-object v0, p0, Lcom/tonyodev/fetch2/helper/FileDownloaderDelegate;->downloadInfoUpdater:Lcom/tonyodev/fetch2/helper/DownloadInfoUpdater;

    invoke-virtual {v0, p1}, Lcom/tonyodev/fetch2/helper/DownloadInfoUpdater;->updateFileBytesInfoAndStatusOnly(Lcom/tonyodev/fetch2/database/DownloadInfo;)V

    :cond_0
    return-void
.end method

.method public setInterrupted(Z)V
    .locals 0

    .line 17
    iput-boolean p1, p0, Lcom/tonyodev/fetch2/helper/FileDownloaderDelegate;->interrupted:Z

    return-void
.end method
