.class public Lcom/github/pwittchen/reactivenetwork/library/rx2/network/observing/strategy/MarshmallowNetworkObservingStrategy;
.super Ljava/lang/Object;
.source "MarshmallowNetworkObservingStrategy.java"

# interfaces
.implements Lcom/github/pwittchen/reactivenetwork/library/rx2/network/observing/NetworkObservingStrategy;


# instance fields
.field private final connectivitySubject:Lio/reactivex/subjects/Subject;

.field private final idleReceiver:Landroid/content/BroadcastReceiver;

.field private lastConnectivity:Lcom/github/pwittchen/reactivenetwork/library/rx2/Connectivity;

.field private networkCallback:Landroid/net/ConnectivityManager$NetworkCallback;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    invoke-static {}, Lcom/github/pwittchen/reactivenetwork/library/rx2/Connectivity;->create()Lcom/github/pwittchen/reactivenetwork/library/rx2/Connectivity;

    move-result-object v0

    iput-object v0, p0, Lcom/github/pwittchen/reactivenetwork/library/rx2/network/observing/strategy/MarshmallowNetworkObservingStrategy;->lastConnectivity:Lcom/github/pwittchen/reactivenetwork/library/rx2/Connectivity;

    .line 64
    invoke-virtual {p0}, Lcom/github/pwittchen/reactivenetwork/library/rx2/network/observing/strategy/MarshmallowNetworkObservingStrategy;->createIdleBroadcastReceiver()Landroid/content/BroadcastReceiver;

    move-result-object v0

    iput-object v0, p0, Lcom/github/pwittchen/reactivenetwork/library/rx2/network/observing/strategy/MarshmallowNetworkObservingStrategy;->idleReceiver:Landroid/content/BroadcastReceiver;

    .line 65
    invoke-static {}, Lio/reactivex/subjects/PublishSubject;->create()Lio/reactivex/subjects/PublishSubject;

    move-result-object v0

    invoke-virtual {v0}, Lio/reactivex/subjects/Subject;->toSerialized()Lio/reactivex/subjects/Subject;

    move-result-object v0

    iput-object v0, p0, Lcom/github/pwittchen/reactivenetwork/library/rx2/network/observing/strategy/MarshmallowNetworkObservingStrategy;->connectivitySubject:Lio/reactivex/subjects/Subject;

    return-void
.end method

.method static synthetic access$000(Lcom/github/pwittchen/reactivenetwork/library/rx2/network/observing/strategy/MarshmallowNetworkObservingStrategy;)Lcom/github/pwittchen/reactivenetwork/library/rx2/Connectivity;
    .locals 0

    .line 50
    iget-object p0, p0, Lcom/github/pwittchen/reactivenetwork/library/rx2/network/observing/strategy/MarshmallowNetworkObservingStrategy;->lastConnectivity:Lcom/github/pwittchen/reactivenetwork/library/rx2/Connectivity;

    return-object p0
.end method

.method static synthetic access$002(Lcom/github/pwittchen/reactivenetwork/library/rx2/network/observing/strategy/MarshmallowNetworkObservingStrategy;Lcom/github/pwittchen/reactivenetwork/library/rx2/Connectivity;)Lcom/github/pwittchen/reactivenetwork/library/rx2/Connectivity;
    .locals 0

    .line 50
    iput-object p1, p0, Lcom/github/pwittchen/reactivenetwork/library/rx2/network/observing/strategy/MarshmallowNetworkObservingStrategy;->lastConnectivity:Lcom/github/pwittchen/reactivenetwork/library/rx2/Connectivity;

    return-object p1
.end method


# virtual methods
.method protected createIdleBroadcastReceiver()Landroid/content/BroadcastReceiver;
    .locals 1

    .line 120
    new-instance v0, Lcom/github/pwittchen/reactivenetwork/library/rx2/network/observing/strategy/MarshmallowNetworkObservingStrategy$4;

    invoke-direct {v0, p0}, Lcom/github/pwittchen/reactivenetwork/library/rx2/network/observing/strategy/MarshmallowNetworkObservingStrategy$4;-><init>(Lcom/github/pwittchen/reactivenetwork/library/rx2/network/observing/strategy/MarshmallowNetworkObservingStrategy;)V

    return-object v0
