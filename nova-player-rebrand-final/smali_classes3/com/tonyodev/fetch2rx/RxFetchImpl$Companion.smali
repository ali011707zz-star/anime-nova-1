.class public final Lcom/tonyodev/fetch2rx/RxFetchImpl$Companion;
.super Ljava/lang/Object;
.source "RxFetchImpl.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tonyodev/fetch2rx/RxFetchImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 1200
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/tonyodev/fetch2rx/RxFetchImpl$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final newInstance(Lcom/tonyodev/fetch2/fetch/FetchModulesBuilder$Modules;)Lcom/tonyodev/fetch2rx/RxFetchImpl;
    .locals 10

    const-string v0, "modules"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1204
    new-instance v1, Lcom/tonyodev/fetch2rx/RxFetchImpl;

    .line 1205
    invoke-virtual {p1}, Lcom/tonyodev/fetch2/fetch/FetchModulesBuilder$Modules;->getFetchConfiguration()Lcom/tonyodev/fetch2/FetchConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tonyodev/fetch2/FetchConfiguration;->getNamespace()Ljava/lang/String;

    move-result-object v2

    .line 1206
    invoke-virtual {p1}, Lcom/tonyodev/fetch2/fetch/FetchModulesBuilder$Modules;->getFetchConfiguration()Lcom/tonyodev/fetch2/FetchConfiguration;

    move-result-object v3

    .line 1207
    invoke-virtual {p1}, Lcom/tonyodev/fetch2/fetch/FetchModulesBuilder$Modules;->getHandlerWrapper()Lcom/tonyodev/fetch2core/HandlerWrapper;

    move-result-object v4

    .line 1208
    invoke-virtual {p1}, Lcom/tonyodev/fetch2/fetch/FetchModulesBuilder$Modules;->getUiHandler()Landroid/os/Handler;

    move-result-object v5

    .line 1209
    invoke-virtual {p1}, Lcom/tonyodev/fetch2/fetch/FetchModulesBuilder$Modules;->getFetchHandler()Lcom/tonyodev/fetch2/fetch/FetchHandler;

    move-result-object v6

    .line 1210
    invoke-virtual {p1}, Lcom/tonyodev/fetch2/fetch/FetchModulesBuilder$Modules;->getFetchConfiguration()Lcom/tonyodev/fetch2/FetchConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tonyodev/fetch2/FetchConfiguration;->getLogger()Lcom/tonyodev/fetch2core/Logger;

    move-result-object v7

    .line 1211
    invoke-virtual {p1}, Lcom/tonyodev/fetch2/fetch/FetchModulesBuilder$Modules;->getListenerCoordinator()Lcom/tonyodev/fetch2/fetch/ListenerCoordinator;

    move-result-object v8

    .line 1212
    invoke-virtual {p1}, Lcom/tonyodev/fetch2/fetch/FetchModulesBuilder$Modules;->getFetchDatabaseManagerWrapper()Lcom/tonyodev/fetch2/database/FetchDatabaseManagerWrapper;

    move-result-object v9

    .line 1204
    invoke-direct/range {v1 .. v9}, Lcom/tonyodev/fetch2rx/RxFetchImpl;-><init>(Ljava/lang/String;Lcom/tonyodev/fetch2/FetchConfiguration;Lcom/tonyodev/fetch2core/HandlerWrapper;Landroid/os/Handler;Lcom/tonyodev/fetch2/fetch/FetchHandler;Lcom/tonyodev/fetch2core/Logger;Lcom/tonyodev/fetch2/fetch/ListenerCoordinator;Lcom/tonyodev/fetch2/database/FetchDatabaseManagerWrapper;)V

    return-object v1
.end method
