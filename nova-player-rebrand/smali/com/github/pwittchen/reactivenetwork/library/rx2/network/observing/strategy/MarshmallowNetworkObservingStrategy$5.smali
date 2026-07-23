.class Lcom/github/pwittchen/reactivenetwork/library/rx2/network/observing/strategy/MarshmallowNetworkObservingStrategy$5;
.super Landroid/net/ConnectivityManager$NetworkCallback;
.source "MarshmallowNetworkObservingStrategy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/github/pwittchen/reactivenetwork/library/rx2/network/observing/strategy/MarshmallowNetworkObservingStrategy;->createNetworkCallback(Landroid/content/Context;)Landroid/net/ConnectivityManager$NetworkCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/github/pwittchen/reactivenetwork/library/rx2/network/observing/strategy/MarshmallowNetworkObservingStrategy;

.field final synthetic val$context:Landroid/content/Context;


# direct methods
.method constructor <init>(Lcom/github/pwittchen/reactivenetwork/library/rx2/network/observing/strategy/MarshmallowNetworkObservingStrategy;Landroid/content/Context;)V
    .locals 0

    .line 159
    iput-object p1, p0, Lcom/github/pwittchen/reactivenetwork/library/rx2/network/observing/strategy/MarshmallowNetworkObservingStrategy$5;->this$0:Lcom/github/pwittchen/reactivenetwork/library/rx2/network/observing/strategy/MarshmallowNetworkObservingStrategy;

    iput-object p2, p0, Lcom/github/pwittchen/reactivenetwork/library/rx2/network/observing/strategy/MarshmallowNetworkObservingStrategy$5;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Landroid/net/ConnectivityManager$NetworkCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onAvailable(Landroid/net/Network;)V
    .locals 1

    .line 161
    iget-object p1, p0, Lcom/github/pwittchen/reactivenetwork/library/rx2/network/observing/strategy/MarshmallowNetworkObservingStrategy$5;->this$0:Lcom/github/pwittchen/reactivenetwork/library/rx2/network/observing/strategy/MarshmallowNetworkObservingStrategy;

    iget-object v0, p0, Lcom/github/pwittchen/reactivenetwork/library/rx2/network/observing/strategy/MarshmallowNetworkObservingStrategy$5;->val$context:Landroid/content/Context;

    invoke-static {v0}, Lcom/github/pwittchen/reactivenetwork/library/rx2/Connectivity;->create(Landroid/content/Context;)Lcom/github/pwittchen/reactivenetwork/library/rx2/Connectivity;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/github/pwittchen/reactivenetwork/library/rx2/network/observing/strategy/MarshmallowNetworkObservingStrategy;->onNext(Lcom/github/pwittchen/reactivenetwork/library/rx2/Connectivity;)V

    return-void
.end method

.method public onLost(Landroid/net/Network;)V
    .locals 1

    .line 165
    iget-object p1, p0, Lcom/github/pwittchen/reactivenetwork/library/rx2/network/observing/strategy/MarshmallowNetworkObservingStrategy$5;->this$0:Lcom/github/pwittchen/reactivenetwork/library/rx2/network/observing/strategy/MarshmallowNetworkObservingStrategy;

    iget-object v0, p0, Lcom/github/pwittchen/reactivenetwork/library/rx2/network/observing/strategy/MarshmallowNetworkObservingStrategy$5;->val$context:Landroid/content/Context;

    invoke-static {v0}, Lcom/github/pwittchen/reactivenetwork/library/rx2/Connectivity;->create(Landroid/content/Context;)Lcom/github/pwittchen/reactivenetwork/library/rx2/Connectivity;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/github/pwittchen/reactivenetwork/library/rx2/network/observing/strategy/MarshmallowNetworkObservingStrategy;->onNext(Lcom/github/pwittchen/reactivenetwork/library/rx2/Connectivity;)V

    return-void
.end method
