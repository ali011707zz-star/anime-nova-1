.class public Landroidx/media3/session/DefaultMediaNotificationProvider;
.super Ljava/lang/Object;
.source "DefaultMediaNotificationProvider.java"

# interfaces
.implements Landroidx/media3/session/MediaNotification$Provider;


# annotations
.annotation build Landroidx/media3/common/util/UnstableApi;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/media3/session/DefaultMediaNotificationProvider$Builder;,
        Landroidx/media3/session/DefaultMediaNotificationProvider$NotificationIdProvider;,
        Landroidx/media3/session/DefaultMediaNotificationProvider$OnBitmapLoadedFutureCallback;,
        Landroidx/media3/session/DefaultMediaNotificationProvider$Api31;,
        Landroidx/media3/session/DefaultMediaNotificationProvider$Api26;
    }
.end annotation


# static fields
.field public static final COMMAND_KEY_COMPACT_VIEW_INDEX:Ljava/lang/String; = "androidx.media3.session.command.COMPACT_VIEW_INDEX"

.field public static final DEFAULT_CHANNEL_ID:Ljava/lang/String; = "default_channel_id"

.field public static final DEFAULT_CHANNEL_NAME_RESOURCE_ID:I

.field public static final DEFAULT_NOTIFICATION_ID:I = 0x3e9

.field public static final GROUP_KEY:Ljava/lang/String; = "media3_group_key"

.field private static final TAG:Ljava/lang/String; = "NotificationProvider"

.field private static final maxNotificationIconSize:Lcom/google/common/base/Supplier;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/base/Supplier;"
        }
    .end annotation
.end field


# instance fields
.field private final channelId:Ljava/lang/String;

.field private final channelNameResourceId:I

.field private final context:Landroid/content/Context;

.field private mediaSessionBitmapLoader:Landroidx/media3/common/util/BitmapLoader;

.field private notificationIconBitmapLoader:Landroidx/media3/common/util/BitmapLoader;

.field private final notificationIdProvider:Landroidx/media3/session/DefaultMediaNotificationProvider$NotificationIdProvider;

.field private final notificationManager:Landroid/app/NotificationManager;

.field private pendingOnBitmapLoadedFutureCallback:Landroidx/media3/session/DefaultMediaNotificationProvider$OnBitmapLoadedFutureCallback;

.field private smallIconResourceId:I


# direct methods
.method public static synthetic $r8$lambda$nmR2GWGHwRMvbunR7dhKS3GZLbo()I
    .locals 1

    .line 0
    invoke-static {}, Landroidx/media3/session/DefaultMediaNotificationProvider;->getMaxNotificationIconSize()I

    move-result v0

    return v0
.end method

.method public static synthetic $r8$lambda$wF1ZzjU-lREQborH9opr6Vk24cU(Landroidx/media3/session/MediaSession;)I
    .locals 0

    .line 273
    const/16 p0, 0x3e9

    return p0
.end method

.method static constructor <clinit>()V
    .locals 1

    .line 240
    sget v0, Landroidx/media3/session/R$string;->default_notification_channel_name:I

    sput v0, Landroidx/media3/session/DefaultMediaNotificationProvider;->DEFAULT_CHANNEL_NAME_RESOURCE_ID:I

    .line 252
    new-instance v0, Landroidx/media3/session/DefaultMediaNotificationProvider$$ExternalSyntheticLambda2;

    invoke-direct {v0}, Landroidx/media3/session/DefaultMediaNotificationProvider$$ExternalSyntheticLambda2;-><init>()V

    .line 253
    invoke-static {v0}, Lcom/google/common/base/Suppliers;->memoize(Lcom/google/common/base/Supplier;)Lcom/google/common/base/Supplier;

    move-result-object v0

    sput-object v0, Landroidx/media3/session/DefaultMediaNotificationProvider;->maxNotificationIconSize:Lcom/google/common/base/Supplier;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    .line 271
    new-instance v0, Landroidx/media3/session/DefaultMediaNotificationProvider$$ExternalSyntheticLambda1;

    invoke-direct {v0}, Landroidx/media3/session/DefaultMediaNotificationProvider$$ExternalSyntheticLambda1;-><init>()V

    const-string v1, "default_channel_id"

    sget v2, Landroidx/media3/session/DefaultMediaNotificationProvider;->DEFAULT_CHANNEL_NAME_RESOURCE_ID:I

    invoke-direct {p0, p1, v0, v1, v2}, Landroidx/media3/session/DefaultMediaNotificationProvider;-><init>(Landroid/content/Context;Landroidx/media3/session/DefaultMediaNotificationProvider$NotificationIdProvider;Ljava/lang/String;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroidx/media3/session/DefaultMediaNotificationProvider$NotificationIdProvider;Ljava/lang/String;I)V
    .locals 0

    .line 286
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 287
    iput-object p1, p0, Landroidx/media3/session/DefaultMediaNotificationProvider;->context:Landroid/content/Context;

    .line 288
    iput-object p2, p0, Landroidx/media3/session/DefaultMediaNotificationProvider;->notificationIdProvider:Landroidx/media3/session/DefaultMediaNotificationProvider$NotificationIdProvider;

    .line 289
    iput-object p3, p0, Landroidx/media3/session/DefaultMediaNotificationProvider;->channelId:Ljava/lang/String;

    .line 290
    iput p4, p0, Landroidx/media3/session/DefaultMediaNotificationProvider;->channelNameResourceId:I

    .line 291
    const-string p2, "notification"

    .line 292
    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/NotificationManager;

    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/NotificationManager;

    iput-object p1, p0, Landroidx/media3/session/DefaultMediaNotificationProvider;->notificationManager:Landroid/app/NotificationManager;

    .line 293
    sget p1, Landroidx/media3/session/R$drawable;->media3_notification_small_icon:I

    iput p1, p0, Landroidx/media3/session/DefaultMediaNotificationProvider;->smallIconResourceId:I

    return-void
