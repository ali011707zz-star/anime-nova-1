.class Lcom/github/pwittchen/reactivenetwork/library/rx2/network/observing/strategy/PreLollipopNetworkObservingStrategy$2$1;
.super Ljava/lang/Object;
.source "PreLollipopNetworkObservingStrategy.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/github/pwittchen/reactivenetwork/library/rx2/network/observing/strategy/PreLollipopNetworkObservingStrategy$2;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/github/pwittchen/reactivenetwork/library/rx2/network/observing/strategy/PreLollipopNetworkObservingStrategy$2;

.field final synthetic val$inner:Lio/reactivex/Scheduler$Worker;


# direct methods
.method constructor <init>(Lcom/github/pwittchen/reactivenetwork/library/rx2/network/observing/strategy/PreLollipopNetworkObservingStrategy$2;Lio/reactivex/Scheduler$Worker;)V
    .locals 0

    .line 89
    iput-object p1, p0, Lcom/github/pwittchen/reactivenetwork/library/rx2/network/observing/strategy/PreLollipopNetworkObservingStrategy$2$1;->this$1:Lcom/github/pwittchen/reactivenetwork/library/rx2/network/observing/strategy/PreLollipopNetworkObservingStrategy$2;

    iput-object p2, p0, Lcom/github/pwittchen/reactivenetwork/library/rx2/network/observing/strategy/PreLollipopNetworkObservingStrategy$2$1;->val$inner:Lio/reactivex/Scheduler$Worker;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 92
    :try_start_0
    iget-object v0, p0, Lcom/github/pwittchen/reactivenetwork/library/rx2/network/observing/strategy/PreLollipopNetworkObservingStrategy$2$1;->this$1:Lcom/github/pwittchen/reactivenetwork/library/rx2/network/observing/strategy/PreLollipopNetworkObservingStrategy$2;

    iget-object v0, v0, Lcom/github/pwittchen/reactivenetwork/library/rx2/network/observing/strategy/PreLollipopNetworkObservingStrategy$2;->val$action:Lio/reactivex/functions/Action;

    invoke-interface {v0}, Lio/reactivex/functions/Action;->run()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 94
    iget-object v1, p0, Lcom/github/pwittchen/reactivenetwork/library/rx2/network/observing/strategy/PreLollipopNetworkObservingStrategy$2$1;->this$1:Lcom/github/pwittchen/reactivenetwork/library/rx2/network/observing/strategy/PreLollipopNetworkObservingStrategy$2;

    iget-object v1, v1, Lcom/github/pwittchen/reactivenetwork/library/rx2/network/observing/strategy/PreLollipopNetworkObservingStrategy$2;->this$0:Lcom/github/pwittchen/reactivenetwork/library/rx2/network/observing/strategy/PreLollipopNetworkObservingStrategy;

    const-string v2, "Could not unregister receiver in UI Thread"

    invoke-virtual {v1, v2, v0}, Lcom/github/pwittchen/reactivenetwork/library/rx2/network/observing/strategy/PreLollipopNetworkObservingStrategy;->onError(Ljava/lang/String;Ljava/lang/Exception;)V

    .line 96
    :goto_0
    iget-object v0, p0, Lcom/github/pwittchen/reactivenetwork/library/rx2/network/observing/strategy/PreLollipopNetworkObservingStrategy$2$1;->val$inner:Lio/reactivex/Scheduler$Worker;

    invoke-interface {v0}, Lio/reactivex/disposables/Disposable;->dispose()V

    return-void
.end method
