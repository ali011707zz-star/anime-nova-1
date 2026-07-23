.class public interface abstract Lcom/tonyodev/fetch2/FetchListener;
.super Ljava/lang/Object;
.source "FetchListener.kt"


# virtual methods
.method public abstract onAdded(Lcom/tonyodev/fetch2/Download;)V
.end method

.method public abstract onCancelled(Lcom/tonyodev/fetch2/Download;)V
.end method

.method public abstract onCompleted(Lcom/tonyodev/fetch2/Download;)V
.end method

.method public abstract onDeleted(Lcom/tonyodev/fetch2/Download;)V
.end method

.method public abstract onDownloadBlockUpdated(Lcom/tonyodev/fetch2/Download;Lcom/tonyodev/fetch2core/DownloadBlock;I)V
.end method

.method public abstract onError(Lcom/tonyodev/fetch2/Download;Lcom/tonyodev/fetch2/Error;Ljava/lang/Throwable;)V
.end method

.method public abstract onPaused(Lcom/tonyodev/fetch2/Download;)V
.end method

.method public abstract onProgress(Lcom/tonyodev/fetch2/Download;JJ)V
.end method

.method public abstract onQueued(Lcom/tonyodev/fetch2/Download;Z)V
.end method

.method public abstract onRemoved(Lcom/tonyodev/fetch2/Download;)V
.end method

.method public abstract onResumed(Lcom/tonyodev/fetch2/Download;)V
.end method

.method public abstract onStarted(Lcom/tonyodev/fetch2/Download;Ljava/util/List;I)V
.end method

.method public abstract onWaitingNetwork(Lcom/tonyodev/fetch2/Download;)V
.end method
