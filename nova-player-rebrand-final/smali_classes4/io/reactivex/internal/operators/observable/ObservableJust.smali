.class public final Lio/reactivex/internal/operators/observable/ObservableJust;
.super Lio/reactivex/Observable;
.source "ObservableJust.java"

# interfaces
.implements Lio/reactivex/internal/fuseable/ScalarCallable;


# instance fields
.field private final value:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Ljava/lang/Object;)V
    .locals 0

    .line 27
    invoke-direct {p0}, Lio/reactivex/Observable;-><init>()V

    .line 28
    iput-object p1, p0, Lio/reactivex/internal/operators/observable/ObservableJust;->value:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public call()Ljava/lang/Object;
    .locals 1

    .line 40
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableJust;->value:Ljava/lang/Object;

    return-object v0
.end method

.method protected subscribeActual(Lio/reactivex/Observer;)V
    .locals 2

    .line 33
    new-instance v0, Lio/reactivex/internal/operators/observable/ObservableScalarXMap$ScalarDisposable;

    iget-object v1, p0, Lio/reactivex/internal/operators/observable/ObservableJust;->value:Ljava/lang/Object;

    invoke-direct {v0, p1, v1}, Lio/reactivex/internal/operators/observable/ObservableScalarXMap$ScalarDisposable;-><init>(Lio/reactivex/Observer;Ljava/lang/Object;)V

    .line 34
    invoke-interface {p1, v0}, Lio/reactivex/Observer;->onSubscribe(Lio/reactivex/disposables/Disposable;)V

    .line 35
    invoke-virtual {v0}, Lio/reactivex/internal/operators/observable/ObservableScalarXMap$ScalarDisposable;->run()V

    return-void
.end method
