.class public final Lcom/player/easy/data/notification/NotificationReceiver;
.super Landroid/content/BroadcastReceiver;
.source "NotificationReceiver.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/player/easy/data/notification/NotificationReceiver$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0004\u0018\u0000 \u00152\u00020\u0001:\u0001\u0015B\u0007\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u0018\u0010\n\u001a\u00020\u000b2\u0006\u0010\u000c\u001a\u00020\r2\u0006\u0010\u000e\u001a\u00020\u000fH\u0016J\u0018\u0010\u0010\u001a\u00020\u000b2\u0006\u0010\u000c\u001a\u00020\r2\u0006\u0010\u0011\u001a\u00020\u0012H\u0002J\u0018\u0010\u0013\u001a\u00020\u000b2\u0006\u0010\u0014\u001a\u00020\u00122\u0006\u0010\u000c\u001a\u00020\rH\u0002R\u001b\u0010\u0004\u001a\u00020\u00058BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u0008\u0010\t\u001a\u0004\u0008\u0006\u0010\u0007\u00a8\u0006\u0016"
    }
    d2 = {
        "Lcom/player/easy/data/notification/NotificationReceiver;",
        "Landroid/content/BroadcastReceiver;",
        "<init>",
        "()V",
        "downloadManager",
        "Lcom/player/easy/data/download/DownloadManager;",
        "getDownloadManager",
        "()Lcom/player/easy/data/download/DownloadManager;",
        "downloadManager$delegate",
        "Lkotlin/Lazy;",
        "onReceive",
        "",
        "context",
        "Landroid/content/Context;",
        "intent",
        "Landroid/content/Intent;",
        "dismissNotification",
        "notificationId",
        "",
        "retryDownload",
        "downloadId",
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
        "SMAP\nNotificationReceiver.kt\nKotlin\n*S Kotlin\n*F\n+ 1 NotificationReceiver.kt\ncom/player/easy/data/notification/NotificationReceiver\n+ 2 Injekt.kt\nuy/kohesive/injekt/InjektKt\n*L\n1#1,189:1\n17#2:190\n*S KotlinDebug\n*F\n+ 1 NotificationReceiver.kt\ncom/player/easy/data/notification/NotificationReceiver\n*L\n18#1:190\n*E\n"
    }
.end annotation


# static fields
.field private static final ACTION_DISMISS_NOTIFICATION:Ljava/lang/String; = "com.player.easy.NotificationReceiver.ACTION_DISMISS_NOTIFICATION"

.field private static final ACTION_PAUSE_DOWNLOADS:Ljava/lang/String; = "com.player.easy.NotificationReceiver.ACTION_PAUSE_DOWNLOADS"

.field private static final ACTION_RESUME_DOWNLOADS:Ljava/lang/String; = "com.player.easy.NotificationReceiver.ACTION_RESUME_DOWNLOADS"

.field private static final ACTION_RETRY_DOWNLOADS:Ljava/lang/String; = "com.player.easy.NotificationReceiver.ACTION_RETRY_DOWNLOADS"

.field public static final Companion:Lcom/player/easy/data/notification/NotificationReceiver$Companion;

.field private static final EXTRA_NOTIFICATION_ID:Ljava/lang/String; = "com.player.easy.NotificationReceiver.NOTIFICATION_ID"

.field private static final NAME:Ljava/lang/String; = "NotificationReceiver"


# instance fields
.field private final downloadManager$delegate:Lkotlin/Lazy;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 0
    new-instance v0, Lcom/player/easy/data/notification/NotificationReceiver$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/player/easy/data/notification/NotificationReceiver$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/player/easy/data/notification/NotificationReceiver;->Companion:Lcom/player/easy/data/notification/NotificationReceiver$Companion;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 16
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 190
    sget-object v0, Lcom/player/easy/data/notification/NotificationReceiver$special$$inlined$injectLazy$1;->INSTANCE:Lcom/player/easy/data/notification/NotificationReceiver$special$$inlined$injectLazy$1;

    invoke-static {v0}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    .line 18
    iput-object v0, p0, Lcom/player/easy/data/notification/NotificationReceiver;->downloadManager$delegate:Lkotlin/Lazy;

    return-void
.end method

