.class Lcom/github/pwittchen/reactivenetwork/library/rx2/network/observing/strategy/LollipopNetworkObservingStrategy$3;
.super Landroid/net/ConnectivityManager$NetworkCallback;
.source "LollipopNetworkObservingStrategy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/github/pwittchen/reactivenetwork/library/rx2/network/observing/strategy/LollipopNetworkObservingStrategy;->createNetworkCallback(Lio/reactivex/ObservableEmitter;Landroid/content/Context;)Landroid/net/ConnectivityManager$NetworkCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/github/pwittchen/reactivenetwork/library/rx2/network/observing/strategy/LollipopNetworkObservingStrategy;

.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$subscriber:Lio/reactivex/ObservableEmitter;


# direct methods
.method constructor <init>(Lcom/github/pwittchen/reactivenetwork/library/rx2/network/observing/strategy/LollipopNetworkObservingStrategy;Lio/reactivex/ObservableEmitter;Landroid/content/Context;)V
    .locals 0

    .line 75
    iput-object p1, p0, Lcom/github/pwittchen/reactivenetwork/library/rx2/network/observing/strategy/LollipopNetworkObservingStrategy$3;->this$0:Lcom/github/pwittchen/reactivenetwork/library/rx2/network/observing/strategy/LollipopNetworkObservingStrategy;

    iput-object p2, p0, Lcom/github/pwittchen/reactivenetwork/library/rx2/network/observing/strategy/LollipopNetworkObservingStrategy$3;->val$subscriber:Lio/reactivex/ObservableEmitter;

    iput-object p3, p0, Lcom/github/pwittchen/reactivenetwork/library/rx2/network/observing/strategy/LollipopNetworkObservingStrategy$3;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Landroid/net/ConnectivityManager$NetworkCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onAvailable(Landroid/net/Network;)V
    .locals 1

    .line 77
    iget-object p1, p0, Lcom/github/pwittchen/reactivenetwork/library/rx2/network/observing/strategy/LollipopNetworkObservingStrategy$3;->val$subscriber:Lio/reactivex/ObservableEmitter;

    iget-object v0, p0, Lcom/github/pwittchen/reactivenetwork/library/rx2/network/observing/strategy/LollipopNetworkObservingStrategy$3;->val$context:Landroid/content/Context;

    invoke-static {v0}, Lcom/github/pwittchen/reactivenetwork/library/rx2/Connectivity;->create(Landroid/content/Context;)Lcom/github/pwittchen/reactivenetwork/library/rx2/Connectivity;

    move-result-object v0

    invoke-interface {p1, v0}, Lio/reactivex/Emitter;->onNext(Ljava/lang/Object;)V

    return-void
.end method

.method public onLost(Landroid/net/Network;)V
    .locals 1

    .line 81
    iget-object p1, p0, Lcom/github/pwittchen/reactivenetwork/library/rx2/network/observing/strategy/LollipopNetworkObservingStrategy$3;->val$subscriber:Lio/reactivex/ObservableEmitter;

    iget-object v0, p0, Lcom/github/pwittchen/reactivenetwork/library/rx2/network/observing/strategy/LollipopNetworkObservingStrategy$3;->val$context:Landroid/content/Context;

    invoke-static {v0}, Lcom/github/pwittchen/reactivenetwork/library/rx2/Connectivity;->create(Landroid/content/Context;)Lcom/github/pwittchen/reactivenetwork/library/rx2/Connectivity;

    move-result-object v0

    invoke-interface {p1, v0}, Lio/reactivex/Emitter;->onNext(Ljava/lang/Object;)V

    return-void
.end method
