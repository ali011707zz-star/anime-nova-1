.class public final Landroidx/media3/session/legacy/MediaControllerCompat$PlaybackInfo;
.super Ljava/lang/Object;
.source "MediaControllerCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media3/session/legacy/MediaControllerCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "PlaybackInfo"
.end annotation


# static fields
.field public static final PLAYBACK_TYPE_LOCAL:I = 0x1

.field public static final PLAYBACK_TYPE_REMOTE:I = 0x2


# instance fields
.field private final audioAttributes:Landroidx/media3/common/AudioAttributes;

.field private final currentVolume:I

.field private final maxVolume:I

.field private final playbackType:I

.field private final volumeControl:I

.field private final volumeControlId:Ljava/lang/String;


# direct methods
.method constructor <init>(ILandroidx/media3/common/AudioAttributes;IIILjava/lang/String;)V
    .locals 0

    .line 1113
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1114
    iput p1, p0, Landroidx/media3/session/legacy/MediaControllerCompat$PlaybackInfo;->playbackType:I

    .line 1115
    iput-object p2, p0, Landroidx/media3/session/legacy/MediaControllerCompat$PlaybackInfo;->audioAttributes:Landroidx/media3/common/AudioAttributes;

    .line 1116
    iput p3, p0, Landroidx/media3/session/legacy/MediaControllerCompat$PlaybackInfo;->volumeControl:I

    .line 1117
    iput p4, p0, Landroidx/media3/session/legacy/MediaControllerCompat$PlaybackInfo;->maxVolume:I

    .line 1118
    iput p5, p0, Landroidx/media3/session/legacy/MediaControllerCompat$PlaybackInfo;->currentVolume:I

    .line 1119
    iput-object p6, p0, Landroidx/media3/session/legacy/MediaControllerCompat$PlaybackInfo;->volumeControlId:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getAudioAttributes()Landroidx/media3/common/AudioAttributes;
    .locals 1

    .line 1144
    iget-object v0, p0, Landroidx/media3/session/legacy/MediaControllerCompat$PlaybackInfo;->audioAttributes:Landroidx/media3/common/AudioAttributes;

    return-object v0
.end method

.method public getCurrentVolume()I
    .locals 1

    .line 1177
    iget v0, p0, Landroidx/media3/session/legacy/MediaControllerCompat$PlaybackInfo;->currentVolume:I

    return v0
.end method

.method public getMaxVolume()I
    .locals 1

    .line 1168
    iget v0, p0, Landroidx/media3/session/legacy/MediaControllerCompat$PlaybackInfo;->maxVolume:I

    return v0
.end method

.method public getPlaybackType()I
    .locals 1

    .line 1133
    iget v0, p0, Landroidx/media3/session/legacy/MediaControllerCompat$PlaybackInfo;->playbackType:I

    return v0
.end method

.method public getVolumeControl()I
    .locals 1

    .line 1159
    iget v0, p0, Landroidx/media3/session/legacy/MediaControllerCompat$PlaybackInfo;->volumeControl:I

    return v0
.end method

.method public getVolumeControlId()Ljava/lang/String;
    .locals 1

    .line 1186
    iget-object v0, p0, Landroidx/media3/session/legacy/MediaControllerCompat$PlaybackInfo;->volumeControlId:Ljava/lang/String;

    return-object v0
.end method
