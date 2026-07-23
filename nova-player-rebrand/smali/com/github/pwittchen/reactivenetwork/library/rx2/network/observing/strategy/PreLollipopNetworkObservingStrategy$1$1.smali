.class Lcom/github/pwittchen/reactivenetwork/library/rx2/network/observing/strategy/PreLollipopNetworkObservingStrategy$1$1;
.super Landroid/content/BroadcastReceiver;
.source "PreLollipopNetworkObservingStrategy.java"


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

.field final synthetic val$emitter:Lio/reactivex/ObservableEmitter;


# direct methods
.method constructor <init>(Lcom/github/pwittchen/reactivenetwork/library/rx2/network/observing/strategy/PreLollipopNetworkObservingStrategy$1;Lio/reactivex/ObservableEmitter;)V
    .locals 0

    .line 52
    iput-object p1, p0, Lcom/github/pwittchen/reactivenetwork/library/rx2/network/observing/strategy/PreLollipopNetworkObservingStrategy$1$1;->this$1:Lcom/github/pwittchen/reactivenetwork/library/rx2/network/observing/strategy/PreLollipopNetworkObservingStrategy$1;

    iput-object p2, p0, Lcom/github/pwittchen/reactivenetwork/library/rx2/network/observing/strategy/PreLollipopNetworkObservingStrategy$1$1;->val$emitter:Lio/reactivex/ObservableEmitter;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    .line 54
    iget-object p2, p0, Lcom/github/pwittchen/reactivenetwork/library/rx2/network/observing/strategy/PreLollipopNetworkObservingStrategy$1$1;->val$emitter:Lio/reactivex/ObservableEmitter;

    invoke-static {p1}, Lcom/github/pwittchen/reactivenetwork/library/rx2/Connectivity;->create(Landroid/content/Context;)Lcom/github/pwittchen/reactivenetwork/library/rx2/Connectivity;

    move-result-object p1

    invoke-interface {p2, p1}, Lio/reactivex/Emitter;->onNext(Ljava/lang/Object;)V

    return-void
.end method
