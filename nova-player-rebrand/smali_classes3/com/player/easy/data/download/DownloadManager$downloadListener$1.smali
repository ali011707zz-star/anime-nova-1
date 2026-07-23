.class public final Lcom/player/easy/data/download/DownloadManager$downloadListener$1;
.super Lcom/player/easy/util/download/DownloadListener;
.source "DownloadManager.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/player/easy/data/download/DownloadManager;-><init>(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000-\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0003\n\u0002\u0008\u0004*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J \u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u00072\u0006\u0010\u0008\u001a\u00020\u0007H\u0016J\"\u0010\t\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00052\u0006\u0010\n\u001a\u00020\u000b2\u0008\u0010\u000c\u001a\u0004\u0018\u00010\rH\u0016J\u0010\u0010\u000e\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H\u0016J\u0010\u0010\u000f\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H\u0016J\u0010\u0010\u0010\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H\u0016\u00a8\u0006\u0011"
    }
    d2 = {
        "com/player/easy/data/download/DownloadManager$downloadListener$1",
        "Lcom/player/easy/util/download/DownloadListener;",
        "onProgress",
        "",
        "download",
        "Lcom/tonyodev/fetch2/Download;",
        "etaInMilliSeconds",
        "",
        "downloadedBytesPerSecond",
        "onError",
        "error",
        "Lcom/tonyodev/fetch2/Error;",
        "throwable",
        "",
        "onCompleted",
        "onDeleted",
        "onRemoved",
        "app_release"
    }
    k = 0x1
    mv = {
        0x2,
        0x2,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field final synthetic this$0:Lcom/player/easy/data/download/DownloadManager;


# direct methods
.method constructor <init>(Lcom/player/easy/data/download/DownloadManager;)V
    .locals 0

    iput-object p1, p0, Lcom/player/easy/data/download/DownloadManager$downloadListener$1;->this$0:Lcom/player/easy/data/download/DownloadManager;

    .line 60
    invoke-direct {p0}, Lcom/player/easy/util/download/DownloadListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onCompleted(Lcom/tonyodev/fetch2/Download;)V
    .locals 3

    const-string v0, "download"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 77
    sget-object v0, Ltimber/log/Timber;->Forest:Ltimber/log/Timber$Forest;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "onCompleted"

    invoke-virtual {v0, v2, v1}, Ltimber/log/Timber$Forest;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 78
    iget-object v0, p0, Lcom/player/easy/data/download/DownloadManager$downloadListener$1;->this$0:Lcom/player/easy/data/download/DownloadManager;

    invoke-static {v0}, Lcom/player/easy/data/download/DownloadManager;->access$getNotifier(Lcom/player/easy/data/download/DownloadManager;)Lcom/player/easy/data/download/DownloadNotifier;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/player/easy/data/download/DownloadNotifier;->onComplete(Lcom/tonyodev/fetch2/Download;)V

    .line 79
    iget-object p1, p0, Lcom/player/easy/data/download/DownloadManager$downloadListener$1;->this$0:Lcom/player/easy/data/download/DownloadManager;

    invoke-static {p1}, Lcom/player/easy/data/download/DownloadManager;->access$stopServiceIfNoActiveDownloads(Lcom/player/easy/data/download/DownloadManager;)V

    return-void
.end method

.method public onDeleted(Lcom/tonyodev/fetch2/Download;)V
    .locals 1

    const-string v0, "download"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 83
    iget-object p1, p0, Lcom/player/easy/data/download/DownloadManager$downloadListener$1;->this$0:Lcom/player/easy/data/download/DownloadManager;

    invoke-static {p1}, Lcom/player/easy/data/download/DownloadManager;->access$stopServiceIfNoActiveDownloads(Lcom/player/easy/data/download/DownloadManager;)V

    return-void
.end method

.method public onError(Lcom/tonyodev/fetch2/Download;Lcom/tonyodev/fetch2/Error;Ljava/lang/Throwable;)V
    .locals 7

    const-string p3, "download"

    invoke-static {p1, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p3, "error"

    invoke-static {p2, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 70
    iget-object p3, p0, Lcom/player/easy/data/download/DownloadManager$downloadListener$1;->this$0:Lcom/player/easy/data/download/DownloadManager;

    invoke-virtual {p3}, Lcom/player/easy/data/download/DownloadManager;->getContext()Landroid/content/Context;

    move-result-object p3

    sget v0, Lcom/tonyodev/fetch2/R$string;->app_name:I

    invoke-virtual {p3, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p3

    const-string v0, "getString(...)"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 71
    iget-object v0, p0, Lcom/player/easy/data/download/DownloadManager$downloadListener$1;->this$0:Lcom/player/easy/data/download/DownloadManager;

    invoke-virtual {v0}, Lcom/player/easy/data/download/DownloadManager;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {p1}, Lcom/player/easy/util/download/DownloadExtensionsKt;->getTitle(Lcom/tonyodev/fetch2/Download;)Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, ": download error "

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v5, 0x6

    const/4 v6, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-static/range {v1 .. v6}, Lcom/player/easy/util/system/ContextExtensionsKt;->toast$default(Landroid/content/Context;Ljava/lang/String;ILkotlin/jvm/functions/Function1;ILjava/lang/Object;)Landroid/widget/Toast;

    .line 72
    iget-object p3, p0, Lcom/player/easy/data/download/DownloadManager$downloadListener$1;->this$0:Lcom/player/easy/data/download/DownloadManager;

    invoke-static {p3}, Lcom/player/easy/data/download/DownloadManager;->access$getNotifier(Lcom/player/easy/data/download/DownloadManager;)Lcom/player/easy/data/download/DownloadNotifier;

    move-result-object p3

    invoke-virtual {p2}, Ljava/lang/Enum;->ordinal()I

    move-result p2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\u062e\u0637\u0623 #"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1}, Lcom/player/easy/util/download/DownloadExtensionsKt;->getTitle(Lcom/tonyodev/fetch2/Download;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, p2, v0, p1}, Lcom/player/easy/data/download/DownloadNotifier;->onError(Ljava/lang/String;Ljava/lang/String;Lcom/tonyodev/fetch2/Download;)V

    .line 73
    iget-object p1, p0, Lcom/player/easy/data/download/DownloadManager$downloadListener$1;->this$0:Lcom/player/easy/data/download/DownloadManager;

    invoke-static {p1}, Lcom/player/easy/data/download/DownloadManager;->access$stopServiceIfNoActiveDownloads(Lcom/player/easy/data/download/DownloadManager;)V

    return-void
.end method

.method public onProgress(Lcom/tonyodev/fetch2/Download;JJ)V
    .locals 0

    const-string p2, "download"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 66
    iget-object p2, p0, Lcom/player/easy/data/download/DownloadManager$downloadListener$1;->this$0:Lcom/player/easy/data/download/DownloadManager;

    invoke-static {p2}, Lcom/player/easy/data/download/DownloadManager;->access$getNotifier(Lcom/player/easy/data/download/DownloadManager;)Lcom/player/easy/data/download/DownloadNotifier;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/player/easy/data/download/DownloadNotifier;->onProgressChange(Lcom/tonyodev/fetch2/Download;)V

    return-void
.end method

.method public onRemoved(Lcom/tonyodev/fetch2/Download;)V
    .locals 1

    const-string v0, "download"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 87
    iget-object p1, p0, Lcom/player/easy/data/download/DownloadManager$downloadListener$1;->this$0:Lcom/player/easy/data/download/DownloadManager;

    invoke-static {p1}, Lcom/player/easy/data/download/DownloadManager;->access$stopServiceIfNoActiveDownloads(Lcom/player/easy/data/download/DownloadManager;)V

    return-void
.end method
