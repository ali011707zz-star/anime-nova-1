.class public abstract Lcom/tonyodev/fetch2/util/FetchDefaults;
.super Ljava/lang/Object;
.source "Defaults.kt"


# static fields
.field private static final defaultDownloader:Lcom/tonyodev/fetch2core/Downloader;

.field private static final defaultEnqueueAction:Lcom/tonyodev/fetch2/EnqueueAction;

.field private static final defaultFileServerDownloader:Lcom/tonyodev/fetch2core/FileServerDownloader;

.field private static final defaultGlobalNetworkType:Lcom/tonyodev/fetch2/NetworkType;

.field private static final defaultLogger:Lcom/tonyodev/fetch2core/Logger;

.field private static final defaultNetworkType:Lcom/tonyodev/fetch2/NetworkType;

.field private static final defaultNoError:Lcom/tonyodev/fetch2/Error;

.field private static final defaultPriority:Lcom/tonyodev/fetch2/Priority;

.field private static final defaultPrioritySort:Lcom/tonyodev/fetch2/PrioritySort;

.field private static final defaultStatus:Lcom/tonyodev/fetch2/Status;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 34
    sget-object v0, Lcom/tonyodev/fetch2/NetworkType;->ALL:Lcom/tonyodev/fetch2/NetworkType;

    sput-object v0, Lcom/tonyodev/fetch2/util/FetchDefaults;->defaultNetworkType:Lcom/tonyodev/fetch2/NetworkType;

    .line 35
    sget-object v0, Lcom/tonyodev/fetch2/NetworkType;->GLOBAL_OFF:Lcom/tonyodev/fetch2/NetworkType;

    sput-object v0, Lcom/tonyodev/fetch2/util/FetchDefaults;->defaultGlobalNetworkType:Lcom/tonyodev/fetch2/NetworkType;

    .line 36
    sget-object v0, Lcom/tonyodev/fetch2/Priority;->NORMAL:Lcom/tonyodev/fetch2/Priority;

    sput-object v0, Lcom/tonyodev/fetch2/util/FetchDefaults;->defaultPriority:Lcom/tonyodev/fetch2/Priority;

    .line 37
    sget-object v0, Lcom/tonyodev/fetch2/Error;->NONE:Lcom/tonyodev/fetch2/Error;

    sput-object v0, Lcom/tonyodev/fetch2/util/FetchDefaults;->defaultNoError:Lcom/tonyodev/fetch2/Error;

    .line 38
    sget-object v0, Lcom/tonyodev/fetch2/Status;->NONE:Lcom/tonyodev/fetch2/Status;

    sput-object v0, Lcom/tonyodev/fetch2/util/FetchDefaults;->defaultStatus:Lcom/tonyodev/fetch2/Status;

    .line 39
    sget-object v0, Lcom/tonyodev/fetch2/PrioritySort;->ASC:Lcom/tonyodev/fetch2/PrioritySort;

    sput-object v0, Lcom/tonyodev/fetch2/util/FetchDefaults;->defaultPrioritySort:Lcom/tonyodev/fetch2/PrioritySort;

    .line 40
    sget-object v0, Lcom/tonyodev/fetch2/EnqueueAction;->UPDATE_ACCORDINGLY:Lcom/tonyodev/fetch2/EnqueueAction;

    sput-object v0, Lcom/tonyodev/fetch2/util/FetchDefaults;->defaultEnqueueAction:Lcom/tonyodev/fetch2/EnqueueAction;

    .line 41
    new-instance v0, Lcom/tonyodev/fetch2/HttpUrlConnectionDownloader;

    const/4 v1, 0x3

    const/4 v2, 0x0

    invoke-direct {v0, v2, v2, v1, v2}, Lcom/tonyodev/fetch2/HttpUrlConnectionDownloader;-><init>(Lcom/tonyodev/fetch2/HttpUrlConnectionDownloader$HttpUrlConnectionPreferences;Lcom/tonyodev/fetch2core/Downloader$FileDownloaderType;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/tonyodev/fetch2/util/FetchDefaults;->defaultDownloader:Lcom/tonyodev/fetch2core/Downloader;

    .line 42
    new-instance v0, Lcom/tonyodev/fetch2/FetchFileServerDownloader;

    const/4 v1, 0x1

    invoke-direct {v0, v2, v1, v2}, Lcom/tonyodev/fetch2/FetchFileServerDownloader;-><init>(Lcom/tonyodev/fetch2core/Downloader$FileDownloaderType;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/tonyodev/fetch2/util/FetchDefaults;->defaultFileServerDownloader:Lcom/tonyodev/fetch2core/FileServerDownloader;

    .line 43
    new-instance v0, Lcom/tonyodev/fetch2core/FetchLogger;

    const/4 v1, 0x0

    const-string v2, "fetch2"

    invoke-direct {v0, v1, v2}, Lcom/tonyodev/fetch2core/FetchLogger;-><init>(ZLjava/lang/String;)V

    sput-object v0, Lcom/tonyodev/fetch2/util/FetchDefaults;->defaultLogger:Lcom/tonyodev/fetch2core/Logger;

    return-void
.end method

.method public static final getDefaultDownloader()Lcom/tonyodev/fetch2core/Downloader;
    .locals 1

    .line 41
    sget-object v0, Lcom/tonyodev/fetch2/util/FetchDefaults;->defaultDownloader:Lcom/tonyodev/fetch2core/Downloader;

    return-object v0
.end method

.method public static final getDefaultEnqueueAction()Lcom/tonyodev/fetch2/EnqueueAction;
    .locals 1

    .line 40
    sget-object v0, Lcom/tonyodev/fetch2/util/FetchDefaults;->defaultEnqueueAction:Lcom/tonyodev/fetch2/EnqueueAction;

    return-object v0
.end method

.method public static final getDefaultFileServerDownloader()Lcom/tonyodev/fetch2core/FileServerDownloader;
    .locals 1

    .line 42
    sget-object v0, Lcom/tonyodev/fetch2/util/FetchDefaults;->defaultFileServerDownloader:Lcom/tonyodev/fetch2core/FileServerDownloader;

    return-object v0
.end method

.method public static final getDefaultGlobalNetworkType()Lcom/tonyodev/fetch2/NetworkType;
    .locals 1

    .line 35
    sget-object v0, Lcom/tonyodev/fetch2/util/FetchDefaults;->defaultGlobalNetworkType:Lcom/tonyodev/fetch2/NetworkType;

    return-object v0
.end method

.method public static final getDefaultLogger()Lcom/tonyodev/fetch2core/Logger;
    .locals 1

    .line 43
    sget-object v0, Lcom/tonyodev/fetch2/util/FetchDefaults;->defaultLogger:Lcom/tonyodev/fetch2core/Logger;

    return-object v0
.end method

.method public static final getDefaultNetworkType()Lcom/tonyodev/fetch2/NetworkType;
    .locals 1

    .line 34
    sget-object v0, Lcom/tonyodev/fetch2/util/FetchDefaults;->defaultNetworkType:Lcom/tonyodev/fetch2/NetworkType;

    return-object v0
.end method

.method public static final getDefaultNoError()Lcom/tonyodev/fetch2/Error;
    .locals 1

    .line 37
    sget-object v0, Lcom/tonyodev/fetch2/util/FetchDefaults;->defaultNoError:Lcom/tonyodev/fetch2/Error;

    return-object v0
.end method

.method public static final getDefaultPriority()Lcom/tonyodev/fetch2/Priority;
    .locals 1

    .line 36
    sget-object v0, Lcom/tonyodev/fetch2/util/FetchDefaults;->defaultPriority:Lcom/tonyodev/fetch2/Priority;

    return-object v0
.end method

.method public static final getDefaultPrioritySort()Lcom/tonyodev/fetch2/PrioritySort;
    .locals 1

    .line 39
    sget-object v0, Lcom/tonyodev/fetch2/util/FetchDefaults;->defaultPrioritySort:Lcom/tonyodev/fetch2/PrioritySort;

    return-object v0
.end method

.method public static final getDefaultStatus()Lcom/tonyodev/fetch2/Status;
    .locals 1

    .line 38
    sget-object v0, Lcom/tonyodev/fetch2/util/FetchDefaults;->defaultStatus:Lcom/tonyodev/fetch2/Status;

    return-object v0
.end method
