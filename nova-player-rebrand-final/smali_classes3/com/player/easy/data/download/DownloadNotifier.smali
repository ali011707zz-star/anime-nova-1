.class public final Lcom/player/easy/data/download/DownloadNotifier;
.super Ljava/lang/Object;
.source "DownloadNotifier.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000@\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u000b\n\u0002\u0010\u000b\n\u0002\u0008\t\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0010\u000e\n\u0002\u0008\u0004\u0008\u0000\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0004\u0008\u0004\u0010\u0005J\u0014\u0010\u001c\u001a\u00020\u001d*\u00020\u00072\u0006\u0010\u001e\u001a\u00020\u001fH\u0002J\u0006\u0010 \u001a\u00020\u001dJ\u000e\u0010!\u001a\u00020\u001d2\u0006\u0010\"\u001a\u00020#J\u000e\u0010$\u001a\u00020\u001d2\u0006\u0010\"\u001a\u00020#J\u000e\u0010%\u001a\u00020\u001d2\u0006\u0010\"\u001a\u00020#J\u000e\u0010&\u001a\u00020\u001d2\u0006\u0010\'\u001a\u00020(J&\u0010)\u001a\u00020\u001d2\n\u0008\u0002\u0010*\u001a\u0004\u0018\u00010(2\n\u0008\u0002\u0010+\u001a\u0004\u0018\u00010(2\u0006\u0010\"\u001a\u00020#R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u001b\u0010\u0006\u001a\u00020\u00078BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\n\u0010\u000b\u001a\u0004\u0008\u0008\u0010\tR\u001b\u0010\u000c\u001a\u00020\u00078BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u000e\u0010\u000b\u001a\u0004\u0008\r\u0010\tR\u001b\u0010\u000f\u001a\u00020\u00078BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u0011\u0010\u000b\u001a\u0004\u0008\u0010\u0010\tR\u000e\u0010\u0012\u001a\u00020\u0013X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u001a\u0010\u0014\u001a\u00020\u0013X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0015\u0010\u0016\"\u0004\u0008\u0017\u0010\u0018R\u001a\u0010\u0019\u001a\u00020\u0013X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u001a\u0010\u0016\"\u0004\u0008\u001b\u0010\u0018\u00a8\u0006,"
    }
    d2 = {
        "Lcom/player/easy/data/download/DownloadNotifier;",
        "",
        "context",
        "Landroid/content/Context;",
        "<init>",
        "(Landroid/content/Context;)V",
        "progressNotificationBuilder",
        "Landroidx/core/app/NotificationCompat$Builder;",
        "getProgressNotificationBuilder",
        "()Landroidx/core/app/NotificationCompat$Builder;",
        "progressNotificationBuilder$delegate",
        "Lkotlin/Lazy;",
        "completeNotificationBuilder",
        "getCompleteNotificationBuilder",
        "completeNotificationBuilder$delegate",
        "errorNotificationBuilder",
        "getErrorNotificationBuilder",
        "errorNotificationBuilder$delegate",
        "isDownloading",
        "",
        "errorThrown",
        "getErrorThrown",
        "()Z",
        "setErrorThrown",
        "(Z)V",
        "paused",
        "getPaused",
        "setPaused",
        "show",
        "",
        "id",
        "",
        "dismissProgress",
        "onProgressChange",
        "download",
        "Lcom/tonyodev/fetch2/Download;",
        "onPaused",
        "onComplete",
        "onWarning",
        "reason",
        "",
        "onError",
        "error",
        "chapter",
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


# instance fields
.field private final completeNotificationBuilder$delegate:Lkotlin/Lazy;

.field private final context:Landroid/content/Context;

.field private final errorNotificationBuilder$delegate:Lkotlin/Lazy;

.field private errorThrown:Z

.field private isDownloading:Z

.field private paused:Z

.field private final progressNotificationBuilder$delegate:Lkotlin/Lazy;


# direct methods
.method public static synthetic $r8$lambda$J25r6IYf2n1uItSH6KLni9bcEWc(Landroidx/core/app/NotificationCompat$Builder;)Lkotlin/Unit;
    .locals 0

    .line 0
    invoke-static {p0}, Lcom/player/easy/data/download/DownloadNotifier;->completeNotificationBuilder_delegate$lambda$0$0(Landroidx/core/app/NotificationCompat$Builder;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$MCZgSs0KaSfZm_MabtL6NH8Q72U(Lcom/player/easy/data/download/DownloadNotifier;)Landroidx/core/app/NotificationCompat$Builder;
    .locals 0

    .line 0
    invoke-static {p0}, Lcom/player/easy/data/download/DownloadNotifier;->progressNotificationBuilder_delegate$lambda$0(Lcom/player/easy/data/download/DownloadNotifier;)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$P1XCcbR_pnwPDdjrEq8SOyIQL0A(Lcom/player/easy/data/download/DownloadNotifier;)Landroidx/core/app/NotificationCompat$Builder;
    .locals 0

    .line 0
    invoke-static {p0}, Lcom/player/easy/data/download/DownloadNotifier;->completeNotificationBuilder_delegate$lambda$0(Lcom/player/easy/data/download/DownloadNotifier;)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$USWdEI2IqhdUuMZfuvDVc_IOdO0(Lcom/player/easy/data/download/DownloadNotifier;)Landroidx/core/app/NotificationCompat$Builder;
    .locals 0

    .line 0
    invoke-static {p0}, Lcom/player/easy/data/download/DownloadNotifier;->errorNotificationBuilder_delegate$lambda$0(Lcom/player/easy/data/download/DownloadNotifier;)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$atB2UKOhe6ndJZkhedLGpk1hUxc(Landroidx/core/app/NotificationCompat$Builder;)Lkotlin/Unit;
    .locals 0

    .line 0
    invoke-static {p0}, Lcom/player/easy/data/download/DownloadNotifier;->progressNotificationBuilder_delegate$lambda$0$0(Landroidx/core/app/NotificationCompat$Builder;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$fh8LsQPNS9kjhy5qJgOgyAOHEWw(Landroidx/core/app/NotificationCompat$Builder;)Lkotlin/Unit;
    .locals 0

    .line 0
    invoke-static {p0}, Lcom/player/easy/data/download/DownloadNotifier;->errorNotificationBuilder_delegate$lambda$0$0(Landroidx/core/app/NotificationCompat$Builder;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/player/easy/data/download/DownloadNotifier;->context:Landroid/content/Context;

    .line 18
    new-instance p1, Lcom/player/easy/data/download/DownloadNotifier$$ExternalSyntheticLambda0;

    invoke-direct {p1, p0}, Lcom/player/easy/data/download/DownloadNotifier$$ExternalSyntheticLambda0;-><init>(Lcom/player/easy/data/download/DownloadNotifier;)V

    invoke-static {p1}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/player/easy/data/download/DownloadNotifier;->progressNotificationBuilder$delegate:Lkotlin/Lazy;

    .line 28
    new-instance p1, Lcom/player/easy/data/download/DownloadNotifier$$ExternalSyntheticLambda1;

    invoke-direct {p1, p0}, Lcom/player/easy/data/download/DownloadNotifier$$ExternalSyntheticLambda1;-><init>(Lcom/player/easy/data/download/DownloadNotifier;)V

    invoke-static {p1}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/player/easy/data/download/DownloadNotifier;->completeNotificationBuilder$delegate:Lkotlin/Lazy;

    .line 32
    new-instance p1, Lcom/player/easy/data/download/DownloadNotifier$$ExternalSyntheticLambda2;

    invoke-direct {p1, p0}, Lcom/player/easy/data/download/DownloadNotifier$$ExternalSyntheticLambda2;-><init>(Lcom/player/easy/data/download/DownloadNotifier;)V

    invoke-static {p1}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/player/easy/data/download/DownloadNotifier;->errorNotificationBuilder$delegate:Lkotlin/Lazy;

    return-void
.end method

.method private static final completeNotificationBuilder_delegate$lambda$0(Lcom/player/easy/data/download/DownloadNotifier;)Landroidx/core/app/NotificationCompat$Builder;
    .locals 2

    .line 29
    iget-object p0, p0, Lcom/player/easy/data/download/DownloadNotifier;->context:Landroid/content/Context;

    new-instance v0, Lcom/player/easy/data/download/DownloadNotifier$$ExternalSyntheticLambda3;

    invoke-direct {v0}, Lcom/player/easy/data/download/DownloadNotifier$$ExternalSyntheticLambda3;-><init>()V

    const-string v1, "downloader_complete_channel"

    invoke-static {p0, v1, v0}, Lcom/player/easy/util/system/ContextExtensionsKt;->notificationBuilder(Landroid/content/Context;Ljava/lang/String;Lkotlin/jvm/functions/Function1;)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object p0

    return-object p0
.end method

.method private static final completeNotificationBuilder_delegate$lambda$0$0(Landroidx/core/app/NotificationCompat$Builder;)Lkotlin/Unit;
    .locals 1

    const-string v0, "$this$notificationBuilder"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 29
    invoke-virtual {p0, v0}, Landroidx/core/app/NotificationCompat$Builder;->setAutoCancel(Z)Landroidx/core/app/NotificationCompat$Builder;

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method private static final errorNotificationBuilder_delegate$lambda$0(Lcom/player/easy/data/download/DownloadNotifier;)Landroidx/core/app/NotificationCompat$Builder;
    .locals 2

    .line 33
    iget-object p0, p0, Lcom/player/easy/data/download/DownloadNotifier;->context:Landroid/content/Context;

    new-instance v0, Lcom/player/easy/data/download/DownloadNotifier$$ExternalSyntheticLambda4;

    invoke-direct {v0}, Lcom/player/easy/data/download/DownloadNotifier$$ExternalSyntheticLambda4;-><init>()V

    const-string v1, "downloader_error_channel"

    invoke-static {p0, v1, v0}, Lcom/player/easy/util/system/ContextExtensionsKt;->notificationBuilder(Landroid/content/Context;Ljava/lang/String;Lkotlin/jvm/functions/Function1;)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object p0

    return-object p0
.end method

.method private static final errorNotificationBuilder_delegate$lambda$0$0(Landroidx/core/app/NotificationCompat$Builder;)Lkotlin/Unit;
    .locals 1

    const-string v0, "$this$notificationBuilder"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 34
    invoke-virtual {p0, v0}, Landroidx/core/app/NotificationCompat$Builder;->setAutoCancel(Z)Landroidx/core/app/NotificationCompat$Builder;

    .line 36
    const-string v0, "err"

    invoke-virtual {p0, v0}, Landroidx/core/app/NotificationCompat$Builder;->setCategory(Ljava/lang/String;)Landroidx/core/app/NotificationCompat$Builder;

    .line 38
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method private final getCompleteNotificationBuilder()Landroidx/core/app/NotificationCompat$Builder;
    .locals 1

    .line 28
    iget-object v0, p0, Lcom/player/easy/data/download/DownloadNotifier;->completeNotificationBuilder$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/core/app/NotificationCompat$Builder;

    return-object v0
.end method

.method private final getErrorNotificationBuilder()Landroidx/core/app/NotificationCompat$Builder;
    .locals 1

    .line 32
    iget-object v0, p0, Lcom/player/easy/data/download/DownloadNotifier;->errorNotificationBuilder$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/core/app/NotificationCompat$Builder;

    return-object v0
.end method

.method private final getProgressNotificationBuilder()Landroidx/core/app/NotificationCompat$Builder;
    .locals 1

    .line 18
    iget-object v0, p0, Lcom/player/easy/data/download/DownloadNotifier;->progressNotificationBuilder$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/core/app/NotificationCompat$Builder;

    return-object v0
.end method

.method public static synthetic onError$default(Lcom/player/easy/data/download/DownloadNotifier;Ljava/lang/String;Ljava/lang/String;Lcom/tonyodev/fetch2/Download;ILjava/lang/Object;)V
    .locals 1

    and-int/lit8 p5, p4, 0x1

    const/4 v0, 0x0

    if-eqz p5, :cond_0

    move-object p1, v0

    :cond_0
    and-int/lit8 p4, p4, 0x2

    if-eqz p4, :cond_1

    move-object p2, v0

    .line 186
    :cond_1
    invoke-virtual {p0, p1, p2, p3}, Lcom/player/easy/data/download/DownloadNotifier;->onError(Ljava/lang/String;Ljava/lang/String;Lcom/tonyodev/fetch2/Download;)V

    return-void
.end method

.method private static final progressNotificationBuilder_delegate$lambda$0(Lcom/player/easy/data/download/DownloadNotifier;)Landroidx/core/app/NotificationCompat$Builder;
    .locals 2

    .line 19
    iget-object p0, p0, Lcom/player/easy/data/download/DownloadNotifier;->context:Landroid/content/Context;

    new-instance v0, Lcom/player/easy/data/download/DownloadNotifier$$ExternalSyntheticLambda5;

    invoke-direct {v0}, Lcom/player/easy/data/download/DownloadNotifier$$ExternalSyntheticLambda5;-><init>()V

    const-string v1, "downloader_progress_channel"

    invoke-static {p0, v1, v0}, Lcom/player/easy/util/system/ContextExtensionsKt;->notificationBuilder(Landroid/content/Context;Ljava/lang/String;Lkotlin/jvm/functions/Function1;)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object p0

    return-object p0
.end method

.method private static final progressNotificationBuilder_delegate$lambda$0$0(Landroidx/core/app/NotificationCompat$Builder;)Lkotlin/Unit;
    .locals 1

    const-string v0, "$this$notificationBuilder"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 20
    invoke-virtual {p0, v0}, Landroidx/core/app/NotificationCompat$Builder;->setAutoCancel(Z)Landroidx/core/app/NotificationCompat$Builder;

    const/4 v0, 0x1

    .line 21
    invoke-virtual {p0, v0}, Landroidx/core/app/NotificationCompat$Builder;->setOnlyAlertOnce(Z)Landroidx/core/app/NotificationCompat$Builder;

    .line 23
    const-string v0, "progress"

    invoke-virtual {p0, v0}, Landroidx/core/app/NotificationCompat$Builder;->setCategory(Ljava/lang/String;)Landroidx/core/app/NotificationCompat$Builder;

    .line 25
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method private final show(Landroidx/core/app/NotificationCompat$Builder;I)V
    .locals 1

    .line 56
    iget-object v0, p0, Lcom/player/easy/data/download/DownloadNotifier;->context:Landroid/content/Context;

    invoke-static {v0}, Lcom/player/easy/util/system/ContextExtensionsKt;->getNotificationManager(Landroid/content/Context;)Landroid/app/NotificationManager;

    move-result-object v0

    invoke-virtual {p1}, Landroidx/core/app/NotificationCompat$Builder;->build()Landroid/app/Notification;

    move-result-object p1

    invoke-virtual {v0, p2, p1}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    return-void
.end method


# virtual methods
.method public final dismissProgress()V
    .locals 2

    .line 64
    iget-object v0, p0, Lcom/player/easy/data/download/DownloadNotifier;->context:Landroid/content/Context;

    invoke-static {v0}, Lcom/player/easy/util/system/ContextExtensionsKt;->getNotificationManager(Landroid/content/Context;)Landroid/app/NotificationManager;

    move-result-object v0

    const/16 v1, -0xc9

    invoke-virtual {v0, v1}, Landroid/app/NotificationManager;->cancel(I)V

    return-void
.end method

.method public final getErrorThrown()Z
    .locals 1

    .line 45
    iget-boolean v0, p0, Lcom/player/easy/data/download/DownloadNotifier;->errorThrown:Z

    return v0
.end method

.method public final getPaused()Z
    .locals 1

    .line 48
    iget-boolean v0, p0, Lcom/player/easy/data/download/DownloadNotifier;->paused:Z

    return v0
.end method

.method public final onComplete(Lcom/tonyodev/fetch2/Download;)V
    .locals 4

    const-string v0, "download"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 135
    invoke-virtual {p0}, Lcom/player/easy/data/download/DownloadNotifier;->dismissProgress()V

    .line 137
    iget-boolean v0, p0, Lcom/player/easy/data/download/DownloadNotifier;->errorThrown:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 139
    invoke-direct {p0}, Lcom/player/easy/data/download/DownloadNotifier;->getCompleteNotificationBuilder()Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v0

    .line 140
    iget-object v2, p0, Lcom/player/easy/data/download/DownloadNotifier;->context:Landroid/content/Context;

    sget v3, Lcom/player/easy/R$string;->download_notifier_download_finish:I

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroidx/core/app/NotificationCompat$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroidx/core/app/NotificationCompat$Builder;

    .line 141
    invoke-static {p1}, Lcom/player/easy/util/download/DownloadExtensionsKt;->getTitle(Lcom/tonyodev/fetch2/Download;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroidx/core/app/NotificationCompat$Builder;->setContentText(Ljava/lang/CharSequence;)Landroidx/core/app/NotificationCompat$Builder;

    .line 142
    sget v2, Lcom/player/easy/R$drawable;->ic_stat_name:I

    invoke-virtual {v0, v2}, Landroidx/core/app/NotificationCompat$Builder;->setSmallIcon(I)Landroidx/core/app/NotificationCompat$Builder;

    .line 143
    invoke-virtual {v0}, Landroidx/core/app/NotificationCompat$Builder;->clearActions()Landroidx/core/app/NotificationCompat$Builder;

    const/4 v2, 0x1

    .line 144
    invoke-virtual {v0, v2}, Landroidx/core/app/NotificationCompat$Builder;->setAutoCancel(Z)Landroidx/core/app/NotificationCompat$Builder;

    .line 145
    sget-object v2, Lcom/player/easy/data/notification/NotificationHandler;->INSTANCE:Lcom/player/easy/data/notification/NotificationHandler;

    iget-object v3, p0, Lcom/player/easy/data/download/DownloadNotifier;->context:Landroid/content/Context;

    invoke-virtual {v2, v3, p1}, Lcom/player/easy/data/notification/NotificationHandler;->openFileIntent(Landroid/content/Context;Lcom/tonyodev/fetch2/Download;)Landroid/app/PendingIntent;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroidx/core/app/NotificationCompat$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroidx/core/app/NotificationCompat$Builder;

    .line 146
    invoke-virtual {v0, v1, v1, v1}, Landroidx/core/app/NotificationCompat$Builder;->setProgress(IIZ)Landroidx/core/app/NotificationCompat$Builder;

    .line 148
    invoke-interface {p1}, Lcom/tonyodev/fetch2/Download;->getId()I

    move-result p1

    invoke-direct {p0, v0, p1}, Lcom/player/easy/data/download/DownloadNotifier;->show(Landroidx/core/app/NotificationCompat$Builder;I)V

    .line 153
    :cond_0
    iput-boolean v1, p0, Lcom/player/easy/data/download/DownloadNotifier;->errorThrown:Z

    .line 154
    iput-boolean v1, p0, Lcom/player/easy/data/download/DownloadNotifier;->isDownloading:Z

    return-void
.end method

.method public final onError(Ljava/lang/String;Ljava/lang/String;Lcom/tonyodev/fetch2/Download;)V
    .locals 4

    const-string v0, "download"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 188
    invoke-direct {p0}, Lcom/player/easy/data/download/DownloadNotifier;->getErrorNotificationBuilder()Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v0

    const-string v1, "getString(...)"

    if-nez p2, :cond_0

    .line 189
    iget-object p2, p0, Lcom/player/easy/data/download/DownloadNotifier;->context:Landroid/content/Context;

    sget v2, Lcom/player/easy/R$string;->download_notifier_downloader_title:I

    invoke-virtual {p2, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-static {p2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_0
    invoke-virtual {v0, p2}, Landroidx/core/app/NotificationCompat$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroidx/core/app/NotificationCompat$Builder;

    if-eqz p1, :cond_1

    .line 191
    sget-object p2, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v2, "US"

    invoke-static {p2, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "toLowerCase(...)"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    if-nez p1, :cond_2

    :cond_1
    iget-object p1, p0, Lcom/player/easy/data/download/DownloadNotifier;->context:Landroid/content/Context;

    sget p2, Lcom/player/easy/R$string;->download_notifier_unknown_error:I

    invoke-virtual {p1, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 190
    :cond_2
    invoke-virtual {v0, p1}, Landroidx/core/app/NotificationCompat$Builder;->setContentText(Ljava/lang/CharSequence;)Landroidx/core/app/NotificationCompat$Builder;

    const p1, 0x108008a

    .line 193
    invoke-virtual {v0, p1}, Landroidx/core/app/NotificationCompat$Builder;->setSmallIcon(I)Landroidx/core/app/NotificationCompat$Builder;

    .line 194
    invoke-virtual {v0}, Landroidx/core/app/NotificationCompat$Builder;->clearActions()Landroidx/core/app/NotificationCompat$Builder;

    .line 195
    sget-object p1, Lcom/player/easy/data/notification/NotificationHandler;->INSTANCE:Lcom/player/easy/data/notification/NotificationHandler;

    iget-object p2, p0, Lcom/player/easy/data/download/DownloadNotifier;->context:Landroid/content/Context;

    invoke-virtual {p1, p2}, Lcom/player/easy/data/notification/NotificationHandler;->openDownloadManagerFinishedPendingActivity(Landroid/content/Context;)Landroid/app/PendingIntent;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroidx/core/app/NotificationCompat$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroidx/core/app/NotificationCompat$Builder;

    const/4 p1, 0x0

    .line 196
    invoke-virtual {v0, p1, p1, p1}, Landroidx/core/app/NotificationCompat$Builder;->setProgress(IIZ)Landroidx/core/app/NotificationCompat$Builder;

    .line 199
    sget p2, Lcom/player/easy/R$drawable;->ic_refresh_white_24dp:I

    .line 200
    iget-object v1, p0, Lcom/player/easy/data/download/DownloadNotifier;->context:Landroid/content/Context;

    sget v2, Lcom/player/easy/R$string;->action_retry:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 201
    sget-object v2, Lcom/player/easy/data/notification/NotificationReceiver;->Companion:Lcom/player/easy/data/notification/NotificationReceiver$Companion;

    iget-object v3, p0, Lcom/player/easy/data/download/DownloadNotifier;->context:Landroid/content/Context;

    invoke-virtual {v2, v3, p3}, Lcom/player/easy/data/notification/NotificationReceiver$Companion;->retryDownloadsPendingBroadcast$app_release(Landroid/content/Context;Lcom/tonyodev/fetch2/Download;)Landroid/app/PendingIntent;

    move-result-object v2

    .line 198
    invoke-virtual {v0, p2, v1, v2}, Landroidx/core/app/NotificationCompat$Builder;->addAction(ILjava/lang/CharSequence;Landroid/app/PendingIntent;)Landroidx/core/app/NotificationCompat$Builder;

    .line 204
    invoke-interface {p3}, Lcom/tonyodev/fetch2/Download;->getId()I

    move-result p2

    invoke-direct {p0, v0, p2}, Lcom/player/easy/data/download/DownloadNotifier;->show(Landroidx/core/app/NotificationCompat$Builder;I)V

    const/4 p2, 0x1

    .line 208
    iput-boolean p2, p0, Lcom/player/easy/data/download/DownloadNotifier;->errorThrown:Z

    .line 209
    iput-boolean p1, p0, Lcom/player/easy/data/download/DownloadNotifier;->isDownloading:Z

    return-void
.end method

.method public final onPaused(Lcom/tonyodev/fetch2/Download;)V
    .locals 5

    const-string v0, "download"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 111
    invoke-direct {p0}, Lcom/player/easy/data/download/DownloadNotifier;->getProgressNotificationBuilder()Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v0

    .line 112
    invoke-static {p1}, Lcom/player/easy/util/download/DownloadExtensionsKt;->getTitle(Lcom/tonyodev/fetch2/Download;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroidx/core/app/NotificationCompat$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroidx/core/app/NotificationCompat$Builder;

    .line 113
    sget p1, Lcom/player/easy/R$drawable;->ic_pause_white_24dp:I

    invoke-virtual {v0, p1}, Landroidx/core/app/NotificationCompat$Builder;->setSmallIcon(I)Landroidx/core/app/NotificationCompat$Builder;

    const/4 p1, 0x0

    .line 114
    invoke-virtual {v0, p1, p1, p1}, Landroidx/core/app/NotificationCompat$Builder;->setProgress(IIZ)Landroidx/core/app/NotificationCompat$Builder;

    .line 115
    invoke-virtual {v0, p1}, Landroidx/core/app/NotificationCompat$Builder;->setOngoing(Z)Landroidx/core/app/NotificationCompat$Builder;

    .line 116
    invoke-virtual {v0}, Landroidx/core/app/NotificationCompat$Builder;->clearActions()Landroidx/core/app/NotificationCompat$Builder;

    .line 118
    sget-object v1, Lcom/player/easy/data/notification/NotificationHandler;->INSTANCE:Lcom/player/easy/data/notification/NotificationHandler;

    iget-object v2, p0, Lcom/player/easy/data/download/DownloadNotifier;->context:Landroid/content/Context;

    invoke-virtual {v1, v2}, Lcom/player/easy/data/notification/NotificationHandler;->openDownloadManagerQueuedPendingActivity(Landroid/content/Context;)Landroid/app/PendingIntent;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/core/app/NotificationCompat$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroidx/core/app/NotificationCompat$Builder;

    .line 121
    sget v1, Lcom/player/easy/R$drawable;->ic_play_arrow_white_24dp:I

    .line 122
    iget-object v2, p0, Lcom/player/easy/data/download/DownloadNotifier;->context:Landroid/content/Context;

    sget v3, Lcom/player/easy/R$string;->action_resume:I

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 123
    sget-object v3, Lcom/player/easy/data/notification/NotificationReceiver;->Companion:Lcom/player/easy/data/notification/NotificationReceiver$Companion;

    iget-object v4, p0, Lcom/player/easy/data/download/DownloadNotifier;->context:Landroid/content/Context;

    invoke-virtual {v3, v4}, Lcom/player/easy/data/notification/NotificationReceiver$Companion;->resumeDownloadsPendingBroadcast$app_release(Landroid/content/Context;)Landroid/app/PendingIntent;

    move-result-object v3

    .line 120
    invoke-virtual {v0, v1, v2, v3}, Landroidx/core/app/NotificationCompat$Builder;->addAction(ILjava/lang/CharSequence;Landroid/app/PendingIntent;)Landroidx/core/app/NotificationCompat$Builder;

    const/16 v1, -0xc9

    .line 126
    invoke-direct {p0, v0, v1}, Lcom/player/easy/data/download/DownloadNotifier;->show(Landroidx/core/app/NotificationCompat$Builder;I)V

    .line 130
    iput-boolean p1, p0, Lcom/player/easy/data/download/DownloadNotifier;->isDownloading:Z

    return-void
.end method

.method public final onProgressChange(Lcom/tonyodev/fetch2/Download;)V
    .locals 10

    const-string v0, "download"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 73
    invoke-direct {p0}, Lcom/player/easy/data/download/DownloadNotifier;->getProgressNotificationBuilder()Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v0

    .line 74
    iget-boolean v1, p0, Lcom/player/easy/data/download/DownloadNotifier;->isDownloading:Z

    const/4 v2, 0x1

    if-nez v1, :cond_0

    .line 75
    invoke-virtual {v0}, Landroidx/core/app/NotificationCompat$Builder;->clearActions()Landroidx/core/app/NotificationCompat$Builder;

    const v1, 0x1080081

    .line 76
    invoke-virtual {v0, v1}, Landroidx/core/app/NotificationCompat$Builder;->setSmallIcon(I)Landroidx/core/app/NotificationCompat$Builder;

    .line 78
    sget-object v1, Lcom/player/easy/data/notification/NotificationHandler;->INSTANCE:Lcom/player/easy/data/notification/NotificationHandler;

    iget-object v3, p0, Lcom/player/easy/data/download/DownloadNotifier;->context:Landroid/content/Context;

    invoke-virtual {v1, v3}, Lcom/player/easy/data/notification/NotificationHandler;->openDownloadManagerQueuedPendingActivity(Landroid/content/Context;)Landroid/app/PendingIntent;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/core/app/NotificationCompat$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroidx/core/app/NotificationCompat$Builder;

    .line 79
    iput-boolean v2, p0, Lcom/player/easy/data/download/DownloadNotifier;->isDownloading:Z

    .line 82
    sget v1, Lcom/player/easy/R$drawable;->ic_pause_white_24dp:I

    .line 83
    iget-object v3, p0, Lcom/player/easy/data/download/DownloadNotifier;->context:Landroid/content/Context;

    sget v4, Lcom/player/easy/R$string;->action_pause:I

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 84
    sget-object v4, Lcom/player/easy/data/notification/NotificationReceiver;->Companion:Lcom/player/easy/data/notification/NotificationReceiver$Companion;

    iget-object v5, p0, Lcom/player/easy/data/download/DownloadNotifier;->context:Landroid/content/Context;

    invoke-virtual {v4, v5}, Lcom/player/easy/data/notification/NotificationReceiver$Companion;->pauseDownloadsPendingBroadcast$app_release(Landroid/content/Context;)Landroid/app/PendingIntent;

    move-result-object v4

    .line 81
    invoke-virtual {v0, v1, v3, v4}, Landroidx/core/app/NotificationCompat$Builder;->addAction(ILjava/lang/CharSequence;Landroid/app/PendingIntent;)Landroidx/core/app/NotificationCompat$Builder;

    .line 89
    :cond_0
    iget-object v1, p0, Lcom/player/easy/data/download/DownloadNotifier;->context:Landroid/content/Context;

    sget v3, Lcom/player/easy/R$string;->percent_progress:I

    invoke-interface {p1}, Lcom/tonyodev/fetch2/Download;->getProgress()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    new-array v5, v2, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v4, v5, v6

    invoke-virtual {v1, v3, v5}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 91
    invoke-static {p1}, Lcom/player/easy/util/download/DownloadExtensionsKt;->getTitle(Lcom/tonyodev/fetch2/Download;)Ljava/lang/String;

    move-result-object v3

    .line 92
    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroidx/core/app/NotificationCompat$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroidx/core/app/NotificationCompat$Builder;

    .line 93
    invoke-virtual {v0, v1}, Landroidx/core/app/NotificationCompat$Builder;->setContentText(Ljava/lang/CharSequence;)Landroidx/core/app/NotificationCompat$Builder;

    .line 95
    new-instance v1, Landroidx/core/app/NotificationCompat$BigTextStyle;

    invoke-direct {v1}, Landroidx/core/app/NotificationCompat$BigTextStyle;-><init>()V

    .line 97
    iget-object v3, p0, Lcom/player/easy/data/download/DownloadNotifier;->context:Landroid/content/Context;

    sget v4, Lcom/player/easy/R$string;->percent_progress:I

    invoke-interface {p1}, Lcom/tonyodev/fetch2/Download;->getProgress()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    new-array v7, v2, [Ljava/lang/Object;

    aput-object v5, v7, v6

    invoke-virtual {v3, v4, v7}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 98
    sget-object v4, Lcom/player/easy/util/Utils;->INSTANCE:Lcom/player/easy/util/Utils;

    invoke-interface {p1}, Lcom/tonyodev/fetch2/Download;->getDownloaded()J

    move-result-wide v7

    iget-object v5, p0, Lcom/player/easy/data/download/DownloadNotifier;->context:Landroid/content/Context;

    invoke-virtual {v4, v7, v8, v5}, Lcom/player/easy/util/Utils;->getSize(JLandroid/content/Context;)Ljava/lang/String;

    move-result-object v5

    invoke-interface {p1}, Lcom/tonyodev/fetch2/Download;->getTotal()J

    move-result-wide v7

    iget-object v9, p0, Lcom/player/easy/data/download/DownloadNotifier;->context:Landroid/content/Context;

    invoke-virtual {v4, v7, v8, v9}, Lcom/player/easy/util/Utils;->getSize(JLandroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " ("

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "/"

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ")"

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 96
    invoke-virtual {v1, v3}, Landroidx/core/app/NotificationCompat$BigTextStyle;->bigText(Ljava/lang/CharSequence;)Landroidx/core/app/NotificationCompat$BigTextStyle;

    move-result-object v1

    .line 94
    invoke-virtual {v0, v1}, Landroidx/core/app/NotificationCompat$Builder;->setStyle(Landroidx/core/app/NotificationCompat$Style;)Landroidx/core/app/NotificationCompat$Builder;

    .line 102
    invoke-interface {p1}, Lcom/tonyodev/fetch2/Download;->getProgress()I

    move-result p1

    const/16 v1, 0x64

    invoke-virtual {v0, v1, p1, v6}, Landroidx/core/app/NotificationCompat$Builder;->setProgress(IIZ)Landroidx/core/app/NotificationCompat$Builder;

    .line 103
    invoke-virtual {v0, v2}, Landroidx/core/app/NotificationCompat$Builder;->setOngoing(Z)Landroidx/core/app/NotificationCompat$Builder;

    const/16 p1, -0xc9

    .line 105
    invoke-direct {p0, v0, p1}, Lcom/player/easy/data/download/DownloadNotifier;->show(Landroidx/core/app/NotificationCompat$Builder;I)V

    return-void
.end method

.method public final onWarning(Ljava/lang/String;)V
    .locals 3

    const-string v0, "reason"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 163
    invoke-direct {p0}, Lcom/player/easy/data/download/DownloadNotifier;->getErrorNotificationBuilder()Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v0

    .line 164
    iget-object v1, p0, Lcom/player/easy/data/download/DownloadNotifier;->context:Landroid/content/Context;

    sget v2, Lcom/player/easy/R$string;->download_notifier_downloader_title:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/core/app/NotificationCompat$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroidx/core/app/NotificationCompat$Builder;

    .line 165
    invoke-virtual {v0, p1}, Landroidx/core/app/NotificationCompat$Builder;->setContentText(Ljava/lang/CharSequence;)Landroidx/core/app/NotificationCompat$Builder;

    const p1, 0x108008a

    .line 166
    invoke-virtual {v0, p1}, Landroidx/core/app/NotificationCompat$Builder;->setSmallIcon(I)Landroidx/core/app/NotificationCompat$Builder;

    const/4 p1, 0x1

    .line 167
    invoke-virtual {v0, p1}, Landroidx/core/app/NotificationCompat$Builder;->setAutoCancel(Z)Landroidx/core/app/NotificationCompat$Builder;

    .line 168
    invoke-virtual {v0}, Landroidx/core/app/NotificationCompat$Builder;->clearActions()Landroidx/core/app/NotificationCompat$Builder;

    .line 169
    sget-object p1, Lcom/player/easy/data/notification/NotificationHandler;->INSTANCE:Lcom/player/easy/data/notification/NotificationHandler;

    iget-object v1, p0, Lcom/player/easy/data/download/DownloadNotifier;->context:Landroid/content/Context;

    invoke-virtual {p1, v1}, Lcom/player/easy/data/notification/NotificationHandler;->openDownloadManagerQueuedPendingActivity(Landroid/content/Context;)Landroid/app/PendingIntent;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroidx/core/app/NotificationCompat$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroidx/core/app/NotificationCompat$Builder;

    const/4 p1, 0x0

    .line 170
    invoke-virtual {v0, p1, p1, p1}, Landroidx/core/app/NotificationCompat$Builder;->setProgress(IIZ)Landroidx/core/app/NotificationCompat$Builder;

    const/16 v1, -0xca

    .line 172
    invoke-direct {p0, v0, v1}, Lcom/player/easy/data/download/DownloadNotifier;->show(Landroidx/core/app/NotificationCompat$Builder;I)V

    .line 176
    iput-boolean p1, p0, Lcom/player/easy/data/download/DownloadNotifier;->isDownloading:Z

    return-void
.end method

.method public final setErrorThrown(Z)V
    .locals 0

    .line 45
    iput-boolean p1, p0, Lcom/player/easy/data/download/DownloadNotifier;->errorThrown:Z

    return-void
.end method

.method public final setPaused(Z)V
    .locals 0

    .line 48
    iput-boolean p1, p0, Lcom/player/easy/data/download/DownloadNotifier;->paused:Z

    return-void
.end method
