.class public abstract Lcom/tonyodev/fetch2rx/util/RxUtilsKt;
.super Ljava/lang/Object;
.source "RxUtils.kt"


# direct methods
.method public static final toConvertible(Lio/reactivex/Flowable;)Lcom/tonyodev/fetch2rx/Convertible;
    .locals 1

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 7
    new-instance v0, Lcom/tonyodev/fetch2rx/Convertible;

    invoke-direct {v0, p0}, Lcom/tonyodev/fetch2rx/Convertible;-><init>(Lio/reactivex/Flowable;)V

    return-object v0
.end method
