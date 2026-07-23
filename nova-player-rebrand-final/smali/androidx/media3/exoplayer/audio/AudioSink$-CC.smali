.class public abstract synthetic Landroidx/media3/exoplayer/audio/AudioSink$-CC;
.super Ljava/lang/Object;
.source "AudioSink.java"


# direct methods
.method public static $default$getFormatOffloadSupport(Landroidx/media3/exoplayer/audio/AudioSink;Landroidx/media3/common/Format;)Landroidx/media3/exoplayer/audio/AudioOffloadSupport;
    .locals 0

    .line 486
    sget-object p0, Landroidx/media3/exoplayer/audio/AudioOffloadSupport;->DEFAULT_UNSUPPORTED:Landroidx/media3/exoplayer/audio/AudioOffloadSupport;

    return-object p0
.end method

.method public static $default$release(Landroidx/media3/exoplayer/audio/AudioSink;)V
    .locals 0

    .line 689
    return-void
.end method

.method public static $default$setAudioOutputProvider(Landroidx/media3/exoplayer/audio/AudioSink;Landroidx/media3/exoplayer/audio/AudioOutputProvider;)V
    .locals 0

    .line 665
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "AudioSink doesn\'t support setAudioOutputProvider"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static $default$setClock(Landroidx/media3/exoplayer/audio/AudioSink;Landroidx/media3/common/util/Clock;)V
    .locals 0

    .line 460
    return-void
.end method

.method public static $default$setOffloadDelayPadding(Landroidx/media3/exoplayer/audio/AudioSink;II)V
    .locals 0

    .line 661
    return-void
.end method

.method public static $default$setOffloadMode(Landroidx/media3/exoplayer/audio/AudioSink;I)V
    .locals 0

    .line 653
    return-void
.end method

.method public static $default$setOutputStreamOffsetUs(Landroidx/media3/exoplayer/audio/AudioSink;J)V
    .locals 0

    .line 622
    return-void
.end method

.method public static $default$setPlayerId(Landroidx/media3/exoplayer/audio/AudioSink;Landroidx/media3/exoplayer/analytics/PlayerId;)V
    .locals 0

    .line 453
    return-void
.end method

.method public static $default$setPreferredDevice(Landroidx/media3/exoplayer/audio/AudioSink;Landroid/media/AudioDeviceInfo;)V
    .locals 0

    .line 606
    return-void
.end method

.method public static $default$setVirtualDeviceId(Landroidx/media3/exoplayer/audio/AudioSink;I)V
    .locals 0

    .line 614
    return-void
.end method
