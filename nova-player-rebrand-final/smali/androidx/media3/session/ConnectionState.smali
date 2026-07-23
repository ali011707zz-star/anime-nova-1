.class Landroidx/media3/session/ConnectionState;
.super Ljava/lang/Object;
.source "ConnectionState.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/media3/session/ConnectionState$InProcessBinder;
    }
.end annotation


# static fields
.field private static final FIELD_COMMAND_BUTTONS_FOR_MEDIA_ITEMS:Ljava/lang/String;

.field private static final FIELD_CUSTOM_LAYOUT:Ljava/lang/String;

.field private static final FIELD_IN_PROCESS_BINDER:Ljava/lang/String;

.field private static final FIELD_LIBRARY_VERSION:Ljava/lang/String;

.field private static final FIELD_MEDIA_BUTTON_PREFERENCES:Ljava/lang/String;

.field private static final FIELD_PLATFORM_TOKEN:Ljava/lang/String;

.field private static final FIELD_PLAYER_COMMANDS_FROM_PLAYER:Ljava/lang/String;

.field private static final FIELD_PLAYER_COMMANDS_FROM_SESSION:Ljava/lang/String;

.field private static final FIELD_PLAYER_INFO:Ljava/lang/String;

.field private static final FIELD_SESSION_ACTIVITY:Ljava/lang/String;

.field private static final FIELD_SESSION_BINDER:Ljava/lang/String;

.field private static final FIELD_SESSION_COMMANDS:Ljava/lang/String;

.field private static final FIELD_SESSION_EXTRAS:Ljava/lang/String;

.field private static final FIELD_SESSION_INTERFACE_VERSION:Ljava/lang/String;

.field private static final FIELD_TOKEN_EXTRAS:Ljava/lang/String;


# instance fields
.field public final commandButtonsForMediaItems:Lcom/google/common/collect/ImmutableList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/ImmutableList;"
        }
    .end annotation
.end field

.field public final customLayout:Lcom/google/common/collect/ImmutableList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/ImmutableList;"
        }
    .end annotation
.end field

.field public final libraryVersion:I

.field public final mediaButtonPreferences:Lcom/google/common/collect/ImmutableList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/ImmutableList;"
        }
    .end annotation
.end field

.field public final platformToken:Landroid/media/session/MediaSession$Token;

.field public final playerCommandsFromPlayer:Landroidx/media3/common/Player$Commands;

.field public final playerCommandsFromSession:Landroidx/media3/common/Player$Commands;

.field public final playerInfo:Landroidx/media3/session/PlayerInfo;

.field public final sessionActivity:Landroid/app/PendingIntent;

.field public final sessionBinder:Landroidx/media3/session/IMediaSession;

.field public final sessionCommands:Landroidx/media3/session/SessionCommands;

.field public final sessionExtras:Landroid/os/Bundle;

.field public final sessionInterfaceVersion:I

.field public final tokenExtras:Landroid/os/Bundle;


# direct methods
.method public static synthetic $r8$lambda$6RQD9IxqL8A5Q8YN-EObTX64RoE(ILandroid/os/Bundle;)Landroidx/media3/session/CommandButton;
    .locals 0

    .line 199
    invoke-static {p1, p0}, Landroidx/media3/session/CommandButton;->fromBundle(Landroid/os/Bundle;I)Landroidx/media3/session/CommandButton;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$Z2d7kPJM4pec-aCe8-SEj6Ya934(ILandroid/os/Bundle;)Landroidx/media3/session/CommandButton;
    .locals 0

    .line 207
    invoke-static {p1, p0}, Landroidx/media3/session/CommandButton;->fromBundle(Landroid/os/Bundle;I)Landroidx/media3/session/CommandButton;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$ldeCxZwWngkxHPOZTlmtNIJGjnA(ILandroid/os/Bundle;)Landroidx/media3/session/CommandButton;
    .locals 0

    .line 216
    invoke-static {p1, p0}, Landroidx/media3/session/CommandButton;->fromBundle(Landroid/os/Bundle;I)Landroidx/media3/session/CommandButton;

    move-result-object p0

    return-object p0
