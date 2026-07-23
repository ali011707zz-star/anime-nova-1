.class Lcom/github/pwittchen/reactivenetwork/library/rx2/network/observing/strategy/PreLollipopNetworkObservingStrategy$2;
.super Ljava/lang/Object;
.source "PreLollipopNetworkObservingStrategy.java"

# interfaces
.implements Lio/reactivex/functions/Action;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/github/pwittchen/reactivenetwork/library/rx2/network/observing/strategy/PreLollipopNetworkObservingStrategy;->disposeInUiThread(Lio/reactivex/functions/Action;)Lio/reactivex/disposables/Disposable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/github/pwittchen/reactivenetwork/library/rx2/network/observing/strategy/PreLollipopNetworkObservingStrategy;

.field final synthetic val$action:Lio/reactivex/functions/Action;


# direct methods
.method constructor <init>(Lcom/github/pwittchen/reactivenetwork/library/rx2/network/observing/strategy/PreLollipopNetworkObservingStrategy;Lio/reactivex/functions/Action;)V
    .locals 0

    .line 83
    iput-object p1, p0, Lcom/github/pwittchen/reactivenetwork/library/rx2/network/observing/strategy/PreLollipopNetworkObservingStrategy$2;->this$0:Lcom/github/pwittchen/reactivenetwork/library/rx2/network/observing/strategy/PreLollipopNetworkObservingStrategy;

    iput-object p2, p0, Lcom/github/pwittchen/reactivenetwork/library/rx2/network/observing/strategy/PreLollipopNetworkObservingStrategy$2;->val$action:Lio/reactivex/functions/Action;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 85
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v1

    if-ne v0, v1, :cond_0

    .line 86
    iget-object v0, p0, Lcom/github/pwittchen/reactivenetwork/library/rx2/network/observing/strategy/PreLollipopNetworkObservingStrategy$2;->val$action:Lio/reactivex/functions/Action;

    invoke-interface {v0}, Lio/reactivex/functions/Action;->run()V

    return-void

    .line 88
    :cond_0
    invoke-static {}, Lio/reactivex/android/schedulers/AndroidSchedulers;->mainThread()Lio/reactivex/Scheduler;

    move-result-object v0

    invoke-virtual {v0}, Lio/reactivex/Scheduler;->createWorker()Lio/reactivex/Scheduler$Worker;

    move-result-object v0

    .line 89
    new-instance v1, Lcom/github/pwittchen/reactivenetwork/library/rx2/network/observing/strategy/PreLollipopNetworkObservingStrategy$2$1;

    invoke-direct {v1, p0, v0}, Lcom/github/pwittchen/reactivenetwork/library/rx2/network/observing/strategy/PreLollipopNetworkObservingStrategy$2$1;-><init>(Lcom/github/pwittchen/reactivenetwork/library/rx2/network/observing/strategy/PreLollipopNetworkObservingStrategy$2;Lio/reactivex/Scheduler$Worker;)V

    invoke-virtual {v0, v1}, Lio/reactivex/Scheduler$Worker;->schedule(Ljava/lang/Runnable;)Lio/reactivex/disposables/Disposable;

    return-void
.end method