.end method

.method private constructor <init>(Landroidx/media3/session/DefaultMediaNotificationProvider$Builder;)V
    .locals 3

    .line 298
    invoke-static {p1}, Landroidx/media3/session/DefaultMediaNotificationProvider$Builder;->access$100(Landroidx/media3/session/DefaultMediaNotificationProvider$Builder;)Landroid/content/Context;

    move-result-object v0

    .line 299
    invoke-static {p1}, Landroidx/media3/session/DefaultMediaNotificationProvider$Builder;->access$200(Landroidx/media3/session/DefaultMediaNotificationProvider$Builder;)Landroidx/media3/session/DefaultMediaNotificationProvider$NotificationIdProvider;

    move-result-object v1

    .line 300
    invoke-static {p1}, Landroidx/media3/session/DefaultMediaNotificationProvider$Builder;->access$300(Landroidx/media3/session/DefaultMediaNotificationProvider$Builder;)Ljava/lang/String;

    move-result-object v2

    .line 301
    invoke-static {p1}, Landroidx/media3/session/DefaultMediaNotificationProvider$Builder;->access$400(Landroidx/media3/session/DefaultMediaNotificationProvider$Builder;)I

    move-result p1

    .line 297
    invoke-direct {p0, v0, v1, v2, p1}, Landroidx/media3/session/DefaultMediaNotificationProvider;-><init>(Landroid/content/Context;Landroidx/media3/session/DefaultMediaNotificationProvider$NotificationIdProvider;Ljava/lang/String;I)V

    return-void
.end method

.method synthetic constructor <init>(Landroidx/media3/session/DefaultMediaNotificationProvider$Builder;Landroidx/media3/session/DefaultMediaNotificationProvider$1;)V
    .locals 0

    .line 119
    invoke-direct {p0, p1}, Landroidx/media3/session/DefaultMediaNotificationProvider;-><init>(Landroidx/media3/session/DefaultMediaNotificationProvider$Builder;)V

    return-void
.end method

