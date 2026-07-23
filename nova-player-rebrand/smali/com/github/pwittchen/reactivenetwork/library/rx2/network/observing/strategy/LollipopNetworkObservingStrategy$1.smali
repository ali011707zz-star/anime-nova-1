.class Lcom/github/pwittchen/reactivenetwork/library/rx2/network/observing/strategy/LollipopNetworkObservingStrategy$1;
.super Ljava/lang/Object;
.source "LollipopNetworkObservingStrategy.java"

# interfaces
.implements Lio/reactivex/functions/Action;


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

.field final synthetic val$manager:Landroid/net/ConnectivityManager;


# direct methods
.method constructor <init>(Lcom/github/pwittchen/reactivenetwork/library/rx2/network/observing/strategy/LollipopNetworkObservingStrategy;Landroid/net/ConnectivityManager;)V
    .locals 0

    .line 54
    iput-object p1, p0, Lcom/github/pwittchen/reactivenetwork/library/rx2/network/observing/strategy/LollipopNetworkObservingStrategy$1;->this$0:Lcom/github/pwittchen/reactivenetwork/library/rx2/network/observing/strategy/LollipopNetworkObservingStrategy;

    iput-object p2, p0, Lcom/github/pwittchen/reactivenetwork/library/rx2/network/observing/strategy/LollipopNetworkObservingStrategy$1;->val$manager:Landroid/net/ConnectivityManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 56
    iget-object v0, p0, Lcom/github/pwittchen/reactivenetwork/library/rx2/network/observing/strategy/LollipopNetworkObservingStrategy$1;->this$0:Lcom/github/pwittchen/reactivenetwork/library/rx2/network/observing/strategy/LollipopNetworkObservingStrategy;

    iget-object v1, p0, Lcom/github/pwittchen/reactivenetwork/library/rx2/network/observing/strategy/LollipopNetworkObservingStrategy$1;->val$manager:Landroid/net/ConnectivityManager;

    invoke-static {v0, v1}, Lcom/github/pwittchen/reactivenetwork/library/rx2/network/observing/strategy/LollipopNetworkObservingStrategy;->access$000(Lcom/github/pwittchen/reactivenetwork/library/rx2/network/observing/strategy/LollipopNetworkObservingStrategy;Landroid/net/ConnectivityManager;)V

    return-void
.end method
