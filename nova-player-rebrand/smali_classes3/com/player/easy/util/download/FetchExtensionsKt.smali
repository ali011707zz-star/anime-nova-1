.class public final Lcom/player/easy/util/download/FetchExtensionsKt;
.super Ljava/lang/Object;
.source "FetchExtensions.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000$\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010 \n\u0002\u0008\t\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u001a\u001a\u0010\u0000\u001a\u00020\u0001*\u00020\u00022\u0006\u0010\u0003\u001a\u00020\u0004H\u0086@\u00a2\u0006\u0002\u0010\u0005\u001a \u0010\u0000\u001a\u00020\u0001*\u00020\u00022\u000c\u0010\u0006\u001a\u0008\u0012\u0004\u0012\u00020\u00040\u0007H\u0086@\u00a2\u0006\u0002\u0010\u0008\u001a\u0018\u0010\t\u001a\u00020\u0001*\u00020\u00022\u000c\u0010\u0006\u001a\u0008\u0012\u0004\u0012\u00020\u00040\u0007\u001a\u0012\u0010\t\u001a\u00020\u0001*\u00020\u00022\u0006\u0010\u0003\u001a\u00020\u0004\u001a\u0018\u0010\n\u001a\u00020\u0001*\u00020\u00022\u000c\u0010\u0006\u001a\u0008\u0012\u0004\u0012\u00020\u00040\u0007\u001a \u0010\u000b\u001a\u00020\u0001*\u00020\u00022\u000c\u0010\u0006\u001a\u0008\u0012\u0004\u0012\u00020\u00040\u0007H\u0086@\u00a2\u0006\u0002\u0010\u0008\u001a\u001a\u0010\u000c\u001a\u00020\u0001*\u00020\u00022\u0006\u0010\u0003\u001a\u00020\u0004H\u0086@\u00a2\u0006\u0002\u0010\u0005\u001a\u0018\u0010\r\u001a\u0008\u0012\u0004\u0012\u00020\u00040\u0007*\u00020\u0002H\u0086@\u00a2\u0006\u0002\u0010\u000e\u001a\"\u0010\u000f\u001a\u00020\u0001*\u00020\u00022\u0006\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0010\u001a\u00020\u0011H\u0086@\u00a2\u0006\u0002\u0010\u0012\u00a8\u0006\u0013"
    }
    d2 = {
        "pause",
        "",
        "Lcom/tonyodev/fetch2/Fetch;",
        "download",
        "Lcom/tonyodev/fetch2/Download;",
        "(Lcom/tonyodev/fetch2/Fetch;Lcom/tonyodev/fetch2/Download;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "downloads",
        "",
        "(Lcom/tonyodev/fetch2/Fetch;Ljava/util/List;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "resume",
        "remove",
        "cancel",
        "enqueue",
        "getDownloads",
        "(Lcom/tonyodev/fetch2/Fetch;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "replaceExtras",
        "extras",
        "Lcom/tonyodev/fetch2core/Extras;",
        "(Lcom/tonyodev/fetch2/Fetch;Lcom/tonyodev/fetch2/Download;Lcom/tonyodev/fetch2core/Extras;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
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

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nFetchExtensions.kt\nKotlin\n*S Kotlin\n*F\n+ 1 FetchExtensions.kt\ncom/player/easy/util/download/FetchExtensionsKt\n+ 2 CancellableContinuation.kt\nkotlinx/coroutines/CancellableContinuationKt\n+ 3 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,100:1\n426#2,11:101\n426#2,9:112\n435#2,2:125\n426#2,9:135\n435#2,2:148\n426#2,11:150\n426#2,11:161\n426#2,11:172\n1586#3:121\n1661#3,3:122\n1586#3:127\n1661#3,3:128\n1586#3:131\n1661#3,3:132\n1586#3:144\n1661#3,3:145\n*S KotlinDebug\n*F\n+ 1 FetchExtensions.kt\ncom/player/easy/util/download/FetchExtensionsKt\n*L\n10#1:101,11\n23#1:112,9\n23#1:125,2\n53#1:135,9\n53#1:148,2\n65#1:150,11\n77#1:161,11\n86#1:172,11\n31#1:121\n31#1:122,3\n41#1:127\n41#1:128,3\n49#1:131\n49#1:132,3\n56#1:144\n56#1:145,3\n*E\n"
    }
.end annotation


