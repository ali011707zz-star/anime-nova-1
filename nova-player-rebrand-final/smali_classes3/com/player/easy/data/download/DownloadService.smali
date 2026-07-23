.class public final Lcom/player/easy/data/download/DownloadService;
.super Landroid/app/Service;
.source "DownloadService.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/player/easy/data/download/DownloadService$Companion;,
        Lcom/player/easy/data/download/DownloadService$WhenMappings;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000Z\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0018\u0000 *2\u00020\u0001:\u0001*B\u0007\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u0008\u0010\u0014\u001a\u00020\u0015H\u0017J\u0008\u0010\u0016\u001a\u00020\u0015H\u0016J\"\u0010\u0017\u001a\u00020\u00182\u0008\u0010\u0019\u001a\u0004\u0018\u00010\u001a2\u0006\u0010\u001b\u001a\u00020\u00182\u0006\u0010\u001c\u001a\u00020\u0018H\u0016J\u0014\u0010\u001d\u001a\u0004\u0018\u00010\u001e2\u0008\u0010\u0019\u001a\u0004\u0018\u00010\u001aH\u0016J\u0018\u0010\u001f\u001a\u00020\u00152\u0006\u0010\u001c\u001a\u00020\u00182\u0006\u0010 \u001a\u00020\u0018H\u0016J\u0008\u0010!\u001a\u00020\u0015H\u0002J\u0010\u0010\"\u001a\u00020\u00152\u0006\u0010#\u001a\u00020$H\u0002J\u0008\u0010%\u001a\u00020\u0015H\u0002J\u0010\u0010&\u001a\u00020\u0015*\u00060\u0010R\u00020\u0011H\u0002J\u0010\u0010\'\u001a\u00020\u0015*\u00060\u0010R\u00020\u0011H\u0002J\u0008\u0010(\u001a\u00020)H\u0002R\u001b\u0010\u0004\u001a\u00020\u00058BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u0008\u0010\t\u001a\u0004\u0008\u0006\u0010\u0007R\u001b\u0010\n\u001a\u00020\u000b8BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u000e\u0010\t\u001a\u0004\u0008\u000c\u0010\rR\u0012\u0010\u000f\u001a\u00060\u0010R\u00020\u0011X\u0082.\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0012\u001a\u00020\u0013X\u0082.\u00a2\u0006\u0002\n\u0000\u00a8\u0006+"
    }
    d2 = {
        "Lcom/player/easy/data/download/DownloadService;",
        "Landroid/app/Service;",
        "<init>",
        "()V",
        "preferences",
        "Lcom/player/easy/data/preference/PreferencesHelper;",
        "getPreferences",
        "()Lcom/player/easy/data/preference/PreferencesHelper;",
        "preferences$delegate",
        "Lkotlin/Lazy;",
        "downloadManager",
        "Lcom/player/easy/data/download/DownloadManager;",
        "getDownloadManager",
        "()Lcom/player/easy/data/download/DownloadManager;",
        "downloadManager$delegate",
        "wakeLock",
        "Landroid/os/PowerManager$WakeLock;",
        "Landroid/os/PowerManager;",
        "subscriptions",
        "Lio/reactivex/disposables/CompositeDisposable;",
        "onCreate",
        "",
        "onDestroy",
        "onStartCommand",
        "",
        "intent",
        "Landroid/content/Intent;",
        "flags",
        "startId",
        "onBind",
        "Landroid/os/IBinder;",
        "onTimeout",
        "fgsType",
        "listenNetworkChanges",
        "onNetworkStateChanged",
        "connectivity",
        "Lcom/github/pwittchen/reactivenetwork/library/rx2/Connectivity;",
        "listenDownloaderState",
        "releaseIfNeeded",
        "acquireIfNeeded",
        "getPlaceHolderNotification",
        "Landroid/app/Notification;",
        "Companion",
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
        "SMAP\nDownloadService.kt\nKotlin\n*S Kotlin\n*F\n+ 1 DownloadService.kt\ncom/player/easy/data/download/DownloadService\n+ 2 Injekt.kt\nuy/kohesive/injekt/InjektKt\n*L\n1#1,189:1\n17#2:190\n17#2:191\n*S KotlinDebug\n*F\n+ 1 DownloadService.kt\ncom/player/easy/data/download/DownloadService\n*L\n59#1:190\n61#1:191\n*E\n"
    }
.end annotation