.method public static final synthetic access$getDownloadManager(Lcom/player/easy/data/notification/NotificationReceiver;)Lcom/player/easy/data/download/DownloadManager;
    .locals 0

    .line 16
    invoke-direct {p0}, Lcom/player/easy/data/notification/NotificationReceiver;->getDownloadManager()Lcom/player/easy/data/download/DownloadManager;

    move-result-object p0

    return-object p0
.end method

.method private final dismissNotification(Landroid/content/Context;I)V
    .locals 0

    .line 46
    invoke-static {p1}, Lcom/player/easy/util/system/ContextExtensionsKt;->getNotificationManager(Landroid/content/Context;)Landroid/app/NotificationManager;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroid/app/NotificationManager;->cancel(I)V

    return-void
.end method

.method private final getDownloadManager()Lcom/player/easy/data/download/DownloadManager;
    .locals 1

    .line 18
    iget-object v0, p0, Lcom/player/easy/data/notification/NotificationReceiver;->downloadManager$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/player/easy/data/download/DownloadManager;

    return-object v0
.end method

.method private final retryDownload(ILandroid/content/Context;)V
    .locals 2

    .line 50
    new-instance v0, Lcom/player/easy/data/notification/NotificationReceiver$retryDownload$1;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, p2, v1}, Lcom/player/easy/data/notification/NotificationReceiver$retryDownload$1;-><init>(Lcom/player/easy/data/notification/NotificationReceiver;ILandroid/content/Context;Lkotlin/coroutines/Continuation;)V

    invoke-static {v0}, Lcom/player/easy/util/lang/CoroutinesExtensionsKt;->launchIO(Lkotlin/jvm/functions/Function2;)Lkotlinx/coroutines/Job;

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "intent"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 21
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_8

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    const v2, -0x465839cd    # -3.2000392E-4f

    if-eq v1, v2, :cond_6

    const v2, -0x2d2f7fff

    if-eq v1, v2, :cond_4

    const v2, -0x1956565f

    if-eq v1, v2, :cond_2

    const p2, -0x116f0b46

    if-eq v1, p2, :cond_0

    goto :goto_0

    :cond_0
    const-string p2, "com.player.easy.NotificationReceiver.ACTION_RESUME_DOWNLOADS"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_1

    goto :goto_0

    .line 26
    :cond_1
    sget-object p2, Lcom/player/easy/data/download/DownloadService;->Companion:Lcom/player/easy/data/download/DownloadService$Companion;

    invoke-virtual {p2, p1}, Lcom/player/easy/data/download/DownloadService$Companion;->start(Landroid/content/Context;)V

    return-void

    .line 21
    :cond_2
    const-string v1, "com.player.easy.NotificationReceiver.ACTION_DISMISS_NOTIFICATION"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    goto :goto_0

    .line 24
    :cond_3
    const-string v0, "com.player.easy.NotificationReceiver.NOTIFICATION_ID"

    const/4 v1, -0x1

    invoke-virtual {p2, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p2

    invoke-direct {p0, p1, p2}, Lcom/player/easy/data/notification/NotificationReceiver;->dismissNotification(Landroid/content/Context;I)V

    return-void

    .line 21
    :cond_4
    const-string p1, "com.player.easy.NotificationReceiver.ACTION_PAUSE_DOWNLOADS"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_5

    goto :goto_0

    .line 28
    :cond_5
    invoke-direct {p0}, Lcom/player/easy/data/notification/NotificationReceiver;->getDownloadManager()Lcom/player/easy/data/download/DownloadManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/player/easy/data/download/DownloadManager;->pauseDownloads()V

    return-void

    .line 21
    :cond_6
    const-string v1, "com.player.easy.NotificationReceiver.ACTION_RETRY_DOWNLOADS"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7

    goto :goto_0

    .line 31
    :cond_7
    const-string v0, "download_id"

    const/4 v1, 0x0

    invoke-virtual {p2, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p2

    if-eqz p2, :cond_8

    .line 33
    invoke-direct {p0, p1, p2}, Lcom/player/easy/data/notification/NotificationReceiver;->dismissNotification(Landroid/content/Context;I)V

    .line 34
    invoke-direct {p0, p2, p1}, Lcom/player/easy/data/notification/NotificationReceiver;->retryDownload(ILandroid/content/Context;)V

    :cond_8
    :goto_0
    return-void
.end method
