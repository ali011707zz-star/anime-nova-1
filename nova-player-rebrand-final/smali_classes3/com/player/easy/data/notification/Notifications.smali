.class public final Lcom/player/easy/data/notification/Notifications;
.super Ljava/lang/Object;
.source "Notifications.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000(\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0003\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0005\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u0008\u00c6\u0002\u0018\u00002\u00020\u0001B\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u000e\u0010\r\u001a\u00020\u000e2\u0006\u0010\u000f\u001a\u00020\u0010R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0005X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0007\u001a\u00020\u0008X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\t\u001a\u00020\u0005X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\n\u001a\u00020\u0008X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000b\u001a\u00020\u0005X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000c\u001a\u00020\u0008X\u0086T\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0011"
    }
    d2 = {
        "Lcom/player/easy/data/notification/Notifications;",
        "",
        "<init>",
        "()V",
        "GROUP_DOWNLOADER",
        "",
        "CHANNEL_DOWNLOADER_PROGRESS",
        "ID_DOWNLOAD_PROGRESS",
        "",
        "CHANNEL_DOWNLOADER_COMPLETE",
        "ID_DOWNLOAD_COMPLETE",
        "CHANNEL_DOWNLOADER_ERROR",
        "ID_DOWNLOAD_ERROR",
        "createChannels",
        "",
        "context",
        "Landroid/content/Context;",
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
        "SMAP\nNotifications.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Notifications.kt\ncom/player/easy/data/notification/Notifications\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,60:1\n1915#2,2:61\n*S KotlinDebug\n*F\n+ 1 Notifications.kt\ncom/player/easy/data/notification/Notifications\n*L\n57#1:61,2\n*E\n"
    }
.end annotation


# static fields
.field public static final CHANNEL_DOWNLOADER_COMPLETE:Ljava/lang/String; = "downloader_complete_channel"

.field public static final CHANNEL_DOWNLOADER_ERROR:Ljava/lang/String; = "downloader_error_channel"

.field public static final CHANNEL_DOWNLOADER_PROGRESS:Ljava/lang/String; = "downloader_progress_channel"

.field private static final GROUP_DOWNLOADER:Ljava/lang/String; = "group_downloader"

.field public static final ID_DOWNLOAD_COMPLETE:I = -0xcb

.field public static final ID_DOWNLOAD_ERROR:I = -0xca

.field public static final ID_DOWNLOAD_PROGRESS:I = -0xc9

