.class Lcom/github/pwittchen/reactivenetwork/library/rx2/network/observing/strategy/MarshmallowNetworkObservingStrategy$3;
.super Ljava/lang/Object;
.source "MarshmallowNetworkObservingStrategy.java"

# interfaces
.implements Lio/reactivex/functions/Action;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/github/pwittchen/reactivenetwork/library/rx2/network/observing/strategy/MarshmallowNetworkObservingStrategy;->observeNetworkConnectivity(Landroid/content/Context;)Lio/reactivex/Observable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/github/pwittchen/reactivenetwork/library/rx2/network/observing/strategy/MarshmallowNetworkObservingStrategy;

.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$manager:Landroid/net/ConnectivityManager;


# direct methods
.method constructor <init>(Lcom/github/pwittchen/reactivenetwork/library/rx2/network/observing/strategy/MarshmallowNetworkObservingStrategy;Landroid/net/ConnectivityManager;Landroid/content/Context;)V
    .locals 0

    .line 82
    iput-object p1, p0, Lcom/github/pwittchen/reactivenetwork/library/rx2/network/observing/strategy/MarshmallowNetworkObservingStrategy$3;->this$0:Lcom/github/pwittchen/reactivenetwork/library/rx2/network/observing/strategy/MarshmallowNetworkObservingStrategy;

    iput-object p2, p0, Lcom/github/pwittchen/reactivenetwork/library/rx2/network/observing/strategy/MarshmallowNetworkObservingStrategy$3;->val$manager:Landroid/net/ConnectivityManager;

    iput-object p3, p0, Lcom/github/pwittchen/reactivenetwork/library/rx2/network/observing/strategy/MarshmallowNetworkObservingStrategy$3;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 84
    iget-object v0, p0, Lcom/github/pwittchen/reactivenetwork/library/rx2/network/observing/strategy/MarshmallowNetworkObservingStrategy$3;->this$0:Lcom/github/pwittchen/reactivenetwork/library/rx2/network/observing/strategy/MarshmallowNetworkObservingStrategy;

    iget-object v1, p0, Lcom/github/pwittchen/reactivenetwork/library/rx2/network/observing/strategy/MarshmallowNetworkObservingStrategy$3;->val$manager:Landroid/net/ConnectivityManager;

    invoke-virtual {v0, v1}, Lcom/github/pwittchen/reactivenetwork/library/rx2/network/observing/strategy/MarshmallowNetworkObservingStrategy;->tryToUnregisterCallback(Landroid/net/ConnectivityManager;)V

    .line 85
    iget-object v0, p0, Lcom/github/pwittchen/reactivenetwork/library/rx2/network/observing/strategy/MarshmallowNetworkObservingStrategy$3;->this$0:Lcom/github/pwittchen/reactivenetwork/library/rx2/network/observing/strategy/MarshmallowNetworkObservingStrategy;

    iget-object v1, p0, Lcom/github/pwittchen/reactivenetwork/library/rx2/network/observing/strategy/MarshmallowNetworkObservingStrategy$3;->val$context:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/github/pwittchen/reactivenetwork/library/rx2/network/observing/strategy/MarshmallowNetworkObservingStrategy;->tryToUnregisterReceiver(Landroid/content/Context;)V

    return-void
.end method