# static fields
.field public static final Companion:Lcom/player/easy/data/download/DownloadService$Companion;

.field private static final runningRelay:Lcom/jakewharton/rxrelay2/BehaviorRelay;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/jakewharton/rxrelay2/BehaviorRelay;"
        }
    .end annotation
.end field


# instance fields
.field private final downloadManager$delegate:Lkotlin/Lazy;

.field private final preferences$delegate:Lkotlin/Lazy;

.field private subscriptions:Lio/reactivex/disposables/CompositeDisposable;

.field private wakeLock:Landroid/os/PowerManager$WakeLock;


# direct methods
.method public static synthetic $r8$lambda$0RrLgswQVpUdBnOgUkyZI8EI2O4(Landroidx/core/app/NotificationCompat$Builder;)Lkotlin/Unit;
    .locals 0

    .line 0
    invoke-static {p0}, Lcom/player/easy/data/download/DownloadService;->getPlaceHolderNotification$lambda$0(Landroidx/core/app/NotificationCompat$Builder;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$BBHTQr7Bo_v10YEtlJ_yOMEzV_w(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;)V
    .locals 0

    .line 0
    invoke-static {p0, p1}, Lcom/player/easy/data/download/DownloadService;->listenNetworkChanges$lambda$1(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;)V

    return-void
.end method

.method public static synthetic $r8$lambda$ECyUOO8IvYk6rwS_k8E8HSMqKds(Lcom/player/easy/data/download/DownloadService;Ljava/lang/Throwable;)Lkotlin/Unit;
    .locals 0

    .line 0
    invoke-static {p0, p1}, Lcom/player/easy/data/download/DownloadService;->listenNetworkChanges$lambda$2(Lcom/player/easy/data/download/DownloadService;Ljava/lang/Throwable;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$JkaQhIYUErnkDp4sOTGid-eOPNY(Lcom/player/easy/data/download/DownloadService;Ljava/lang/Boolean;)Lkotlin/Unit;
    .locals 0

    .line 0
    invoke-static {p0, p1}, Lcom/player/easy/data/download/DownloadService;->listenDownloaderState$lambda$0(Lcom/player/easy/data/download/DownloadService;Ljava/lang/Boolean;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$fw6sPGaLDNM1NaR43kS2SUsFKr4(Lcom/player/easy/data/download/DownloadService;Lcom/github/pwittchen/reactivenetwork/library/rx2/Connectivity;)Lkotlin/Unit;
    .locals 0

    .line 0
    invoke-static {p0, p1}, Lcom/player/easy/data/download/DownloadService;->listenNetworkChanges$lambda$0(Lcom/player/easy/data/download/DownloadService;Lcom/github/pwittchen/reactivenetwork/library/rx2/Connectivity;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$jj1CVzdY7uOishP9Sb10G1RA3FQ(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;)V
    .locals 0

    .line 0
    invoke-static {p0, p1}, Lcom/player/easy/data/download/DownloadService;->listenDownloaderState$lambda$1(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;)V

    return-void
.end method

.method public static synthetic $r8$lambda$ki1fw-jVzbiF_pYd3GPU-LT0OF0(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;)V
    .locals 0

    .line 0
    invoke-static {p0, p1}, Lcom/player/easy/data/download/DownloadService;->listenNetworkChanges$lambda$3(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;)V

    return-void
.end method

.method public static synthetic $r8$lambda$p9jm6-VVXYr2SyHvpKsBEA6c-6w(Lcom/player/easy/data/download/DownloadService;Ljava/lang/Throwable;)Lkotlin/Unit;
    .locals 0

    .line 0
    invoke-static {p0, p1}, Lcom/player/easy/data/download/DownloadService;->onDestroy$lambda$0(Lcom/player/easy/data/download/DownloadService;Ljava/lang/Throwable;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/player/easy/data/download/DownloadService$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/player/easy/data/download/DownloadService$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/player/easy/data/download/DownloadService;->Companion:Lcom/player/easy/data/download/DownloadService$Companion;

    .line 37
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-static {v0}, Lcom/jakewharton/rxrelay2/BehaviorRelay;->createDefault(Ljava/lang/Object;)Lcom/jakewharton/rxrelay2/BehaviorRelay;

    move-result-object v0

    const-string v1, "createDefault(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    sput-object v0, Lcom/player/easy/data/download/DownloadService;->runningRelay:Lcom/jakewharton/rxrelay2/BehaviorRelay;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 33
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 190
    sget-object v0, Lcom/player/easy/data/download/DownloadService$special$$inlined$injectLazy$1;->INSTANCE:Lcom/player/easy/data/download/DownloadService$special$$inlined$injectLazy$1;

    invoke-static {v0}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    .line 59
    iput-object v0, p0, Lcom/player/easy/data/download/DownloadService;->preferences$delegate:Lkotlin/Lazy;

    .line 191
    sget-object v0, Lcom/player/easy/data/download/DownloadService$special$$inlined$injectLazy$2;->INSTANCE:Lcom/player/easy/data/download/DownloadService$special$$inlined$injectLazy$2;

    invoke-static {v0}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    .line 61
    iput-object v0, p0, Lcom/player/easy/data/download/DownloadService;->downloadManager$delegate:Lkotlin/Lazy;

    return-void
.end method

.method public static final synthetic access$getDownloadManager(Lcom/player/easy/data/download/DownloadService;)Lcom/player/easy/data/download/DownloadManager;
    .locals 0

    .line 33
    invoke-direct {p0}, Lcom/player/easy/data/download/DownloadService;->getDownloadManager()Lcom/player/easy/data/download/DownloadManager;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$getRunningRelay$cp()Lcom/jakewharton/rxrelay2/BehaviorRelay;
    .locals 1

    .line 33
    sget-object v0, Lcom/player/easy/data/download/DownloadService;->runningRelay:Lcom/jakewharton/rxrelay2/BehaviorRelay;

    return-object v0
.end method

.method private final acquireIfNeeded(Landroid/os/PowerManager$WakeLock;)V
    .locals 1

    .line 182
    invoke-virtual {p1}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Landroid/os/PowerManager$WakeLock;->acquire()V

    :cond_0
    return-void
.end method

.method private final getDownloadManager()Lcom/player/easy/data/download/DownloadManager;
    .locals 1

    .line 61
    iget-object v0, p0, Lcom/player/easy/data/download/DownloadService;->downloadManager$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/player/easy/data/download/DownloadManager;

    return-object v0
.end method

.method private final getPlaceHolderNotification()Landroid/app/Notification;
    .locals 2

    .line 186
    new-instance v0, Lcom/player/easy/data/download/DownloadService$$ExternalSyntheticLambda5;

    invoke-direct {v0}, Lcom/player/easy/data/download/DownloadService$$ExternalSyntheticLambda5;-><init>()V

    const-string v1, "downloader_progress_channel"

    invoke-static {p0, v1, v0}, Lcom/player/easy/util/system/ContextExtensionsKt;->notification(Landroid/content/Context;Ljava/lang/String;Lkotlin/jvm/functions/Function1;)Landroid/app/Notification;

    move-result-object v0

    return-object v0
.end method

.method private static final getPlaceHolderNotification$lambda$0(Landroidx/core/app/NotificationCompat$Builder;)Lkotlin/Unit;
    .locals 1

    const-string v0, "$this$notification"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 186
    const-string v0, "Downloader"

    invoke-virtual {p0, v0}, Landroidx/core/app/NotificationCompat$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroidx/core/app/NotificationCompat$Builder;

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method private final getPreferences()Lcom/player/easy/data/preference/PreferencesHelper;
    .locals 1

    .line 59
    iget-object v0, p0, Lcom/player/easy/data/download/DownloadService;->preferences$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/player/easy/data/preference/PreferencesHelper;

    return-object v0
.end method

.method private final listenDownloaderState()V
    .locals 4

    .line 165
    iget-object v0, p0, Lcom/player/easy/data/download/DownloadService;->subscriptions:Lio/reactivex/disposables/CompositeDisposable;

    if-nez v0, :cond_0

    const-string v0, "subscriptions"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 166
    :cond_0
    invoke-direct {p0}, Lcom/player/easy/data/download/DownloadService;->getDownloadManager()Lcom/player/easy/data/download/DownloadManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/player/easy/data/download/DownloadManager;->getRunningRelay()Lcom/jakewharton/rxrelay2/BehaviorRelay;

    move-result-object v1

    new-instance v2, Lcom/player/easy/data/download/DownloadService$$ExternalSyntheticLambda6;

    invoke-direct {v2, p0}, Lcom/player/easy/data/download/DownloadService$$ExternalSyntheticLambda6;-><init>(Lcom/player/easy/data/download/DownloadService;)V

    new-instance v3, Lcom/player/easy/data/download/DownloadService$$ExternalSyntheticLambda7;

    invoke-direct {v3, v2}, Lcom/player/easy/data/download/DownloadService$$ExternalSyntheticLambda7;-><init>(Lkotlin/jvm/functions/Function1;)V

    invoke-virtual {v1, v3}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    move-result-object v1

    const-string v2, "subscribe(...)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 165
    invoke-static {v0, v1}, Lcom/player/easy/util/lang/RxExtensionsKt;->plusAssign(Lio/reactivex/disposables/CompositeDisposable;Lio/reactivex/disposables/Disposable;)V

    return-void
.end method

.method private static final listenDownloaderState$lambda$0(Lcom/player/easy/data/download/DownloadService;Ljava/lang/Boolean;)Lkotlin/Unit;
    .locals 2

    .line 167
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    const/4 v0, 0x0

    const-string v1, "wakeLock"

    if-eqz p1, :cond_1

    .line 168
    iget-object p1, p0, Lcom/player/easy/data/download/DownloadService;->wakeLock:Landroid/os/PowerManager$WakeLock;

    if-nez p1, :cond_0

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    move-object v0, p1

    :goto_0
    invoke-direct {p0, v0}, Lcom/player/easy/data/download/DownloadService;->acquireIfNeeded(Landroid/os/PowerManager$WakeLock;)V

    goto :goto_2

    .line 170
    :cond_1
    iget-object p1, p0, Lcom/player/easy/data/download/DownloadService;->wakeLock:Landroid/os/PowerManager$WakeLock;

    if-nez p1, :cond_2

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_1

    :cond_2
    move-object v0, p1

    :goto_1
    invoke-direct {p0, v0}, Lcom/player/easy/data/download/DownloadService;->releaseIfNeeded(Landroid/os/PowerManager$WakeLock;)V

    .line 172
    :goto_2
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method private static final listenDownloaderState$lambda$1(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;)V
    .locals 0

    .line 166
    invoke-interface {p0, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private final listenNetworkChanges()V
    .locals 5

    .line 117
    iget-object v0, p0, Lcom/player/easy/data/download/DownloadService;->subscriptions:Lio/reactivex/disposables/CompositeDisposable;

    if-nez v0, :cond_0

    const-string v0, "subscriptions"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 118
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/github/pwittchen/reactivenetwork/library/rx2/ReactiveNetwork;->observeNetworkConnectivity(Landroid/content/Context;)Lio/reactivex/Observable;

    move-result-object v1

    .line 119
    invoke-static {}, Lio/reactivex/schedulers/Schedulers;->io()Lio/reactivex/Scheduler;

    move-result-object v2

    invoke-virtual {v1, v2}, Lio/reactivex/Observable;->subscribeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object v1

    .line 120
    invoke-static {}, Lio/reactivex/android/schedulers/AndroidSchedulers;->mainThread()Lio/reactivex/Scheduler;

    move-result-object v2

    invoke-virtual {v1, v2}, Lio/reactivex/Observable;->observeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object v1

    .line 121
    new-instance v2, Lcom/player/easy/data/download/DownloadService$$ExternalSyntheticLambda1;

    invoke-direct {v2, p0}, Lcom/player/easy/data/download/DownloadService$$ExternalSyntheticLambda1;-><init>(Lcom/player/easy/data/download/DownloadService;)V

    .line 122
    new-instance v3, Lcom/player/easy/data/download/DownloadService$$ExternalSyntheticLambda2;

    invoke-direct {v3, v2}, Lcom/player/easy/data/download/DownloadService$$ExternalSyntheticLambda2;-><init>(Lkotlin/jvm/functions/Function1;)V

    .line 121
    new-instance v2, Lcom/player/easy/data/download/DownloadService$$ExternalSyntheticLambda3;

    invoke-direct {v2, p0}, Lcom/player/easy/data/download/DownloadService$$ExternalSyntheticLambda3;-><init>(Lcom/player/easy/data/download/DownloadService;)V

    .line 123
    new-instance v4, Lcom/player/easy/data/download/DownloadService$$ExternalSyntheticLambda4;

    invoke-direct {v4, v2}, Lcom/player/easy/data/download/DownloadService$$ExternalSyntheticLambda4;-><init>(Lkotlin/jvm/functions/Function1;)V

    .line 121
    invoke-virtual {v1, v3, v4}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/functions/Consumer;Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    move-result-object v1

    .line 123
    const-string v2, "subscribe(...)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 117
    invoke-static {v0, v1}, Lcom/player/easy/util/lang/RxExtensionsKt;->plusAssign(Lio/reactivex/disposables/CompositeDisposable;Lio/reactivex/disposables/Disposable;)V

    return-void
.end method

.method private static final listenNetworkChanges$lambda$0(Lcom/player/easy/data/download/DownloadService;Lcom/github/pwittchen/reactivenetwork/library/rx2/Connectivity;)Lkotlin/Unit;
    .locals 0

    .line 122
    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-direct {p0, p1}, Lcom/player/easy/data/download/DownloadService;->onNetworkStateChanged(Lcom/github/pwittchen/reactivenetwork/library/rx2/Connectivity;)V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method private static final listenNetworkChanges$lambda$1(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;)V
    .locals 0

    .line 122
    invoke-interface {p0, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private static final listenNetworkChanges$lambda$2(Lcom/player/easy/data/download/DownloadService;Ljava/lang/Throwable;)Lkotlin/Unit;
    .locals 6

    .line 124
    sget v1, Lcom/player/easy/R$string;->download_queue_error:I

    const/4 v4, 0x6

    const/4 v5, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object v0, p0

    invoke-static/range {v0 .. v5}, Lcom/player/easy/util/system/ContextExtensionsKt;->toast$default(Landroid/content/Context;IILkotlin/jvm/functions/Function1;ILjava/lang/Object;)Landroid/widget/Toast;

    .line 125
    invoke-virtual {v0}, Landroid/app/Service;->stopSelf()V

    .line 126
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method private static final listenNetworkChanges$lambda$3(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;)V
    .locals 0

    .line 123
    invoke-interface {p0, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private static final onDestroy$lambda$0(Lcom/player/easy/data/download/DownloadService;Ljava/lang/Throwable;)Lkotlin/Unit;
    .locals 2

    .line 90
    sget-object p1, Ltimber/log/Timber;->Forest:Ltimber/log/Timber$Forest;

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "launchNow invokeOnCompletion"

    invoke-virtual {p1, v1, v0}, Ltimber/log/Timber$Forest;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 91
    iget-object p1, p0, Lcom/player/easy/data/download/DownloadService;->wakeLock:Landroid/os/PowerManager$WakeLock;

    if-nez p1, :cond_0

    const-string p1, "wakeLock"

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 p1, 0x0

    :cond_0
    invoke-direct {p0, p1}, Lcom/player/easy/data/download/DownloadService;->releaseIfNeeded(Landroid/os/PowerManager$WakeLock;)V

    .line 92
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method private final onNetworkStateChanged(Lcom/github/pwittchen/reactivenetwork/library/rx2/Connectivity;)V
    .locals 1

    .line 136
    invoke-virtual {p1}, Lcom/github/pwittchen/reactivenetwork/library/rx2/Connectivity;->state()Landroid/net/NetworkInfo$State;

    move-result-object p1

    if-nez p1, :cond_0

    const/4 p1, -0x1

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/player/easy/data/download/DownloadService$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, v0, p1

    :goto_0
    const/4 v0, 0x1

    if-eq p1, v0, :cond_1

    goto :goto_2

    .line 139
    :cond_1
    invoke-direct {p0}, Lcom/player/easy/data/download/DownloadService;->getPreferences()Lcom/player/easy/data/preference/PreferencesHelper;

    move-result-object p1

    invoke-virtual {p1}, Lcom/player/easy/data/preference/PreferencesHelper;->downloadOnlyOverWifi()Z

    move-result p1

    if-eqz p1, :cond_3

    .line 140
    invoke-static {p0}, Lcom/player/easy/util/system/ContextExtensionsKt;->getConnectivityManager(Landroid/content/Context;)Landroid/net/ConnectivityManager;

    move-result-object p1

    invoke-virtual {p1}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object p1

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Landroid/net/NetworkInfo;->getType()I

    move-result p1

    if-ne p1, v0, :cond_2

    goto :goto_1

    :cond_2
    const/4 v0, 0x0

    :goto_1
    if-eqz v0, :cond_4

    .line 147
    :cond_3
    invoke-direct {p0}, Lcom/player/easy/data/download/DownloadService;->getDownloadManager()Lcom/player/easy/data/download/DownloadManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/player/easy/data/download/DownloadManager;->startDownloads()Z

    move-result p1

    if-nez p1, :cond_4

    .line 148
    invoke-virtual {p0}, Landroid/app/Service;->stopSelf()V

    :cond_4
    :goto_2
    return-void
.end method

.method private final releaseIfNeeded(Landroid/os/PowerManager$WakeLock;)V
    .locals 1

    .line 177
    invoke-virtual {p1}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/os/PowerManager$WakeLock;->release()V

    :cond_0
    return-void
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 0

    .line 0
    const/4 p1, 0x0

    return-object p1
.end method

.method public onCreate()V
    .locals 3
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "InlinedApi"
        }
    .end annotation

    .line 71
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 75
    invoke-direct {p0}, Lcom/player/easy/data/download/DownloadService;->getPlaceHolderNotification()Landroid/app/Notification;

    move-result-object v0

    const/16 v1, -0xc9

    const/4 v2, 0x1

    .line 72
    invoke-static {p0, v1, v0, v2}, Landroidx/core/app/ServiceCompat;->startForeground(Landroid/app/Service;ILandroid/app/Notification;I)V

    .line 78
    const-class v0, Lcom/player/easy/data/download/DownloadService;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "getName(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0, v0}, Lcom/player/easy/util/system/ContextExtensionsKt;->acquireWakeLock(Landroid/content/Context;Ljava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    iput-object v0, p0, Lcom/player/easy/data/download/DownloadService;->wakeLock:Landroid/os/PowerManager$WakeLock;

    .line 79
    sget-object v0, Lcom/player/easy/data/download/DownloadService;->runningRelay:Lcom/jakewharton/rxrelay2/BehaviorRelay;

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v0, v1}, Lcom/jakewharton/rxrelay2/BehaviorRelay;->accept(Ljava/lang/Object;)V

    .line 80
    new-instance v0, Lio/reactivex/disposables/CompositeDisposable;

    invoke-direct {v0}, Lio/reactivex/disposables/CompositeDisposable;-><init>()V

    iput-object v0, p0, Lcom/player/easy/data/download/DownloadService;->subscriptions:Lio/reactivex/disposables/CompositeDisposable;

    .line 81
    invoke-direct {p0}, Lcom/player/easy/data/download/DownloadService;->listenDownloaderState()V

    .line 82
    invoke-direct {p0}, Lcom/player/easy/data/download/DownloadService;->listenNetworkChanges()V

    return-void
.end method

.method public onDestroy()V
    .locals 2

    .line 86
    sget-object v0, Lcom/player/easy/data/download/DownloadService;->runningRelay:Lcom/jakewharton/rxrelay2/BehaviorRelay;

    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v0, v1}, Lcom/jakewharton/rxrelay2/BehaviorRelay;->accept(Ljava/lang/Object;)V

    .line 87
    iget-object v0, p0, Lcom/player/easy/data/download/DownloadService;->subscriptions:Lio/reactivex/disposables/CompositeDisposable;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const-string v0, "subscriptions"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v1

    :cond_0
    invoke-virtual {v0}, Lio/reactivex/disposables/CompositeDisposable;->dispose()V

    .line 88
    new-instance v0, Lcom/player/easy/data/download/DownloadService$onDestroy$1;

    invoke-direct {v0, p0, v1}, Lcom/player/easy/data/download/DownloadService$onDestroy$1;-><init>(Lcom/player/easy/data/download/DownloadService;Lkotlin/coroutines/Continuation;)V

    invoke-static {v0}, Lcom/player/easy/util/lang/CoroutinesExtensionsKt;->launchNow(Lkotlin/jvm/functions/Function2;)Lkotlinx/coroutines/Job;

    move-result-object v0

    .line 89
    new-instance v1, Lcom/player/easy/data/download/DownloadService$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/player/easy/data/download/DownloadService$$ExternalSyntheticLambda0;-><init>(Lcom/player/easy/data/download/DownloadService;)V

    invoke-interface {v0, v1}, Lkotlinx/coroutines/Job;->invokeOnCompletion(Lkotlin/jvm/functions/Function1;)Lkotlinx/coroutines/DisposableHandle;

    .line 93
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 0

    .line 0
    const/4 p1, 0x2

    return p1
.end method

.method public onTimeout(II)V
    .locals 0

    .line 107
    invoke-super {p0, p1, p2}, Landroid/app/Service;->onTimeout(II)V

    .line 108
    invoke-virtual {p0}, Landroid/app/Service;->stopSelf()V

    return-void
.end method
