.class Lcom/github/pwittchen/reactivenetwork/library/rx2/network/observing/strategy/PreLollipopNetworkObservingStrategy$1$2;
.super Ljava/lang/Object;
.source "PreLollipopNetworkObservingStrategy.java"

# interfaces
.implements Lio/reactivex/functions/Action;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/github/pwittchen/reactivenetwork/library/rx2/network/observing/strategy/PreLollipopNetworkObservingStrategy$1;->subscribe(Lio/reactivex/ObservableEmitter;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/github/pwittchen/reactivenetwork/library/rx2/network/observing/strategy/PreLollipopNetworkObservingStrategy$1;

.field final synthetic val$receiver:Landroid/content/BroadcastReceiver;


# direct methods
.method constructor <init>(Lcom/github/pwittchen/reactivenetwork/library/rx2/network/observing/strategy/PreLollipopNetworkObservingStrategy$1;Landroid/content/BroadcastReceiver;)V
    .locals 0

    .line 60
    iput-object p1, p0, Lcom/github/pwittchen/reactivenetwork/library/rx2/network/observing/strategy/PreLollipopNetworkObservingStrategy$1$2;->this$1:Lcom/github/pwittchen/reactivenetwork/library/rx2/network/observing/strategy/PreLollipopNetworkObservingStrategy$1;

    iput-object p2, p0, Lcom/github/pwittchen/reactivenetwork/library/rx2/network/observing/strategy/PreLollipopNetworkObservingStrategy$1$2;->val$receiver:Landroid/content/BroadcastReceiver;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 62
    iget-object v0, p0, Lcom/github/pwittchen/reactivenetwork/library/rx2/network/observing/strategy/PreLollipopNetworkObservingStrategy$1$2;->this$1:Lcom/github/pwittchen/reactivenetwork/library/rx2/network/observing/strategy/PreLollipopNetworkObservingStrategy$1;

    iget-object v1, v0, Lcom/github/pwittchen/reactivenetwork/library/rx2/network/observing/strategy/PreLollipopNetworkObservingStrategy$1;->this$0:Lcom/github/pwittchen/reactivenetwork/library/rx2/network/observing/strategy/PreLollipopNetworkObservingStrategy;

    iget-object v0, v0, Lcom/github/pwittchen/reactivenetwork/library/rx2/network/observing/strategy/PreLollipopNetworkObservingStrategy$1;->val$context:Landroid/content/Context;

    iget-object v2, p0, Lcom/github/pwittchen/reactivenetwork/library/rx2/network/observing/strategy/PreLollipopNetworkObservingStrategy$1$2;->val$receiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v0, v2}, Lcom/github/pwittchen/reactivenetwork/library/rx2/network/observing/strategy/PreLollipopNetworkObservingStrategy;->tryToUnregisterReceiver(Landroid/content/Context;Landroid/content/BroadcastReceiver;)V

    return-void
.end method