# direct methods
.method public static final cancel(Lcom/tonyodev/fetch2/Fetch;Ljava/util/List;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/tonyodev/fetch2/Fetch;",
            "Ljava/util/List<",
            "+",
            "Lcom/tonyodev/fetch2/Download;",
            ">;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 136
    new-instance v0, Lkotlinx/coroutines/CancellableContinuationImpl;

    invoke-static {p2}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->intercepted(Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object v1

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lkotlinx/coroutines/CancellableContinuationImpl;-><init>(Lkotlin/coroutines/Continuation;I)V

    .line 142
    invoke-virtual {v0}, Lkotlinx/coroutines/CancellableContinuationImpl;->initCancellability()V

    .line 144
    :try_start_0
    new-instance v1, Ljava/util/ArrayList;

    const/16 v2, 0xa

    invoke-static {p1, v2}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 145
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 146
    check-cast v2, Lcom/tonyodev/fetch2/Download;

    .line 56
    invoke-interface {v2}, Lcom/tonyodev/fetch2/Download;->getId()I

    move-result v2

    invoke-static {v2}, Lkotlin/coroutines/jvm/internal/Boxing;->boxInt(I)Ljava/lang/Integer;

    move-result-object v2

    .line 146
    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :catch_0
    move-exception p0

    goto :goto_1

    .line 55
    :cond_0
    new-instance p1, Lcom/player/easy/util/download/FetchExtensionsKt$cancel$2$2;

    invoke-direct {p1, v0}, Lcom/player/easy/util/download/FetchExtensionsKt$cancel$2$2;-><init>(Lkotlinx/coroutines/CancellableContinuation;)V

    new-instance v2, Lcom/player/easy/util/download/FetchExtensionsKt$cancel$2$3;

    invoke-direct {v2, v0}, Lcom/player/easy/util/download/FetchExtensionsKt$cancel$2$3;-><init>(Lkotlinx/coroutines/CancellableContinuation;)V

    invoke-interface {p0, v1, p1, v2}, Lcom/tonyodev/fetch2/Fetch;->cancel(Ljava/util/List;Lcom/tonyodev/fetch2core/Func;Lcom/tonyodev/fetch2core/Func;)Lcom/tonyodev/fetch2/Fetch;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    .line 61
    :goto_1
    sget-object p1, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-static {p0}, Lkotlin/ResultKt;->createFailure(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    invoke-interface {v0, p0}, Lkotlin/coroutines/Continuation;->resumeWith(Ljava/lang/Object;)V

    .line 148
    :goto_2
    invoke-virtual {v0}, Lkotlinx/coroutines/CancellableContinuationImpl;->getResult()Ljava/lang/Object;

    move-result-object p0

    .line 135
    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object p1

    if-ne p0, p1, :cond_1

    invoke-static {p2}, Lkotlin/coroutines/jvm/internal/DebugProbesKt;->probeCoroutineSuspended(Lkotlin/coroutines/Continuation;)V

    :cond_1
    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object p1

    if-ne p0, p1, :cond_2

    return-object p0

    .line 149
    :cond_2
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method public static final enqueue(Lcom/tonyodev/fetch2/Fetch;Lcom/tonyodev/fetch2/Download;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/tonyodev/fetch2/Fetch;",
            "Lcom/tonyodev/fetch2/Download;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 151
    new-instance v0, Lkotlinx/coroutines/CancellableContinuationImpl;

    invoke-static {p2}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->intercepted(Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object v1

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lkotlinx/coroutines/CancellableContinuationImpl;-><init>(Lkotlin/coroutines/Continuation;I)V

    .line 157
    invoke-virtual {v0}, Lkotlinx/coroutines/CancellableContinuationImpl;->initCancellability()V

    .line 68
    :try_start_0
    invoke-interface {p1}, Lcom/tonyodev/fetch2/Download;->getRequest()Lcom/tonyodev/fetch2/Request;

    move-result-object p1

    .line 67
    new-instance v1, Lcom/player/easy/util/download/FetchExtensionsKt$enqueue$2$1;

    invoke-direct {v1, v0}, Lcom/player/easy/util/download/FetchExtensionsKt$enqueue$2$1;-><init>(Lkotlinx/coroutines/CancellableContinuation;)V

    new-instance v2, Lcom/player/easy/util/download/FetchExtensionsKt$enqueue$2$2;

    invoke-direct {v2, v0}, Lcom/player/easy/util/download/FetchExtensionsKt$enqueue$2$2;-><init>(Lkotlinx/coroutines/CancellableContinuation;)V

    invoke-interface {p0, p1, v1, v2}, Lcom/tonyodev/fetch2/Fetch;->enqueue(Lcom/tonyodev/fetch2/Request;Lcom/tonyodev/fetch2core/Func;Lcom/tonyodev/fetch2core/Func;)Lcom/tonyodev/fetch2/Fetch;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 73
    sget-object p1, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-static {p0}, Lkotlin/ResultKt;->createFailure(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    invoke-interface {v0, p0}, Lkotlin/coroutines/Continuation;->resumeWith(Ljava/lang/Object;)V

    .line 159
    :goto_0
    invoke-virtual {v0}, Lkotlinx/coroutines/CancellableContinuationImpl;->getResult()Ljava/lang/Object;

    move-result-object p0

    .line 150
    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object p1

    if-ne p0, p1, :cond_0

    invoke-static {p2}, Lkotlin/coroutines/jvm/internal/DebugProbesKt;->probeCoroutineSuspended(Lkotlin/coroutines/Continuation;)V

    :cond_0
    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object p1

    if-ne p0, p1, :cond_1

    return-object p0

    .line 160
    :cond_1
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method public static final getDownloads(Lcom/tonyodev/fetch2/Fetch;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/tonyodev/fetch2/Fetch;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Ljava/util/List<",
            "+",
            "Lcom/tonyodev/fetch2/Download;",
            ">;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 162
    new-instance v0, Lkotlinx/coroutines/CancellableContinuationImpl;

    invoke-static {p1}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->intercepted(Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object v1

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lkotlinx/coroutines/CancellableContinuationImpl;-><init>(Lkotlin/coroutines/Continuation;I)V

    .line 168
    invoke-virtual {v0}, Lkotlinx/coroutines/CancellableContinuationImpl;->initCancellability()V

    .line 79
    :try_start_0
    new-instance v1, Lcom/player/easy/util/download/FetchExtensionsKt$getDownloads$2$1;

    invoke-direct {v1, v0}, Lcom/player/easy/util/download/FetchExtensionsKt$getDownloads$2$1;-><init>(Lkotlinx/coroutines/CancellableContinuation;)V

    invoke-interface {p0, v1}, Lcom/tonyodev/fetch2/Fetch;->getDownloads(Lcom/tonyodev/fetch2core/Func;)Lcom/tonyodev/fetch2/Fetch;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 81
    sget-object v1, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-static {p0}, Lkotlin/ResultKt;->createFailure(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    invoke-interface {v0, p0}, Lkotlin/coroutines/Continuation;->resumeWith(Ljava/lang/Object;)V

    .line 170
    :goto_0
    invoke-virtual {v0}, Lkotlinx/coroutines/CancellableContinuationImpl;->getResult()Ljava/lang/Object;

    move-result-object p0

    .line 161
    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v0

    if-ne p0, v0, :cond_0

    invoke-static {p1}, Lkotlin/coroutines/jvm/internal/DebugProbesKt;->probeCoroutineSuspended(Lkotlin/coroutines/Continuation;)V

    :cond_0
    return-object p0
.end method

.method public static final pause(Lcom/tonyodev/fetch2/Fetch;Lcom/tonyodev/fetch2/Download;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/tonyodev/fetch2/Fetch;",
            "Lcom/tonyodev/fetch2/Download;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 102
    new-instance v0, Lkotlinx/coroutines/CancellableContinuationImpl;

    invoke-static {p2}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->intercepted(Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object v1

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lkotlinx/coroutines/CancellableContinuationImpl;-><init>(Lkotlin/coroutines/Continuation;I)V

    .line 108
    invoke-virtual {v0}, Lkotlinx/coroutines/CancellableContinuationImpl;->initCancellability()V

    .line 13
    :try_start_0
    invoke-interface {p1}, Lcom/tonyodev/fetch2/Download;->getId()I

    move-result p1

    .line 12
    new-instance v1, Lcom/player/easy/util/download/FetchExtensionsKt$pause$2$1;

    invoke-direct {v1, v0}, Lcom/player/easy/util/download/FetchExtensionsKt$pause$2$1;-><init>(Lkotlinx/coroutines/CancellableContinuation;)V

    new-instance v2, Lcom/player/easy/util/download/FetchExtensionsKt$pause$2$2;

    invoke-direct {v2, v0}, Lcom/player/easy/util/download/FetchExtensionsKt$pause$2$2;-><init>(Lkotlinx/coroutines/CancellableContinuation;)V

    invoke-interface {p0, p1, v1, v2}, Lcom/tonyodev/fetch2/Fetch;->pause(ILcom/tonyodev/fetch2core/Func;Lcom/tonyodev/fetch2core/Func;)Lcom/tonyodev/fetch2/Fetch;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 18
    sget-object p1, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-static {p0}, Lkotlin/ResultKt;->createFailure(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    invoke-interface {v0, p0}, Lkotlin/coroutines/Continuation;->resumeWith(Ljava/lang/Object;)V

    .line 110
    :goto_0
    invoke-virtual {v0}, Lkotlinx/coroutines/CancellableContinuationImpl;->getResult()Ljava/lang/Object;

    move-result-object p0

    .line 101
    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object p1

    if-ne p0, p1, :cond_0

    invoke-static {p2}, Lkotlin/coroutines/jvm/internal/DebugProbesKt;->probeCoroutineSuspended(Lkotlin/coroutines/Continuation;)V

    :cond_0
    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object p1

    if-ne p0, p1, :cond_1

    return-object p0

    .line 111
    :cond_1
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method public static final pause(Lcom/tonyodev/fetch2/Fetch;Ljava/util/List;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/tonyodev/fetch2/Fetch;",
            "Ljava/util/List<",
            "+",
            "Lcom/tonyodev/fetch2/Download;",
            ">;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 113
    new-instance v0, Lkotlinx/coroutines/CancellableContinuationImpl;

    invoke-static {p2}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->intercepted(Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object v1

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lkotlinx/coroutines/CancellableContinuationImpl;-><init>(Lkotlin/coroutines/Continuation;I)V

    .line 119
    invoke-virtual {v0}, Lkotlinx/coroutines/CancellableContinuationImpl;->initCancellability()V

    .line 24
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 25
    sget-object p0, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-static {p0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    invoke-interface {v0, p0}, Lkotlin/coroutines/Continuation;->resumeWith(Ljava/lang/Object;)V

    goto :goto_2

    .line 121
    :cond_0
    :try_start_0
    new-instance v1, Ljava/util/ArrayList;

    const/16 v2, 0xa

    invoke-static {p1, v2}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 122
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 123
    check-cast v2, Lcom/tonyodev/fetch2/Download;

    .line 31
    invoke-interface {v2}, Lcom/tonyodev/fetch2/Download;->getId()I

    move-result v2

    invoke-static {v2}, Lkotlin/coroutines/jvm/internal/Boxing;->boxInt(I)Ljava/lang/Integer;

    move-result-object v2

    .line 123
    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :catch_0
    move-exception p0

    goto :goto_1

    .line 30
    :cond_1
    new-instance p1, Lcom/player/easy/util/download/FetchExtensionsKt$pause$4$2;

    invoke-direct {p1, v0}, Lcom/player/easy/util/download/FetchExtensionsKt$pause$4$2;-><init>(Lkotlinx/coroutines/CancellableContinuation;)V

    new-instance v2, Lcom/player/easy/util/download/FetchExtensionsKt$pause$4$3;

    invoke-direct {v2, v0}, Lcom/player/easy/util/download/FetchExtensionsKt$pause$4$3;-><init>(Lkotlinx/coroutines/CancellableContinuation;)V

    invoke-interface {p0, v1, p1, v2}, Lcom/tonyodev/fetch2/Fetch;->pause(Ljava/util/List;Lcom/tonyodev/fetch2core/Func;Lcom/tonyodev/fetch2core/Func;)Lcom/tonyodev/fetch2/Fetch;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    .line 36
    :goto_1
    sget-object p1, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-static {p0}, Lkotlin/ResultKt;->createFailure(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    invoke-interface {v0, p0}, Lkotlin/coroutines/Continuation;->resumeWith(Ljava/lang/Object;)V

    .line 125
    :goto_2
    invoke-virtual {v0}, Lkotlinx/coroutines/CancellableContinuationImpl;->getResult()Ljava/lang/Object;

    move-result-object p0

    .line 112
    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object p1

    if-ne p0, p1, :cond_2

    invoke-static {p2}, Lkotlin/coroutines/jvm/internal/DebugProbesKt;->probeCoroutineSuspended(Lkotlin/coroutines/Continuation;)V

    :cond_2
    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object p1

    if-ne p0, p1, :cond_3

    return-object p0

    .line 126
    :cond_3
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method public static final remove(Lcom/tonyodev/fetch2/Fetch;Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/tonyodev/fetch2/Fetch;",
            "Ljava/util/List<",
            "+",
            "Lcom/tonyodev/fetch2/Download;",
            ">;)V"
        }
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "downloads"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 131
    new-instance v0, Ljava/util/ArrayList;

    const/16 v1, 0xa

    invoke-static {p1, v1}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 132
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 133
    check-cast v1, Lcom/tonyodev/fetch2/Download;

    .line 49
    invoke-interface {v1}, Lcom/tonyodev/fetch2/Download;->getId()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 133
    invoke-interface {v0, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 49
    :cond_0
    invoke-interface {p0, v0}, Lcom/tonyodev/fetch2/Fetch;->remove(Ljava/util/List;)Lcom/tonyodev/fetch2/Fetch;

    return-void
.end method

.method public static final replaceExtras(Lcom/tonyodev/fetch2/Fetch;Lcom/tonyodev/fetch2/Download;Lcom/tonyodev/fetch2core/Extras;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/tonyodev/fetch2/Fetch;",
            "Lcom/tonyodev/fetch2/Download;",
            "Lcom/tonyodev/fetch2core/Extras;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 173
    new-instance v0, Lkotlinx/coroutines/CancellableContinuationImpl;

    invoke-static {p3}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->intercepted(Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object v1

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lkotlinx/coroutines/CancellableContinuationImpl;-><init>(Lkotlin/coroutines/Continuation;I)V

    .line 179
    invoke-virtual {v0}, Lkotlinx/coroutines/CancellableContinuationImpl;->initCancellability()V

    .line 89
    :try_start_0
    invoke-interface {p1}, Lcom/tonyodev/fetch2/Download;->getId()I

    move-result p1

    .line 88
    new-instance v1, Lcom/player/easy/util/download/FetchExtensionsKt$replaceExtras$2$1;

    invoke-direct {v1, v0}, Lcom/player/easy/util/download/FetchExtensionsKt$replaceExtras$2$1;-><init>(Lkotlinx/coroutines/CancellableContinuation;)V

    new-instance v2, Lcom/player/easy/util/download/FetchExtensionsKt$replaceExtras$2$2;

    invoke-direct {v2, v0}, Lcom/player/easy/util/download/FetchExtensionsKt$replaceExtras$2$2;-><init>(Lkotlinx/coroutines/CancellableContinuation;)V

    invoke-interface {p0, p1, p2, v1, v2}, Lcom/tonyodev/fetch2/Fetch;->replaceExtras(ILcom/tonyodev/fetch2core/Extras;Lcom/tonyodev/fetch2core/Func;Lcom/tonyodev/fetch2core/Func;)Lcom/tonyodev/fetch2/Fetch;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 97
    sget-object p1, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-static {p0}, Lkotlin/ResultKt;->createFailure(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    invoke-interface {v0, p0}, Lkotlin/coroutines/Continuation;->resumeWith(Ljava/lang/Object;)V

    .line 181
    :goto_0
    invoke-virtual {v0}, Lkotlinx/coroutines/CancellableContinuationImpl;->getResult()Ljava/lang/Object;

    move-result-object p0

    .line 172
    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object p1

    if-ne p0, p1, :cond_0

    invoke-static {p3}, Lkotlin/coroutines/jvm/internal/DebugProbesKt;->probeCoroutineSuspended(Lkotlin/coroutines/Continuation;)V

    :cond_0
    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object p1

    if-ne p0, p1, :cond_1

    return-object p0

    .line 182
    :cond_1
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method public static final resume(Lcom/tonyodev/fetch2/Fetch;Lcom/tonyodev/fetch2/Download;)V
    .locals 1

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "download"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 45
    invoke-interface {p1}, Lcom/tonyodev/fetch2/Download;->getId()I

    move-result p1

    invoke-interface {p0, p1}, Lcom/tonyodev/fetch2/Fetch;->resume(I)Lcom/tonyodev/fetch2/Fetch;

    return-void
.end method

.method public static final resume(Lcom/tonyodev/fetch2/Fetch;Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/tonyodev/fetch2/Fetch;",
            "Ljava/util/List<",
            "+",
            "Lcom/tonyodev/fetch2/Download;",
            ">;)V"
        }
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "downloads"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 127
    new-instance v0, Ljava/util/ArrayList;

    const/16 v1, 0xa

    invoke-static {p1, v1}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 128
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 129
    check-cast v1, Lcom/tonyodev/fetch2/Download;

    .line 41
    invoke-interface {v1}, Lcom/tonyodev/fetch2/Download;->getId()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 129
    invoke-interface {v0, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 41
    :cond_0
    invoke-interface {p0, v0}, Lcom/tonyodev/fetch2/Fetch;->resume(Ljava/util/List;)Lcom/tonyodev/fetch2/Fetch;

    return-void
.end method
