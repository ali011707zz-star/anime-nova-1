.class public abstract Lcom/github/pwittchen/reactivenetwork/library/rx2/ReactiveNetwork;
.super Ljava/lang/Object;
.source "ReactiveNetwork.java"


# direct methods
.method public static observeNetworkConnectivity(Landroid/content/Context;)Lio/reactivex/Observable;
    .locals 1

    .line 65
    invoke-static {}, Lcom/github/pwittchen/reactivenetwork/library/rx2/Preconditions;->isAtLeastAndroidMarshmallow()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 66
    new-instance v0, Lcom/github/pwittchen/reactivenetwork/library/rx2/network/observing/strategy/MarshmallowNetworkObservingStrategy;

    invoke-direct {v0}, Lcom/github/pwittchen/reactivenetwork/library/rx2/network/observing/strategy/MarshmallowNetworkObservingStrategy;-><init>()V

    goto :goto_0

    .line 67
    :cond_0
    invoke-static {}, Lcom/github/pwittchen/reactivenetwork/library/rx2/Preconditions;->isAtLeastAndroidLollipop()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 68
    new-instance v0, Lcom/github/pwittchen/reactivenetwork/library/rx2/network/observing/strategy/LollipopNetworkObservingStrategy;

    invoke-direct {v0}, Lcom/github/pwittchen/reactivenetwork/library/rx2/network/observing/strategy/LollipopNetworkObservingStrategy;-><init>()V

    goto :goto_0

    .line 70
    :cond_1
    new-instance v0, Lcom/github/pwittchen/reactivenetwork/library/rx2/network/observing/strategy/PreLollipopNetworkObservingStrategy;

    invoke-direct {v0}, Lcom/github/pwittchen/reactivenetwork/library/rx2/network/observing/strategy/PreLollipopNetworkObservingStrategy;-><init>()V

    .line 73
    :goto_0
    invoke-static {p0, v0}, Lcom/github/pwittchen/reactivenetwork/library/rx2/ReactiveNetwork;->observeNetworkConnectivity(Landroid/content/Context;Lcom/github/pwittchen/reactivenetwork/library/rx2/network/observing/NetworkObservingStrategy;)Lio/reactivex/Observable;

    move-result-object p0

    return-object p0
.end method

.method public static observeNetworkConnectivity(Landroid/content/Context;Lcom/github/pwittchen/reactivenetwork/library/rx2/network/observing/NetworkObservingStrategy;)Lio/reactivex/Observable;
    .locals 1

    .line 90
    const-string v0, "context == null"

    invoke-static {p0, v0}, Lcom/github/pwittchen/reactivenetwork/library/rx2/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 91
    const-string v0, "strategy == null"

    invoke-static {p1, v0}, Lcom/github/pwittchen/reactivenetwork/library/rx2/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 92
    invoke-interface {p1, p0}, Lcom/github/pwittchen/reactivenetwork/library/rx2/network/observing/NetworkObservingStrategy;->observeNetworkConnectivity(Landroid/content/Context;)Lio/reactivex/Observable;

    move-result-object p0

    return-object p0
.end method
