.class public final Lcom/tonyodev/fetch2/helper/PriorityListProcessorImpl$networkChangeListener$1;
.super Ljava/lang/Object;
.source "PriorityListProcessorImpl.kt"

# interfaces
.implements Lcom/tonyodev/fetch2/provider/NetworkInfoProvider$NetworkChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tonyodev/fetch2/helper/PriorityListProcessorImpl;-><init>(Lcom/tonyodev/fetch2core/HandlerWrapper;Lcom/tonyodev/fetch2/provider/DownloadProvider;Lcom/tonyodev/fetch2/downloader/DownloadManager;Lcom/tonyodev/fetch2/provider/NetworkInfoProvider;Lcom/tonyodev/fetch2core/Logger;Lcom/tonyodev/fetch2/fetch/ListenerCoordinator;ILjava/lang/String;Lcom/tonyodev/fetch2/PrioritySort;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tonyodev/fetch2/helper/PriorityListProcessorImpl;


# direct methods
.method public static synthetic $r8$lambda$v6qJDjsRssMgHn5lUqh4oRk1MbM(Lcom/tonyodev/fetch2/helper/PriorityListProcessorImpl;)Lkotlin/Unit;
    .locals 0

    .line 0
    invoke-static {p0}, Lcom/tonyodev/fetch2/helper/PriorityListProcessorImpl$networkChangeListener$1;->onNetworkChanged$lambda$0(Lcom/tonyodev/fetch2/helper/PriorityListProcessorImpl;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method constructor <init>(Lcom/tonyodev/fetch2/helper/PriorityListProcessorImpl;)V
    .locals 0

    iput-object p1, p0, Lcom/tonyodev/fetch2/helper/PriorityListProcessorImpl$networkChangeListener$1;->this$0:Lcom/tonyodev/fetch2/helper/PriorityListProcessorImpl;

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static final onNetworkChanged$lambda$0(Lcom/tonyodev/fetch2/helper/PriorityListProcessorImpl;)Lkotlin/Unit;
    .locals 4

    .line 46
    invoke-static {p0}, Lcom/tonyodev/fetch2/helper/PriorityListProcessorImpl;->access$getStopped$p(Lcom/tonyodev/fetch2/helper/PriorityListProcessorImpl;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p0}, Lcom/tonyodev/fetch2/helper/PriorityListProcessorImpl;->access$getPaused$p(Lcom/tonyodev/fetch2/helper/PriorityListProcessorImpl;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p0}, Lcom/tonyodev/fetch2/helper/PriorityListProcessorImpl;->access$getNetworkInfoProvider$p(Lcom/tonyodev/fetch2/helper/PriorityListProcessorImpl;)Lcom/tonyodev/fetch2/provider/NetworkInfoProvider;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tonyodev/fetch2/provider/NetworkInfoProvider;->isNetworkAvailable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 47
    invoke-static {p0}, Lcom/tonyodev/fetch2/helper/PriorityListProcessorImpl;->access$getBackOffTime$p(Lcom/tonyodev/fetch2/helper/PriorityListProcessorImpl;)J

    move-result-wide v0

    const-wide/16 v2, 0x1f4

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    .line 48
    invoke-virtual {p0}, Lcom/tonyodev/fetch2/helper/PriorityListProcessorImpl;->resetBackOffTime()V

    .line 50
    :cond_0
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method


# virtual methods
.method public onNetworkChanged()V
    .locals 3

    .line 45
    iget-object v0, p0, Lcom/tonyodev/fetch2/helper/PriorityListProcessorImpl$networkChangeListener$1;->this$0:Lcom/tonyodev/fetch2/helper/PriorityListProcessorImpl;

    invoke-static {v0}, Lcom/tonyodev/fetch2/helper/PriorityListProcessorImpl;->access$getHandlerWrapper$p(Lcom/tonyodev/fetch2/helper/PriorityListProcessorImpl;)Lcom/tonyodev/fetch2core/HandlerWrapper;

    move-result-object v0

    iget-object v1, p0, Lcom/tonyodev/fetch2/helper/PriorityListProcessorImpl$networkChangeListener$1;->this$0:Lcom/tonyodev/fetch2/helper/PriorityListProcessorImpl;

    new-instance v2, Lcom/tonyodev/fetch2/helper/PriorityListProcessorImpl$networkChangeListener$1$$ExternalSyntheticLambda0;

    invoke-direct {v2, v1}, Lcom/tonyodev/fetch2/helper/PriorityListProcessorImpl$networkChangeListener$1$$ExternalSyntheticLambda0;-><init>(Lcom/tonyodev/fetch2/helper/PriorityListProcessorImpl;)V

    invoke-virtual {v0, v2}, Lcom/tonyodev/fetch2core/HandlerWrapper;->post(Lkotlin/jvm/functions/Function0;)V

    return-void
.end method
