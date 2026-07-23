.class Lcom/github/pwittchen/reactivenetwork/library/rx2/network/observing/strategy/MarshmallowNetworkObservingStrategy$1;
.super Ljava/lang/Object;
.source "MarshmallowNetworkObservingStrategy.java"

# interfaces
.implements Lio/reactivex/functions/Function;


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


# direct methods
.method constructor <init>(Lcom/github/pwittchen/reactivenetwork/library/rx2/network/observing/strategy/MarshmallowNetworkObservingStrategy;)V
    .locals 0

    .line 92
    iput-object p1, p0, Lcom/github/pwittchen/reactivenetwork/library/rx2/network/observing/strategy/MarshmallowNetworkObservingStrategy$1;->this$0:Lcom/github/pwittchen/reactivenetwork/library/rx2/network/observing/strategy/MarshmallowNetworkObservingStrategy;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 92
    check-cast p1, Lcom/github/pwittchen/reactivenetwork/library/rx2/Connectivity;

    invoke-virtual {p0, p1}, Lcom/github/pwittchen/reactivenetwork/library/rx2/network/observing/strategy/MarshmallowNetworkObservingStrategy$1;->apply(Lcom/github/pwittchen/reactivenetwork/library/rx2/Connectivity;)Lorg/reactivestreams/Publisher;

    move-result-object p1

    return-object p1
.end method

.method public apply(Lcom/github/pwittchen/reactivenetwork/library/rx2/Connectivity;)Lorg/reactivestreams/Publisher;
    .locals 2

    .line 95
    iget-object v0, p0, Lcom/github/pwittchen/reactivenetwork/library/rx2/network/observing/strategy/MarshmallowNetworkObservingStrategy$1;->this$0:Lcom/github/pwittchen/reactivenetwork/library/rx2/network/observing/strategy/MarshmallowNetworkObservingStrategy;

    invoke-static {v0}, Lcom/github/pwittchen/reactivenetwork/library/rx2/network/observing/strategy/MarshmallowNetworkObservingStrategy;->access$000(Lcom/github/pwittchen/reactivenetwork/library/rx2/network/observing/strategy/MarshmallowNetworkObservingStrategy;)Lcom/github/pwittchen/reactivenetwork/library/rx2/Connectivity;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Lcom/github/pwittchen/reactivenetwork/library/rx2/network/observing/strategy/MarshmallowNetworkObservingStrategy;->propagateAnyConnectedState(Lcom/github/pwittchen/reactivenetwork/library/rx2/Connectivity;Lcom/github/pwittchen/reactivenetwork/library/rx2/Connectivity;)Lorg/reactivestreams/Publisher;

    move-result-object p1

    return-object p1
.end method
