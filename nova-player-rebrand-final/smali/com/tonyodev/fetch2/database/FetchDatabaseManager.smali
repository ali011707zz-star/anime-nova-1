.class public interface abstract Lcom/tonyodev/fetch2/database/FetchDatabaseManager;
.super Ljava/lang/Object;
.source "FetchDatabaseManager.kt"

# interfaces
.implements Ljava/io/Closeable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tonyodev/fetch2/database/FetchDatabaseManager$Delegate;
    }
.end annotation


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

.method public abstract getDelegate()Lcom/tonyodev/fetch2/database/FetchDatabaseManager$Delegate;
.end method

.method public abstract getLogger()Lcom/tonyodev/fetch2core/Logger;
.end method

.method public abstract getNewDownloadInfoInstance()Lcom/tonyodev/fetch2/database/DownloadInfo;
.end method

.method public abstract getPendingCount(Z)J
.end method

.method public abstract getPendingDownloadsSorted(Lcom/tonyodev/fetch2/PrioritySort;)Ljava/util/List;
.end method

.method public abstract insert(Lcom/tonyodev/fetch2/database/DownloadInfo;)Lkotlin/Pair;
.end method

.method public abstract sanitizeOnFirstEntry()V
.end method

.method public abstract setDelegate(Lcom/tonyodev/fetch2/database/FetchDatabaseManager$Delegate;)V
.end method

.method public abstract update(Lcom/tonyodev/fetch2/database/DownloadInfo;)V
.end method

.method public abstract update(Ljava/util/List;)V
.end method

.method public abstract updateExtras(ILcom/tonyodev/fetch2core/Extras;)Lcom/tonyodev/fetch2/database/DownloadInfo;
.end method

.method public abstract updateFileBytesInfoAndStatusOnly(Lcom/tonyodev/fetch2/database/DownloadInfo;)V
.end method
