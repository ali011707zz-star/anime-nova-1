.class public final Lcom/tonyodev/fetch2/provider/NetworkInfoProvider;
.super Ljava/lang/Object;
.source "NetworkInfoProvider.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tonyodev/fetch2/provider/NetworkInfoProvider$NetworkChangeListener;
    }
.end annotation


# instance fields
.field private broadcastRegistered:Z

.field private final connectivityManager:Landroid/net/ConnectivityManager;

.field private final context:Landroid/content/Context;

.field private final internetCheckUrl:Ljava/lang/String;

.field private final lock:Ljava/lang/Object;

.field private networkCallback:Ljava/lang/Object;

.field private final networkChangeBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private final networkChangeListenerSet:Ljava/util/HashSet;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 4

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/tonyodev/fetch2/provider/NetworkInfoProvider;->context:Landroid/content/Context;

    .line 21
    iput-object p2, p0, Lcom/tonyodev/fetch2/provider/NetworkInfoProvider;->internetCheckUrl:Ljava/lang/String;

    .line 23
    new-instance p2, Ljava/lang/Object;

    invoke-direct {p2}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/tonyodev/fetch2/provider/NetworkInfoProvider;->lock:Ljava/lang/Object;

    .line 24
    new-instance p2, Ljava/util/HashSet;

    invoke-direct {p2}, Ljava/util/HashSet;-><init>()V

    iput-object p2, p0, Lcom/tonyodev/fetch2/provider/NetworkInfoProvider;->networkChangeListenerSet:Ljava/util/HashSet;

    .line 25
    const-string p2, "connectivity"

    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    instance-of v0, p2, Landroid/net/ConnectivityManager;

    if-eqz v0, :cond_0

    check-cast p2, Landroid/net/ConnectivityManager;

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    :goto_0
    iput-object p2, p0, Lcom/tonyodev/fetch2/provider/NetworkInfoProvider;->connectivityManager:Landroid/net/ConnectivityManager;

    .line 26
    new-instance v0, Lcom/tonyodev/fetch2/provider/NetworkInfoProvider$networkChangeBroadcastReceiver$1;

    invoke-direct {v0, p0}, Lcom/tonyodev/fetch2/provider/NetworkInfoProvider$networkChangeBroadcastReceiver$1;-><init>(Lcom/tonyodev/fetch2/provider/NetworkInfoProvider;)V

    iput-object v0, p0, Lcom/tonyodev/fetch2/provider/NetworkInfoProvider;->networkChangeBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 35
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v2, 0x1

    if-eqz p2, :cond_1

    .line 36
    new-instance p1, Landroid/net/NetworkRequest$Builder;

    invoke-direct {p1}, Landroid/net/NetworkRequest$Builder;-><init>()V

    const/4 v0, 0x0

    .line 37
    invoke-virtual {p1, v0}, Landroid/net/NetworkRequest$Builder;->addTransportType(I)Landroid/net/NetworkRequest$Builder;

    move-result-object p1

    .line 38
    invoke-virtual {p1, v2}, Landroid/net/NetworkRequest$Builder;->addTransportType(I)Landroid/net/NetworkRequest$Builder;

    move-result-object p1

    const/4 v0, 0x3

    .line 39
    invoke-virtual {p1, v0}, Landroid/net/NetworkRequest$Builder;->addTransportType(I)Landroid/net/NetworkRequest$Builder;

    move-result-object p1

    .line 40
    invoke-virtual {p1}, Landroid/net/NetworkRequest$Builder;->build()Landroid/net/NetworkRequest;

    move-result-object p1

    .line 41
    new-instance v0, Lcom/tonyodev/fetch2/provider/NetworkInfoProvider$networkCallback$1;

    invoke-direct {v0, p0}, Lcom/tonyodev/fetch2/provider/NetworkInfoProvider$networkCallback$1;-><init>(Lcom/tonyodev/fetch2/provider/NetworkInfoProvider;)V

    .line 50
    iput-object v0, p0, Lcom/tonyodev/fetch2/provider/NetworkInfoProvider;->networkCallback:Ljava/lang/Object;

    .line 51
    invoke-virtual {p2, p1, v0}, Landroid/net/ConnectivityManager;->registerNetworkCallback(Landroid/net/NetworkRequest;Landroid/net/ConnectivityManager$NetworkCallback;)V

    return-void

    :cond_1
    const/16 p2, 0x21

    .line 54
    const-string v3, "android.net.conn.CONNECTIVITY_CHANGE"

    if-lt v1, p2, :cond_2

    .line 55
    :try_start_0
    new-instance p2, Landroid/content/IntentFilter;

    invoke-direct {p2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    const/4 v1, 0x2

    invoke-static {p1, v0, p2, v1}, Landroidx/media3/common/util/Util$$ExternalSyntheticApiModelOutline5;->m(Landroid/content/Context;Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;I)Landroid/content/Intent;

    goto :goto_1

    .line 58
    :cond_2
    new-instance p2, Landroid/content/IntentFilter;

    invoke-direct {p2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v0, p2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 60
    :goto_1
    iput-boolean v2, p0, Lcom/tonyodev/fetch2/provider/NetworkInfoProvider;->broadcastRegistered:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method public static final synthetic access$notifyNetworkChangeListeners(Lcom/tonyodev/fetch2/provider/NetworkInfoProvider;)V
    .locals 0

    .line 20
    invoke-direct {p0}, Lcom/tonyodev/fetch2/provider/NetworkInfoProvider;->notifyNetworkChangeListeners()V

    return-void
.end method

.method private final notifyNetworkChangeListeners()V
    .locals 3

    .line 68
    iget-object v0, p0, Lcom/tonyodev/fetch2/provider/NetworkInfoProvider;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 69
    :try_start_0
    iget-object v1, p0, Lcom/tonyodev/fetch2/provider/NetworkInfoProvider;->networkChangeListenerSet:Ljava/util/HashSet;

    invoke-virtual {v1}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const-string v2, "iterator(...)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 32
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/tonyodev/fetch2/provider/NetworkInfoProvider$NetworkChangeListener;

    .line 70
    invoke-interface {v2}, Lcom/tonyodev/fetch2/provider/NetworkInfoProvider$NetworkChangeListener;->onNetworkChanged()V

    goto :goto_0

    :catchall_0
    move-exception v1

    goto :goto_1

    .line 72
    :cond_0
    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 68
    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0

    throw v1
.end method


# virtual methods
.method public final isNetworkAvailable()Z
    .locals 4

    .line 121
    iget-object v0, p0, Lcom/tonyodev/fetch2/provider/NetworkInfoProvider;->internetCheckUrl:Ljava/lang/String;

    if-eqz v0, :cond_1

    const/4 v1, 0x0

    .line 124
    :try_start_0
    new-instance v2, Ljava/net/URL;

    invoke-direct {v2, v0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 125
    invoke-virtual {v2}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    const-string v2, "null cannot be cast to non-null type java.net.HttpURLConnection"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Ljava/net/HttpURLConnection;

    const/16 v2, 0x3a98

    .line 126
    invoke-virtual {v0, v2}, Ljava/net/URLConnection;->setConnectTimeout(I)V

    const/16 v2, 0x4e20

    .line 127
    invoke-virtual {v0, v2}, Ljava/net/URLConnection;->setReadTimeout(I)V

    const/4 v2, 0x1

    .line 128
    invoke-virtual {v0, v2}, Ljava/net/HttpURLConnection;->setInstanceFollowRedirects(Z)V

    .line 129
    invoke-virtual {v0, v1}, Ljava/net/URLConnection;->setUseCaches(Z)V

    .line 130
    invoke-virtual {v0, v1}, Ljava/net/URLConnection;->setDefaultUseCaches(Z)V

    .line 131
    invoke-virtual {v0}, Ljava/net/URLConnection;->connect()V

    .line 132
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v3, -0x1

    if-eq v0, v3, :cond_0

    move v1, v2

    :catch_0
    :cond_0
    return v1

    .line 137
    :cond_1
    iget-object v0, p0, Lcom/tonyodev/fetch2/provider/NetworkInfoProvider;->context:Landroid/content/Context;

    invoke-static {v0}, Lcom/tonyodev/fetch2core/FetchAndroidExtensions;->isNetworkAvailable(Landroid/content/Context;)Z

    move-result v0

    return v0
.end method

.method public final isOnAllowedNetwork(Lcom/tonyodev/fetch2/NetworkType;)Z
    .locals 2

    const-string v0, "networkType"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 107
    sget-object v0, Lcom/tonyodev/fetch2/NetworkType;->WIFI_ONLY:Lcom/tonyodev/fetch2/NetworkType;

    const/4 v1, 0x1

    if-ne p1, v0, :cond_0

    iget-object v0, p0, Lcom/tonyodev/fetch2/provider/NetworkInfoProvider;->context:Landroid/content/Context;

    invoke-static {v0}, Lcom/tonyodev/fetch2core/FetchAndroidExtensions;->isOnWiFi(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    return v1

    .line 110
    :cond_0
    sget-object v0, Lcom/tonyodev/fetch2/NetworkType;->UNMETERED:Lcom/tonyodev/fetch2/NetworkType;

    if-ne p1, v0, :cond_1

    iget-object v0, p0, Lcom/tonyodev/fetch2/provider/NetworkInfoProvider;->context:Landroid/content/Context;

    invoke-static {v0}, Lcom/tonyodev/fetch2core/FetchAndroidExtensions;->isOnMeteredConnection(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1

    return v1

    .line 113
    :cond_1
    sget-object v0, Lcom/tonyodev/fetch2/NetworkType;->ALL:Lcom/tonyodev/fetch2/NetworkType;

    if-ne p1, v0, :cond_2

    iget-object p1, p0, Lcom/tonyodev/fetch2/provider/NetworkInfoProvider;->context:Landroid/content/Context;

    invoke-static {p1}, Lcom/tonyodev/fetch2core/FetchAndroidExtensions;->isNetworkAvailable(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_2

    return v1

    :cond_2
    const/4 p1, 0x0

    return p1
.end method

.method public final registerNetworkChangeListener(Lcom/tonyodev/fetch2/provider/NetworkInfoProvider$NetworkChangeListener;)V
    .locals 2

    const-string v0, "networkChangeListener"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 76
    iget-object v0, p0, Lcom/tonyodev/fetch2/provider/NetworkInfoProvider;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 77
    :try_start_0
    iget-object v1, p0, Lcom/tonyodev/fetch2/provider/NetworkInfoProvider;->networkChangeListenerSet:Ljava/util/HashSet;

    invoke-virtual {v1, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 76
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0

    throw p1
.end method

.method public final unregisterAllNetworkChangeListeners()V
    .locals 4

    .line 88
    iget-object v0, p0, Lcom/tonyodev/fetch2/provider/NetworkInfoProvider;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 89
    :try_start_0
    iget-object v1, p0, Lcom/tonyodev/fetch2/provider/NetworkInfoProvider;->networkChangeListenerSet:Ljava/util/HashSet;

    invoke-virtual {v1}, Ljava/util/HashSet;->clear()V

    .line 90
    iget-boolean v1, p0, Lcom/tonyodev/fetch2/provider/NetworkInfoProvider;->broadcastRegistered:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    .line 92
    :try_start_1
    iget-object v1, p0, Lcom/tonyodev/fetch2/provider/NetworkInfoProvider;->context:Landroid/content/Context;

    iget-object v2, p0, Lcom/tonyodev/fetch2/provider/NetworkInfoProvider;->networkChangeBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v1

    goto :goto_1

    .line 97
    :catch_0
    :cond_0
    :goto_0
    :try_start_2
    iget-object v1, p0, Lcom/tonyodev/fetch2/provider/NetworkInfoProvider;->connectivityManager:Landroid/net/ConnectivityManager;

    if-eqz v1, :cond_1

    .line 98
    iget-object v2, p0, Lcom/tonyodev/fetch2/provider/NetworkInfoProvider;->networkCallback:Ljava/lang/Object;

    .line 99
    instance-of v3, v2, Landroid/net/ConnectivityManager$NetworkCallback;

    if-eqz v3, :cond_1

    .line 100
    check-cast v2, Landroid/net/ConnectivityManager$NetworkCallback;

    invoke-virtual {v1, v2}, Landroid/net/ConnectivityManager;->unregisterNetworkCallback(Landroid/net/ConnectivityManager$NetworkCallback;)V

    .line 103
    :cond_1
    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 88
    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0

    throw v1
.end method

.method public final unregisterNetworkChangeListener(Lcom/tonyodev/fetch2/provider/NetworkInfoProvider$NetworkChangeListener;)V
    .locals 2

    const-string v0, "networkChangeListener"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 82
    iget-object v0, p0, Lcom/tonyodev/fetch2/provider/NetworkInfoProvider;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 83
    :try_start_0
    iget-object v1, p0, Lcom/tonyodev/fetch2/provider/NetworkInfoProvider;->networkChangeListenerSet:Ljava/util/HashSet;

    invoke-virtual {v1, p1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 82
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0

    throw p1
.end method