.field public static final INSTANCE:Lcom/player/easy/data/notification/Notifications;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 0
    new-instance v0, Lcom/player/easy/data/notification/Notifications;

    invoke-direct {v0}, Lcom/player/easy/data/notification/Notifications;-><init>()V

    sput-object v0, Lcom/player/easy/data/notification/Notifications;->INSTANCE:Lcom/player/easy/data/notification/Notifications;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final createChannels(Landroid/content/Context;)V
    .locals 6

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 22
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-ge v0, v1, :cond_0

    goto/16 :goto_1

    .line 24
    :cond_0
    invoke-static {}, Lcom/player/easy/data/notification/Notifications$$ExternalSyntheticApiModelOutline4;->m()V

    sget v0, Lcom/player/easy/R$string;->group_downloader:I

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "group_downloader"

    invoke-static {v1, v0}, Lcom/player/easy/data/notification/Notifications$$ExternalSyntheticApiModelOutline3;->m(Ljava/lang/String;Ljava/lang/CharSequence;)Landroid/app/NotificationChannelGroup;

    move-result-object v0

    .line 25
    invoke-static {p1}, Lcom/player/easy/util/system/ContextExtensionsKt;->getNotificationManager(Landroid/content/Context;)Landroid/app/NotificationManager;

    move-result-object v2

    invoke-static {v2, v0}, Lcom/player/easy/data/notification/Notifications$$ExternalSyntheticApiModelOutline0;->m(Landroid/app/NotificationManager;Landroid/app/NotificationChannelGroup;)V

    const/4 v0, 0x3

    .line 29
    new-array v0, v0, [Landroid/app/NotificationChannel;

    invoke-static {}, Landroidx/media3/common/util/NotificationUtil$$ExternalSyntheticApiModelOutline3;->m()V

    .line 31
    sget v2, Lcom/player/easy/R$string;->channel_progress:I

    invoke-virtual {p1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 29
    const-string v3, "downloader_progress_channel"

    const/4 v4, 0x2

    invoke-static {v3, v2, v4}, Landroidx/media3/common/util/NotificationUtil$$ExternalSyntheticApiModelOutline2;->m(Ljava/lang/String;Ljava/lang/CharSequence;I)Landroid/app/NotificationChannel;

    move-result-object v2

    .line 35
    invoke-static {v2, v1}, Lcom/player/easy/data/notification/Notifications$$ExternalSyntheticApiModelOutline1;->m(Landroid/app/NotificationChannel;Ljava/lang/String;)V

    const/4 v3, 0x0

    .line 36
    invoke-static {v2, v3}, Landroidx/media3/session/DefaultMediaNotificationProvider$Api26$$ExternalSyntheticApiModelOutline0;->m(Landroid/app/NotificationChannel;Z)V

    .line 37
    sget-object v5, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 34
    aput-object v2, v0, v3

    .line 38
    invoke-static {}, Landroidx/media3/common/util/NotificationUtil$$ExternalSyntheticApiModelOutline3;->m()V

    .line 40
    sget v2, Lcom/player/easy/R$string;->channel_complete:I

    invoke-virtual {p1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 38
    const-string v5, "downloader_complete_channel"

    invoke-static {v5, v2, v4}, Landroidx/media3/common/util/NotificationUtil$$ExternalSyntheticApiModelOutline2;->m(Ljava/lang/String;Ljava/lang/CharSequence;I)Landroid/app/NotificationChannel;

    move-result-object v2

    .line 44
    invoke-static {v2, v1}, Lcom/player/easy/data/notification/Notifications$$ExternalSyntheticApiModelOutline1;->m(Landroid/app/NotificationChannel;Ljava/lang/String;)V

    .line 45
    invoke-static {v2, v3}, Landroidx/media3/session/DefaultMediaNotificationProvider$Api26$$ExternalSyntheticApiModelOutline0;->m(Landroid/app/NotificationChannel;Z)V

    const/4 v5, 0x1

    .line 43
    aput-object v2, v0, v5

    .line 47
    invoke-static {}, Landroidx/media3/common/util/NotificationUtil$$ExternalSyntheticApiModelOutline3;->m()V

    .line 49
    sget v2, Lcom/player/easy/R$string;->channel_error:I

    invoke-virtual {p1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 47
    const-string v5, "downloader_error_channel"

    invoke-static {v5, v2, v4}, Landroidx/media3/common/util/NotificationUtil$$ExternalSyntheticApiModelOutline2;->m(Ljava/lang/String;Ljava/lang/CharSequence;I)Landroid/app/NotificationChannel;

    move-result-object v2

    .line 53
    invoke-static {v2, v1}, Lcom/player/easy/data/notification/Notifications$$ExternalSyntheticApiModelOutline1;->m(Landroid/app/NotificationChannel;Ljava/lang/String;)V

    .line 54
    invoke-static {v2, v3}, Landroidx/media3/session/DefaultMediaNotificationProvider$Api26$$ExternalSyntheticApiModelOutline0;->m(Landroid/app/NotificationChannel;Z)V

    .line 52
    aput-object v2, v0, v4

    .line 28
    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    .line 57
    invoke-static {p1}, Lcom/player/easy/util/system/ContextExtensionsKt;->getNotificationManager(Landroid/content/Context;)Landroid/app/NotificationManager;

    move-result-object p1

    .line 61
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Lcom/player/easy/data/notification/Notifications$$ExternalSyntheticApiModelOutline2;->m(Ljava/lang/Object;)Landroid/app/NotificationChannel;

    move-result-object v1

    .line 57
    invoke-static {p1, v1}, Landroidx/media3/common/util/NotificationUtil$$ExternalSyntheticApiModelOutline1;->m(Landroid/app/NotificationManager;Landroid/app/NotificationChannel;)V

    goto :goto_0

    :cond_1
    :goto_1
    return-void
.end method
