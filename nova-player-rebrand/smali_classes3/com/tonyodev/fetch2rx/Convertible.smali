.class public final Lcom/tonyodev/fetch2rx/Convertible;
.super Ljava/lang/Object;
.source "Convertible.kt"


# instance fields
.field private final data:Lio/reactivex/Flowable;


# direct methods
.method public constructor <init>(Lio/reactivex/Flowable;)V
    .locals 1

    const-string v0, "data"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/tonyodev/fetch2rx/Convertible;->data:Lio/reactivex/Flowable;

    return-void
.end method


# virtual methods
.method public final asFlowable()Lio/reactivex/Flowable;
    .locals 1

    .line 15
    iget-object v0, p0, Lcom/tonyodev/fetch2rx/Convertible;->data:Lio/reactivex/Flowable;

    return-object v0
.end method
