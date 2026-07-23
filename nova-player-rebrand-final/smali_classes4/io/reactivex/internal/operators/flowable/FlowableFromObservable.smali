.class public final Lio/reactivex/internal/operators/flowable/FlowableFromObservable;
.super Lio/reactivex/Flowable;
.source "FlowableFromObservable.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/reactivex/internal/operators/flowable/FlowableFromObservable$SubscriberObserver;
    }
.end annotation


# instance fields
.field private final upstream:Lio/reactivex/Observable;


# direct methods
.method public constructor <init>(Lio/reactivex/Observable;)V
    .locals 0

    .line 23
    invoke-direct {p0}, Lio/reactivex/Flowable;-><init>()V

    .line 24
    iput-object p1, p0, Lio/reactivex/internal/operators/flowable/FlowableFromObservable;->upstream:Lio/reactivex/Observable;

    return-void
.end method


# virtual methods
.method protected subscribeActual(Lorg/reactivestreams/Subscriber;)V
    .locals 2

    .line 29
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/FlowableFromObservable;->upstream:Lio/reactivex/Observable;

    new-instance v1, Lio/reactivex/internal/operators/flowable/FlowableFromObservable$SubscriberObserver;

    invoke-direct {v1, p1}, Lio/reactivex/internal/operators/flowable/FlowableFromObservable$SubscriberObserver;-><init>(Lorg/reactivestreams/Subscriber;)V

    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/Observer;)V

    return-void
.end method
