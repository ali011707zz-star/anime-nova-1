.class public interface abstract Lcom/tonyodev/fetch2core/Downloader;
.super Ljava/lang/Object;
.source "Downloader.kt"

# interfaces
.implements Ljava/io/Closeable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tonyodev/fetch2core/Downloader$FileDownloaderType;,
        Lcom/tonyodev/fetch2core/Downloader$Response;,
        Lcom/tonyodev/fetch2core/Downloader$ServerRequest;
    }
.end annotation


# virtual methods
.method public abstract disconnect(Lcom/tonyodev/fetch2core/Downloader$Response;)V
.end method

.method public abstract execute(Lcom/tonyodev/fetch2core/Downloader$ServerRequest;Lcom/tonyodev/fetch2core/InterruptMonitor;)Lcom/tonyodev/fetch2core/Downloader$Response;
.end method

.method public abstract getFileSlicingCount(Lcom/tonyodev/fetch2core/Downloader$ServerRequest;J)Ljava/lang/Integer;
.end method

.method public abstract getHeadRequestMethodSupported(Lcom/tonyodev/fetch2core/Downloader$ServerRequest;)Z
.end method

.method public abstract getRequestBufferSize(Lcom/tonyodev/fetch2core/Downloader$ServerRequest;)I
.end method

.method public abstract getRequestFileDownloaderType(Lcom/tonyodev/fetch2core/Downloader$ServerRequest;Ljava/util/Set;)Lcom/tonyodev/fetch2core/Downloader$FileDownloaderType;
.end method

.method public abstract getRequestSupportedFileDownloaderTypes(Lcom/tonyodev/fetch2core/Downloader$ServerRequest;)Ljava/util/Set;
.end method

.method public abstract verifyContentHash(Lcom/tonyodev/fetch2core/Downloader$ServerRequest;Ljava/lang/String;)Z
.end method