.end method

.method protected createNetworkCallback(Landroid/content/Context;)Landroid/net/ConnectivityManager$NetworkCallback;
    .locals 1

    .line 159
    new-instance v0, Lcom/github/pwittchen/reactivenetwork/library/rx2/network/observing/strategy/MarshmallowNetworkObservingStrategy$5;

    invoke-direct {v0, p0, p1}, Lcom/github/pwittchen/reactivenetwork/library/rx2/network/observing/strategy/MarshmallowNetworkObservingStrategy$5;-><init>(Lcom/github/pwittchen/reactivenetwork/library/rx2/network/observing/strategy/MarshmallowNetworkObservingStrategy;Landroid/content/Context;)V

    return-object v0
.end method

.method protected isIdleMode(Landroid/content/Context;)Z
    .locals 2

    .line 132
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 133
    const-string v1, "power"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/PowerManager;

    .line 134
    invoke-virtual {p1, v0}, Landroid/os/PowerManager;->isIgnoringBatteryOptimizations(Ljava/lang/String;)Z

    move-result v0

    .line 135
    invoke-virtual {p1}, Landroid/os/PowerManager;->isDeviceIdleMode()Z

    move-result p1

    if-eqz p1, :cond_0

    if-nez v0, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public observeNetworkConnectivity(Landroid/content/Context;)Lio/reactivex/Observable;
    .locals 3

    .line 70
    const-string v0, "connectivity"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 71
    invoke-virtual {p0, p1}, Lcom/github/pwittchen/reactivenetwork/library/rx2/network/observing/strategy/MarshmallowNetworkObservingStrategy;->createNetworkCallback(Landroid/content/Context;)Landroid/net/ConnectivityManager$NetworkCallback;

    move-result-object v1

    iput-object v1, p0, Lcom/github/pwittchen/reactivenetwork/library/rx2/network/observing/strategy/MarshmallowNetworkObservingStrategy;->networkCallback:Landroid/net/ConnectivityManager$NetworkCallback;

    .line 73
    invoke-virtual {p0, p1}, Lcom/github/pwittchen/reactivenetwork/library/rx2/network/observing/strategy/MarshmallowNetworkObservingStrategy;->registerIdleReceiver(Landroid/content/Context;)V

    .line 75
    new-instance v1, Landroid/net/NetworkRequest$Builder;

    invoke-direct {v1}, Landroid/net/NetworkRequest$Builder;-><init>()V

    const/16 v2, 0xc

    .line 76
    invoke-virtual {v1, v2}, Landroid/net/NetworkRequest$Builder;->addCapability(I)Landroid/net/NetworkRequest$Builder;

    move-result-object v1

    const/16 v2, 0xd

    .line 77
    invoke-virtual {v1, v2}, Landroid/net/NetworkRequest$Builder;->addCapability(I)Landroid/net/NetworkRequest$Builder;

    move-result-object v1

    .line 78
    invoke-virtual {v1}, Landroid/net/NetworkRequest$Builder;->build()Landroid/net/NetworkRequest;

    move-result-object v1

    .line 80
    iget-object v2, p0, Lcom/github/pwittchen/reactivenetwork/library/rx2/network/observing/strategy/MarshmallowNetworkObservingStrategy;->networkCallback:Landroid/net/ConnectivityManager$NetworkCallback;

    invoke-virtual {v0, v1, v2}, Landroid/net/ConnectivityManager;->registerNetworkCallback(Landroid/net/NetworkRequest;Landroid/net/ConnectivityManager$NetworkCallback;)V

    .line 82
    iget-object v1, p0, Lcom/github/pwittchen/reactivenetwork/library/rx2/network/observing/strategy/MarshmallowNetworkObservingStrategy;->connectivitySubject:Lio/reactivex/subjects/Subject;

    sget-object v2, Lio/reactivex/BackpressureStrategy;->LATEST:Lio/reactivex/BackpressureStrategy;

    invoke-virtual {v1, v2}, Lio/reactivex/Observable;->toFlowable(Lio/reactivex/BackpressureStrategy;)Lio/reactivex/Flowable;

    move-result-object v1

    new-instance v2, Lcom/github/pwittchen/reactivenetwork/library/rx2/network/observing/strategy/MarshmallowNetworkObservingStrategy$3;

    invoke-direct {v2, p0, v0, p1}, Lcom/github/pwittchen/reactivenetwork/library/rx2/network/observing/strategy/MarshmallowNetworkObservingStrategy$3;-><init>(Lcom/github/pwittchen/reactivenetwork/library/rx2/network/observing/strategy/MarshmallowNetworkObservingStrategy;Landroid/net/ConnectivityManager;Landroid/content/Context;)V

    invoke-virtual {v1, v2}, Lio/reactivex/Flowable;->doOnCancel(Lio/reactivex/functions/Action;)Lio/reactivex/Flowable;

    move-result-object v0

    new-instance v1, Lcom/github/pwittchen/reactivenetwork/library/rx2/network/observing/strategy/MarshmallowNetworkObservingStrategy$2;

    invoke-direct {v1, p0}, Lcom/github/pwittchen/reactivenetwork/library/rx2/network/observing/strategy/MarshmallowNetworkObservingStrategy$2;-><init>(Lcom/github/pwittchen/reactivenetwork/library/rx2/network/observing/strategy/MarshmallowNetworkObservingStrategy;)V

    .line 87
    invoke-virtual {v0, v1}, Lio/reactivex/Flowable;->doAfterNext(Lio/reactivex/functions/Consumer;)Lio/reactivex/Flowable;

    move-result-object v0

    new-instance v1, Lcom/github/pwittchen/reactivenetwork/library/rx2/network/observing/strategy/MarshmallowNetworkObservingStrategy$1;

    invoke-direct {v1, p0}, Lcom/github/pwittchen/reactivenetwork/library/rx2/network/observing/strategy/MarshmallowNetworkObservingStrategy$1;-><init>(Lcom/github/pwittchen/reactivenetwork/library/rx2/network/observing/strategy/MarshmallowNetworkObservingStrategy;)V

    .line 92
    invoke-virtual {v0, v1}, Lio/reactivex/Flowable;->flatMap(Lio/reactivex/functions/Function;)Lio/reactivex/Flowable;

    move-result-object v0

    .line 97
    invoke-static {p1}, Lcom/github/pwittchen/reactivenetwork/library/rx2/Connectivity;->create(Landroid/content/Context;)Lcom/github/pwittchen/reactivenetwork/library/rx2/Connectivity;

    move-result-object p1

    invoke-virtual {v0, p1}, Lio/reactivex/Flowable;->startWith(Ljava/lang/Object;)Lio/reactivex/Flowable;

    move-result-object p1

    invoke-virtual {p1}, Lio/reactivex/Flowable;->distinctUntilChanged()Lio/reactivex/Flowable;

    move-result-object p1

    invoke-virtual {p1}, Lio/reactivex/Flowable;->toObservable()Lio/reactivex/Observable;

    move-result-object p1

    return-object p1
