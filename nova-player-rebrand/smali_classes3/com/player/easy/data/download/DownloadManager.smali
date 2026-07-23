.class public final Lcom/player/easy/data/download/DownloadManager;
.super Ljava/lang/Object;
.source "DownloadManager.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u008d\u0001\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010#\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0008\u0003\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010 \n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0008\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0003*\u0001/\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0004\u0008\u0004\u0010\u0005J\u001a\u00101\u001a\u0002022\n\u0008\u0002\u00103\u001a\u0004\u0018\u000104H\u0086@\u00a2\u0006\u0002\u00105J\u0006\u00106\u001a\u00020\u001fJ\u0006\u00107\u001a\u000202J\u0018\u00108\u001a\u0002022\u0006\u00109\u001a\u00020:2\u0008\u0008\u0002\u0010;\u001a\u00020\u001fJ\u0008\u0010<\u001a\u000202H\u0002J\u000e\u0010=\u001a\u000202H\u0082@\u00a2\u0006\u0002\u0010>J\"\u0010?\u001a\u0008\u0012\u0004\u0012\u00020+0@2\u000c\u0010A\u001a\u0008\u0012\u0004\u0012\u00020B0@H\u0082@\u00a2\u0006\u0002\u0010CJ\u0014\u0010D\u001a\u0008\u0012\u0004\u0012\u00020+0@H\u0086@\u00a2\u0006\u0002\u0010>J\u0008\u0010E\u001a\u000202H\u0002J\u001c\u0010F\u001a\u0002022\u000c\u0010G\u001a\u0008\u0012\u0004\u0012\u00020+0@H\u0086@\u00a2\u0006\u0002\u0010CJ\u001e\u0010H\u001a\u0002022\u0006\u0010I\u001a\u00020+2\u000e\u0008\u0002\u0010J\u001a\u0008\u0012\u0004\u0012\u0002020KJ\u000e\u0010L\u001a\u0002022\u0006\u0010I\u001a\u00020+J\u0014\u0010M\u001a\u0008\u0012\u0004\u0012\u00020+0@H\u0086@\u00a2\u0006\u0002\u0010>J\u001e\u0010N\u001a\u0002022\u0006\u0010I\u001a\u00020+2\u0006\u0010O\u001a\u00020PH\u0086@\u00a2\u0006\u0002\u0010QJ\u0006\u0010R\u001a\u000202R\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0006\u0010\u0007R\u001b\u0010\u0008\u001a\u00020\t8FX\u0086\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u000c\u0010\r\u001a\u0004\u0008\n\u0010\u000bR\u001b\u0010\u000e\u001a\u00020\u000f8FX\u0086\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u0012\u0010\r\u001a\u0004\u0008\u0010\u0010\u0011R\u001b\u0010\u0013\u001a\u00020\u00148FX\u0086\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u0017\u0010\r\u001a\u0004\u0008\u0015\u0010\u0016R\u001b\u0010\u0018\u001a\u00020\u00198BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u001c\u0010\r\u001a\u0004\u0008\u001a\u0010\u001bR\u0017\u0010\u001d\u001a\u0008\u0012\u0004\u0012\u00020\u001f0\u001e\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008 \u0010!R\u001e\u0010#\u001a\u00020\u001f2\u0006\u0010\"\u001a\u00020\u001f@BX\u0086\u000e\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008#\u0010$R\u0011\u0010%\u001a\u00020&\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\'\u0010(R\u0017\u0010)\u001a\u0008\u0012\u0004\u0012\u00020+0*\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008,\u0010-R\u0010\u0010.\u001a\u00020/X\u0082\u0004\u00a2\u0006\u0004\n\u0002\u00100\u00a8\u0006S"
    }
    d2 = {
        "Lcom/player/easy/data/download/DownloadManager;",
        "",
        "context",
        "Landroid/content/Context;",
        "<init>",
        "(Landroid/content/Context;)V",
        "getContext",
        "()Landroid/content/Context;",
        "fetchConfiguration",
        "Lcom/tonyodev/fetch2/FetchConfiguration;",
        "getFetchConfiguration",
        "()Lcom/tonyodev/fetch2/FetchConfiguration;",
        "fetchConfiguration$delegate",
        "Lkotlin/Lazy;",
        "fetch",
        "Lcom/tonyodev/fetch2/Fetch;",
        "getFetch",
        "()Lcom/tonyodev/fetch2/Fetch;",
        "fetch$delegate",
        "rxFetch",
        "Lcom/tonyodev/fetch2rx/RxFetch;",
        "getRxFetch",
        "()Lcom/tonyodev/fetch2rx/RxFetch;",
        "rxFetch$delegate",
        "notifier",
        "Lcom/player/easy/data/download/DownloadNotifier;",
        "getNotifier",
        "()Lcom/player/easy/data/download/DownloadNotifier;",
        "notifier$delegate",
        "runningRelay",
        "Lcom/jakewharton/rxrelay2/BehaviorRelay;",
        "",
        "getRunningRelay",
        "()Lcom/jakewharton/rxrelay2/BehaviorRelay;",
        "value",
        "isRunning",
        "()Z",
        "disposables",
        "Lio/reactivex/disposables/CompositeDisposable;",
        "getDisposables",
        "()Lio/reactivex/disposables/CompositeDisposable;",
        "queue",
        "",
        "Lcom/tonyodev/fetch2/Download;",
        "getQueue",
        "()Ljava/util/Set;",
        "downloadListener",
        "com/player/easy/data/download/DownloadManager$downloadListener$1",
        "Lcom/player/easy/data/download/DownloadManager$downloadListener$1;",
        "stopDownloads",
        "",
        "reason",
        "",
        "(Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "startDownloads",
        "pauseDownloads",
        "queueDownload",
        "request",
        "Lcom/tonyodev/fetch2/Request;",
        "autoStart",
        "initializeSubscriptions",
        "destroySubscriptions",
        "(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "getDownloadWithStatus",
        "",
        "status",
        "Lcom/tonyodev/fetch2/Status;",
        "(Ljava/util/List;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "getActiveDownloads",
        "stopServiceIfNoActiveDownloads",
        "reorderQueue",
        "downloads",
        "resume",
        "download",
        "block",
        "Lkotlin/Function0;",
        "pause",
        "getDownloads",
        "replaceExtras",
        "extras",
        "Lcom/tonyodev/fetch2core/Extras;",
        "(Lcom/tonyodev/fetch2/Download;Lcom/tonyodev/fetch2core/Extras;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "resumeAll",
        "app_release"
    }
    k = 0x1
    mv = {
        0x2,
        0x2,
        0x0
    }
    xi = 0x30
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nDownloadManager.kt\nKotlin\n*S Kotlin\n*F\n+ 1 DownloadManager.kt\ncom/player/easy/data/download/DownloadManager\n+ 2 CancellableContinuation.kt\nkotlinx/coroutines/CancellableContinuationKt\n+ 3 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,252:1\n426#2,11:253\n1915#3,2:264\n*S KotlinDebug\n*F\n+ 1 DownloadManager.kt\ncom/player/easy/data/download/DownloadManager\n*L\n157#1:253,11\n195#1:264,2\n*E\n"
    }
.end annotation


# instance fields
.field private final context:Landroid/content/Context;

.field private final disposables:Lio/reactivex/disposables/CompositeDisposable;

.field private final downloadListener:Lcom/player/easy/data/download/DownloadManager$downloadListener$1;

