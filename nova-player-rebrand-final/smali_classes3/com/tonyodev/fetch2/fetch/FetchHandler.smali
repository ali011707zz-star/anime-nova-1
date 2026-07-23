.class public interface abstract Lcom/tonyodev/fetch2/fetch/FetchHandler;
.super Ljava/lang/Object;
.source "FetchHandler.kt"

# interfaces
.implements Ljava/io/Closeable;


# virtual methods
.method public abstract addListener(Lcom/tonyodev/fetch2/FetchListener;ZZ)V
.end method

.method public abstract cancel(Ljava/util/List;)Ljava/util/List;
.end method

.method public abstract delete(Ljava/util/List;)Ljava/util/List;
.end method

.method public abstract enqueue(Ljava/util/List;)Ljava/util/List;
.end method

.method public abstract getDownloads()Ljava/util/List;
.end method

.method public abstract getDownloadsWithStatus(Ljava/util/List;)Ljava/util/List;
.end method

.method public abstract hasActiveDownloads(Z)Z
.end method

.method public abstract init()V
.end method

.method public abstract pause(Ljava/util/List;)Ljava/util/List;
.end method

.method public abstract pausedGroup(I)Ljava/util/List;
.end method

.method public abstract remove(Ljava/util/List;)Ljava/util/List;
.end method

.method public abstract removeListener(Lcom/tonyodev/fetch2/FetchListener;)V
.end method

.method public abstract replaceExtras(ILcom/tonyodev/fetch2core/Extras;)Lcom/tonyodev/fetch2/Download;
.end method

.method public abstract resume(Ljava/util/List;)Ljava/util/List;
.end method

.method public abstract resumeAll()Ljava/util/List;
.end method

.method public abstract resumeGroup(I)Ljava/util/List;
.end method

.method public abstract retry(Ljava/util/List;)Ljava/util/List;
.end method
