.class abstract Lio/reactivex/internal/operators/flowable/AbstractFlowableWithUpstream;
.super Lio/reactivex/Flowable;
.source "AbstractFlowableWithUpstream.java"


# instance fields
.field protected final source:Lio/reactivex/Flowable;


# direct methods
.method constructor <init>(Lio/reactivex/Flowable;)V
    .locals 1

    .line 41
    invoke-direct {p0}, Lio/reactivex/Flowable;-><init>()V

    .line 42
    const-string v0, "source is null"

    invoke-static {p1, v0}, Lio/reactivex/internal/functions/ObjectHelper;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/reactivex/Flowable;

    iput-object p1, p0, Lio/reactivex/internal/operators/flowable/AbstractFlowableWithUpstream;->source:Lio/reactivex/Flowable;

    return-void
.end method