.end method

.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    .line 99
    invoke-static {v0}, Landroidx/media3/common/util/Util;->intToStringMaxRadix(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroidx/media3/session/ConnectionState;->FIELD_LIBRARY_VERSION:Ljava/lang/String;

    const/4 v0, 0x1

    .line 100
    invoke-static {v0}, Landroidx/media3/common/util/Util;->intToStringMaxRadix(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroidx/media3/session/ConnectionState;->FIELD_SESSION_BINDER:Ljava/lang/String;

    const/4 v0, 0x2

    .line 101
    invoke-static {v0}, Landroidx/media3/common/util/Util;->intToStringMaxRadix(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroidx/media3/session/ConnectionState;->FIELD_SESSION_ACTIVITY:Ljava/lang/String;

    const/16 v0, 0x9

    .line 102
    invoke-static {v0}, Landroidx/media3/common/util/Util;->intToStringMaxRadix(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroidx/media3/session/ConnectionState;->FIELD_CUSTOM_LAYOUT:Ljava/lang/String;

    const/16 v0, 0xe

    .line 103
    invoke-static {v0}, Landroidx/media3/common/util/Util;->intToStringMaxRadix(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroidx/media3/session/ConnectionState;->FIELD_MEDIA_BUTTON_PREFERENCES:Ljava/lang/String;

    const/16 v0, 0xd

    .line 104
    invoke-static {v0}, Landroidx/media3/common/util/Util;->intToStringMaxRadix(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroidx/media3/session/ConnectionState;->FIELD_COMMAND_BUTTONS_FOR_MEDIA_ITEMS:Ljava/lang/String;

    const/4 v0, 0x3

    .line 105
    invoke-static {v0}, Landroidx/media3/common/util/Util;->intToStringMaxRadix(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroidx/media3/session/ConnectionState;->FIELD_SESSION_COMMANDS:Ljava/lang/String;

    const/4 v0, 0x4

    .line 106
    invoke-static {v0}, Landroidx/media3/common/util/Util;->intToStringMaxRadix(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroidx/media3/session/ConnectionState;->FIELD_PLAYER_COMMANDS_FROM_SESSION:Ljava/lang/String;

    const/4 v0, 0x5

    .line 107
    invoke-static {v0}, Landroidx/media3/common/util/Util;->intToStringMaxRadix(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroidx/media3/session/ConnectionState;->FIELD_PLAYER_COMMANDS_FROM_PLAYER:Ljava/lang/String;

    const/4 v0, 0x6

    .line 108
    invoke-static {v0}, Landroidx/media3/common/util/Util;->intToStringMaxRadix(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroidx/media3/session/ConnectionState;->FIELD_TOKEN_EXTRAS:Ljava/lang/String;

    const/16 v0, 0xb

    .line 109
    invoke-static {v0}, Landroidx/media3/common/util/Util;->intToStringMaxRadix(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroidx/media3/session/ConnectionState;->FIELD_SESSION_EXTRAS:Ljava/lang/String;

    const/4 v0, 0x7

    .line 110
    invoke-static {v0}, Landroidx/media3/common/util/Util;->intToStringMaxRadix(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroidx/media3/session/ConnectionState;->FIELD_PLAYER_INFO:Ljava/lang/String;

    const/16 v0, 0x8

    .line 111
    invoke-static {v0}, Landroidx/media3/common/util/Util;->intToStringMaxRadix(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroidx/media3/session/ConnectionState;->FIELD_SESSION_INTERFACE_VERSION:Ljava/lang/String;

    const/16 v0, 0xa

    .line 112
    invoke-static {v0}, Landroidx/media3/common/util/Util;->intToStringMaxRadix(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroidx/media3/session/ConnectionState;->FIELD_IN_PROCESS_BINDER:Ljava/lang/String;

    const/16 v0, 0xc

    .line 113
    invoke-static {v0}, Landroidx/media3/common/util/Util;->intToStringMaxRadix(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroidx/media3/session/ConnectionState;->FIELD_PLATFORM_TOKEN:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(IILandroidx/media3/session/IMediaSession;Landroid/app/PendingIntent;Lcom/google/common/collect/ImmutableList;Lcom/google/common/collect/ImmutableList;Lcom/google/common/collect/ImmutableList;Landroidx/media3/session/SessionCommands;Landroidx/media3/common/Player$Commands;Landroidx/media3/common/Player$Commands;Landroid/os/Bundle;Landroid/os/Bundle;Landroidx/media3/session/PlayerInfo;Landroid/media/session/MediaSession$Token;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Landroidx/media3/session/IMediaSession;",
            "Landroid/app/PendingIntent;",
            "Lcom/google/common/collect/ImmutableList;",
            "Lcom/google/common/collect/ImmutableList;",
            "Lcom/google/common/collect/ImmutableList;",
            "Landroidx/media3/session/SessionCommands;",
            "Landroidx/media3/common/Player$Commands;",
            "Landroidx/media3/common/Player$Commands;",
            "Landroid/os/Bundle;",
            "Landroid/os/Bundle;",
            "Landroidx/media3/session/PlayerInfo;",
            "Landroid/media/session/MediaSession$Token;",
            ")V"
        }
    .end annotation

    .line 82
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 83
    iput p1, p0, Landroidx/media3/session/ConnectionState;->libraryVersion:I

    .line 84
    iput p2, p0, Landroidx/media3/session/ConnectionState;->sessionInterfaceVersion:I

    .line 85
    iput-object p3, p0, Landroidx/media3/session/ConnectionState;->sessionBinder:Landroidx/media3/session/IMediaSession;

    .line 86
    iput-object p4, p0, Landroidx/media3/session/ConnectionState;->sessionActivity:Landroid/app/PendingIntent;

    .line 87
    iput-object p5, p0, Landroidx/media3/session/ConnectionState;->customLayout:Lcom/google/common/collect/ImmutableList;

    .line 88
    iput-object p6, p0, Landroidx/media3/session/ConnectionState;->mediaButtonPreferences:Lcom/google/common/collect/ImmutableList;

    .line 89
    iput-object p7, p0, Landroidx/media3/session/ConnectionState;->commandButtonsForMediaItems:Lcom/google/common/collect/ImmutableList;

    .line 90
    iput-object p8, p0, Landroidx/media3/session/ConnectionState;->sessionCommands:Landroidx/media3/session/SessionCommands;

    .line 91
    iput-object p9, p0, Landroidx/media3/session/ConnectionState;->playerCommandsFromSession:Landroidx/media3/common/Player$Commands;

    .line 92
    iput-object p10, p0, Landroidx/media3/session/ConnectionState;->playerCommandsFromPlayer:Landroidx/media3/common/Player$Commands;

    .line 93
    iput-object p11, p0, Landroidx/media3/session/ConnectionState;->tokenExtras:Landroid/os/Bundle;

    .line 94
    iput-object p12, p0, Landroidx/media3/session/ConnectionState;->sessionExtras:Landroid/os/Bundle;

    .line 95
    iput-object p13, p0, Landroidx/media3/session/ConnectionState;->playerInfo:Landroidx/media3/session/PlayerInfo;

    .line 96
    iput-object p14, p0, Landroidx/media3/session/ConnectionState;->platformToken:Landroid/media/session/MediaSession$Token;

    return-void
.end method

.method public static fromBundle(Landroid/os/Bundle;)Landroidx/media3/session/ConnectionState;
    .locals 18

    move-object/from16 v0, p0

    .line 185
    sget-object v1, Landroidx/media3/session/ConnectionState;->FIELD_IN_PROCESS_BINDER:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBinder(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    .line 186
    instance-of v2, v1, Landroidx/media3/session/ConnectionState$InProcessBinder;

    if-eqz v2, :cond_0

    .line 187
    check-cast v1, Landroidx/media3/session/ConnectionState$InProcessBinder;

    invoke-virtual {v1}, Landroidx/media3/session/ConnectionState$InProcessBinder;->getConnectionState()Landroidx/media3/session/ConnectionState;

    move-result-object v0

    return-object v0

    .line 189
    :cond_0
    sget-object v1, Landroidx/media3/session/ConnectionState;->FIELD_LIBRARY_VERSION:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;I)I

    move-result v4

    .line 190
    sget-object v1, Landroidx/media3/session/ConnectionState;->FIELD_SESSION_INTERFACE_VERSION:Ljava/lang/String;

    .line 191
    invoke-virtual {v0, v1, v2}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;I)I

    move-result v5

    .line 192
    sget-object v1, Landroidx/media3/session/ConnectionState;->FIELD_SESSION_BINDER:Ljava/lang/String;

    invoke-static {v0, v1}, Landroidx/core/app/BundleCompat;->getBinder(Landroid/os/Bundle;Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/IBinder;

    .line 193
    sget-object v2, Landroidx/media3/session/ConnectionState;->FIELD_SESSION_ACTIVITY:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    move-object v7, v2

    check-cast v7, Landroid/app/PendingIntent;

    .line 195
    sget-object v2, Landroidx/media3/session/ConnectionState;->FIELD_CUSTOM_LAYOUT:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 198
    new-instance v3, Landroidx/media3/session/ConnectionState$$ExternalSyntheticLambda0;

    invoke-direct {v3, v5}, Landroidx/media3/session/ConnectionState$$ExternalSyntheticLambda0;-><init>(I)V

    invoke-static {v3, v2}, Landroidx/media3/common/util/BundleCollectionUtil;->fromBundleList(Lcom/google/common/base/Function;Ljava/util/List;)Lcom/google/common/collect/ImmutableList;

    move-result-object v2

    :goto_0
    move-object v8, v2

    goto :goto_1

    .line 200
    :cond_1
    invoke-static {}, Lcom/google/common/collect/ImmutableList;->of()Lcom/google/common/collect/ImmutableList;

    move-result-object v2

    goto :goto_0

    .line 202
    :goto_1
    sget-object v2, Landroidx/media3/session/ConnectionState;->FIELD_MEDIA_BUTTON_PREFERENCES:Ljava/lang/String;

    .line 203
    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 206
    new-instance v3, Landroidx/media3/session/ConnectionState$$ExternalSyntheticLambda1;

    invoke-direct {v3, v5}, Landroidx/media3/session/ConnectionState$$ExternalSyntheticLambda1;-><init>(I)V

    invoke-static {v3, v2}, Landroidx/media3/common/util/BundleCollectionUtil;->fromBundleList(Lcom/google/common/base/Function;Ljava/util/List;)Lcom/google/common/collect/ImmutableList;

    move-result-object v2

    :goto_2
    move-object v9, v2

    goto :goto_3

    .line 209
    :cond_2
    invoke-static {}, Lcom/google/common/collect/ImmutableList;->of()Lcom/google/common/collect/ImmutableList;

    move-result-object v2

    goto :goto_2

    .line 211
    :goto_3
    sget-object v2, Landroidx/media3/session/ConnectionState;->FIELD_COMMAND_BUTTONS_FOR_MEDIA_ITEMS:Ljava/lang/String;

    .line 212
    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v2

    if-eqz v2, :cond_3

    .line 215
    new-instance v3, Landroidx/media3/session/ConnectionState$$ExternalSyntheticLambda2;

    invoke-direct {v3, v5}, Landroidx/media3/session/ConnectionState$$ExternalSyntheticLambda2;-><init>(I)V

    invoke-static {v3, v2}, Landroidx/media3/common/util/BundleCollectionUtil;->fromBundleList(Lcom/google/common/base/Function;Ljava/util/List;)Lcom/google/common/collect/ImmutableList;

    move-result-object v2

    :goto_4
    move-object v10, v2

    goto :goto_5

    .line 218
    :cond_3
    invoke-static {}, Lcom/google/common/collect/ImmutableList;->of()Lcom/google/common/collect/ImmutableList;

    move-result-object v2

    goto :goto_4

    .line 219
    :goto_5
    sget-object v2, Landroidx/media3/session/ConnectionState;->FIELD_SESSION_COMMANDS:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v2

    if-nez v2, :cond_4

    .line 222
    sget-object v2, Landroidx/media3/session/SessionCommands;->EMPTY:Landroidx/media3/session/SessionCommands;

    :goto_6
    move-object v11, v2

    goto :goto_7

    .line 223
    :cond_4
    invoke-static {v2}, Landroidx/media3/session/SessionCommands;->fromBundle(Landroid/os/Bundle;)Landroidx/media3/session/SessionCommands;

    move-result-object v2

    goto :goto_6

    .line 225
    :goto_7
    sget-object v2, Landroidx/media3/session/ConnectionState;->FIELD_PLAYER_COMMANDS_FROM_PLAYER:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v2

    if-nez v2, :cond_5

    .line 228
    sget-object v2, Landroidx/media3/common/Player$Commands;->EMPTY:Landroidx/media3/common/Player$Commands;

    :goto_8
    move-object v13, v2

    goto :goto_9

    .line 229
    :cond_5
    invoke-static {v2}, Landroidx/media3/common/Player$Commands;->fromBundle(Landroid/os/Bundle;)Landroidx/media3/common/Player$Commands;

    move-result-object v2

    goto :goto_8

    .line 231
    :goto_9
    sget-object v2, Landroidx/media3/session/ConnectionState;->FIELD_PLAYER_COMMANDS_FROM_SESSION:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v2

    if-nez v2, :cond_6

    .line 234
    sget-object v2, Landroidx/media3/common/Player$Commands;->EMPTY:Landroidx/media3/common/Player$Commands;

    :goto_a
    move-object v12, v2

    goto :goto_b

    .line 235
    :cond_6
    invoke-static {v2}, Landroidx/media3/common/Player$Commands;->fromBundle(Landroid/os/Bundle;)Landroidx/media3/common/Player$Commands;

    move-result-object v2

    goto :goto_a

    .line 236
    :goto_b
    sget-object v2, Landroidx/media3/session/ConnectionState;->FIELD_TOKEN_EXTRAS:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v2

    invoke-static {v2}, Landroidx/media3/common/util/Util;->convertToNullIfInvalid(Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v2

    .line 237
    sget-object v3, Landroidx/media3/session/ConnectionState;->FIELD_SESSION_EXTRAS:Ljava/lang/String;

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v3

    invoke-static {v3}, Landroidx/media3/common/util/Util;->convertToNullIfInvalid(Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v3

    .line 238
    sget-object v6, Landroidx/media3/session/ConnectionState;->FIELD_PLAYER_INFO:Ljava/lang/String;

    invoke-virtual {v0, v6}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v6

    if-nez v6, :cond_7

    .line 241
    sget-object v6, Landroidx/media3/session/PlayerInfo;->DEFAULT:Landroidx/media3/session/PlayerInfo;

    :goto_c
    move-object/from16 v16, v6

    goto :goto_d

    .line 242
    :cond_7
    invoke-static {v6, v5}, Landroidx/media3/session/PlayerInfo;->fromBundle(Landroid/os/Bundle;I)Landroidx/media3/session/PlayerInfo;

    move-result-object v6

    goto :goto_c

    .line 243
    :goto_d
    sget-object v6, Landroidx/media3/session/ConnectionState;->FIELD_PLATFORM_TOKEN:Ljava/lang/String;

    invoke-virtual {v0, v6}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    move-object/from16 v17, v0

    check-cast v17, Landroid/media/session/MediaSession$Token;

    move-object v0, v3

    .line 244
    new-instance v3, Landroidx/media3/session/ConnectionState;

    .line 247
    invoke-static {v1}, Landroidx/media3/session/IMediaSession$Stub;->asInterface(Landroid/os/IBinder;)Landroidx/media3/session/IMediaSession;

    move-result-object v6

    if-nez v2, :cond_8

    .line 255
    sget-object v2, Landroid/os/Bundle;->EMPTY:Landroid/os/Bundle;

    :cond_8
    move-object v14, v2

    if-nez v0, :cond_9

    .line 256
    sget-object v0, Landroid/os/Bundle;->EMPTY:Landroid/os/Bundle;

    :cond_9
    move-object v15, v0

    invoke-direct/range {v3 .. v17}, Landroidx/media3/session/ConnectionState;-><init>(IILandroidx/media3/session/IMediaSession;Landroid/app/PendingIntent;Lcom/google/common/collect/ImmutableList;Lcom/google/common/collect/ImmutableList;Lcom/google/common/collect/ImmutableList;Landroidx/media3/session/SessionCommands;Landroidx/media3/common/Player$Commands;Landroidx/media3/common/Player$Commands;Landroid/os/Bundle;Landroid/os/Bundle;Landroidx/media3/session/PlayerInfo;Landroid/media/session/MediaSession$Token;)V

    return-object v3
.end method


# virtual methods
.method public toBundleForRemoteProcess(I)Landroid/os/Bundle;
    .locals 5

    .line 118
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 119
    sget-object v1, Landroidx/media3/session/ConnectionState;->FIELD_LIBRARY_VERSION:Ljava/lang/String;

    iget v2, p0, Landroidx/media3/session/ConnectionState;->libraryVersion:I

    invoke-virtual {v0, v1, v2}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 120
    sget-object v1, Landroidx/media3/session/ConnectionState;->FIELD_SESSION_BINDER:Ljava/lang/String;

    iget-object v2, p0, Landroidx/media3/session/ConnectionState;->sessionBinder:Landroidx/media3/session/IMediaSession;

    invoke-interface {v2}, Landroid/os/IInterface;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v0, v1, v2}, Landroidx/core/app/BundleCompat;->putBinder(Landroid/os/Bundle;Ljava/lang/String;Landroid/os/IBinder;)V

    .line 121
    sget-object v1, Landroidx/media3/session/ConnectionState;->FIELD_SESSION_ACTIVITY:Ljava/lang/String;

    iget-object v2, p0, Landroidx/media3/session/ConnectionState;->sessionActivity:Landroid/app/PendingIntent;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 122
    iget-object v1, p0, Landroidx/media3/session/ConnectionState;->customLayout:Lcom/google/common/collect/ImmutableList;

    invoke-virtual {v1}, Ljava/util/AbstractCollection;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 123
    sget-object v1, Landroidx/media3/session/ConnectionState;->FIELD_CUSTOM_LAYOUT:Ljava/lang/String;

    iget-object v2, p0, Landroidx/media3/session/ConnectionState;->customLayout:Lcom/google/common/collect/ImmutableList;

    new-instance v3, Landroidx/media3/session/ConnectionState$$ExternalSyntheticLambda3;

    invoke-direct {v3}, Landroidx/media3/session/ConnectionState$$ExternalSyntheticLambda3;-><init>()V

    .line 125
    invoke-static {v2, v3}, Landroidx/media3/common/util/BundleCollectionUtil;->toBundleArrayList(Ljava/util/Collection;Lcom/google/common/base/Function;)Ljava/util/ArrayList;

    move-result-object v2

    .line 123
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putParcelableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 127
    :cond_0
    iget-object v1, p0, Landroidx/media3/session/ConnectionState;->mediaButtonPreferences:Lcom/google/common/collect/ImmutableList;

    invoke-virtual {v1}, Ljava/util/AbstractCollection;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_2

    const/4 v1, 0x7

    if-lt p1, v1, :cond_1

    .line 129
    sget-object v1, Landroidx/media3/session/ConnectionState;->FIELD_MEDIA_BUTTON_PREFERENCES:Ljava/lang/String;

    iget-object v2, p0, Landroidx/media3/session/ConnectionState;->mediaButtonPreferences:Lcom/google/common/collect/ImmutableList;

    new-instance v3, Landroidx/media3/session/ConnectionState$$ExternalSyntheticLambda3;

    invoke-direct {v3}, Landroidx/media3/session/ConnectionState$$ExternalSyntheticLambda3;-><init>()V

    .line 131
    invoke-static {v2, v3}, Landroidx/media3/common/util/BundleCollectionUtil;->toBundleArrayList(Ljava/util/Collection;Lcom/google/common/base/Function;)Ljava/util/ArrayList;

    move-result-object v2

    .line 129
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putParcelableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    goto :goto_0

    .line 137
    :cond_1
    iget-object v1, p0, Landroidx/media3/session/ConnectionState;->mediaButtonPreferences:Lcom/google/common/collect/ImmutableList;

    const/4 v2, 0x1

    .line 138
    invoke-static {v1, v2, v2}, Landroidx/media3/session/CommandButton;->getCustomLayoutFromMediaButtonPreferences(Ljava/util/List;ZZ)Lcom/google/common/collect/ImmutableList;

    move-result-object v1

    .line 142
    sget-object v2, Landroidx/media3/session/ConnectionState;->FIELD_CUSTOM_LAYOUT:Ljava/lang/String;

    new-instance v3, Landroidx/media3/session/ConnectionState$$ExternalSyntheticLambda3;

    invoke-direct {v3}, Landroidx/media3/session/ConnectionState$$ExternalSyntheticLambda3;-><init>()V

    .line 144
    invoke-static {v1, v3}, Landroidx/media3/common/util/BundleCollectionUtil;->toBundleArrayList(Ljava/util/Collection;Lcom/google/common/base/Function;)Ljava/util/ArrayList;

    move-result-object v1

    .line 142
    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putParcelableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 147
    :cond_2
    :goto_0
    iget-object v1, p0, Landroidx/media3/session/ConnectionState;->commandButtonsForMediaItems:Lcom/google/common/collect/ImmutableList;

    invoke-virtual {v1}, Ljava/util/AbstractCollection;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_3

    .line 148
    sget-object v1, Landroidx/media3/session/ConnectionState;->FIELD_COMMAND_BUTTONS_FOR_MEDIA_ITEMS:Ljava/lang/String;

    iget-object v2, p0, Landroidx/media3/session/ConnectionState;->commandButtonsForMediaItems:Lcom/google/common/collect/ImmutableList;

    new-instance v3, Landroidx/media3/session/ConnectionState$$ExternalSyntheticLambda3;

    invoke-direct {v3}, Landroidx/media3/session/ConnectionState$$ExternalSyntheticLambda3;-><init>()V

    .line 150
    invoke-static {v2, v3}, Landroidx/media3/common/util/BundleCollectionUtil;->toBundleArrayList(Ljava/util/Collection;Lcom/google/common/base/Function;)Ljava/util/ArrayList;

    move-result-object v2

    .line 148
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putParcelableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 153
    :cond_3
    sget-object v1, Landroidx/media3/session/ConnectionState;->FIELD_SESSION_COMMANDS:Ljava/lang/String;

    iget-object v2, p0, Landroidx/media3/session/ConnectionState;->sessionCommands:Landroidx/media3/session/SessionCommands;

    invoke-virtual {v2}, Landroidx/media3/session/SessionCommands;->toBundle()Landroid/os/Bundle;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 154
    sget-object v1, Landroidx/media3/session/ConnectionState;->FIELD_PLAYER_COMMANDS_FROM_SESSION:Ljava/lang/String;

    iget-object v2, p0, Landroidx/media3/session/ConnectionState;->playerCommandsFromSession:Landroidx/media3/common/Player$Commands;

    invoke-virtual {v2}, Landroidx/media3/common/Player$Commands;->toBundle()Landroid/os/Bundle;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 155
    sget-object v1, Landroidx/media3/session/ConnectionState;->FIELD_PLAYER_COMMANDS_FROM_PLAYER:Ljava/lang/String;

    iget-object v2, p0, Landroidx/media3/session/ConnectionState;->playerCommandsFromPlayer:Landroidx/media3/common/Player$Commands;

    invoke-virtual {v2}, Landroidx/media3/common/Player$Commands;->toBundle()Landroid/os/Bundle;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 156
    sget-object v1, Landroidx/media3/session/ConnectionState;->FIELD_TOKEN_EXTRAS:Ljava/lang/String;

    iget-object v2, p0, Landroidx/media3/session/ConnectionState;->tokenExtras:Landroid/os/Bundle;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 157
    sget-object v1, Landroidx/media3/session/ConnectionState;->FIELD_SESSION_EXTRAS:Ljava/lang/String;

    iget-object v2, p0, Landroidx/media3/session/ConnectionState;->sessionExtras:Landroid/os/Bundle;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 158
    iget-object v1, p0, Landroidx/media3/session/ConnectionState;->playerCommandsFromSession:Landroidx/media3/common/Player$Commands;

    iget-object v2, p0, Landroidx/media3/session/ConnectionState;->playerCommandsFromPlayer:Landroidx/media3/common/Player$Commands;

    .line 159
    invoke-static {v1, v2}, Landroidx/media3/session/MediaUtils;->intersect(Landroidx/media3/common/Player$Commands;Landroidx/media3/common/Player$Commands;)Landroidx/media3/common/Player$Commands;

    move-result-object v1

    .line 160
    sget-object v2, Landroidx/media3/session/ConnectionState;->FIELD_PLAYER_INFO:Ljava/lang/String;

    iget-object v3, p0, Landroidx/media3/session/ConnectionState;->playerInfo:Landroidx/media3/session/PlayerInfo;

    const/4 v4, 0x0

    .line 163
    invoke-virtual {v3, v1, v4, v4}, Landroidx/media3/session/PlayerInfo;->filterByAvailableCommands(Landroidx/media3/common/Player$Commands;ZZ)Landroidx/media3/session/PlayerInfo;

    move-result-object v1

    .line 165
    invoke-virtual {v1, p1}, Landroidx/media3/session/PlayerInfo;->toBundleForRemoteProcess(I)Landroid/os/Bundle;

    move-result-object p1

    .line 160
    invoke-virtual {v0, v2, p1}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 166
    sget-object p1, Landroidx/media3/session/ConnectionState;->FIELD_SESSION_INTERFACE_VERSION:Ljava/lang/String;

    iget v1, p0, Landroidx/media3/session/ConnectionState;->sessionInterfaceVersion:I

    invoke-virtual {v0, p1, v1}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 167
    iget-object p1, p0, Landroidx/media3/session/ConnectionState;->platformToken:Landroid/media/session/MediaSession$Token;

    if-eqz p1, :cond_4

    .line 168
    sget-object v1, Landroidx/media3/session/ConnectionState;->FIELD_PLATFORM_TOKEN:Ljava/lang/String;

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    :cond_4
    return-object v0
.end method

.method public toBundleInProcess()Landroid/os/Bundle;
    .locals 4

    .line 178
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 179
    sget-object v1, Landroidx/media3/session/ConnectionState;->FIELD_IN_PROCESS_BINDER:Ljava/lang/String;

    new-instance v2, Landroidx/media3/session/ConnectionState$InProcessBinder;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Landroidx/media3/session/ConnectionState$InProcessBinder;-><init>(Landroidx/media3/session/ConnectionState;Landroidx/media3/session/ConnectionState$1;)V

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBinder(Ljava/lang/String;Landroid/os/IBinder;)V

    return-object v0
.end method
