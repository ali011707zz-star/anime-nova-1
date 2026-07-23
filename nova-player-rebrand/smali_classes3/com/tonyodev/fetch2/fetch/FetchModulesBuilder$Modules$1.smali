.class public final Lcom/tonyodev/fetch2/fetch/FetchModulesBuilder$Modules$1;
.super Ljava/lang/Object;
.source "FetchModulesBuilder.kt"

# interfaces
.implements Lcom/tonyodev/fetch2/database/FetchDatabaseManager$Delegate;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tonyodev/fetch2/fetch/FetchModulesBuilder$Modules;-><init>(Lcom/tonyodev/fetch2/FetchConfiguration;Lcom/tonyodev/fetch2core/HandlerWrapper;Lcom/tonyodev/fetch2/database/FetchDatabaseManagerWrapper;Lcom/tonyodev/fetch2/provider/DownloadProvider;Lcom/tonyodev/fetch2/provider/GroupInfoProvider;Landroid/os/Handler;Lcom/tonyodev/fetch2/downloader/DownloadManagerCoordinator;Lcom/tonyodev/fetch2/fetch/ListenerCoordinator;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tonyodev/fetch2/fetch/FetchModulesBuilder$Modules;


# direct methods
.method constructor <init>(Lcom/tonyodev/fetch2/fetch/FetchModulesBuilder$Modules;)V
    .locals 0

    iput-object p1, p0, Lcom/tonyodev/fetch2/fetch/FetchModulesBuilder$Modules$1;->this$0:Lcom/tonyodev/fetch2/fetch/FetchModulesBuilder$Modules;

    .line 153
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public deleteTempFilesForDownload(Lcom/tonyodev/fetch2/database/DownloadInfo;)V
    .locals 3

    const-string v0, "downloadInfo"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 155
    iget-object v0, p0, Lcom/tonyodev/fetch2/fetch/FetchModulesBuilder$Modules$1;->this$0:Lcom/tonyodev/fetch2/fetch/FetchModulesBuilder$Modules;

    invoke-virtual {v0}, Lcom/tonyodev/fetch2/fetch/FetchModulesBuilder$Modules;->getFetchConfiguration()Lcom/tonyodev/fetch2/FetchConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tonyodev/fetch2/FetchConfiguration;->getStorageResolver()Lcom/tonyodev/fetch2core/StorageResolver;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x2

    .line 156
    invoke-static {p1, v1, v2, v1}, Lcom/tonyodev/fetch2/util/FetchUtils;->getRequestForDownload$default(Lcom/tonyodev/fetch2/Download;Ljava/lang/String;ILjava/lang/Object;)Lcom/tonyodev/fetch2core/Downloader$ServerRequest;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/tonyodev/fetch2core/StorageResolver;->getDirectoryForFileDownloaderTypeParallel(Lcom/tonyodev/fetch2core/Downloader$ServerRequest;)Ljava/lang/String;

    move-result-object v0

    .line 157
    invoke-virtual {p1}, Lcom/tonyodev/fetch2/database/DownloadInfo;->getId()I

    move-result p1

    invoke-static {p1, v0}, Lcom/tonyodev/fetch2/util/FetchUtils;->deleteAllInFolderForId(ILjava/lang/String;)V

    return-void
.end method
