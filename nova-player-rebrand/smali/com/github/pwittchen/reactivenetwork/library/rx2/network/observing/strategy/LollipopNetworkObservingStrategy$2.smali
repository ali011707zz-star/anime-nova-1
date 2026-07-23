.class Lcom/github/pwittchen/reactivenetwork/library/rx2/network/observing/strategy/LollipopNetworkObservingStrategy$2;
.super Ljava/lang/Object;
.source "LollipopNetworkObservingStrategy.java"

# interfaces
.implements Lio/reactivex/ObservableOnSubscribe;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/github/pwittchen/reactivenetwork/library/rx2/network/observing/strategy/LollipopNetworkObservingStrategy;->observeNetworkConnectivity(Landroid/content/Context;)Lio/reactivex/Observable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/github/pwittchen/reactivenetwork/library/rx2/network/observing/strategy/LollipopNetworkObservingStrategy;

.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$manager:Landroid/net/ConnectivityManager;


# direct methods
.method constructor <init>(Lcom/github/pwittchen/reactivenetwork/library/rx2/network/observing/strategy/LollipopNetworkObservingStrategy;Landroid/content/Context;Landroid/net/ConnectivityManager;)V
    .locals 0

    .line 48
    iput-object p1, p0, Lcom/github/pwittchen/reactivenetwork/library/rx2/network/observing/strategy/LollipopNetworkObservingStrategy$2;->this$0:Lcom/github/pwittchen/reactivenetwork/library/rx2/network/observing/strategy/LollipopNetworkObservingStrategy;

    iput-object p2, p0, Lcom/github/pwittchen/reactivenetwork/library/rx2/network/observing/strategy/LollipopNetworkObservingStrategy$2;->val$context:Landroid/content/Context;

    iput-object p3, p0, Lcom/github/pwittchen/reactivenetwork/library/rx2/network/observing/strategy/LollipopNetworkObservingStrategy$2;->val$manager:Landroid/net/ConnectivityManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public subscribe(Lio/reactivex/ObservableEmitter;)V
    .locals 2

    .line 50
    iget-object v0, p0, Lcom/github/pwittchen/reactivenetwork/library/rx2/network/observing/strategy/LollipopNetworkObservingStrategy$2;->this$0:Lcom/github/pwittchen/reactivenetwork/library/rx2/network/observing/strategy/LollipopNetworkObservingStrategy;

    iget-object v1, p0, Lcom/github/pwittchen/reactivenetwork/library/rx2/network/observing/strategy/LollipopNetworkObservingStrategy$2;->val$context:Landroid/content/Context;

    invoke-static {v0, p1, v1}, Lcom/github/pwittchen/reactivenetwork/library/rx2/network/observing/strategy/LollipopNetworkObservingStrategy;->access$200(Lcom/github/pwittchen/reactivenetwork/library/rx2/network/observing/strategy/LollipopNetworkObservingStrategy;Lio/reactivex/ObservableEmitter;Landroid/content/Context;)Landroid/net/ConnectivityManager$NetworkCallback;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/github/pwittchen/reactivenetwork/library/rx2/network/observing/strategy/LollipopNetworkObservingStrategy;->access$102(Lcom/github/pwittchen/reactivenetwork/library/rx2/network/observing/strategy/LollipopNetworkObservingStrategy;Landroid/net/ConnectivityManager$NetworkCallback;)Landroid/net/ConnectivityManager$NetworkCallback;

    .line 51
    new-instance p1, Landroid/net/NetworkRequest$Builder;

    invoke-direct {p1}, Landroid/net/NetworkRequest$Builder;-><init>()V

    invoke-virtual {p1}, Landroid/net/NetworkRequest$Builder;->build()Landroid/net/NetworkRequest;

    move-result-object p1

    .line 52
    iget-object v0, p0, Lcom/github/pwittchen/reactivenetwork/library/rx2/network/observing/strategy/LollipopNetworkObservingStrategy$2;->val$manager:Landroid/net/ConnectivityManager;

    iget-object v1, p0, Lcom/github/pwittchen/reactivenetwork/library/rx2/network/observing/strategy/LollipopNetworkObservingStrategy$2;->this$0:Lcom/github/pwittchen/reactivenetwork/library/rx2/network/observing/strategy/LollipopNetworkObservingStrategy;

    invoke-static {v1}, Lcom/github/pwittchen/reactivenetwork/library/rx2/network/observing/strategy/LollipopNetworkObservingStrategy;->access$100(Lcom/github/pwittchen/reactivenetwork/library/rx2/network/observing/strategy/LollipopNetworkObservingStrategy;)Landroid/net/ConnectivityManager$NetworkCallback;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Landroid/net/ConnectivityManager;->registerNetworkCallback(Landroid/net/NetworkRequest;Landroid/net/ConnectivityManager$NetworkCallback;)V

    return-void
.end method
