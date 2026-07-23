.class public interface abstract Lcom/tonyodev/fetch2/downloader/FileDownloader$Delegate;
.super Ljava/lang/Object;
.source "FileDownloader.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tonyodev/fetch2/downloader/FileDownloader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Delegate"
.end annotation


# virtual methods
.method public abstract getNewDownloadInfoInstance()Lcom/tonyodev/fetch2/database/DownloadInfo;
.end method

.method public abstract onComplete(Lcom/tonyodev/fetch2/Download;)V
.end method

.method public abstract onDownloadBlockUpdated(Lcom/tonyodev/fetch2/Download;Lcom/tonyodev/fetch2core/DownloadBlock;I)V
.end method

.method public abstract onError(Lcom/tonyodev/fetch2/Download;Lcom/tonyodev/fetch2/Error;Ljava/lang/Throwable;)V
.end method

.method public abstract onProgress(Lcom/tonyodev/fetch2/Download;JJ)V
.end method

.method public abstract onStarted(Lcom/tonyodev/fetch2/Download;Ljava/util/List;I)V
.end method

.method public abstract saveDownloadProgress(Lcom/tonyodev/fetch2/Download;)V
.end method
