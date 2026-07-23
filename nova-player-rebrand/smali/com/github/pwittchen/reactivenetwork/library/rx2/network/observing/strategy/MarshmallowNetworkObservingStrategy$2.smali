.class Lcom/github/pwittchen/reactivenetwork/library/rx2/network/observing/strategy/MarshmallowNetworkObservingStrategy$2;
.super Ljava/lang/Object;
.source "MarshmallowNetworkObservingStrategy.java"

# interfaces
.implements Lio/reactivex/functions/Consumer;


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

    .line 87
    iput-object p1, p0, Lcom/github/pwittchen/reactivenetwork/library/rx2/network/observing/strategy/MarshmallowNetworkObservingStrategy$2;->this$0:Lcom/github/pwittchen/reactivenetwork/library/rx2/network/observing/strategy/MarshmallowNetworkObservingStrategy;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public accept(Lcom/github/pwittchen/reactivenetwork/library/rx2/Connectivity;)V
    .locals 1

    .line 90
    iget-object v0, p0, Lcom/github/pwittchen/reactivenetwork/library/rx2/network/observing/strategy/MarshmallowNetworkObservingStrategy$2;->this$0:Lcom/github/pwittchen/reactivenetwork/library/rx2/network/observing/strategy/MarshmallowNetworkObservingStrategy;

    invoke-static {v0, p1}, Lcom/github/pwittchen/reactivenetwork/library/rx2/network/observing/strategy/MarshmallowNetworkObservingStrategy;->access$002(Lcom/github/pwittchen/reactivenetwork/library/rx2/network/observing/strategy/MarshmallowNetworkObservingStrategy;Lcom/github/pwittchen/reactivenetwork/library/rx2/Connectivity;)Lcom/github/pwittchen/reactivenetwork/library/rx2/Connectivity;

    return-void
.end method

.method public bridge synthetic accept(Ljava/lang/Object;)V
    .locals 0

    .line 87
    check-cast p1, Lcom/github/pwittchen/reactivenetwork/library/rx2/Connectivity;

    invoke-virtual {p0, p1}, Lcom/github/pwittchen/reactivenetwork/library/rx2/network/observing/strategy/MarshmallowNetworkObservingStrategy$2;->accept(Lcom/github/pwittchen/reactivenetwork/library/rx2/Connectivity;)V

    return-void
.end method
