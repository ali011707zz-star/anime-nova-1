.class public final Lio/reactivex/internal/operators/flowable/FlowableEmpty;
.super Lio/reactivex/Flowable;
.source "FlowableEmpty.java"

# interfaces
.implements Lio/reactivex/internal/fuseable/ScalarCallable;


# static fields
.field public static final INSTANCE:Lio/reactivex/Flowable;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 27
    new-instance v0, Lio/reactivex/internal/operators/flowable/FlowableEmpty;

    invoke-direct {v0}, Lio/reactivex/internal/operators/flowable/FlowableEmpty;-><init>()V

    sput-object v0, Lio/reactivex/internal/operators/flowable/FlowableEmpty;->INSTANCE:Lio/reactivex/Flowable;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 29
    invoke-direct {p0}, Lio/reactivex/Flowable;-><init>()V

    return-void
.end method


# virtual methods
.method public call()Ljava/lang/Object;
    .locals 1

    .line 0
    const/4 v0, 0x0

    return-object v0
.end method

.method public subscribeActual(Lorg/reactivestreams/Subscriber;)V
    .locals 0

    .line 34
    invoke-static {p1}, Lio/reactivex/internal/subscriptions/EmptySubscription;->complete(Lorg/reactivestreams/Subscriber;)V

    return-void
.end method