.end method

.method public onError(Ljava/lang/String;Ljava/lang/Exception;)V
    .locals 1

    .line 155
    const-string v0, "ReactiveNetwork"

    invoke-static {v0, p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method

.method protected onNext(Lcom/github/pwittchen/reactivenetwork/library/rx2/Connectivity;)V
    .locals 1

    .line 171
    iget-object v0, p0, Lcom/github/pwittchen/reactivenetwork/library/rx2/network/observing/strategy/MarshmallowNetworkObservingStrategy;->connectivitySubject:Lio/reactivex/subjects/Subject;

    invoke-interface {v0, p1}, Lio/reactivex/Observer;->onNext(Ljava/lang/Object;)V

    return-void
.end method

.method protected propagateAnyConnectedState(Lcom/github/pwittchen/reactivenetwork/library/rx2/Connectivity;Lcom/github/pwittchen/reactivenetwork/library/rx2/Connectivity;)Lorg/reactivestreams/Publisher;
    .locals 7

    .line 102
    invoke-virtual {p1}, Lcom/github/pwittchen/reactivenetwork/library/rx2/Connectivity;->type()I

    move-result v0

    invoke-virtual {p2}, Lcom/github/pwittchen/reactivenetwork/library/rx2/Connectivity;->type()I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eq v0, v1, :cond_0

    move v0, v3

    goto :goto_0

    :cond_0
    move v0, v2

    .line 103
    :goto_0
    invoke-virtual {p1}, Lcom/github/pwittchen/reactivenetwork/library/rx2/Connectivity;->state()Landroid/net/NetworkInfo$State;

    move-result-object v1

    sget-object v4, Landroid/net/NetworkInfo$State;->CONNECTED:Landroid/net/NetworkInfo$State;

    if-ne v1, v4, :cond_1

    move v1, v3

    goto :goto_1

    :cond_1
    move v1, v2

    .line 104
    :goto_1
    invoke-virtual {p2}, Lcom/github/pwittchen/reactivenetwork/library/rx2/Connectivity;->state()Landroid/net/NetworkInfo$State;

    move-result-object v4

    sget-object v5, Landroid/net/NetworkInfo$State;->DISCONNECTED:Landroid/net/NetworkInfo$State;

    if-ne v4, v5, :cond_2

    move v4, v3

    goto :goto_2

    :cond_2
    move v4, v2

    .line 105
    :goto_2
    invoke-virtual {p2}, Lcom/github/pwittchen/reactivenetwork/library/rx2/Connectivity;->detailedState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v5

    sget-object v6, Landroid/net/NetworkInfo$DetailedState;->IDLE:Landroid/net/NetworkInfo$DetailedState;

    if-eq v5, v6, :cond_3

    move v5, v3

    goto :goto_3

    :cond_3
    move v5, v2

    :goto_3
    if-eqz v0, :cond_4

    if-eqz v1, :cond_4

    if-eqz v4, :cond_4

    if-eqz v5, :cond_4

    const/4 v0, 0x2

    .line 108
    new-array v0, v0, [Lcom/github/pwittchen/reactivenetwork/library/rx2/Connectivity;

    aput-object p2, v0, v2

    aput-object p1, v0, v3

    invoke-static {v0}, Lio/reactivex/Flowable;->fromArray([Ljava/lang/Object;)Lio/reactivex/Flowable;

    move-result-object p1

    return-object p1

    .line 110
    :cond_4
    new-array p1, v3, [Lcom/github/pwittchen/reactivenetwork/library/rx2/Connectivity;

    aput-object p2, p1, v2

    invoke-static {p1}, Lio/reactivex/Flowable;->fromArray([Ljava/lang/Object;)Lio/reactivex/Flowable;

    move-result-object p1

    return-object p1
.end method

.method protected registerIdleReceiver(Landroid/content/Context;)V
    .locals 2

    .line 115
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.os.action.DEVICE_IDLE_MODE_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 116
    iget-object v1, p0, Lcom/github/pwittchen/reactivenetwork/library/rx2/network/observing/strategy/MarshmallowNetworkObservingStrategy;->idleReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p1, v1, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method protected tryToUnregisterCallback(Landroid/net/ConnectivityManager;)V
    .locals 1

    .line 140
    :try_start_0
    iget-object v0, p0, Lcom/github/pwittchen/reactivenetwork/library/rx2/network/observing/strategy/MarshmallowNetworkObservingStrategy;->networkCallback:Landroid/net/ConnectivityManager$NetworkCallback;

    invoke-virtual {p1, v0}, Landroid/net/ConnectivityManager;->unregisterNetworkCallback(Landroid/net/ConnectivityManager$NetworkCallback;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 142
    const-string v0, "could not unregister network callback"

    invoke-virtual {p0, v0, p1}, Lcom/github/pwittchen/reactivenetwork/library/rx2/network/observing/strategy/MarshmallowNetworkObservingStrategy;->onError(Ljava/lang/String;Ljava/lang/Exception;)V

    return-void
.end method

.method protected tryToUnregisterReceiver(Landroid/content/Context;)V
    .locals 1

    .line 148
    :try_start_0
    iget-object v0, p0, Lcom/github/pwittchen/reactivenetwork/library/rx2/network/observing/strategy/MarshmallowNetworkObservingStrategy;->idleReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p1, v0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 150
    const-string v0, "could not unregister receiver"

    invoke-virtual {p0, v0, p1}, Lcom/github/pwittchen/reactivenetwork/library/rx2/network/observing/strategy/MarshmallowNetworkObservingStrategy;->onError(Ljava/lang/String;Ljava/lang/Exception;)V

    return-void
.end method