.field private final fetch$delegate:Lkotlin/Lazy;

.field private final fetchConfiguration$delegate:Lkotlin/Lazy;

.field private volatile isRunning:Z

.field private final notifier$delegate:Lkotlin/Lazy;

.field private final queue:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/tonyodev/fetch2/Download;",
            ">;"
        }
    .end annotation
.end field

.field private final runningRelay:Lcom/jakewharton/rxrelay2/BehaviorRelay;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/jakewharton/rxrelay2/BehaviorRelay;"
        }
    .end annotation
.end field

.field private final rxFetch$delegate:Lkotlin/Lazy;


# direct methods
.method public static synthetic $r8$lambda$82QrWQtOP_YbZI2WC4xtNmioKtA(Lkotlin/jvm/functions/Function0;Lcom/tonyodev/fetch2/Download;)V
    .locals 0

    .line 0
    invoke-static {p0, p1}, Lcom/player/easy/data/download/DownloadManager;->resume$lambda$1$0(Lkotlin/jvm/functions/Function0;Lcom/tonyodev/fetch2/Download;)V

    return-void
.end method

.method public static synthetic $r8$lambda$AfQlo2-bD4djiKq5-fhsogXe0u8(Lcom/player/easy/data/download/DownloadManager;)Lcom/tonyodev/fetch2/Fetch;
    .locals 0

    .line 0
    invoke-static {p0}, Lcom/player/easy/data/download/DownloadManager;->fetch_delegate$lambda$0(Lcom/player/easy/data/download/DownloadManager;)Lcom/tonyodev/fetch2/Fetch;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$Ffgc1W7NvSWudKqiCmEvC69hFFA(Lcom/player/easy/data/download/DownloadManager;)Lcom/tonyodev/fetch2rx/RxFetch;
    .locals 0

    .line 0
    invoke-static {p0}, Lcom/player/easy/data/download/DownloadManager;->rxFetch_delegate$lambda$0(Lcom/player/easy/data/download/DownloadManager;)Lcom/tonyodev/fetch2rx/RxFetch;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$HZoFnZUAOJg7rmCdelg8YuPE60s()Lkotlin/Unit;
    .locals 1

    .line 0
    invoke-static {}, Lcom/player/easy/data/download/DownloadManager;->resume$lambda$0()Lkotlin/Unit;

    move-result-object v0

    return-object v0
.end method

.method public static synthetic $r8$lambda$Mk4f85Yad8eUftUz9OoCa0v1zCk(Lcom/player/easy/data/download/DownloadManager;)Lcom/player/easy/data/download/DownloadNotifier;
    .locals 0

    .line 0
    invoke-static {p0}, Lcom/player/easy/data/download/DownloadManager;->notifier_delegate$lambda$0(Lcom/player/easy/data/download/DownloadManager;)Lcom/player/easy/data/download/DownloadNotifier;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$e17bT7e9OrEVhP__66GJ2MFEHaY(Lcom/player/easy/data/download/DownloadManager;Lcom/tonyodev/fetch2/Download;Lkotlin/jvm/functions/Function0;Z)V
    .locals 0

    .line 0
    invoke-static {p0, p1, p2, p3}, Lcom/player/easy/data/download/DownloadManager;->resume$lambda$1(Lcom/player/easy/data/download/DownloadManager;Lcom/tonyodev/fetch2/Download;Lkotlin/jvm/functions/Function0;Z)V

    return-void
.end method

