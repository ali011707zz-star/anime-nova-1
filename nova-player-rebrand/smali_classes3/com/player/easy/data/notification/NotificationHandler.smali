.class public final Lcom/player/easy/data/notification/NotificationHandler;
.super Ljava/lang/Object;
.source "NotificationHandler.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000 \n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\u0008\u00c6\u0002\u0018\u00002\u00020\u0001B\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u0010\u0010\u0004\u001a\u0004\u0018\u00010\u00052\u0006\u0010\u0006\u001a\u00020\u0007J\u0010\u0010\u0008\u001a\u0004\u0018\u00010\u00052\u0006\u0010\u0006\u001a\u00020\u0007J\u0018\u0010\t\u001a\u0004\u0018\u00010\u00052\u0006\u0010\u0006\u001a\u00020\u00072\u0006\u0010\n\u001a\u00020\u000b\u00a8\u0006\u000c"
    }
    d2 = {
        "Lcom/player/easy/data/notification/NotificationHandler;",
        "",
        "<init>",
        "()V",
        "openDownloadManagerQueuedPendingActivity",
        "Landroid/app/PendingIntent;",
        "context",
        "Landroid/content/Context;",
        "openDownloadManagerFinishedPendingActivity",
        "openFileIntent",
        "download",
        "Lcom/tonyodev/fetch2/Download;",
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


# static fields
.field public static final INSTANCE:Lcom/player/easy/data/notification/NotificationHandler;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 0
    new-instance v0, Lcom/player/easy/data/notification/NotificationHandler;

    invoke-direct {v0}, Lcom/player/easy/data/notification/NotificationHandler;-><init>()V

    sput-object v0, Lcom/player/easy/data/notification/NotificationHandler;->INSTANCE:Lcom/player/easy/data/notification/NotificationHandler;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final openDownloadManagerFinishedPendingActivity(Landroid/content/Context;)Landroid/app/PendingIntent;
    .locals 3

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 33
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/player/easy/ui/main/MainActivity;

    invoke-direct {v0, p1, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 v1, 0x4000000

    .line 34
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 35
    const-string v1, "com.player.easy.SHOW_FINISHED_DOWNLOADS"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const/4 v1, 0x0

    const/high16 v2, 0xc000000

    .line 37
    invoke-static {p1, v1, v0, v2}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object p1

    return-object p1
.end method

.method public final openDownloadManagerQueuedPendingActivity(Landroid/content/Context;)Landroid/app/PendingIntent;
    .locals 3

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 19
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/player/easy/ui/main/MainActivity;

    invoke-direct {v0, p1, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 v1, 0x4000000

    .line 20
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 21
    const-string v1, "com.player.easy.SHOW_QUEUED_DOWNLOADS"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const/4 v1, 0x0

    const/high16 v2, 0xc000000

    .line 23
    invoke-static {p1, v1, v0, v2}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object p1

    return-object p1
.end method

.method public final openFileIntent(Landroid/content/Context;Lcom/tonyodev/fetch2/Download;)Landroid/app/PendingIntent;
    .locals 4

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "download"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 46
    invoke-interface {p2}, Lcom/tonyodev/fetch2/Download;->getFileUri()Landroid/net/Uri;

    move-result-object v0

    invoke-static {v0}, Landroidx/core/net/UriKt;->toFile(Landroid/net/Uri;)Ljava/io/File;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/player/easy/util/storage/FileExtensionsKt;->getUriCompat(Ljava/io/File;Landroid/content/Context;)Landroid/net/Uri;

    move-result-object v0

    .line 47
    invoke-static {p2}, Lcom/player/easy/util/download/DownloadExtensionsKt;->getMimeType(Lcom/tonyodev/fetch2/Download;)Ljava/lang/String;

    move-result-object v1

    .line 49
    invoke-static {v1}, Lcom/player/easy/util/storage/MimeTypeUtils;->getCategory(Ljava/lang/String;)Lcom/player/easy/util/storage/MimeTypeUtils$Category;

    move-result-object v2

    sget-object v3, Lcom/player/easy/util/storage/MimeTypeUtils$Category;->VIDEO:Lcom/player/easy/util/storage/MimeTypeUtils$Category;

    if-ne v2, v3, :cond_1

    .line 50
    sget-object v0, Lcom/player/easy/player/ExoPlayerActivity;->Companion:Lcom/player/easy/player/ExoPlayerActivity$Companion;

    invoke-static {p2}, Lcom/player/easy/util/download/DownloadExtensionsKt;->getTitle(Lcom/tonyodev/fetch2/Download;)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_0

    const-string v1, ""

    :cond_0
    invoke-interface {p2}, Lcom/tonyodev/fetch2/Download;->getFile()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p1, v1, p2}, Lcom/player/easy/player/ExoPlayerActivity$Companion;->intentLocal(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p2

    const/high16 v0, 0x10000000

    .line 51
    invoke-virtual {p2, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    goto :goto_0

    .line 54
    :cond_1
    new-instance p2, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    invoke-direct {p2, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 55
    invoke-virtual {p2, v0, v1}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    const v0, 0x10000001

    .line 56
    invoke-virtual {p2, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    :goto_0
    const/4 v0, 0x0

    const/high16 v1, 0xc000000

    .line 59
    invoke-static {p1, v0, p2, v1}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object p1

    return-object p1
.end method
