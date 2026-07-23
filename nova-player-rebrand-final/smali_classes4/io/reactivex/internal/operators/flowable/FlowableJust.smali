.class public final Lio/reactivex/internal/operators/flowable/FlowableJust;
.super Lio/reactivex/Flowable;
.source "FlowableJust.java"

# interfaces
.implements Lio/reactivex/internal/fuseable/ScalarCallable;


# instance fields
.field private final value:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Ljava/lang/Object;)V
    .locals 0

    .line 28
    invoke-direct {p0}, Lio/reactivex/Flowable;-><init>()V

    .line 29
    iput-object p1, p0, Lio/reactivex/internal/operators/flowable/FlowableJust;->value:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public call()Ljava/lang/Object;
    .locals 1

    .line 39
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/FlowableJust;->value:Ljava/lang/Object;

    return-object v0
.end method

.method protected subscribeActual(Lorg/reactivestreams/Subscriber;)V
    .locals 2

    .line 34
    new-instance v0, Lio/reactivex/internal/subscriptions/ScalarSubscription;

    iget-object v1, p0, Lio/reactivex/internal/operators/flowable/FlowableJust;->value:Ljava/lang/Object;

    invoke-direct {v0, p1, v1}, Lio/reactivex/internal/subscriptions/ScalarSubscription;-><init>(Lorg/reactivestreams/Subscriber;Ljava/lang/Object;)V

    invoke-interface {p1, v0}, Lorg/reactivestreams/Subscriber;->onSubscribe(Lorg/reactivestreams/Subscription;)V

    return-void
.end method
