.class public interface abstract Lcom/tonyodev/fetch2/database/DownloadDao;
.super Ljava/lang/Object;
.source "DownloadDao.kt"


# virtual methods
.method public abstract delete(Lcom/tonyodev/fetch2/database/DownloadInfo;)V
.end method

.method public abstract delete(Ljava/util/List;)V
.end method

.method public abstract get(I)Lcom/tonyodev/fetch2/database/DownloadInfo;
.end method

.method public abstract get()Ljava/util/List;
.end method

.method public abstract get(Ljava/util/List;)Ljava/util/List;
.end method

.method public abstract getByFile(Ljava/lang/String;)Lcom/tonyodev/fetch2/database/DownloadInfo;
.end method

.method public abstract getByGroup(I)Ljava/util/List;
.end method

.method public abstract getByStatus(Ljava/util/List;)Ljava/util/List;
.end method

.method public abstract getPendingDownloadsSorted(Lcom/tonyodev/fetch2/Status;)Ljava/util/List;
.end method

.method public abstract getPendingDownloadsSortedDesc(Lcom/tonyodev/fetch2/Status;)Ljava/util/List;
.end method

.method public abstract insert(Lcom/tonyodev/fetch2/database/DownloadInfo;)J
.end method

.method public abstract update(Lcom/tonyodev/fetch2/database/DownloadInfo;)V
.end method

.method public abstract update(Ljava/util/List;)V
.end method