.method public static synthetic $r8$lambda$eJCdfN-1ajgvypbq_bZunXE6shY(Lcom/player/easy/data/download/DownloadManager;Ljava/lang/Boolean;)Lkotlin/Unit;
    .locals 0

    .line 0
    invoke-static {p0, p1}, Lcom/player/easy/data/download/DownloadManager;->stopServiceIfNoActiveDownloads$lambda$0(Lcom/player/easy/data/download/DownloadManager;Ljava/lang/Boolean;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$imk4-vRihcMCQ-KT-RnkQgrJspE(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;)V
    .locals 0

    .line 0
    invoke-static {p0, p1}, Lcom/player/easy/data/download/DownloadManager;->stopServiceIfNoActiveDownloads$lambda$1(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;)V

    return-void
.end method

.method public static synthetic $r8$lambda$svtb3lbQrs1d-N8WjqtJSDEglYU(Lcom/player/easy/data/download/DownloadManager;)Lcom/tonyodev/fetch2/FetchConfiguration;
    .locals 0

    .line 0
    invoke-static {p0}, Lcom/player/easy/data/download/DownloadManager;->fetchConfiguration_delegate$lambda$0(Lcom/player/easy/data/download/DownloadManager;)Lcom/tonyodev/fetch2/FetchConfiguration;

    move-result-object p0

    return-object p0
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/player/easy/data/download/DownloadManager;->context:Landroid/content/Context;

    .line 20
    new-instance p1, Lcom/player/easy/data/download/DownloadManager$$ExternalSyntheticLambda2;

    invoke-direct {p1, p0}, Lcom/player/easy/data/download/DownloadManager$$ExternalSyntheticLambda2;-><init>(Lcom/player/easy/data/download/DownloadManager;)V

    invoke-static {p1}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/player/easy/data/download/DownloadManager;->fetchConfiguration$delegate:Lkotlin/Lazy;

    .line 34
    new-instance p1, Lcom/player/easy/data/download/DownloadManager$$ExternalSyntheticLambda3;

    invoke-direct {p1, p0}, Lcom/player/easy/data/download/DownloadManager$$ExternalSyntheticLambda3;-><init>(Lcom/player/easy/data/download/DownloadManager;)V

    invoke-static {p1}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/player/easy/data/download/DownloadManager;->fetch$delegate:Lkotlin/Lazy;

    .line 36
    new-instance p1, Lcom/player/easy/data/download/DownloadManager$$ExternalSyntheticLambda4;

    invoke-direct {p1, p0}, Lcom/player/easy/data/download/DownloadManager$$ExternalSyntheticLambda4;-><init>(Lcom/player/easy/data/download/DownloadManager;)V

    invoke-static {p1}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/player/easy/data/download/DownloadManager;->rxFetch$delegate:Lkotlin/Lazy;

    .line 39
    new-instance p1, Lcom/player/easy/data/download/DownloadManager$$ExternalSyntheticLambda5;

    invoke-direct {p1, p0}, Lcom/player/easy/data/download/DownloadManager$$ExternalSyntheticLambda5;-><init>(Lcom/player/easy/data/download/DownloadManager;)V

    invoke-static {p1}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/player/easy/data/download/DownloadManager;->notifier$delegate:Lkotlin/Lazy;

    .line 42
    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-static {p1}, Lcom/jakewharton/rxrelay2/BehaviorRelay;->createDefault(Ljava/lang/Object;)Lcom/jakewharton/rxrelay2/BehaviorRelay;

    move-result-object p1

    const-string v0, "createDefault(...)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/player/easy/data/download/DownloadManager;->runningRelay:Lcom/jakewharton/rxrelay2/BehaviorRelay;

    .line 49
    new-instance p1, Lio/reactivex/disposables/CompositeDisposable;

    invoke-direct {p1}, Lio/reactivex/disposables/CompositeDisposable;-><init>()V

    iput-object p1, p0, Lcom/player/easy/data/download/DownloadManager;->disposables:Lio/reactivex/disposables/CompositeDisposable;

    .line 57
    new-instance p1, Ljava/util/LinkedHashSet;

    invoke-direct {p1}, Ljava/util/LinkedHashSet;-><init>()V

    iput-object p1, p0, Lcom/player/easy/data/download/DownloadManager;->queue:Ljava/util/Set;

    .line 60
    new-instance p1, Lcom/player/easy/data/download/DownloadManager$downloadListener$1;

    invoke-direct {p1, p0}, Lcom/player/easy/data/download/DownloadManager$downloadListener$1;-><init>(Lcom/player/easy/data/download/DownloadManager;)V

    iput-object p1, p0, Lcom/player/easy/data/download/DownloadManager;->downloadListener:Lcom/player/easy/data/download/DownloadManager$downloadListener$1;

    return-void
.end method

.method public static final synthetic access$destroySubscriptions(Lcom/player/easy/data/download/DownloadManager;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0

    .line 18
    invoke-direct {p0, p1}, Lcom/player/easy/data/download/DownloadManager;->destroySubscriptions(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$getDownloadWithStatus(Lcom/player/easy/data/download/DownloadManager;Ljava/util/List;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0

    .line 18
    invoke-direct {p0, p1, p2}, Lcom/player/easy/data/download/DownloadManager;->getDownloadWithStatus(Ljava/util/List;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$getNotifier(Lcom/player/easy/data/download/DownloadManager;)Lcom/player/easy/data/download/DownloadNotifier;
    .locals 0

    .line 18
    invoke-direct {p0}, Lcom/player/easy/data/download/DownloadManager;->getNotifier()Lcom/player/easy/data/download/DownloadNotifier;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$stopServiceIfNoActiveDownloads(Lcom/player/easy/data/download/DownloadManager;)V
    .locals 0

    .line 18
    invoke-direct {p0}, Lcom/player/easy/data/download/DownloadManager;->stopServiceIfNoActiveDownloads()V

    return-void
.end method

.method private final destroySubscriptions(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p1, Lcom/player/easy/data/download/DownloadManager$destroySubscriptions$1;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lcom/player/easy/data/download/DownloadManager$destroySubscriptions$1;

    iget v1, v0, Lcom/player/easy/data/download/DownloadManager$destroySubscriptions$1;->label:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lcom/player/easy/data/download/DownloadManager$destroySubscriptions$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/player/easy/data/download/DownloadManager$destroySubscriptions$1;

    invoke-direct {v0, p0, p1}, Lcom/player/easy/data/download/DownloadManager$destroySubscriptions$1;-><init>(Lcom/player/easy/data/download/DownloadManager;Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object p1, v0, Lcom/player/easy/data/download/DownloadManager$destroySubscriptions$1;->result:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    .line 142
    iget v2, v0, Lcom/player/easy/data/download/DownloadManager$destroySubscriptions$1;->label:I

    const/4 v3, 0x0

    const/4 v4, 0x2

    const/4 v5, 0x1

    if-eqz v2, :cond_3

    if-eq v2, v5, :cond_2

    if-ne v2, v4, :cond_1

    iget-object v0, v0, Lcom/player/easy/data/download/DownloadManager$destroySubscriptions$1;->L$0:Ljava/lang/Object;

    check-cast v0, Ljava/util/List;

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_3

    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_1

    :cond_3
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 143
    iget-boolean p1, p0, Lcom/player/easy/data/download/DownloadManager;->isRunning:Z

    if-nez p1, :cond_4

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1

    .line 144
    :cond_4
    invoke-virtual {p0}, Lcom/player/easy/data/download/DownloadManager;->getFetch()Lcom/tonyodev/fetch2/Fetch;

    move-result-object p1

    iget-object v2, p0, Lcom/player/easy/data/download/DownloadManager;->downloadListener:Lcom/player/easy/data/download/DownloadManager$downloadListener$1;

    invoke-interface {p1, v2}, Lcom/tonyodev/fetch2/Fetch;->removeListener(Lcom/tonyodev/fetch2/FetchListener;)Lcom/tonyodev/fetch2/Fetch;

    .line 145
    iget-object p1, p0, Lcom/player/easy/data/download/DownloadManager;->disposables:Lio/reactivex/disposables/CompositeDisposable;

    invoke-virtual {p1}, Lio/reactivex/disposables/CompositeDisposable;->clear()V

    .line 147
    new-array p1, v4, [Lcom/tonyodev/fetch2/Status;

    sget-object v2, Lcom/tonyodev/fetch2/Status;->DOWNLOADING:Lcom/tonyodev/fetch2/Status;

    aput-object v2, p1, v3

    sget-object v2, Lcom/tonyodev/fetch2/Status;->QUEUED:Lcom/tonyodev/fetch2/Status;

    aput-object v2, p1, v5

    invoke-static {p1}, Lkotlin/collections/CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    iput v5, v0, Lcom/player/easy/data/download/DownloadManager$destroySubscriptions$1;->label:I

    invoke-direct {p0, p1, v0}, Lcom/player/easy/data/download/DownloadManager;->getDownloadWithStatus(Ljava/util/List;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_5

    goto :goto_2

    .line 142
    :cond_5
    :goto_1
    check-cast p1, Ljava/util/List;

    .line 148
    iget-object v2, p0, Lcom/player/easy/data/download/DownloadManager;->queue:Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->clear()V

    .line 149
    iget-object v2, p0, Lcom/player/easy/data/download/DownloadManager;->queue:Ljava/util/Set;

    invoke-interface {v2, p1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 150
    invoke-virtual {p0}, Lcom/player/easy/data/download/DownloadManager;->getFetch()Lcom/tonyodev/fetch2/Fetch;

    move-result-object v2

    invoke-static {p1}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    iput-object v5, v0, Lcom/player/easy/data/download/DownloadManager$destroySubscriptions$1;->L$0:Ljava/lang/Object;

    iput v4, v0, Lcom/player/easy/data/download/DownloadManager$destroySubscriptions$1;->label:I

    invoke-static {v2, p1, v0}, Lcom/player/easy/util/download/FetchExtensionsKt;->pause(Lcom/tonyodev/fetch2/Fetch;Ljava/util/List;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_6

    :goto_2
    return-object v1

    .line 152
    :cond_6
    :goto_3
    iput-boolean v3, p0, Lcom/player/easy/data/download/DownloadManager;->isRunning:Z

    .line 153
    iget-object p1, p0, Lcom/player/easy/data/download/DownloadManager;->runningRelay:Lcom/jakewharton/rxrelay2/BehaviorRelay;

    invoke-static {v3}, Lkotlin/coroutines/jvm/internal/Boxing;->boxBoolean(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/jakewharton/rxrelay2/BehaviorRelay;->accept(Ljava/lang/Object;)V

    .line 154
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method private static final fetchConfiguration_delegate$lambda$0(Lcom/player/easy/data/download/DownloadManager;)Lcom/tonyodev/fetch2/FetchConfiguration;
    .locals 3

    .line 21
    new-instance v0, Lcom/tonyodev/fetch2/FetchConfiguration$Builder;

    iget-object p0, p0, Lcom/player/easy/data/download/DownloadManager;->context:Landroid/content/Context;

    invoke-direct {v0, p0}, Lcom/tonyodev/fetch2/FetchConfiguration$Builder;-><init>(Landroid/content/Context;)V

    const/4 p0, 0x1

    .line 22
    invoke-virtual {v0, p0}, Lcom/tonyodev/fetch2/FetchConfiguration$Builder;->setDownloadConcurrentLimit(I)Lcom/tonyodev/fetch2/FetchConfiguration$Builder;

    move-result-object v0

    const/4 v1, 0x0

    .line 23
    invoke-virtual {v0, v1}, Lcom/tonyodev/fetch2/FetchConfiguration$Builder;->enableAutoStart(Z)Lcom/tonyodev/fetch2/FetchConfiguration$Builder;

    move-result-object v0

    .line 24
    invoke-virtual {v0, p0}, Lcom/tonyodev/fetch2/FetchConfiguration$Builder;->enableFileExistChecks(Z)Lcom/tonyodev/fetch2/FetchConfiguration$Builder;

    move-result-object v0

    .line 25
    sget-object v1, Lcom/tonyodev/fetch2/NetworkType;->ALL:Lcom/tonyodev/fetch2/NetworkType;

    invoke-virtual {v0, v1}, Lcom/tonyodev/fetch2/FetchConfiguration$Builder;->setGlobalNetworkType(Lcom/tonyodev/fetch2/NetworkType;)Lcom/tonyodev/fetch2/FetchConfiguration$Builder;

    move-result-object v0

    const/4 v1, 0x2

    .line 26
    invoke-virtual {v0, v1}, Lcom/tonyodev/fetch2/FetchConfiguration$Builder;->setAutoRetryMaxAttempts(I)Lcom/tonyodev/fetch2/FetchConfiguration$Builder;

    move-result-object v0

    const-wide/16 v1, 0x320

    .line 27
    invoke-virtual {v0, v1, v2}, Lcom/tonyodev/fetch2/FetchConfiguration$Builder;->setProgressReportingInterval(J)Lcom/tonyodev/fetch2/FetchConfiguration$Builder;

    move-result-object v0

    .line 28
    new-instance v1, Lcom/tonyodev/fetch2okhttp/OkHttpDownloader;

    sget-object v2, Lcom/tonyodev/fetch2core/Downloader$FileDownloaderType;->PARALLEL:Lcom/tonyodev/fetch2core/Downloader$FileDownloaderType;

    invoke-direct {v1, v2}, Lcom/tonyodev/fetch2okhttp/OkHttpDownloader;-><init>(Lcom/tonyodev/fetch2core/Downloader$FileDownloaderType;)V

    invoke-virtual {v0, v1}, Lcom/tonyodev/fetch2/FetchConfiguration$Builder;->setHttpDownloader(Lcom/tonyodev/fetch2core/Downloader;)Lcom/tonyodev/fetch2/FetchConfiguration$Builder;

    move-result-object v0

    .line 29
    const-string v1, "DownloadListActivity"

    invoke-virtual {v0, v1}, Lcom/tonyodev/fetch2/FetchConfiguration$Builder;->setNamespace(Ljava/lang/String;)Lcom/tonyodev/fetch2/FetchConfiguration$Builder;

    move-result-object v0

    .line 30
    invoke-virtual {v0, p0}, Lcom/tonyodev/fetch2/FetchConfiguration$Builder;->enableRetryOnNetworkGain(Z)Lcom/tonyodev/fetch2/FetchConfiguration$Builder;

    move-result-object p0

    .line 31
    invoke-virtual {p0}, Lcom/tonyodev/fetch2/FetchConfiguration$Builder;->build()Lcom/tonyodev/fetch2/FetchConfiguration;

    move-result-object p0

    return-object p0
.end method

.method private static final fetch_delegate$lambda$0(Lcom/player/easy/data/download/DownloadManager;)Lcom/tonyodev/fetch2/Fetch;
    .locals 1

    .line 34
    sget-object v0, Lcom/tonyodev/fetch2/Fetch;->Impl:Lcom/tonyodev/fetch2/Fetch$Impl;

    invoke-virtual {p0}, Lcom/player/easy/data/download/DownloadManager;->getFetchConfiguration()Lcom/tonyodev/fetch2/FetchConfiguration;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/tonyodev/fetch2/Fetch$Impl;->getInstance(Lcom/tonyodev/fetch2/FetchConfiguration;)Lcom/tonyodev/fetch2/Fetch;

    move-result-object p0

    return-object p0
.end method

.method private final getDownloadWithStatus(Ljava/util/List;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lcom/tonyodev/fetch2/Status;",
            ">;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Ljava/util/List<",
            "+",
            "Lcom/tonyodev/fetch2/Download;",
            ">;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 254
    new-instance v0, Lkotlinx/coroutines/CancellableContinuationImpl;

    invoke-static {p2}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->intercepted(Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object v1

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lkotlinx/coroutines/CancellableContinuationImpl;-><init>(Lkotlin/coroutines/Continuation;I)V

    .line 260
    invoke-virtual {v0}, Lkotlinx/coroutines/CancellableContinuationImpl;->initCancellability()V

    .line 158
    invoke-virtual {p0}, Lcom/player/easy/data/download/DownloadManager;->getFetch()Lcom/tonyodev/fetch2/Fetch;

    move-result-object v1

    new-instance v2, Lcom/player/easy/data/download/DownloadManager$getDownloadWithStatus$2$1;

    invoke-direct {v2, v0}, Lcom/player/easy/data/download/DownloadManager$getDownloadWithStatus$2$1;-><init>(Lkotlinx/coroutines/CancellableContinuation;)V

    invoke-interface {v1, p1, v2}, Lcom/tonyodev/fetch2/Fetch;->getDownloadsWithStatus(Ljava/util/List;Lcom/tonyodev/fetch2core/Func;)Lcom/tonyodev/fetch2/Fetch;

    .line 262
    invoke-virtual {v0}, Lkotlinx/coroutines/CancellableContinuationImpl;->getResult()Ljava/lang/Object;

    move-result-object p1

    .line 253
    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v0

    if-ne p1, v0, :cond_0

    invoke-static {p2}, Lkotlin/coroutines/jvm/internal/DebugProbesKt;->probeCoroutineSuspended(Lkotlin/coroutines/Continuation;)V

    :cond_0
    return-object p1
.end method

.method private final getNotifier()Lcom/player/easy/data/download/DownloadNotifier;
    .locals 1

    .line 39
    iget-object v0, p0, Lcom/player/easy/data/download/DownloadManager;->notifier$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/player/easy/data/download/DownloadNotifier;

    return-object v0
.end method

.method private final initializeSubscriptions()V
    .locals 2

    .line 128
    iget-boolean v0, p0, Lcom/player/easy/data/download/DownloadManager;->isRunning:Z

    if-eqz v0, :cond_0

    return-void

    .line 130
    :cond_0
    iget-object v0, p0, Lcom/player/easy/data/download/DownloadManager;->queue:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 131
    invoke-virtual {p0}, Lcom/player/easy/data/download/DownloadManager;->getFetch()Lcom/tonyodev/fetch2/Fetch;

    move-result-object v0

    iget-object v1, p0, Lcom/player/easy/data/download/DownloadManager;->queue:Ljava/util/Set;

    invoke-static {v1}, Lkotlin/collections/CollectionsKt;->toList(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/player/easy/util/download/FetchExtensionsKt;->resume(Lcom/tonyodev/fetch2/Fetch;Ljava/util/List;)V

    .line 133
    :cond_1
    iget-object v0, p0, Lcom/player/easy/data/download/DownloadManager;->queue:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    const/4 v0, 0x1

    .line 135
    iput-boolean v0, p0, Lcom/player/easy/data/download/DownloadManager;->isRunning:Z

    .line 136
    iget-object v0, p0, Lcom/player/easy/data/download/DownloadManager;->runningRelay:Lcom/jakewharton/rxrelay2/BehaviorRelay;

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v0, v1}, Lcom/jakewharton/rxrelay2/BehaviorRelay;->accept(Ljava/lang/Object;)V

    .line 138
    invoke-virtual {p0}, Lcom/player/easy/data/download/DownloadManager;->getFetch()Lcom/tonyodev/fetch2/Fetch;

    move-result-object v0

    iget-object v1, p0, Lcom/player/easy/data/download/DownloadManager;->downloadListener:Lcom/player/easy/data/download/DownloadManager$downloadListener$1;

    invoke-interface {v0, v1}, Lcom/tonyodev/fetch2/Fetch;->addListener(Lcom/tonyodev/fetch2/FetchListener;)Lcom/tonyodev/fetch2/Fetch;

    return-void
.end method

.method private static final notifier_delegate$lambda$0(Lcom/player/easy/data/download/DownloadManager;)Lcom/player/easy/data/download/DownloadNotifier;
    .locals 1

    .line 39
    new-instance v0, Lcom/player/easy/data/download/DownloadNotifier;

    iget-object p0, p0, Lcom/player/easy/data/download/DownloadManager;->context:Landroid/content/Context;

    invoke-direct {v0, p0}, Lcom/player/easy/data/download/DownloadNotifier;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method public static synthetic queueDownload$default(Lcom/player/easy/data/download/DownloadManager;Lcom/tonyodev/fetch2/Request;ZILjava/lang/Object;)V
    .locals 0

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    const/4 p2, 0x0

    .line 118
    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/player/easy/data/download/DownloadManager;->queueDownload(Lcom/tonyodev/fetch2/Request;Z)V

    return-void
.end method

.method public static synthetic resume$default(Lcom/player/easy/data/download/DownloadManager;Lcom/tonyodev/fetch2/Download;Lkotlin/jvm/functions/Function0;ILjava/lang/Object;)V
    .locals 0

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    .line 205
    new-instance p2, Lcom/player/easy/data/download/DownloadManager$$ExternalSyntheticLambda7;

    invoke-direct {p2}, Lcom/player/easy/data/download/DownloadManager$$ExternalSyntheticLambda7;-><init>()V

    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/player/easy/data/download/DownloadManager;->resume(Lcom/tonyodev/fetch2/Download;Lkotlin/jvm/functions/Function0;)V

    return-void
.end method

.method private static final resume$lambda$0()Lkotlin/Unit;
    .locals 1

    .line 205
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0
.end method

.method private static final resume$lambda$1(Lcom/player/easy/data/download/DownloadManager;Lcom/tonyodev/fetch2/Download;Lkotlin/jvm/functions/Function0;Z)V
    .locals 6

    if-eqz p3, :cond_0

    .line 207
    iget-boolean p3, p0, Lcom/player/easy/data/download/DownloadManager;->isRunning:Z

    if-eqz p3, :cond_0

    .line 208
    invoke-virtual {p0}, Lcom/player/easy/data/download/DownloadManager;->getFetch()Lcom/tonyodev/fetch2/Fetch;

    move-result-object v0

    invoke-interface {p1}, Lcom/tonyodev/fetch2/Download;->getId()I

    move-result v1

    new-instance v2, Lcom/player/easy/data/download/DownloadManager$$ExternalSyntheticLambda6;

    invoke-direct {v2, p2}, Lcom/player/easy/data/download/DownloadManager$$ExternalSyntheticLambda6;-><init>(Lkotlin/jvm/functions/Function0;)V

    const/4 v4, 0x4

    const/4 v5, 0x0

    const/4 v3, 0x0

    invoke-static/range {v0 .. v5}, Lcom/tonyodev/fetch2/Fetch$DefaultImpls;->resume$default(Lcom/tonyodev/fetch2/Fetch;ILcom/tonyodev/fetch2core/Func;Lcom/tonyodev/fetch2core/Func;ILjava/lang/Object;)Lcom/tonyodev/fetch2/Fetch;

    return-void

    .line 210
    :cond_0
    iget-object p3, p0, Lcom/player/easy/data/download/DownloadManager;->queue:Ljava/util/Set;

    invoke-interface {p3}, Ljava/util/Set;->clear()V

    .line 211
    iget-object p3, p0, Lcom/player/easy/data/download/DownloadManager;->queue:Ljava/util/Set;

    invoke-interface {p3, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 212
    sget-object p1, Lcom/player/easy/data/download/DownloadService;->Companion:Lcom/player/easy/data/download/DownloadService$Companion;

    iget-object p0, p0, Lcom/player/easy/data/download/DownloadManager;->context:Landroid/content/Context;

    invoke-virtual {p1, p0}, Lcom/player/easy/data/download/DownloadService$Companion;->start(Landroid/content/Context;)V

    .line 213
    invoke-interface {p2}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    return-void
.end method

.method private static final resume$lambda$1$0(Lkotlin/jvm/functions/Function0;Lcom/tonyodev/fetch2/Download;)V
    .locals 1

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 208
    invoke-interface {p0}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    return-void
.end method

.method private static final rxFetch_delegate$lambda$0(Lcom/player/easy/data/download/DownloadManager;)Lcom/tonyodev/fetch2rx/RxFetch;
    .locals 1

    .line 36
    sget-object v0, Lcom/tonyodev/fetch2rx/RxFetch;->Impl:Lcom/tonyodev/fetch2rx/RxFetch$Impl;

    invoke-virtual {p0}, Lcom/player/easy/data/download/DownloadManager;->getFetchConfiguration()Lcom/tonyodev/fetch2/FetchConfiguration;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/tonyodev/fetch2rx/RxFetch$Impl;->getRxInstance(Lcom/tonyodev/fetch2/FetchConfiguration;)Lcom/tonyodev/fetch2rx/RxFetch;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic stopDownloads$default(Lcom/player/easy/data/download/DownloadManager;Ljava/lang/String;Lkotlin/coroutines/Continuation;ILjava/lang/Object;)Ljava/lang/Object;
    .locals 0

    and-int/lit8 p3, p3, 0x1

    if-eqz p3, :cond_0

    const/4 p1, 0x0

    .line 91
    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/player/easy/data/download/DownloadManager;->stopDownloads(Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method private final stopServiceIfNoActiveDownloads()V
    .locals 4

    .line 167
    iget-object v0, p0, Lcom/player/easy/data/download/DownloadManager;->disposables:Lio/reactivex/disposables/CompositeDisposable;

    invoke-virtual {v0}, Lio/reactivex/disposables/CompositeDisposable;->clear()V

    .line 168
    iget-object v0, p0, Lcom/player/easy/data/download/DownloadManager;->disposables:Lio/reactivex/disposables/CompositeDisposable;

    .line 169
    invoke-virtual {p0}, Lcom/player/easy/data/download/DownloadManager;->getRxFetch()Lcom/tonyodev/fetch2rx/RxFetch;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Lcom/tonyodev/fetch2rx/RxFetch;->hasActiveDownloads(Z)Lcom/tonyodev/fetch2rx/Convertible;

    move-result-object v1

    invoke-virtual {v1}, Lcom/tonyodev/fetch2rx/Convertible;->asFlowable()Lio/reactivex/Flowable;

    move-result-object v1

    new-instance v2, Lcom/player/easy/data/download/DownloadManager$$ExternalSyntheticLambda0;

    invoke-direct {v2, p0}, Lcom/player/easy/data/download/DownloadManager$$ExternalSyntheticLambda0;-><init>(Lcom/player/easy/data/download/DownloadManager;)V

    new-instance v3, Lcom/player/easy/data/download/DownloadManager$$ExternalSyntheticLambda1;

    invoke-direct {v3, v2}, Lcom/player/easy/data/download/DownloadManager$$ExternalSyntheticLambda1;-><init>(Lkotlin/jvm/functions/Function1;)V

    invoke-virtual {v1, v3}, Lio/reactivex/Flowable;->subscribe(Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    move-result-object v1

    .line 168
    invoke-virtual {v0, v1}, Lio/reactivex/disposables/CompositeDisposable;->add(Lio/reactivex/disposables/Disposable;)Z

    return-void
.end method

.method private static final stopServiceIfNoActiveDownloads$lambda$0(Lcom/player/easy/data/download/DownloadManager;Ljava/lang/Boolean;)Lkotlin/Unit;
    .locals 2

    .line 170
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-nez p1, :cond_0

    .line 171
    sget-object p1, Ltimber/log/Timber;->Forest:Ltimber/log/Timber$Forest;

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "all downloads are finished"

    invoke-virtual {p1, v1, v0}, Ltimber/log/Timber$Forest;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 172
    sget-object p1, Lcom/player/easy/data/download/DownloadService;->Companion:Lcom/player/easy/data/download/DownloadService$Companion;

    iget-object p0, p0, Lcom/player/easy/data/download/DownloadManager;->context:Landroid/content/Context;

    invoke-virtual {p1, p0}, Lcom/player/easy/data/download/DownloadService$Companion;->stop(Landroid/content/Context;)V

    .line 174
    :cond_0
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method private static final stopServiceIfNoActiveDownloads$lambda$1(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;)V
    .locals 0

    .line 169
    invoke-interface {p0, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final getActiveDownloads(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Ljava/util/List<",
            "+",
            "Lcom/tonyodev/fetch2/Download;",
            ">;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    const/4 v0, 0x2

    .line 162
    new-array v0, v0, [Lcom/tonyodev/fetch2/Status;

    sget-object v1, Lcom/tonyodev/fetch2/Status;->DOWNLOADING:Lcom/tonyodev/fetch2/Status;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lcom/tonyodev/fetch2/Status;->QUEUED:Lcom/tonyodev/fetch2/Status;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, v0, p1}, Lcom/player/easy/data/download/DownloadManager;->getDownloadWithStatus(Ljava/util/List;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final getContext()Landroid/content/Context;
    .locals 1

    .line 18
    iget-object v0, p0, Lcom/player/easy/data/download/DownloadManager;->context:Landroid/content/Context;

    return-object v0
.end method

.method public final getDisposables()Lio/reactivex/disposables/CompositeDisposable;
    .locals 1

    .line 49
    iget-object v0, p0, Lcom/player/easy/data/download/DownloadManager;->disposables:Lio/reactivex/disposables/CompositeDisposable;

    return-object v0
.end method

.method public final getDownloads(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Ljava/util/List<",
            "+",
            "Lcom/tonyodev/fetch2/Download;",
            ">;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 239
    invoke-virtual {p0}, Lcom/player/easy/data/download/DownloadManager;->getFetch()Lcom/tonyodev/fetch2/Fetch;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/player/easy/util/download/FetchExtensionsKt;->getDownloads(Lcom/tonyodev/fetch2/Fetch;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final getFetch()Lcom/tonyodev/fetch2/Fetch;
    .locals 1

    .line 34
    iget-object v0, p0, Lcom/player/easy/data/download/DownloadManager;->fetch$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tonyodev/fetch2/Fetch;

    return-object v0
.end method

.method public final getFetchConfiguration()Lcom/tonyodev/fetch2/FetchConfiguration;
    .locals 1

    .line 20
    iget-object v0, p0, Lcom/player/easy/data/download/DownloadManager;->fetchConfiguration$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tonyodev/fetch2/FetchConfiguration;

    return-object v0
.end method

.method public final getQueue()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Lcom/tonyodev/fetch2/Download;",
            ">;"
        }
    .end annotation

    .line 57
    iget-object v0, p0, Lcom/player/easy/data/download/DownloadManager;->queue:Ljava/util/Set;

    return-object v0
.end method

.method public final getRunningRelay()Lcom/jakewharton/rxrelay2/BehaviorRelay;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/jakewharton/rxrelay2/BehaviorRelay;"
        }
    .end annotation

    .line 42
    iget-object v0, p0, Lcom/player/easy/data/download/DownloadManager;->runningRelay:Lcom/jakewharton/rxrelay2/BehaviorRelay;

    return-object v0
.end method

.method public final getRxFetch()Lcom/tonyodev/fetch2rx/RxFetch;
    .locals 1

    .line 36
    iget-object v0, p0, Lcom/player/easy/data/download/DownloadManager;->rxFetch$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tonyodev/fetch2rx/RxFetch;

    return-object v0
.end method

.method public final isRunning()Z
    .locals 1

    .line 46
    iget-boolean v0, p0, Lcom/player/easy/data/download/DownloadManager;->isRunning:Z

    return v0
.end method

.method public final pause(Lcom/tonyodev/fetch2/Download;)V
    .locals 2

    const-string v0, "download"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 219
    new-instance v0, Lcom/player/easy/data/download/DownloadManager$pause$1;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Lcom/player/easy/data/download/DownloadManager$pause$1;-><init>(Lcom/player/easy/data/download/DownloadManager;Lcom/tonyodev/fetch2/Download;Lkotlin/coroutines/Continuation;)V

    invoke-static {v0}, Lcom/player/easy/util/lang/CoroutinesExtensionsKt;->launchNow(Lkotlin/jvm/functions/Function2;)Lkotlinx/coroutines/Job;

    return-void
.end method

.method public final pauseDownloads()V
    .locals 2

    .line 114
    sget-object v0, Lcom/player/easy/data/download/DownloadService;->Companion:Lcom/player/easy/data/download/DownloadService$Companion;

    iget-object v1, p0, Lcom/player/easy/data/download/DownloadManager;->context:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/player/easy/data/download/DownloadService$Companion;->stop(Landroid/content/Context;)V

    .line 115
    invoke-direct {p0}, Lcom/player/easy/data/download/DownloadManager;->getNotifier()Lcom/player/easy/data/download/DownloadNotifier;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/player/easy/data/download/DownloadNotifier;->setPaused(Z)V

    return-void
.end method

.method public final queueDownload(Lcom/tonyodev/fetch2/Request;Z)V
    .locals 7

    const-string v0, "request"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 119
    invoke-virtual {p1, p2}, Lcom/tonyodev/fetch2/RequestInfo;->setDownloadOnEnqueue(Z)V

    .line 120
    invoke-virtual {p0}, Lcom/player/easy/data/download/DownloadManager;->getFetch()Lcom/tonyodev/fetch2/Fetch;

    move-result-object v1

    const/4 v5, 0x6

    const/4 v6, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v2, p1

    invoke-static/range {v1 .. v6}, Lcom/tonyodev/fetch2/Fetch$DefaultImpls;->enqueue$default(Lcom/tonyodev/fetch2/Fetch;Lcom/tonyodev/fetch2/Request;Lcom/tonyodev/fetch2core/Func;Lcom/tonyodev/fetch2core/Func;ILjava/lang/Object;)Lcom/tonyodev/fetch2/Fetch;

    .line 121
    iget-boolean p1, p0, Lcom/player/easy/data/download/DownloadManager;->isRunning:Z

    if-nez p1, :cond_0

    if-eqz p2, :cond_0

    .line 122
    sget-object p1, Lcom/player/easy/data/download/DownloadService;->Companion:Lcom/player/easy/data/download/DownloadService$Companion;

    iget-object p2, p0, Lcom/player/easy/data/download/DownloadManager;->context:Landroid/content/Context;

    invoke-virtual {p1, p2}, Lcom/player/easy/data/download/DownloadService$Companion;->start(Landroid/content/Context;)V

    :cond_0
    return-void
.end method

.method public final reorderQueue(Ljava/util/List;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
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

    instance-of v0, p2, Lcom/player/easy/data/download/DownloadManager$reorderQueue$1;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Lcom/player/easy/data/download/DownloadManager$reorderQueue$1;

    iget v1, v0, Lcom/player/easy/data/download/DownloadManager$reorderQueue$1;->label:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lcom/player/easy/data/download/DownloadManager$reorderQueue$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/player/easy/data/download/DownloadManager$reorderQueue$1;

    invoke-direct {v0, p0, p2}, Lcom/player/easy/data/download/DownloadManager$reorderQueue$1;-><init>(Lcom/player/easy/data/download/DownloadManager;Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object p2, v0, Lcom/player/easy/data/download/DownloadManager$reorderQueue$1;->result:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    .line 183
    iget v2, v0, Lcom/player/easy/data/download/DownloadManager$reorderQueue$1;->label:I

    const/4 v3, 0x2

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-eqz v2, :cond_3

    if-eq v2, v5, :cond_2

    if-ne v2, v3, :cond_1

    iget p1, v0, Lcom/player/easy/data/download/DownloadManager$reorderQueue$1;->I$0:I

    iget-object v2, v0, Lcom/player/easy/data/download/DownloadManager$reorderQueue$1;->L$5:Ljava/lang/Object;

    check-cast v2, Lcom/tonyodev/fetch2/Download;

    iget-object v2, v0, Lcom/player/easy/data/download/DownloadManager$reorderQueue$1;->L$3:Ljava/lang/Object;

    check-cast v2, Ljava/util/Iterator;

    iget-object v6, v0, Lcom/player/easy/data/download/DownloadManager$reorderQueue$1;->L$2:Ljava/lang/Object;

    check-cast v6, Ljava/lang/Iterable;

    iget-object v7, v0, Lcom/player/easy/data/download/DownloadManager$reorderQueue$1;->L$1:Ljava/lang/Object;

    check-cast v7, Ljava/lang/Boolean;

    iget-object v8, v0, Lcom/player/easy/data/download/DownloadManager$reorderQueue$1;->L$0:Ljava/lang/Object;

    check-cast v8, Ljava/util/List;

    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_2

    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    iget-object p1, v0, Lcom/player/easy/data/download/DownloadManager$reorderQueue$1;->L$1:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Boolean;

    iget-object v2, v0, Lcom/player/easy/data/download/DownloadManager$reorderQueue$1;->L$0:Ljava/lang/Object;

    check-cast v2, Ljava/util/List;

    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object v7, p1

    move-object p1, v2

    goto :goto_1

    :cond_3
    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 186
    iget-object p2, p0, Lcom/player/easy/data/download/DownloadManager;->runningRelay:Lcom/jakewharton/rxrelay2/BehaviorRelay;

    invoke-virtual {p2}, Lcom/jakewharton/rxrelay2/BehaviorRelay;->getValue()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Boolean;

    .line 187
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 188
    sget-object p1, Lcom/player/easy/data/download/DownloadService;->Companion:Lcom/player/easy/data/download/DownloadService$Companion;

    iget-object p2, p0, Lcom/player/easy/data/download/DownloadManager;->context:Landroid/content/Context;

    invoke-virtual {p1, p2}, Lcom/player/easy/data/download/DownloadService$Companion;->stop(Landroid/content/Context;)V

    .line 189
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1

    .line 192
    :cond_4
    invoke-virtual {p0}, Lcom/player/easy/data/download/DownloadManager;->pauseDownloads()V

    .line 193
    invoke-virtual {p0}, Lcom/player/easy/data/download/DownloadManager;->getFetch()Lcom/tonyodev/fetch2/Fetch;

    move-result-object v2

    iput-object p1, v0, Lcom/player/easy/data/download/DownloadManager$reorderQueue$1;->L$0:Ljava/lang/Object;

    iput-object p2, v0, Lcom/player/easy/data/download/DownloadManager$reorderQueue$1;->L$1:Ljava/lang/Object;

    iput v5, v0, Lcom/player/easy/data/download/DownloadManager$reorderQueue$1;->label:I

    invoke-static {v2, p1, v0}, Lcom/player/easy/util/download/FetchExtensionsKt;->cancel(Lcom/tonyodev/fetch2/Fetch;Ljava/util/List;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v2

    if-ne v2, v1, :cond_5

    goto :goto_3

    :cond_5
    move-object v7, p2

    .line 264
    :goto_1
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    move-object v6, p1

    move-object v8, v6

    move p1, v4

    :cond_6
    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_7

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    move-object v9, p2

    check-cast v9, Lcom/tonyodev/fetch2/Download;

    .line 196
    invoke-interface {v9}, Lcom/tonyodev/fetch2/Download;->getRequest()Lcom/tonyodev/fetch2/Request;

    move-result-object v10

    invoke-virtual {v10, v4}, Lcom/tonyodev/fetch2/RequestInfo;->setDownloadOnEnqueue(Z)V

    .line 197
    invoke-virtual {p0}, Lcom/player/easy/data/download/DownloadManager;->getFetch()Lcom/tonyodev/fetch2/Fetch;

    move-result-object v10

    invoke-static {v8}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    iput-object v11, v0, Lcom/player/easy/data/download/DownloadManager$reorderQueue$1;->L$0:Ljava/lang/Object;

    iput-object v7, v0, Lcom/player/easy/data/download/DownloadManager$reorderQueue$1;->L$1:Ljava/lang/Object;

    invoke-static {v6}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    iput-object v11, v0, Lcom/player/easy/data/download/DownloadManager$reorderQueue$1;->L$2:Ljava/lang/Object;

    iput-object v2, v0, Lcom/player/easy/data/download/DownloadManager$reorderQueue$1;->L$3:Ljava/lang/Object;

    invoke-static {p2}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    iput-object p2, v0, Lcom/player/easy/data/download/DownloadManager$reorderQueue$1;->L$4:Ljava/lang/Object;

    invoke-static {v9}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    iput-object p2, v0, Lcom/player/easy/data/download/DownloadManager$reorderQueue$1;->L$5:Ljava/lang/Object;

    iput p1, v0, Lcom/player/easy/data/download/DownloadManager$reorderQueue$1;->I$0:I

    iput v4, v0, Lcom/player/easy/data/download/DownloadManager$reorderQueue$1;->I$1:I

    iput v3, v0, Lcom/player/easy/data/download/DownloadManager$reorderQueue$1;->label:I

    invoke-static {v10, v9, v0}, Lcom/player/easy/util/download/FetchExtensionsKt;->enqueue(Lcom/tonyodev/fetch2/Fetch;Lcom/tonyodev/fetch2/Download;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p2

    if-ne p2, v1, :cond_6

    :goto_3
    return-object v1

    .line 200
    :cond_7
    invoke-static {v5}, Lkotlin/coroutines/jvm/internal/Boxing;->boxBoolean(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-static {v7, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_8

    .line 201
    invoke-virtual {p0}, Lcom/player/easy/data/download/DownloadManager;->startDownloads()Z

    .line 203
    :cond_8
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method public final replaceExtras(Lcom/tonyodev/fetch2/Download;Lcom/tonyodev/fetch2core/Extras;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/tonyodev/fetch2/Download;",
            "Lcom/tonyodev/fetch2core/Extras;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 243
    invoke-virtual {p0}, Lcom/player/easy/data/download/DownloadManager;->getFetch()Lcom/tonyodev/fetch2/Fetch;

    move-result-object v0

    invoke-static {v0, p1, p2, p3}, Lcom/player/easy/util/download/FetchExtensionsKt;->replaceExtras(Lcom/tonyodev/fetch2/Fetch;Lcom/tonyodev/fetch2/Download;Lcom/tonyodev/fetch2core/Extras;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object p2

    if-ne p1, p2, :cond_0

    return-object p1

    :cond_0
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method public final resume(Lcom/tonyodev/fetch2/Download;Lkotlin/jvm/functions/Function0;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/tonyodev/fetch2/Download;",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    const-string v0, "download"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "block"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 206
    invoke-virtual {p0}, Lcom/player/easy/data/download/DownloadManager;->getFetch()Lcom/tonyodev/fetch2/Fetch;

    move-result-object v0

    new-instance v1, Lcom/player/easy/data/download/DownloadManager$$ExternalSyntheticLambda8;

    invoke-direct {v1, p0, p1, p2}, Lcom/player/easy/data/download/DownloadManager$$ExternalSyntheticLambda8;-><init>(Lcom/player/easy/data/download/DownloadManager;Lcom/tonyodev/fetch2/Download;Lkotlin/jvm/functions/Function0;)V

    const/4 p1, 0x0

    invoke-interface {v0, p1, v1}, Lcom/tonyodev/fetch2/Fetch;->hasActiveDownloads(ZLcom/tonyodev/fetch2core/Func;)Lcom/tonyodev/fetch2/Fetch;

    return-void
.end method

.method public final resumeAll()V
    .locals 2

    .line 247
    invoke-virtual {p0}, Lcom/player/easy/data/download/DownloadManager;->getFetch()Lcom/tonyodev/fetch2/Fetch;

    move-result-object v0

    invoke-interface {v0}, Lcom/tonyodev/fetch2/Fetch;->resumeAll()Lcom/tonyodev/fetch2/Fetch;

    .line 248
    iget-boolean v0, p0, Lcom/player/easy/data/download/DownloadManager;->isRunning:Z

    if-eqz v0, :cond_0

    return-void

    .line 249
    :cond_0
    sget-object v0, Lcom/player/easy/data/download/DownloadService;->Companion:Lcom/player/easy/data/download/DownloadService$Companion;

    iget-object v1, p0, Lcom/player/easy/data/download/DownloadManager;->context:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/player/easy/data/download/DownloadService$Companion;->start(Landroid/content/Context;)V

    return-void
.end method

.method public final startDownloads()Z
    .locals 2

    .line 106
    iget-object v0, p0, Lcom/player/easy/data/download/DownloadManager;->disposables:Lio/reactivex/disposables/CompositeDisposable;

    invoke-virtual {v0}, Lio/reactivex/disposables/CompositeDisposable;->size()I

    move-result v0

    if-nez v0, :cond_0

    .line 107
    invoke-direct {p0}, Lcom/player/easy/data/download/DownloadManager;->initializeSubscriptions()V

    .line 109
    :cond_0
    invoke-direct {p0}, Lcom/player/easy/data/download/DownloadManager;->getNotifier()Lcom/player/easy/data/download/DownloadNotifier;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/player/easy/data/download/DownloadNotifier;->setPaused(Z)V

    const/4 v0, 0x1

    return v0
.end method

.method public final stopDownloads(Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p2, Lcom/player/easy/data/download/DownloadManager$stopDownloads$1;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Lcom/player/easy/data/download/DownloadManager$stopDownloads$1;

    iget v1, v0, Lcom/player/easy/data/download/DownloadManager$stopDownloads$1;->label:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lcom/player/easy/data/download/DownloadManager$stopDownloads$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/player/easy/data/download/DownloadManager$stopDownloads$1;

    invoke-direct {v0, p0, p2}, Lcom/player/easy/data/download/DownloadManager$stopDownloads$1;-><init>(Lcom/player/easy/data/download/DownloadManager;Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object p2, v0, Lcom/player/easy/data/download/DownloadManager$stopDownloads$1;->result:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    .line 91
    iget v2, v0, Lcom/player/easy/data/download/DownloadManager$stopDownloads$1;->label:I

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    if-ne v2, v3, :cond_1

    iget-object p1, v0, Lcom/player/easy/data/download/DownloadManager$stopDownloads$1;->L$0:Ljava/lang/Object;

    check-cast p1, Ljava/lang/String;

    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_1

    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 92
    iput-object p1, v0, Lcom/player/easy/data/download/DownloadManager$stopDownloads$1;->L$0:Ljava/lang/Object;

    iput v3, v0, Lcom/player/easy/data/download/DownloadManager$stopDownloads$1;->label:I

    invoke-direct {p0, v0}, Lcom/player/easy/data/download/DownloadManager;->destroySubscriptions(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p2

    if-ne p2, v1, :cond_3

    return-object v1

    :cond_3
    :goto_1
    if-eqz p1, :cond_4

    .line 95
    invoke-direct {p0}, Lcom/player/easy/data/download/DownloadManager;->getNotifier()Lcom/player/easy/data/download/DownloadNotifier;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/player/easy/data/download/DownloadNotifier;->onWarning(Ljava/lang/String;)V

    .line 96
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1

    .line 99
    :cond_4
    invoke-direct {p0}, Lcom/player/easy/data/download/DownloadManager;->getNotifier()Lcom/player/easy/data/download/DownloadNotifier;

    move-result-object p1

    invoke-virtual {p1}, Lcom/player/easy/data/download/DownloadNotifier;->getPaused()Z

    move-result p1

    if-eqz p1, :cond_5

    iget-object p1, p0, Lcom/player/easy/data/download/DownloadManager;->queue:Ljava/util/Set;

    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_5

    .line 100
    invoke-direct {p0}, Lcom/player/easy/data/download/DownloadManager;->getNotifier()Lcom/player/easy/data/download/DownloadNotifier;

    move-result-object p1

    iget-object p2, p0, Lcom/player/easy/data/download/DownloadManager;->queue:Ljava/util/Set;

    invoke-static {p2}, Lkotlin/collections/CollectionsKt;->first(Ljava/lang/Iterable;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/tonyodev/fetch2/Download;

    invoke-virtual {p1, p2}, Lcom/player/easy/data/download/DownloadNotifier;->onPaused(Lcom/tonyodev/fetch2/Download;)V

    .line 102
    :cond_5
    invoke-direct {p0}, Lcom/player/easy/data/download/DownloadManager;->getNotifier()Lcom/player/easy/data/download/DownloadNotifier;

    move-result-object p1

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Lcom/player/easy/data/download/DownloadNotifier;->setPaused(Z)V

    .line 103
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method
