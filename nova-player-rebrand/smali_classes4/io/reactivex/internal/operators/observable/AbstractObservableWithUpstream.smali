.class abstract Lio/reactivex/internal/operators/observable/AbstractObservableWithUpstream;
.super Lio/reactivex/Observable;
.source "AbstractObservableWithUpstream.java"


# instance fields
.field protected final source:Lio/reactivex/ObservableSource;


# direct methods
.method constructor <init>(Lio/reactivex/ObservableSource;)V
    .locals 0

    .line 34
    invoke-direct {p0}, Lio/reactivex/Observable;-><init>()V

    .line 35
    iput-object p1, p0, Lio/reactivex/internal/operators/observable/AbstractObservableWithUpstream;->source:Lio/reactivex/ObservableSource;

    return-void
.end method
