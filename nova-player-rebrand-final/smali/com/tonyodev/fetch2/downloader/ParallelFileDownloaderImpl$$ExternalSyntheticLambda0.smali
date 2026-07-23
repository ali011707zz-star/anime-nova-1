.class public final synthetic Lcom/tonyodev/fetch2/downloader/ParallelFileDownloaderImpl$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# instance fields
.field public final synthetic f$0:Lcom/tonyodev/fetch2/downloader/ParallelFileDownloaderImpl;


# direct methods
.method public synthetic constructor <init>(Lcom/tonyodev/fetch2/downloader/ParallelFileDownloaderImpl;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/tonyodev/fetch2/downloader/ParallelFileDownloaderImpl$$ExternalSyntheticLambda0;->f$0:Lcom/tonyodev/fetch2/downloader/ParallelFileDownloaderImpl;

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 1

    .line 0
    iget-object v0, p0, Lcom/tonyodev/fetch2/downloader/ParallelFileDownloaderImpl$$ExternalSyntheticLambda0;->f$0:Lcom/tonyodev/fetch2/downloader/ParallelFileDownloaderImpl;

    invoke-static {v0}, Lcom/tonyodev/fetch2/downloader/ParallelFileDownloaderImpl;->$r8$lambda$ofY7RmXIhDwyOv_5ovq8AqtsLp8(Lcom/tonyodev/fetch2/downloader/ParallelFileDownloaderImpl;)Lcom/tonyodev/fetch2/database/DownloadInfo;

    move-result-object v0

    return-object v0
.end method
