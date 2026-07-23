.class public final Lio/reactivex/internal/operators/observable/ObservableFromPublisher;
.super Lio/reactivex/Observable;
.source "ObservableFromPublisher.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/reactivex/internal/operators/observable/ObservableFromPublisher$PublisherSubscriber;
    }
.end annotation


# instance fields
.field final source:Lorg/reactivestreams/Publisher;


# direct methods
.method public constructor <init>(Lorg/reactivestreams/Publisher;)V
    .locals 0

    .line 25
    invoke-direct {p0}, Lio/reactivex/Observable;-><init>()V

    .line 26
    iput-object p1, p0, Lio/reactivex/internal/operators/observable/ObservableFromPublisher;->source:Lorg/reactivestreams/Publisher;

    return-void
.end method


# virtual methods
.method protected subscribeActual(Lio/reactivex/Observer;)V
    .locals 2

    .line 31
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableFromPublisher;->source:Lorg/reactivestreams/Publisher;

    new-instance v1, Lio/reactivex/internal/operators/observable/ObservableFromPublisher$PublisherSubscriber;

    invoke-direct {v1, p1}, Lio/reactivex/internal/operators/observable/ObservableFromPublisher$PublisherSubscriber;-><init>(Lio/reactivex/Observer;)V

    invoke-interface {v0, v1}, Lorg/reactivestreams/Publisher;->subscribe(Lorg/reactivestreams/Subscriber;)V

    return-void
.end method
