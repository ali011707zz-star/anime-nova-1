.class public final Lcom/tonyodev/fetch2/downloader/ParallelFileDownloaderImpl$interruptMonitor$1;
.super Ljava/lang/Object;
.source "ParallelFileDownloaderImpl.kt"

# interfaces
.implements Lcom/tonyodev/fetch2core/InterruptMonitor;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tonyodev/fetch2/downloader/ParallelFileDownloaderImpl;-><init>(Lcom/tonyodev/fetch2/Download;Lcom/tonyodev/fetch2core/Downloader;JLcom/tonyodev/fetch2core/Logger;Lcom/tonyodev/fetch2/provider/NetworkInfoProvider;ZLjava/lang/String;ZLcom/tonyodev/fetch2core/StorageResolver;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tonyodev/fetch2/downloader/ParallelFileDownloaderImpl;


# direct methods
.method constructor <init>(Lcom/tonyodev/fetch2/downloader/ParallelFileDownloaderImpl;)V
    .locals 0

    iput-object p1, p0, Lcom/tonyodev/fetch2/downloader/ParallelFileDownloaderImpl$interruptMonitor$1;->this$0:Lcom/tonyodev/fetch2/downloader/ParallelFileDownloaderImpl;

    .line 535
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public isInterrupted()Z
    .locals 1

    .line 538
    iget-object v0, p0, Lcom/tonyodev/fetch2/downloader/ParallelFileDownloaderImpl$interruptMonitor$1;->this$0:Lcom/tonyodev/fetch2/downloader/ParallelFileDownloaderImpl;

    invoke-virtual {v0}, Lcom/tonyodev/fetch2/downloader/ParallelFileDownloaderImpl;->getInterrupted()Z

    move-result v0

    return v0
.end method
