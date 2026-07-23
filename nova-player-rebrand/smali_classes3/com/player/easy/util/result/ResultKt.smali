.class public final Lcom/player/easy/util/result/ResultKt;
.super Ljava/lang/Object;
.source "Result.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001a\n\u0000\n\u0002\u0010\u000b\n\u0002\u0018\u0002\n\u0002\u0008\n\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u001a#\u0010\u0005\u001a\u0002H\u0006\"\u0004\u0008\u0000\u0010\u0006*\u0008\u0012\u0004\u0012\u0002H\u00060\u00022\u0006\u0010\u0007\u001a\u0002H\u0006\u00a2\u0006\u0002\u0010\u0008\u001a)\u0010\u000c\u001a\u00020\r\"\u0006\u0008\u0000\u0010\u0006\u0018\u0001*\u0008\u0012\u0004\u0012\u0002H\u00060\u00022\u000c\u0010\u000e\u001a\u0008\u0012\u0004\u0012\u0002H\u00060\u000fH\u0086\u0008\"\u0019\u0010\u0000\u001a\u00020\u0001*\u0006\u0012\u0002\u0008\u00030\u00028F\u00a2\u0006\u0006\u001a\u0004\u0008\u0003\u0010\u0004\"#\u0010\t\u001a\u0004\u0018\u0001H\u0006\"\u0004\u0008\u0000\u0010\u0006*\u0008\u0012\u0004\u0012\u0002H\u00060\u00028F\u00a2\u0006\u0006\u001a\u0004\u0008\n\u0010\u000b\u00a8\u0006\u0010"
    }
    d2 = {
        "succeeded",
        "",
        "Lcom/player/easy/util/result/Result;",
        "getSucceeded",
        "(Lcom/player/easy/util/result/Result;)Z",
        "successOr",
        "T",
        "fallback",
        "(Lcom/player/easy/util/result/Result;Ljava/lang/Object;)Ljava/lang/Object;",
        "data",
        "getData",
        "(Lcom/player/easy/util/result/Result;)Ljava/lang/Object;",
        "updateOnSuccess",
        "",
        "liveData",
        "Landroidx/lifecycle/MutableLiveData;",
        "app_release"
    }
    k = 0x2
    mv = {
        0x2,
        0x2,
        0x0
    }
    xi = 0x30
.end annotation


# direct methods
.method public static final getData(Lcom/player/easy/util/result/Result;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/player/easy/util/result/Result<",
            "+TT;>;)TT;"
        }
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 36
    instance-of v0, p0, Lcom/player/easy/util/result/Result$Success;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    check-cast p0, Lcom/player/easy/util/result/Result$Success;

    goto :goto_0

    :cond_0
    move-object p0, v1

    :goto_0
    if-eqz p0, :cond_1

    invoke-virtual {p0}, Lcom/player/easy/util/result/Result$Success;->getData()Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :cond_1
    return-object v1
.end method

.method public static final getSucceeded(Lcom/player/easy/util/result/Result;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/player/easy/util/result/Result<",
            "*>;)Z"
        }
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 29
    instance-of v0, p0, Lcom/player/easy/util/result/Result$Success;

    if-eqz v0, :cond_0

    check-cast p0, Lcom/player/easy/util/result/Result$Success;

    invoke-virtual {p0}, Lcom/player/easy/util/result/Result$Success;->getData()Ljava/lang/Object;

    move-result-object p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static final successOr(Lcom/player/easy/util/result/Result;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/player/easy/util/result/Result<",
            "+TT;>;TT;)TT;"
        }
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 32
    instance-of v0, p0, Lcom/player/easy/util/result/Result$Success;

    if-eqz v0, :cond_0

    check-cast p0, Lcom/player/easy/util/result/Result$Success;

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    if-eqz p0, :cond_2

    invoke-virtual {p0}, Lcom/player/easy/util/result/Result$Success;->getData()Ljava/lang/Object;

    move-result-object p0

    if-nez p0, :cond_1

    goto :goto_1

    :cond_1
    return-object p0

    :cond_2
    :goto_1
    return-object p1
.end method

.method public static final synthetic updateOnSuccess(Lcom/player/easy/util/result/Result;Landroidx/lifecycle/MutableLiveData;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/player/easy/util/result/Result<",
            "+TT;>;",
            "Landroidx/lifecycle/MutableLiveData;",
            ")V"
        }
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "liveData"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 40
    instance-of v0, p0, Lcom/player/easy/util/result/Result$Success;

    if-eqz v0, :cond_0

    .line 41
    check-cast p0, Lcom/player/easy/util/result/Result$Success;

    invoke-virtual {p0}, Lcom/player/easy/util/result/Result$Success;->getData()Ljava/lang/Object;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method