.method static synthetic access$500(Ljava/lang/Throwable;)Ljava/lang/String;
    .locals 0

    .line 119
    invoke-static {p0}, Landroidx/media3/session/DefaultMediaNotificationProvider;->getBitmapLoadErrorMessage(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private ensureNotificationChannel()V
    .locals 4

    .line 626
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-lt v0, v1, :cond_1

    iget-object v0, p0, Landroidx/media3/session/DefaultMediaNotificationProvider;->notificationManager:Landroid/app/NotificationManager;

    iget-object v1, p0, Landroidx/media3/session/DefaultMediaNotificationProvider;->channelId:Ljava/lang/String;

    invoke-static {v0, v1}, Landroidx/media3/session/DefaultMediaNotificationProvider$$ExternalSyntheticApiModelOutline0;->m(Landroid/app/NotificationManager;Ljava/lang/String;)Landroid/app/NotificationChannel;

    move-result-object v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 629
    :cond_0
    iget-object v0, p0, Landroidx/media3/session/DefaultMediaNotificationProvider;->notificationManager:Landroid/app/NotificationManager;

    iget-object v1, p0, Landroidx/media3/session/DefaultMediaNotificationProvider;->channelId:Ljava/lang/String;

    iget-object v2, p0, Landroidx/media3/session/DefaultMediaNotificationProvider;->context:Landroid/content/Context;

    iget v3, p0, Landroidx/media3/session/DefaultMediaNotificationProvider;->channelNameResourceId:I

    .line 630
    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 629
    invoke-static {v0, v1, v2}, Landroidx/media3/session/DefaultMediaNotificationProvider$Api26;->createNotificationChannel(Landroid/app/NotificationManager;Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void
.end method

.method private static getBitmapLoadErrorMessage(Ljava/lang/Throwable;)Ljava/lang/String;
    .locals 2

    .line 717
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Failed to load bitmap: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static getMaxNotificationIconSize()I
    .locals 4

    .line 646
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v0

    .line 648
    :try_start_0
    const-string v1, "notification_right_icon_size"

    const-string v2, "dimen"

    const-string v3, "android"

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    .line 649
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 652
    :catch_0
    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    const/high16 v1, 0x42400000    # 48.0f

    mul-float/2addr v0, v1

    float-to-int v0, v0

    return v0
.end method

.method private static getPlaybackStartTimeEpochMs(Landroidx/media3/common/Player;)J
    .locals 4

    .line 634
    invoke-interface {p0}, Landroidx/media3/common/Player;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 635
    invoke-interface {p0}, Landroidx/media3/common/Player;->isPlayingAd()Z

    move-result v0

    if-nez v0, :cond_0

    .line 636
    invoke-interface {p0}, Landroidx/media3/common/Player;->isCurrentMediaItemDynamic()Z

    move-result v0

    if-nez v0, :cond_0

    .line 637
    invoke-interface {p0}, Landroidx/media3/common/Player;->getPlaybackParameters()Landroidx/media3/common/PlaybackParameters;

    move-result-object v0

    iget v0, v0, Landroidx/media3/common/PlaybackParameters;->speed:F

    const/high16 v1, 0x3f800000    # 1.0f

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    .line 638
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-interface {p0}, Landroidx/media3/common/Player;->getContentPosition()J

    move-result-wide v2

    sub-long/2addr v0, v2

    return-wide v0

    :cond_0
    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    return-wide v0
.end method


# virtual methods
.method protected addNotificationActions(Landroidx/media3/session/MediaSession;Lcom/google/common/collect/ImmutableList;Landroidx/core/app/NotificationCompat$Builder;Landroidx/media3/session/MediaNotification$ActionFactory;)[I
    .locals 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/media3/session/MediaSession;",
            "Lcom/google/common/collect/ImmutableList;",
            "Landroidx/core/app/NotificationCompat$Builder;",
            "Landroidx/media3/session/MediaNotification$ActionFactory;",
            ")[I"
        }
    .end annotation

    move-object/from16 v0, p1

    move-object/from16 v1, p3

    move-object/from16 v2, p4

    const/4 v3, 0x3

    .line 536
    new-array v4, v3, [I

    .line 537
    new-array v5, v3, [I

    const/4 v6, -0x1

    .line 538
    invoke-static {v4, v6}, Ljava/util/Arrays;->fill([II)V

    .line 539
    invoke-static {v5, v6}, Ljava/util/Arrays;->fill([II)V

    const/4 v7, 0x0

    move v8, v7

    move v9, v8

    .line 541
    :goto_0
    invoke-virtual/range {p2 .. p2}, Ljava/util/AbstractCollection;->size()I

    move-result v10

    if-ge v8, v10, :cond_6

    move-object/from16 v10, p2

    .line 542
    invoke-interface {v10, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroidx/media3/session/CommandButton;

    .line 543
    iget-object v12, v11, Landroidx/media3/session/CommandButton;->sessionCommand:Landroidx/media3/session/SessionCommand;

    if-eqz v12, :cond_0

    .line 545
    invoke-interface {v2, v0, v11}, Landroidx/media3/session/MediaNotification$ActionFactory;->createCustomActionFromCustomCommandButton(Landroidx/media3/session/MediaSession;Landroidx/media3/session/CommandButton;)Landroidx/core/app/NotificationCompat$Action;

    move-result-object v12

    .line 544
    invoke-virtual {v1, v12}, Landroidx/core/app/NotificationCompat$Builder;->addAction(Landroidx/core/app/NotificationCompat$Action;)Landroidx/core/app/NotificationCompat$Builder;

    move-object/from16 v12, p0

    goto :goto_2

    .line 547
    :cond_0
    iget v12, v11, Landroidx/media3/session/CommandButton;->playerCommand:I

    if-eq v12, v6, :cond_1

    const/4 v12, 0x1

    goto :goto_1

    :cond_1
    move v12, v7

    :goto_1
    invoke-static {v12}, Lcom/google/common/base/Preconditions;->checkState(Z)V

    move-object/from16 v12, p0

    .line 548
    iget-object v14, v12, Landroidx/media3/session/DefaultMediaNotificationProvider;->context:Landroid/content/Context;

    iget v15, v11, Landroidx/media3/session/CommandButton;->iconResId:I

    .line 551
    invoke-static {v14, v15}, Landroidx/core/graphics/drawable/IconCompat;->createWithResource(Landroid/content/Context;I)Landroidx/core/graphics/drawable/IconCompat;

    move-result-object v14

    iget-object v15, v11, Landroidx/media3/session/CommandButton;->displayName:Ljava/lang/CharSequence;

    iget v13, v11, Landroidx/media3/session/CommandButton;->playerCommand:I

    .line 549
    invoke-interface {v2, v0, v14, v15, v13}, Landroidx/media3/session/MediaNotification$ActionFactory;->createMediaAction(Landroidx/media3/session/MediaSession;Landroidx/core/graphics/drawable/IconCompat;Ljava/lang/CharSequence;I)Landroidx/core/app/NotificationCompat$Action;

    move-result-object v13

    .line 548
    invoke-virtual {v1, v13}, Landroidx/core/app/NotificationCompat$Builder;->addAction(Landroidx/core/app/NotificationCompat$Action;)Landroidx/core/app/NotificationCompat$Builder;

    .line 555
    :goto_2
    iget-object v13, v11, Landroidx/media3/session/CommandButton;->extras:Landroid/os/Bundle;

    const-string v14, "androidx.media3.session.command.COMPACT_VIEW_INDEX"

    .line 556
    invoke-virtual {v13, v14, v6}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;I)I

    move-result v13

    if-ltz v13, :cond_2

    if-ge v13, v3, :cond_2

    .line 560
    aput v8, v4, v13

    const/4 v9, 0x1

    goto :goto_3

    .line 561
    :cond_2
    iget-object v13, v11, Landroidx/media3/session/CommandButton;->slots:Lcom/google/common/primitives/ImmutableIntArray;

    invoke-virtual {v13, v7}, Lcom/google/common/primitives/ImmutableIntArray;->get(I)I

    move-result v13

    const/4 v14, 0x2

    if-ne v13, v14, :cond_3

    .line 562
    aput v8, v5, v7

    goto :goto_3

    .line 563
    :cond_3
    iget-object v13, v11, Landroidx/media3/session/CommandButton;->slots:Lcom/google/common/primitives/ImmutableIntArray;

    invoke-virtual {v13, v7}, Lcom/google/common/primitives/ImmutableIntArray;->get(I)I

    move-result v13

    const/4 v15, 0x1

    if-ne v13, v15, :cond_4

    .line 564
    aput v8, v5, v15

    goto :goto_3

    .line 565
    :cond_4
    iget-object v11, v11, Landroidx/media3/session/CommandButton;->slots:Lcom/google/common/primitives/ImmutableIntArray;

    invoke-virtual {v11, v7}, Lcom/google/common/primitives/ImmutableIntArray;->get(I)I

    move-result v11

    if-ne v11, v3, :cond_5

    .line 566
    aput v8, v5, v14

    :cond_5
    :goto_3
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    :cond_6
    move-object/from16 v12, p0

    if-nez v9, :cond_8

    move v0, v7

    move v1, v0

    :goto_4
    if-ge v0, v3, :cond_8

    .line 573
    aget v2, v5, v0

    if-ne v2, v6, :cond_7

    goto :goto_5

    .line 576
    :cond_7
    aput v2, v4, v1

    add-int/lit8 v1, v1, 0x1

    :goto_5
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    :cond_8
    :goto_6
    if-ge v7, v3, :cond_a

    .line 581
    aget v0, v4, v7

    if-ne v0, v6, :cond_9

    .line 582
    invoke-static {v4, v7}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v0

    return-object v0

    :cond_9
    add-int/lit8 v7, v7, 0x1

    goto :goto_6

    :cond_a
    return-object v4
.end method

.method public final createNotification(Landroidx/media3/session/MediaSession;Lcom/google/common/collect/ImmutableList;Landroidx/media3/session/MediaNotification$ActionFactory;Landroidx/media3/session/MediaNotification$Provider$Callback;)Landroidx/media3/session/MediaNotification;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/media3/session/MediaSession;",
            "Lcom/google/common/collect/ImmutableList;",
            "Landroidx/media3/session/MediaNotification$ActionFactory;",
            "Landroidx/media3/session/MediaNotification$Provider$Callback;",
            ")",
            "Landroidx/media3/session/MediaNotification;"
        }
    .end annotation

    .line 312
    invoke-direct {p0}, Landroidx/media3/session/DefaultMediaNotificationProvider;->ensureNotificationChannel()V

    .line 314
    invoke-virtual {p1}, Landroidx/media3/session/MediaSession;->getPlayer()Landroidx/media3/common/Player;

    move-result-object v0

    .line 315
    new-instance v1, Landroidx/core/app/NotificationCompat$Builder;

    iget-object v2, p0, Landroidx/media3/session/DefaultMediaNotificationProvider;->context:Landroid/content/Context;

    iget-object v3, p0, Landroidx/media3/session/DefaultMediaNotificationProvider;->channelId:Ljava/lang/String;

    invoke-direct {v1, v2, v3}, Landroidx/core/app/NotificationCompat$Builder;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 316
    iget-object v2, p0, Landroidx/media3/session/DefaultMediaNotificationProvider;->notificationIdProvider:Landroidx/media3/session/DefaultMediaNotificationProvider$NotificationIdProvider;

    invoke-interface {v2, p1}, Landroidx/media3/session/DefaultMediaNotificationProvider$NotificationIdProvider;->getNotificationId(Landroidx/media3/session/MediaSession;)I

    move-result v2

    .line 318
    new-instance v3, Landroidx/media3/session/MediaStyleNotificationHelper$MediaStyle;

    invoke-direct {v3, p1}, Landroidx/media3/session/MediaStyleNotificationHelper$MediaStyle;-><init>(Landroidx/media3/session/MediaSession;)V

    .line 324
    invoke-interface {v0}, Landroidx/media3/common/Player;->getAvailableCommands()Landroidx/media3/common/Player$Commands;

    move-result-object v4

    .line 327
    invoke-virtual {p1}, Landroidx/media3/session/MediaSession;->getShowPlayButtonIfPlaybackIsSuppressed()Z

    move-result v5

    .line 326
    invoke-static {v0, v5}, Landroidx/media3/common/util/Util;->shouldShowPlayButton(Landroidx/media3/common/Player;Z)Z

    move-result v5

    const/4 v6, 0x1

    xor-int/2addr v5, v6

    .line 322
    invoke-virtual {p0, p1, v4, p2, v5}, Landroidx/media3/session/DefaultMediaNotificationProvider;->getMediaButtons(Landroidx/media3/session/MediaSession;Landroidx/media3/common/Player$Commands;Lcom/google/common/collect/ImmutableList;Z)Lcom/google/common/collect/ImmutableList;

    move-result-object p2

    .line 320
    invoke-virtual {p0, p1, p2, v1, p3}, Landroidx/media3/session/DefaultMediaNotificationProvider;->addNotificationActions(Landroidx/media3/session/MediaSession;Lcom/google/common/collect/ImmutableList;Landroidx/core/app/NotificationCompat$Builder;Landroidx/media3/session/MediaNotification$ActionFactory;)[I

    move-result-object p2

    .line 330
    invoke-virtual {v3, p2}, Landroidx/media3/session/MediaStyleNotificationHelper$MediaStyle;->setShowActionsInCompactView([I)Landroidx/media3/session/MediaStyleNotificationHelper$MediaStyle;

    const/16 p2, 0x12

    .line 333
    invoke-interface {v0, p2}, Landroidx/media3/common/Player;->isCommandAvailable(I)Z

    move-result p2

    if-eqz p2, :cond_4

    .line 334
    invoke-interface {v0}, Landroidx/media3/common/Player;->getMediaMetadata()Landroidx/media3/common/MediaMetadata;

    move-result-object p2

    .line 336
    invoke-virtual {p0, p2}, Landroidx/media3/session/DefaultMediaNotificationProvider;->getNotificationContentTitle(Landroidx/media3/common/MediaMetadata;)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroidx/core/app/NotificationCompat$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v4

    .line 337
    invoke-virtual {p0, p2}, Landroidx/media3/session/DefaultMediaNotificationProvider;->getNotificationContentText(Landroidx/media3/common/MediaMetadata;)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroidx/core/app/NotificationCompat$Builder;->setContentText(Ljava/lang/CharSequence;)Landroidx/core/app/NotificationCompat$Builder;

    .line 338
    invoke-virtual {p1}, Landroidx/media3/session/MediaSession;->getBitmapLoader()Landroidx/media3/common/util/BitmapLoader;

    move-result-object v4

    .line 339
    iget-object v5, p0, Landroidx/media3/session/DefaultMediaNotificationProvider;->notificationIconBitmapLoader:Landroidx/media3/common/util/BitmapLoader;

    if-eqz v5, :cond_0

    iget-object v5, p0, Landroidx/media3/session/DefaultMediaNotificationProvider;->mediaSessionBitmapLoader:Landroidx/media3/common/util/BitmapLoader;

    .line 340
    invoke-virtual {v4, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 341
    :cond_0
    iput-object v4, p0, Landroidx/media3/session/DefaultMediaNotificationProvider;->mediaSessionBitmapLoader:Landroidx/media3/common/util/BitmapLoader;

    .line 342
    new-instance v5, Landroidx/media3/session/CacheBitmapLoader;

    new-instance v7, Landroidx/media3/session/SizeLimitedBitmapLoader;

    sget-object v8, Landroidx/media3/session/DefaultMediaNotificationProvider;->maxNotificationIconSize:Lcom/google/common/base/Supplier;

    .line 346
    invoke-interface {v8}, Lcom/google/common/base/Supplier;->get()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    invoke-direct {v7, v4, v8, v6}, Landroidx/media3/session/SizeLimitedBitmapLoader;-><init>(Landroidx/media3/common/util/BitmapLoader;IZ)V

    invoke-direct {v5, v7}, Landroidx/media3/session/CacheBitmapLoader;-><init>(Landroidx/media3/common/util/BitmapLoader;)V

    iput-object v5, p0, Landroidx/media3/session/DefaultMediaNotificationProvider;->notificationIconBitmapLoader:Landroidx/media3/common/util/BitmapLoader;

    .line 350
    :cond_1
    iget-object v4, p0, Landroidx/media3/session/DefaultMediaNotificationProvider;->notificationIconBitmapLoader:Landroidx/media3/common/util/BitmapLoader;

    .line 351
    invoke-interface {v4, p2}, Landroidx/media3/common/util/BitmapLoader;->loadBitmapFromMetadata(Landroidx/media3/common/MediaMetadata;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object p2

    if-eqz p2, :cond_4

    .line 353
    iget-object v4, p0, Landroidx/media3/session/DefaultMediaNotificationProvider;->pendingOnBitmapLoadedFutureCallback:Landroidx/media3/session/DefaultMediaNotificationProvider$OnBitmapLoadedFutureCallback;

    if-eqz v4, :cond_2

    .line 354
    invoke-virtual {v4}, Landroidx/media3/session/DefaultMediaNotificationProvider$OnBitmapLoadedFutureCallback;->discardIfPending()V

    .line 356
    :cond_2
    invoke-interface {p2}, Ljava/util/concurrent/Future;->isDone()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 358
    :try_start_0
    invoke-static {p2}, Lcom/google/common/util/concurrent/Futures;->getDone(Ljava/util/concurrent/Future;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/graphics/Bitmap;

    invoke-virtual {v1, p2}, Landroidx/core/app/NotificationCompat$Builder;->setLargeIcon(Landroid/graphics/Bitmap;)Landroidx/core/app/NotificationCompat$Builder;
    :try_end_0
    .catch Ljava/util/concurrent/CancellationException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p2

    goto :goto_0

    :catch_1
    move-exception p2

    .line 360
    :goto_0
    const-string p4, "NotificationProvider"

    invoke-static {p2}, Landroidx/media3/session/DefaultMediaNotificationProvider;->getBitmapLoadErrorMessage(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p4, p2}, Landroidx/media3/common/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 363
    :cond_3
    new-instance v4, Landroidx/media3/session/DefaultMediaNotificationProvider$OnBitmapLoadedFutureCallback;

    invoke-direct {v4, v2, v1, p4}, Landroidx/media3/session/DefaultMediaNotificationProvider$OnBitmapLoadedFutureCallback;-><init>(ILandroidx/core/app/NotificationCompat$Builder;Landroidx/media3/session/MediaNotification$Provider$Callback;)V

    iput-object v4, p0, Landroidx/media3/session/DefaultMediaNotificationProvider;->pendingOnBitmapLoadedFutureCallback:Landroidx/media3/session/DefaultMediaNotificationProvider$OnBitmapLoadedFutureCallback;

    .line 371
    invoke-virtual {p1}, Landroidx/media3/session/MediaSession;->getImpl()Landroidx/media3/session/MediaSessionImpl;

    move-result-object p4

    invoke-virtual {p4}, Landroidx/media3/session/MediaSessionImpl;->getApplicationHandler()Landroid/os/Handler;

    move-result-object p4

    invoke-static {p4}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v5, Landroidx/media3/common/util/NetworkTypeObserver$$ExternalSyntheticLambda0;

    invoke-direct {v5, p4}, Landroidx/media3/common/util/NetworkTypeObserver$$ExternalSyntheticLambda0;-><init>(Landroid/os/Handler;)V

    .line 366
    invoke-static {p2, v4, v5}, Lcom/google/common/util/concurrent/Futures;->addCallback(Lcom/google/common/util/concurrent/ListenableFuture;Lcom/google/common/util/concurrent/FutureCallback;Ljava/util/concurrent/Executor;)V

    .line 376
    :cond_4
    :goto_1
    invoke-static {v0}, Landroidx/media3/session/DefaultMediaNotificationProvider;->getPlaybackStartTimeEpochMs(Landroidx/media3/common/Player;)J

    move-result-wide v4

    const-wide v7, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long p2, v4, v7

    const/4 p4, 0x0

    if-eqz p2, :cond_5

    move p2, v6

    goto :goto_2

    :cond_5
    move p2, p4

    :goto_2
    if-eqz p2, :cond_6

    goto :goto_3

    :cond_6
    const-wide/16 v4, 0x0

    .line 379
    :goto_3
    invoke-virtual {v1, v4, v5}, Landroidx/core/app/NotificationCompat$Builder;->setWhen(J)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v0

    .line 380
    invoke-virtual {v0, p2}, Landroidx/core/app/NotificationCompat$Builder;->setShowWhen(Z)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v0

    .line 381
    invoke-virtual {v0, p2}, Landroidx/core/app/NotificationCompat$Builder;->setUsesChronometer(Z)Landroidx/core/app/NotificationCompat$Builder;

    .line 383
    sget p2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x1f

    if-lt p2, v0, :cond_7

    .line 384
    invoke-static {v1}, Landroidx/media3/session/DefaultMediaNotificationProvider$Api31;->setForegroundServiceBehavior(Landroidx/core/app/NotificationCompat$Builder;)V

    .line 389
    :cond_7
    invoke-virtual {p1}, Landroidx/media3/session/MediaSession;->getSessionActivity()Landroid/app/PendingIntent;

    move-result-object p2

    invoke-virtual {v1, p2}, Landroidx/core/app/NotificationCompat$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object p2

    .line 390
    invoke-interface {p3, p1}, Landroidx/media3/session/MediaNotification$ActionFactory;->createNotificationDismissalIntent(Landroidx/media3/session/MediaSession;)Landroid/app/PendingIntent;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroidx/core/app/NotificationCompat$Builder;->setDeleteIntent(Landroid/app/PendingIntent;)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object p1

    .line 391
    invoke-virtual {p1, v6}, Landroidx/core/app/NotificationCompat$Builder;->setOnlyAlertOnce(Z)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object p1

    iget p2, p0, Landroidx/media3/session/DefaultMediaNotificationProvider;->smallIconResourceId:I

    .line 392
    invoke-virtual {p1, p2}, Landroidx/core/app/NotificationCompat$Builder;->setSmallIcon(I)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object p1

    .line 393
    invoke-virtual {p1, v3}, Landroidx/core/app/NotificationCompat$Builder;->setStyle(Landroidx/core/app/NotificationCompat$Style;)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object p1

    .line 394
    invoke-virtual {p1, v6}, Landroidx/core/app/NotificationCompat$Builder;->setVisibility(I)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object p1

    .line 395
    invoke-virtual {p1, p4}, Landroidx/core/app/NotificationCompat$Builder;->setOngoing(Z)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object p1

    const-string p2, "media3_group_key"

    .line 396
    invoke-virtual {p1, p2}, Landroidx/core/app/NotificationCompat$Builder;->setGroup(Ljava/lang/String;)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object p1

    .line 397
    invoke-virtual {p1}, Landroidx/core/app/NotificationCompat$Builder;->build()Landroid/app/Notification;

    move-result-object p1

    .line 398
    new-instance p2, Landroidx/media3/session/MediaNotification;

    invoke-direct {p2, v2, p1}, Landroidx/media3/session/MediaNotification;-><init>(ILandroid/app/Notification;)V

    return-object p2
.end method

.method protected getMediaButtons(Landroidx/media3/session/MediaSession;Landroidx/media3/common/Player$Commands;Lcom/google/common/collect/ImmutableList;Z)Lcom/google/common/collect/ImmutableList;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/media3/session/MediaSession;",
            "Landroidx/media3/common/Player$Commands;",
            "Lcom/google/common/collect/ImmutableList;",
            "Z)",
            "Lcom/google/common/collect/ImmutableList;"
        }
    .end annotation

    const/4 p1, 0x1

    .line 456
    invoke-static {p3, p1, p1}, Landroidx/media3/session/CommandButton;->getCustomLayoutFromMediaButtonPreferences(Ljava/util/List;ZZ)Lcom/google/common/collect/ImmutableList;

    move-result-object p3

    const/4 v0, 0x2

    .line 459
    invoke-static {p3, v0}, Landroidx/media3/session/CommandButton;->containsButtonForSlot(Ljava/util/List;I)Z

    move-result v0

    const/4 v1, 0x3

    .line 461
    invoke-static {p3, v1}, Landroidx/media3/session/CommandButton;->containsButtonForSlot(Ljava/util/List;I)Z

    move-result v1

    .line 464
    new-instance v2, Lcom/google/common/collect/ImmutableList$Builder;

    invoke-direct {v2}, Lcom/google/common/collect/ImmutableList$Builder;-><init>()V

    const/4 v3, 0x0

    if-eqz v0, :cond_0

    .line 466
    invoke-interface {p3, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/media3/session/CommandButton;

    invoke-virtual {v2, v0}, Lcom/google/common/collect/ImmutableList$Builder;->add(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList$Builder;

    move v3, p1

    goto :goto_0

    :cond_0
    const/4 v0, 0x7

    const/4 v4, 0x6

    .line 467
    filled-new-array {v0, v4}, [I

    move-result-object v0

    invoke-virtual {p2, v0}, Landroidx/media3/common/Player$Commands;->containsAny([I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 469
    new-instance v0, Landroidx/media3/session/CommandButton$Builder;

    const v5, 0xe045

    invoke-direct {v0, v5}, Landroidx/media3/session/CommandButton$Builder;-><init>(I)V

    .line 471
    invoke-virtual {v0, v4}, Landroidx/media3/session/CommandButton$Builder;->setPlayerCommand(I)Landroidx/media3/session/CommandButton$Builder;

    move-result-object v0

    iget-object v4, p0, Landroidx/media3/session/DefaultMediaNotificationProvider;->context:Landroid/content/Context;

    sget v5, Landroidx/media3/session/R$string;->media3_controls_seek_to_previous_description:I

    .line 473
    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 472
    invoke-virtual {v0, v4}, Landroidx/media3/session/CommandButton$Builder;->setDisplayName(Ljava/lang/CharSequence;)Landroidx/media3/session/CommandButton$Builder;

    move-result-object v0

    .line 474
    invoke-virtual {v0}, Landroidx/media3/session/CommandButton$Builder;->build()Landroidx/media3/session/CommandButton;

    move-result-object v0

    .line 469
    invoke-virtual {v2, v0}, Lcom/google/common/collect/ImmutableList$Builder;->add(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList$Builder;

    .line 476
    :cond_1
    :goto_0
    invoke-virtual {p2, p1}, Landroidx/media3/common/Player$Commands;->contains(I)Z

    move-result v0

    if-eqz v0, :cond_3

    if-eqz p4, :cond_2

    .line 478
    new-instance p4, Landroidx/media3/session/CommandButton$Builder;

    const v0, 0xe034

    invoke-direct {p4, v0}, Landroidx/media3/session/CommandButton$Builder;-><init>(I)V

    .line 480
    invoke-virtual {p4, p1}, Landroidx/media3/session/CommandButton$Builder;->setPlayerCommand(I)Landroidx/media3/session/CommandButton$Builder;

    move-result-object p1

    iget-object p4, p0, Landroidx/media3/session/DefaultMediaNotificationProvider;->context:Landroid/content/Context;

    sget v0, Landroidx/media3/session/R$string;->media3_controls_pause_description:I

    .line 481
    invoke-virtual {p4, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p1, p4}, Landroidx/media3/session/CommandButton$Builder;->setDisplayName(Ljava/lang/CharSequence;)Landroidx/media3/session/CommandButton$Builder;

    move-result-object p1

    .line 482
    invoke-virtual {p1}, Landroidx/media3/session/CommandButton$Builder;->build()Landroidx/media3/session/CommandButton;

    move-result-object p1

    .line 478
    invoke-virtual {v2, p1}, Lcom/google/common/collect/ImmutableList$Builder;->add(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList$Builder;

    goto :goto_1

    .line 484
    :cond_2
    new-instance p4, Landroidx/media3/session/CommandButton$Builder;

    const v0, 0xe037

    invoke-direct {p4, v0}, Landroidx/media3/session/CommandButton$Builder;-><init>(I)V

    .line 486
    invoke-virtual {p4, p1}, Landroidx/media3/session/CommandButton$Builder;->setPlayerCommand(I)Landroidx/media3/session/CommandButton$Builder;

    move-result-object p1

    iget-object p4, p0, Landroidx/media3/session/DefaultMediaNotificationProvider;->context:Landroid/content/Context;

    sget v0, Landroidx/media3/session/R$string;->media3_controls_play_description:I

    .line 487
    invoke-virtual {p4, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p1, p4}, Landroidx/media3/session/CommandButton$Builder;->setDisplayName(Ljava/lang/CharSequence;)Landroidx/media3/session/CommandButton$Builder;

    move-result-object p1

    .line 488
    invoke-virtual {p1}, Landroidx/media3/session/CommandButton$Builder;->build()Landroidx/media3/session/CommandButton;

    move-result-object p1

    .line 484
    invoke-virtual {v2, p1}, Lcom/google/common/collect/ImmutableList$Builder;->add(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList$Builder;

    :cond_3
    :goto_1
    if-eqz v1, :cond_4

    add-int/lit8 p1, v3, 0x1

    .line 492
    invoke-interface {p3, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroidx/media3/session/CommandButton;

    invoke-virtual {v2, p2}, Lcom/google/common/collect/ImmutableList$Builder;->add(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList$Builder;

    move v3, p1

    goto :goto_2

    :cond_4
    const/16 p1, 0x9

    const/16 p4, 0x8

    .line 493
    filled-new-array {p1, p4}, [I

    move-result-object p1

    invoke-virtual {p2, p1}, Landroidx/media3/common/Player$Commands;->containsAny([I)Z

    move-result p1

    if-eqz p1, :cond_5

    .line 494
    new-instance p1, Landroidx/media3/session/CommandButton$Builder;

    const p2, 0xe044

    invoke-direct {p1, p2}, Landroidx/media3/session/CommandButton$Builder;-><init>(I)V

    .line 496
    invoke-virtual {p1, p4}, Landroidx/media3/session/CommandButton$Builder;->setPlayerCommand(I)Landroidx/media3/session/CommandButton$Builder;

    move-result-object p1

    iget-object p2, p0, Landroidx/media3/session/DefaultMediaNotificationProvider;->context:Landroid/content/Context;

    sget p4, Landroidx/media3/session/R$string;->media3_controls_seek_to_next_description:I

    .line 497
    invoke-virtual {p2, p4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroidx/media3/session/CommandButton$Builder;->setDisplayName(Ljava/lang/CharSequence;)Landroidx/media3/session/CommandButton$Builder;

    move-result-object p1

    .line 498
    invoke-virtual {p1}, Landroidx/media3/session/CommandButton$Builder;->build()Landroidx/media3/session/CommandButton;

    move-result-object p1

    .line 494
    invoke-virtual {v2, p1}, Lcom/google/common/collect/ImmutableList$Builder;->add(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList$Builder;

    .line 500
    :cond_5
    :goto_2
    invoke-virtual {p3}, Ljava/util/AbstractCollection;->size()I

    move-result p1

    if-ge v3, p1, :cond_6

    .line 501
    invoke-interface {p3, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/media3/session/CommandButton;

    invoke-virtual {v2, p1}, Lcom/google/common/collect/ImmutableList$Builder;->add(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList$Builder;

    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 503
    :cond_6
    invoke-virtual {v2}, Lcom/google/common/collect/ImmutableList$Builder;->build()Lcom/google/common/collect/ImmutableList;

    move-result-object p1

    return-object p1
.end method

.method protected getNotificationContentText(Landroidx/media3/common/MediaMetadata;)Ljava/lang/CharSequence;
    .locals 0

    .line 622
    iget-object p1, p1, Landroidx/media3/common/MediaMetadata;->artist:Ljava/lang/CharSequence;

    return-object p1
.end method

.method protected getNotificationContentTitle(Landroidx/media3/common/MediaMetadata;)Ljava/lang/CharSequence;
    .locals 0

    .line 604
    iget-object p1, p1, Landroidx/media3/common/MediaMetadata;->title:Ljava/lang/CharSequence;

    return-object p1
.end method

.method public final handleCustomCommand(Landroidx/media3/session/MediaSession;Ljava/lang/String;Landroid/os/Bundle;)Z
    .locals 0

    .line 0
    const/4 p1, 0x0

    return p1
.end method

.method public final setSmallIcon(I)V
    .locals 0

    .line 416
    iput p1, p0, Landroidx/media3/session/DefaultMediaNotificationProvider;->smallIconResourceId:I

    return-void
.end method
