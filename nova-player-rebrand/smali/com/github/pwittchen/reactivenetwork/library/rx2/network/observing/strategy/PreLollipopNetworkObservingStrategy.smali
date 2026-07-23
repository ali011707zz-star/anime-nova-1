.class public Lcom/github/pwittchen/reactivenetwork/library/rx2/network/observing/strategy/PreLollipopNetworkObservingStrategy;
.super Ljava/lang/Object;
.source "PreLollipopNetworkObservingStrategy.java"

# interfaces
.implements Lcom/github/pwittchen/reactivenetwork/library/rx2/network/observing/NetworkObservingStrategy;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/github/pwittchen/reactivenetwork/library/rx2/network/observing/strategy/PreLollipopNetworkObservingStrategy;Lio/reactivex/functions/Action;)Lio/reactivex/disposables/Disposable;
    .locals 0

    .line 43
    invoke-direct {p0, p1}, Lcom/github/pwittchen/reactivenetwork/library/rx2/network/observing/strategy/PreLollipopNetworkObservingStrategy;->disposeInUiThread(Lio/reactivex/functions/Action;)Lio/reactivex/disposables/Disposable;

    move-result-object p0

    return-object p0
.end method

.method private disposeInUiThread(Lio/reactivex/functions/Action;)Lio/reactivex/disposables/Disposable;
    .locals 1

    .line 83
    new-instance v0, Lcom/github/pwittchen/reactivenetwork/library/rx2/network/observing/strategy/PreLollipopNetworkObservingStrategy$2;

    invoke-direct {v0, p0, p1}, Lcom/github/pwittchen/reactivenetwork/library/rx2/network/observing/strategy/PreLollipopNetworkObservingStrategy$2;-><init>(Lcom/github/pwittchen/reactivenetwork/library/rx2/network/observing/strategy/PreLollipopNetworkObservingStrategy;Lio/reactivex/functions/Action;)V

    invoke-static {v0}, Lio/reactivex/disposables/Disposables;->fromAction(Lio/reactivex/functions/Action;)Lio/reactivex/disposables/Disposable;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method public observeNetworkConnectivity(Landroid/content/Context;)Lio/reactivex/Observable;
    .locals 2

    .line 46
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 47
    const-string v1, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 49
    new-instance v1, Lcom/github/pwittchen/reactivenetwork/library/rx2/network/observing/strategy/PreLollipopNetworkObservingStrategy$1;

    invoke-direct {v1, p0, p1, v0}, Lcom/github/pwittchen/reactivenetwork/library/rx2/network/observing/strategy/PreLollipopNetworkObservingStrategy$1;-><init>(Lcom/github/pwittchen/reactivenetwork/library/rx2/network/observing/strategy/PreLollipopNetworkObservingStrategy;Landroid/content/Context;Landroid/content/IntentFilter;)V

    invoke-static {v1}, Lio/reactivex/Observable;->create(Lio/reactivex/ObservableOnSubscribe;)Lio/reactivex/Observable;

    move-result-object p1

    .line 67
    invoke-static {}, Lcom/github/pwittchen/reactivenetwork/library/rx2/Connectivity;->create()Lcom/github/pwittchen/reactivenetwork/library/rx2/Connectivity;

    move-result-object v0

    invoke-virtual {p1, v0}, Lio/reactivex/Observable;->defaultIfEmpty(Ljava/lang/Object;)Lio/reactivex/Observable;

    move-result-object p1

    return-object p1
.end method

.method public onError(Ljava/lang/String;Ljava/lang/Exception;)V
    .locals 1

    .line 79
    const-string v0, "ReactiveNetwork"

    invoke-static {v0, p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method

.method protected tryToUnregisterReceiver(Landroid/content/Context;Landroid/content/BroadcastReceiver;)V
    .locals 0

    .line 72
    :try_start_0
    invoke-virtual {p1, p2}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 74
    const-string p2, "receiver was already unregistered"

    invoke-virtual {p0, p2, p1}, Lcom/github/pwittchen/reactivenetwork/library/rx2/network/observing/strategy/PreLollipopNetworkObservingStrategy;->onError(Ljava/lang/String;Ljava/lang/Exception;)V

    return-void
.end method
